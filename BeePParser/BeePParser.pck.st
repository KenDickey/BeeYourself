'From Cuis 5.0 [latest update: #4530] on 16 February 2021 at 8:22:01 am'!
'Description Port of PowerLang/Bee-DMR Petite Parser code into Cuis.
See https://github.com/powerlang/bee-dmr/tree/master/PetitParser'!
!provides: 'BeePParser' 1 14!
!requires: 'PetitParser' 1 2 nil!
!requires: 'RTFExporting' 1 3 nil!
!requires: 'RTFImporting' 1 6 nil!
SystemOrganization addCategory: 'BeePParser'!


!classDefinition: #PPMappedParser category: 'BeePParser'!
PPListParser subclass: #PPMappedParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'PPMappedParser class' category: 'BeePParser'!
PPMappedParser class
	instanceVariableNames: ''!

!classDefinition: #PPSequencedChoiceParser category: 'BeePParser'!
PPListParser subclass: #PPSequencedChoiceParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'PPSequencedChoiceParser class' category: 'BeePParser'!
PPSequencedChoiceParser class
	instanceVariableNames: ''!


!PPMappedParser methodsFor: 'parsing' stamp: 'KenD 2/13/2021 16:22:40'!
parseOn: aStream 

	| key parser |
	key := aStream peek.
	key isNil
		ifTrue: [^PPFailure
			message: 'no parser for key ' , key printString
			from: aStream].
	parser := parsers
		at: key
		ifAbsent: [^PPFailure
			message: 'no parser for key ' , key printString
			from: aStream].
	^parser parseOn: aStream! !

!PPMappedParser methodsFor: 'initialization' stamp: 'KenD 2/13/2021 16:21:32'!
initialize 

	super initialize.
	parsers := Dictionary new! !

!PPMappedParser methodsFor: 'initialization' stamp: 'KenD 2/13/2021 16:22:09'!
setParsers: aDictionary 

	parsers := aDictionary! !

!PPMappedParser methodsFor: 'accessing' stamp: 'KenD 2/13/2021 16:21:13'!
at: key put: aPPParser 

	parsers at: key put: aPPParser! !

!PPSequencedChoiceParser methodsFor: 'printing' stamp: 'KenD 2/12/2021 08:59:08'!
printTextOn: rtf 
	parsers
		do: [:p | p printSmalltalkReceiverOn: rtf]
		separatedBy: [rtf nextPutAll: ' & ']! !

!PPSequencedChoiceParser methodsFor: 'parsing' stamp: 'KenD 2/12/2021 08:58:42'!
parseOn: aStream 
	"
	This is optimized code that avoids unnecessary block activations, do not change.
	When all choices fail, the last failure is answered.
	"
	| element elements start |
	elements := Array new: parsers size.
	start := aStream position.
	1 to: parsers size do: [:index | 
		element := (parsers at: index) parseOn: aStream.
		element isPetitFailure ifFalse: [elements at: index put: element]].
	^(elements anySatisfy: [:elem | elem notNil]) ifTrue: [elements] ifFalse: [
		aStream position: start.
		PPFailure message: 'No match for any "and / or" rule' from: aStream]! !

!PPSequencedChoiceParser methodsFor: 'operations' stamp: 'KenD 2/12/2021 08:58:01'!
& aRule 
	^self copyWith: aRule! !

!Character methodsFor: '*BeePParser' stamp: 'KenD 2/9/2021 15:52:41'!
parserTo: aCharacter 

	^PPPredicateObjectParser between: self and: aCharacter! !

!Character methodsFor: '*BeePParser' stamp: 'KenD 2/9/2021 15:53:12'!
sameAs: aCharacter 

	^self asLowercase = aCharacter asLowercase! !

!ReadStream methodsFor: '*BeePParser' stamp: 'KenD 2/9/2021 15:48:17'!
asPetitStream 

	^ collection asPetitStream! !

!PPFailure methodsFor: '*BeePParser' stamp: 'KenD 2/7/2021 16:34:05'!
description 

	^message! !

