'From Cuis6.3 [latest update: #6253] on 10 March 2024 at 2:58:30 pm'!
'Description Port of PowerLang/Bee-DMR Petite Parser code into Cuis.
See https://github.com/powerlang/bee-dmr/tree/master/PetitParser

Original code Copyright LICENCES/Acuerna'!
!provides: 'BeePParser' 1 22!
!requires: 'BeeCompatibility' 1 32 nil!
!requires: 'PetitParser' 1 5 nil!
!requires: 'RTFExporting' 1 3 nil!
!requires: 'RTFImporting' 1 6 nil!
SystemOrganization addCategory: #BeePParser!
SystemOrganization addCategory: #'BeePParser-Tests'!


!classDefinition: #PPActionParserTest category: #'BeePParser-Tests'!
TestCase subclass: #PPActionParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser-Tests'!
!classDefinition: 'PPActionParserTest class' category: #'BeePParser-Tests'!
PPActionParserTest class
	instanceVariableNames: ''!

!classDefinition: #PPGramarTest category: #'BeePParser-Tests'!
TestCase subclass: #PPGramarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser-Tests'!
!classDefinition: 'PPGramarTest class' category: #'BeePParser-Tests'!
PPGramarTest class
	instanceVariableNames: ''!

!classDefinition: #PPIdentifierTest category: #'BeePParser-Tests'!
TestCase subclass: #PPIdentifierTest
	instanceVariableNames: 'identifier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser-Tests'!
!classDefinition: 'PPIdentifierTest class' category: #'BeePParser-Tests'!
PPIdentifierTest class
	instanceVariableNames: ''!

!classDefinition: #PPParserCombinationTest category: #'BeePParser-Tests'!
TestCase subclass: #PPParserCombinationTest
	instanceVariableNames: 'identifier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser-Tests'!
!classDefinition: 'PPParserCombinationTest class' category: #'BeePParser-Tests'!
PPParserCombinationTest class
	instanceVariableNames: ''!

!classDefinition: #PPTerminalParserTest category: #'BeePParser-Tests'!
TestCase subclass: #PPTerminalParserTest
	instanceVariableNames: 'characters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser-Tests'!
!classDefinition: 'PPTerminalParserTest class' category: #'BeePParser-Tests'!
PPTerminalParserTest class
	instanceVariableNames: ''!

!classDefinition: #PPMappedParser category: #BeePParser!
PPListParser subclass: #PPMappedParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'PPMappedParser class' category: #BeePParser!
PPMappedParser class
	instanceVariableNames: ''!

!classDefinition: #PPSequencedChoiceParser category: #BeePParser!
PPListParser subclass: #PPSequencedChoiceParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'PPSequencedChoiceParser class' category: #BeePParser!
PPSequencedChoiceParser class
	instanceVariableNames: ''!


!PPActionParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:11:10'!
testFlatten 

	| p identifier |
	p := #letter asParser star flatten.
	self assert: (p parse: 'Hello0') = 'Hello'.
	identifier := (#letter asParser , (#letter asParser / #digit asParser) star) flatten.
	self assert: (identifier parse: 'foo12+') = 'foo12'
! !

!PPActionParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:11:21'!
testToken 

	| p |
	p := #letter asParser star token.
	self assert: (p parse: 'Hello0') class = PPToken! !

!PPActionParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:11:33'!
testTransformation 

	| p number |
	p := #digit asParser.
	number := p ==> [:ch | ch digitValue].
	self assert: (number parse: '8') = 8.
	p := #letter asParser star
		==> [:array | array collect: [:ch | ch asLowercase]].
	self assert: (p parse: 'HELLO') = 'hello' asArray! !

!PPGramarTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:12:19'!
testArithmetic 

	| number term prod prim start |
	number := #digit asParser plus token trim
		==> [:token | token value asNumber].
	term := PPUnresolvedParser new.
	prod := PPUnresolvedParser new.
	prim := PPUnresolvedParser new.
	term
		def: prod , $+ asParser token trim , term
			==> [:nodes | nodes first + nodes last]
			/ prod.
	prod
		def: prim , $* asParser token trim , prod
			==> [:nodes | nodes first * nodes last]
			/ prim.
	prim
		def: $( asParser token trim , term , $) asParser token trim
			==> [:nodes | nodes second]
			/ number.
	start := term end.
	self
		assert: (start parse: '1 + 2 * 3') = 7;
		assert: (start parse: '(1 + 2) * 3') = 9
! !

!PPGramarTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:12:35'!
testInteger 

	| number |
	number := #digit asParser plus token trim
		==> [:token | token value asNumber].
	self assert: (number parse: '123') = 123! !

!PPIdentifierTest methodsFor: 'setUp/tearDown' stamp: 'KenD 2/16/2021 09:13:39'!
setUp 

	super setUp.
	identifier := #letter asParser , (#letter asParser / #digit asParser) star! !

!PPIdentifierTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:14:12'!
testIdentifierMatches 

	self
		assert: (identifier matches: 'foo');
		deny: (identifier matches: '123')! !

!PPIdentifierTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:14:24'!
testIdentifierMatchesIn 

	| answer |
	answer := identifier matchesIn: 'foo 123 bar12'.
	self
		assert: answer first = (identifier parse: 'foo');
		assert: answer second = (identifier parse: 'oo');
		assert: answer third = (identifier parse: 'o');
		assert: answer fourth = (identifier parse: 'bar12');
		assert: answer fifth = (identifier parse: 'ar12');
		assert: answer sixth = (identifier parse: 'r12')! !

!PPIdentifierTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:14:34'!
testIdentifierParse 
	| ast |
	ast := identifier parse: 'yeah'.
	self assert: ast = #($y #($e $a $h)).
	ast := identifier parse: 'f12'.
	self assert: ast = #($f #($1 $2))! !

!PPIdentifierTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:14:46'!
testIdentifierParseError 

	| error position |
	identifier parse: '123' onError: [:msg :pos | 
		error := msg.
		position := pos].
	self assert: error = 'letter expected'; assert: position = 0! !

!PPIdentifierTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 12:47:56'!
testIdentifierStructure 

	self
		assert: identifier class = PPSequenceParser;
		assert: identifier children size = 2;
		assert: identifier children first class == PPPredicateObjectParser.
		"assert: identifier children second class == PPRepeatingParser;
		assert: identifier children second children size = 1"! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:15:30'!
testAnd 

	| p |
	p := #letter asParser and , #uppercase asParser.
	self
		assert: (p matches: 'A');
		deny: (p matches: 'a')! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:15:39'!
testEnd 

	| p |
	p := #uppercase asParser end.
	self
		assert: (p matches: 'A');
		deny: (p matches: 'AB')! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:15:49'!
testNot 

	| p |
	p := #uppercase asParser not , #letter asParser.
	self
		assert: (p matches: 'a');
		deny: (p matches: 'A')! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:16:00'!
testOptional 

	| p |
	p := $+ asParser optional , $- asParser optional , #digit asParser.
	self
		assert: (p matches: '1');
		assert: (p matches: '+1');
		assert: (p matches: '-1');
		deny: (p matches: '/1')! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:16:17'!
testOrderedChoice 

	| p1 p2 |
	p1 := #letter asParser.
	p2 := #digit asParser.
	self
		assert: (p1 / p2 matches: 'a0');
		assert: (p2 / p1 matches: 'X9');
		deny: (p1 / p2 matches: ' B1')
! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:16:54'!
testPlus 

	| p |
	p := #letter asParser plus.
	self
		assert: (p matches: 'a');
		deny: (p matches: '0');
		deny: (p matches: '')
! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:17:05'!
testSequence 

	| p1 p2 |
	p1 := #letter asParser.
	p2 := #digit asParser.
	self
		assert: (p1 , p2 matches: 'a0');
		deny: (p2 , p1 matches: 'X9')! !

!PPParserCombinationTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:17:15'!
testStar 

	| p |
	p := #letter asParser star.
	self
		assert: (p matches: 'a');
		assert: (p matches: '0');
		assert: (p matches: '')! !

!PPTerminalParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:18:16'!
testAnyParser 

	| parser |
	parser := #any asParser.
	characters do: [:ch | self assert: (parser matches: ch)]! !

!PPTerminalParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:18:25'!
testCharacterParser 

	| parser ok |
	parser := $a asParser.
	ok := characters select: [:ch | parser matches: ch].
	self assert: ok = #('a')! !

!PPTerminalParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:18:44'!
testDigitParser 

	| parser digits |
	parser := #digit asParser.
	digits := characters select: [:ch | parser matches: ch].
	self assert: digits = #('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')! !

!PPTerminalParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 12:44:37'!
testLetterParser 

	| parser letters |
	parser := #letter asParser.
	letters := characters select: [:ch | parser matches: ch].
	self
		assert: letters
			= #('A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' 'Y' 'Z'
				'_' 'a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i' 'j' 'k' 'l' 'm' 'n' 'o' 'p' 'q' 'r' 's' 't' 'u' 'v' 'w' 'x' 'y' 'z')
! !

!PPTerminalParserTest methodsFor: 'testing' stamp: 'KenD 2/16/2021 09:19:20'!
testStringParser 

	| parser |
	parser := 'abc' asParser.
	self
		assert: (parser matches: 'abc');
		deny: (parser matches: 'aabc');
		assert: (parser matchesIn: 'aabc') asArray = #('abc')! !

!PPTerminalParserTest methodsFor: 'setUp/tearDown' stamp: 'KenD 2/16/2021 09:18:05'!
setUp 

	super setUp.
	characters := (0 to: 255) collect: [:i | i asCharacter asString]! !

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

!PPRepeatingParser methodsFor: '*BeePParser' stamp: 'KenD 11/10/2022 12:25:27'!
setMin: smallInteger max: largetrInteger

	min := smallInteger.
	max := largetrInteger! !

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

!PPPredicateObjectParser class methodsFor: '*BeePParser' stamp: 'KenD 2/12/2021 13:25:54'!
identifier
	| parser |
	parser := self
		on: (PPCharSetPredicate on: [:char | char = $_ or: [char isAlphaNumeric]])
		message: 'letter expected'.
	^parser name: #identifier! !

!PPPredicateObjectParser class methodsFor: '*BeePParser' stamp: 'KenD 2/16/2021 12:42:35'!
letter
	| parser |
	parser := self
		on: (PPCharSetPredicate on: [:char | char = $_ or: [char isASCIILetter ]])
		message: 'letter expected'.
	^parser name: #identifier! !