!PPFailure methodsFor: '*BeePParser' stamp: 'KenD 2/7/2021 16:34:47'!
message: aString from: aStream 

	message := aString.
	position := aStream position.
	aStream failure: self! !

!PPFailure class methodsFor: '*BeePParser' stamp: 'KenD 2/7/2021 16:33:22'!
message: aString from: aStream 

	^self basicNew message: aString from: aStream! !

!PPToken methodsFor: '*BeePParser' stamp: 'KenD 2/9/2021 15:19:12'!
newline
	"Parser a platform independent newline sequence. 
	 LF: Unix,  CR+LF: Windows,  and CR: Apple."

	^ (Character lf asParser)
	/ (Character cr asParser , Character lf asParser optional)
! !

!PPParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 08:54:40'!
newline 

	^Character lf asParser
		/ (Character cr asParser , Character lf asParser optional)
		==> [:nodes | 
			(nodes size = 2 and: [nodes last isNil])
				ifTrue: [nodes first]
				ifFalse: [nodes]]! !

!PPParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:43:54'!
parse: anObject for: requestor 

	^self parse: anObject! !

!PPParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 09:03:17'!
printSmalltalkReceiverOn: rtf 

	| text ast |
	text := Rtf new.
	self printTextOn: text.
	ast := SmalltalkParser new parseSnippet: '(' , text asString , ') msg'.
	(ast isNil or: [ast format trimBlanks first = $(])
		ifTrue: [
			rtf nextPut: $(.
			self printTextOn: rtf.
			rtf nextPut: $)]
		ifFalse: [self printTextOn: rtf]
! !

!PPParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 09:19:17'!
printTextOn: rtf 

	| signature class |
	signature := self signature ifNil: [^super printTextOn: rtf].
	class := signature key classImplementing: signature value.
	class >> signature value printTextOn: rtf! !

!PPParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 09:21:55'!
signature: anAssociation 

	self
		propertyAt: #signature put: anAssociation;
		name: anAssociation value! !

!PPExpressionParser methodsFor: '*BeePParser' stamp: 'KenD 2/16/2021 08:20:22'!
buildTerm: term selector: selector 

	| list |
	list := operators at: selector ifAbsent: [#()].
	^list isEmpty ifTrue: [term] ifFalse: [
		self perform: selector with: term with: (list size = 1
			ifTrue: [
				list first first ==> [:operator | 
					list isEmpty ifTrue: [self halt].
					{list first second. operator}]]
			ifFalse: [
				list
					inject: PPChoiceParser new
					into: [:choice :each | choice
						/ (each first ==> [:operator | {each second. operator}])]])]
! !

!PPActionParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:36:53'!
printTextOn: rtf 

	parser printSmalltalkReceiverOn: rtf.
	rtf cr; cr; nextPutAll: '==> '.
	block printSmalltalkReceiverOn: rtf! !

!PPWrappingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 08:45:18'!
printTextOn: rtf
	parser printSmalltalkReceiverOn: rtf.
	rtf
		useColor: PaintingVisitor new defaultColor
		while: [rtf nextPutAll: ' >=> '].
	block printTextOn: rtf! !

!PPAndParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:35:44'!
printTextOn: rtf 

	parser printSmalltalkReceiverOn: rtf.
	rtf nextPutAll: ' and'! !

!PPFlattenParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:28:58'!
printTextOn: rtf 

	parser printSmalltalkReceiverOn: rtf.
	rtf nextPutAll: ' flatten'! !

!PPMemoizedParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 16:19:23'!
printTextOn: rtf 

	self printSmalltalkReceiverOn: rtf.
	parser nextPutAll: ' memoized'! !

!PPNotParser methodsFor: '*BeePParser' stamp: 'KenD 2/13/2021 16:18:35'!
printTextOn: rtf 

	parser printSmalltalkReceiverOn: rtf.
	rtf nextPutAll: ' not'! !

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:08:37'!
isPlus 

	^min = 1 and: [max = SmallInteger maxVal]! !

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:09:11'!
isStar 

	^min = 0 and: [max = SmallInteger maxVal ]

! !

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:08:04'!
on: aParser min: aMinInteger max: aMaxInteger 

	^ (self on: aParser) setMin: aMinInteger max: aMaxInteger! !

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:09:49'!
parseOn: aStream 

	| start element elements |
	start := aStream position.
	elements := OrderedCollection new.
	[ elements size < min ] whileTrue: [
		(element := parser parseOn: aStream) isPetitFailure ifTrue: [
			aStream position: start.
			^ element ].
		elements addLast: element ].
	[ elements size < max ] whileTrue: [
		(element := parser parseOn: aStream) isPetitFailure
			ifTrue: [ ^ elements asArray ].
		elements addLast: element ].
	^ elements asArray! !

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:11:01'!
printTextOn: rtf 

	| stop |
	self name ifNotNil: [^self printNameOn: rtf].
	parser printSmalltalkReceiverOn: rtf.
	self isStar ifTrue: [^rtf nextPutAll: ' star'].
	self isPlus ifTrue: [^rtf nextPutAll: ' plus'].
	stop := max = SmallInteger maxVal ifTrue: ['*'] ifFalse: [max printString].
	rtf
		nextPutAll: ' rep [';
		print: min;
		nextPutAll: ', ';
		nextPutAll: stop;
		nextPut: $]! !

!PPRepeatingParser class methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 09:01:04'!
on: aParser 
	^(super on: aParser) setMin: 0 max: SmallInteger maxVal! !

!PPRepeatingParser class methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:06:13'!
on: aParser max: aMaxInteger 

	^ (self on: aParser) setMin: 0 max: aMaxInteger
! !

!PPRepeatingParser class methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:07:03'!
on: aParser min: aMinInteger 

	^(self on: aParser) setMin: aMinInteger max: SmallInteger maxVal ! !

!PPRepeatingParser class methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:07:28'!
on: aParser min: aMinInteger max: aMaxInteger 

	^ (self on: aParser) setMin: aMinInteger max: aMaxInteger! !

!PPTrimmingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 08:51:50'!
printTextOn: rtf 
	parser printSmalltalkReceiverOn: rtf.
	rtf nextPutAll: ' trim'! !

!PPTrimmingParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 08:52:15'!
trim 
	"There is no point in trimming more than once."

	^ self! !

!PPEpsilonParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:30:50'!
printTextOn: rtf 

	rtf
		useColor: PaintingVisitor new specialColor
		while: [rtf nextPutAll: 'nil'].
	rtf nextPutAll: ' asParser'
! !

!PPChoiceParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:33:52'!
printTextOn: rtf 

	parsers
		do: [:p | p printSmalltalkReceiverOn: rtf]
		separatedBy: [rtf nextPutAll: ' / ']! !

!PPSequenceParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 08:55:48'!
printTextOn: rtf 
	parsers
		do: [:p | p printSmalltalkReceiverOn: rtf]
		separatedBy: [rtf nextPutAll: ' , ']! !

!PPLiteralParser methodsFor: '*BeePParser' stamp: 'KenD 2/15/2021 14:20:50'!
printOn: aStream 

	literal printString printOn: aStream.
	aStream nextPutAll: ' asParser'! !

!PPLiteralParser methodsFor: '*BeePParser' stamp: 'KenD 2/14/2021 15:25:49'!
printTextOn: rtf 

	literal literalString printTextOn: rtf.
	rtf nextPutAll: ' asParser'! !

!PPPredicateObjectParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:37:25'!
printOn: aStream 
	self name isSymbol
		ifTrue: [
			self name storeOn: aStream.
			aStream nextPutAll: ' asParser']
		ifFalse: [super printOn: aStream]! !

!PPPredicateObjectParser methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:37:37'!
printTextOn: rtf 
	self name isSymbol
		ifTrue: [
			self name printTextOn: rtf.
			rtf nextPutAll: ' asParser']
		ifFalse: [super printTextOn: rtf]
! !
