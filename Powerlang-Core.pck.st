'From Cuis 5.0 [latest update: #4530] on 23 February 2021 at 2:51:59 pm'!
'Description Powerlang Core code to manage Cuis hosted Bee runtime code'!
!provides: 'Powerlang-Core' 1 9!
!requires: 'BeeCompatibility' 1 0 nil!
!requires: 'Ring2' 1 1 nil!
!requires: 'BeePParser' 1 17 nil!
SystemOrganization addCategory: 'Powerlang-Core'!


!classDefinition: #AstBindingTypes category: 'Powerlang-Core'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId ClassVarId ConstantPoolId EnsureAisSmallIntegerId EnsureRisSmallIntegerId FalseId GlobalClassId GlobalValueId InstVarId LoadAvisitingArgumentId LoadAwithArgumentId LoadAwithClassVarId LoadAwithConstPoolId LoadAwithFalseId LoadAwithGlobalId LoadAwithInstVarId LoadAwithLiteralId LoadAwithNilId LoadAwithPoolVarId LoadAwithSelfId LoadAwithTemporaryId LoadAwithTrueId LoadRvisitingReceiverId LoadRwithArgumentId LoadRwithClassVarId LoadRwithConstPoolId LoadRwithFalseId LoadRwithGlobalId LoadRwithInstVarId LoadRwithLiteralId LoadRwithNilId LoadRwithPoolVarId LoadRwithSelfId LoadRwithTemporaryId LoadRwithTrueId NilId PoolVarId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core'!
AstBindingTypes class
	instanceVariableNames: ''!

!classDefinition: #ObjectMap category: 'Powerlang-Core'!
Object subclass: #ObjectMap
	instanceVariableNames: 'behavior spec'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectMap class' category: 'Powerlang-Core'!
ObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ByteObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #ByteObjectMap
	instanceVariableNames: 'bytes hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ByteObjectMap class' category: 'Powerlang-Core'!
ByteObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ShapeMap category: 'Powerlang-Core'!
ObjectMap subclass: #ShapeMap
	instanceVariableNames: 'shapes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ShapeMap class' category: 'Powerlang-Core'!
ShapeMap class
	instanceVariableNames: ''!

!classDefinition: #SlotObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #SlotObjectMap
	instanceVariableNames: 'slots hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SlotObjectMap class' category: 'Powerlang-Core'!
SlotObjectMap class
	instanceVariableNames: ''!

!classDefinition: #SmallintObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #SmallintObjectMap
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SmallintObjectMap class' category: 'Powerlang-Core'!
SmallintObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ObjectShape category: 'Powerlang-Core'!
Object subclass: #ObjectShape
	instanceVariableNames: 'name fields'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectShape class' category: 'Powerlang-Core'!
ObjectShape class
	instanceVariableNames: ''!

!classDefinition: #SExpression category: 'Powerlang-Core'!
Object subclass: #SExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SExpression class' category: 'Powerlang-Core'!
SExpression class
	instanceVariableNames: ''!

!classDefinition: #SIdenitifier category: 'Powerlang-Core'!
SExpression subclass: #SIdenitifier
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SIdenitifier class' category: 'Powerlang-Core'!
SIdenitifier class
	instanceVariableNames: ''!

!classDefinition: #SLiteralVar category: 'Powerlang-Core'!
SExpression subclass: #SLiteralVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteralVar class' category: 'Powerlang-Core'!
SLiteralVar class
	instanceVariableNames: ''!

!classDefinition: #SParseTreeVisitor category: 'Powerlang-Core'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SParseTreeVisitor class' category: 'Powerlang-Core'!
SParseTreeVisitor class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkScanner category: 'Powerlang-Core'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSmalltalkScanner class' category: 'Powerlang-Core'!
SSmalltalkScanner class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'Powerlang-Core'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SToken class' category: 'Powerlang-Core'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'Powerlang-Core'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SEndToken class' category: 'Powerlang-Core'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'Powerlang-Core'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SParseNode class' category: 'Powerlang-Core'!
SParseNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'Powerlang-Core'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SIdentifierNode class' category: 'Powerlang-Core'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SLiteralNode category: 'Powerlang-Core'!
SParseNode subclass: #SLiteralNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteralNode class' category: 'Powerlang-Core'!
SLiteralNode class
	instanceVariableNames: ''!

!classDefinition: #SSymbolicToken category: 'Powerlang-Core'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSymbolicToken class' category: 'Powerlang-Core'!
SSymbolicToken class
	instanceVariableNames: ''!

!classDefinition: #SDelimiterToken category: 'Powerlang-Core'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SDelimiterToken class' category: 'Powerlang-Core'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SStringToken category: 'Powerlang-Core'!
SSymbolicToken subclass: #SStringToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SStringToken class' category: 'Powerlang-Core'!
SStringToken class
	instanceVariableNames: ''!


!ShapeMap commentStamp: '<historical>' prior: 0!
I represent the shape of objects as used by mirrors. Mirrors
access instance variables by name, asking the runtime the for
the offsets of the instVars.!

!SExpression commentStamp: '<historical>' prior: 0!
I am a Smalltalk expression, the minimal unit of Smalltalk semantics, expressed as a tree.
!

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:45'!
isBytes 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:00'!
isPointers 

	^ false! !

!ByteObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 14:12:25'!
printOn: aStream 

	spec ifNil: [ ^ super printOn: aStream ].
	aStream
		nextPutAll: '<<';
		nextPutAll: self contentsString;
		nextPutAll: '>>'! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 14:11:57'!
isBytes 

	^true! !

!SlotObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:51:15'!
printOn: aStream 

	aStream
		nextPutAll: '<<';
		nextPutAll: spec name withArticle;
		nextPutAll: '>>'! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:50:51'!
isPointers 

	^true! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:45:22'!
allInstVarNames 

	| c |
	^ spec properties
		at: #allInstVarNames
		ifAbsentPut: [ spec isMeta
				ifTrue: [ c := spec environment at: #Class.
					c allInstVarNames , spec allInstVarNames ]
				ifFalse: [ spec allInstVarNames ] ]! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:50:36'!
instSize 

	| c |
	^ spec properties at: #instSize ifAbsentPut: [spec isMeta
		ifTrue: [ c := spec environment at: #Class.
			
			c instSize + spec instSize ]
		ifFalse: [ spec instSize ]]! !

!SmallintObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:58:39'!
printOn: aStream 

	aStream
		nextPutAll: '<<';
		nextPutAll: value printString;
		nextPutAll: '>>'! !

!ObjectShape methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:24:29'!
printOn: aStream 

	aStream nextPutAll: 'Shape of '; nextPutAll: name! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:24:03'!
name 

	^name! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:29'!
printOn: aStream 

	self printOn: aStream indent: 0! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:20:16'!
isVariable 

	^true! !

!SIdenitifier methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:17:50'!
binding 

	^binding! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:05'!
comment 

	^comments notNil ifTrue: [comments anyOne]! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:24:21'!
binding 

	^binding! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:28:51'!
name 

	^name! !

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 14:51:53'!
initialize 
	NilId := 1.
	TrueId := 2.
	FalseId := 3.
	ArgumentId := 4.
	TemporaryId := 5.
	SelfId := 6.
	SuperId := 7.
	InstVarId := 8.
	ClassVarId := 9.
	GlobalValueId := 10.
	GlobalClassId := 11.
	PoolVarId := 12.
	ConstantPoolId := 13.
	LoadRwithSelfId := 20.
	LoadAwithSelfId := 21.
	LoadRwithInstVarId := 22.
	LoadAwithInstVarId := 23.
	LoadRvisitingReceiverId := 24.
	LoadAvisitingArgumentId := 25.
	LoadRwithLiteralId := 26.
	LoadAwithLiteralId := 27.
	EnsureRisSmallIntegerId := 28.
	EnsureAisSmallIntegerId := 29.
	LoadRwithArgumentId := 30.
	LoadAwithArgumentId := 31.
	LoadRwithTemporaryId := 32.
	LoadAwithTemporaryId := 33.
	LoadRwithNilId := 34.
	LoadAwithNilId := 35.
	LoadRwithFalseId := 36.
	LoadAwithFalseId := 37.
	LoadRwithTrueId := 38.
	LoadAwithTrueId := 39.
	LoadRwithGlobalId := 40.
	LoadAwithGlobalId := 41.
	LoadRwithClassVarId := 42.
	LoadAwithClassVarId := 43.
	LoadRwithPoolVarId := 44.
	LoadAwithPoolVarId := 45.
	LoadRwithConstPoolId := 46.
	LoadAwithConstPoolId := 47.
	PushRid := 48.
	PopRid := 49! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:52'!
isImmediate 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:14'!
isSmall 

	^self size < 256! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:31:21'!
initializeAs: anRGBehavior sized: size 

	self subclassResponsibility! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:33'!
nilAll: nilObject! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:41'!
nilWith: nilObject ! !

!ObjectMap methodsFor: 'iterating' stamp: 'KenD 2/22/2021 13:35:51'!
slotsDo: aBlock

	self notYetImplemented ! !

!ObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 13:38:23'!
validate 
	
	self assert: behavior notNil! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:28:54'!
arrayedSize 

	^self size! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:11'!
at: index 

	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:24'!
at: index put: value 

	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:36'!
behavior 

	^behavior! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:49'!
behavior: anObjectMap 

	behavior := anObjectMap! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:03'!
bodySizeInBytes 

	"Return the size of object body(s) in bytes,
	 padded if a byte object"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:14'!
classname 

	^spec name! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:30'!
headerSizeInBytes 
	"
		Return the size of object header in bytes, 
		including both small and large part (if any).
	"
	
	^ self isSmall ifTrue: [ 8 ] ifFalse: [ 16 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:31:00'!
headerSmallSize 

	"Return value of 'size' field of small header"
	 | size |	
 	size := self size.
  	^ size < 256 ifTrue: [ size ] ifFalse: [ 0 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:29'!
size 

	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:43'!
sizeInBytes 

	"Return the size of object in bytes without padding"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:03'!
slotAt: index 

	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:26'!
slotAt: index put: value 

	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self subclassResponsibility! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:47'!
slotNamed: name 

	"Get a named slot with given `name`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:35:02'!
slotNamed: name put: value 

	"Set a named slot with given `name` to `value`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index put: value! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:35'!
spec 

	^ spec! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:51'!
wordSize 

	"Return the size in bytes of the word (i.e, a reference to an object)"
	
	^ 8 "For now, 64bit only!!"! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:26:08'!
classFor: anRGBehavior 

	anRGBehavior name == #SmallInteger ifTrue: [^SmallintObjectMap].
	^anRGBehavior isBytes
		ifTrue: [ ByteObjectMap ]
		ifFalse: [ SlotObjectMap ]! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:00'!
new: anRGBehavior 
	
	^self new: anRGBehavior size: 0! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:19'!
new: anRGBehavior size: size 

	| class |
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	class := self classFor: anRGBehavior.
	^ class new initializeAs: anRGBehavior sized: size! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 14:11:26'!
initialize 

	hash := 0! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 14:11:38'!
initializeAs: anRGBehavior sized: size 

	self assert: anRGBehavior notNil.
"	self assert: anRGBehavior isBytes.
	self assert: anRGBehavior isVariable.
"	
	spec := anRGBehavior.
	bytes := ByteArray new: size! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:08:32'!
at: index 
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: bytes size).
	^bytes at: index! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:08:47'!
at: index put: anObjectMap 
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"

	| value |
	self assert: (index between: 1 and: bytes size).
	self assert: anObjectMap isImmediate.
	value := anObjectMap value.
	self assert: (value between: 0 and: 255).
	bytes at: index put: value.
	^anObjectMap! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:09:13'!
bodySizeInBytes 
	"Return the size of object body(s) in bytes, padded"
	
	^ self size alignedTo: self wordSize! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:09:26'!
bytes 

	^ bytes! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:11'!
contentsString 

	spec name == #String
		ifTrue: [ ^bytes allButLast asString storeString ].
	spec name == #Symbol
		ifTrue: [ ^bytes allButLast asString asSymbol storeString ].
	spec name == #ByteArray
		ifTrue: [ ^bytes storeString ].
	^spec name withArticle, ': ', bytes printString! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:27'!
fillFrom: anObject 

	self assert: anObject size == bytes size.
	bytes replaceFrom: 1 to: bytes size with: anObject startingAt: 1! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:38'!
headerFlags 

	| byte variable small |
	byte := 1.
	variable := 2.
	small := self isSmall ifTrue: [ 16r80 ] ifFalse: [ 0 ].
	^ byte | variable | small! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:57'!
headerHash 

	^ hash! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:11:08'!
headerHash: anInteger 

	hash := anInteger! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:12:42'!
size 
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ bytes size! !

!ByteObjectMap methodsFor: 'converting' stamp: 'KenD 2/22/2021 14:08:13'!
asString 

	^ bytes allButLast asString! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 14:05:48'!
new: anRGBehavior size: anInteger 

	^ self new
		initializeAs: anRGBehavior sized: anInteger! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 14:06:08'!
new: anRGBehavior valued: bytes 
	"self assert: anRGBehavior isBytes."
	
	^self new initializeAs: anRGBehavior sized: bytes size; fillFrom: bytes! !

!ShapeMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:17:08'!
initialize 

	shapes := Dictionary new! !

!ShapeMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:18:41'!
at: type 

	^shapes at: type! !

!ShapeMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:18:06'!
indexInCurrentOf: varname at: type 

	| species slot |
	species := Smalltalk at: type asSymbol.
	slot := species slotNamed: varname.
	slot isNil
		ifTrue: [ self error: 'inst var ' , varname , ' not found' ].
	^ slot index! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:16:44'!
add: structure 

	shapes at: structure name put: structure! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:17:47'!
indexOf: varname at: type 

	| shape |
	shape := shapes at: type ifAbsent: [
		^self indexInCurrentOf: varname at: type].
	^shape indexOf: varname! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:17:29'!
load: aClassDefinition 

	| shape |
	shape := ObjectShape new loadFrom: aClassDefinition.
	self add: shape! !

!ShapeMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:16:01'!
new 

	^self basicNew initialize! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:50:04'!
initialize 

	hash := 0! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:50:18'!
initializeAs: anRGBehavior sized: size 

	self assert: anRGBehavior notNil.
	self assert: anRGBehavior isPointers.
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	spec := anRGBehavior.
	slots := Array new: self instSize + size! !

!SlotObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 13:53:24'!
validate 

	super validate.
	slots withIndexDo:[:value :index | self assert: value notNil ]! !

!SlotObjectMap methodsFor: 'iterating' stamp: 'KenD 2/22/2021 13:52:58'!
slotsDo: aBlock 

	slots do: aBlock! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:45:45'!
arrayedSize 

	"
	 Return the size of the arrayed part of this object, that this,
	 the value of size field in object header minus the instSize. 
	"

	^ self size - self instSize! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:22'!
asBoolean 
	spec name = #True ifTrue: [ ^true ].	spec name = #False ifTrue: [ ^false ].
	self assert: false! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:40'!
at: index 
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: slots size - self instSize).
	^slots at: self instSize + index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:52'!
at: index put: value 
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	self assert: spec isVariable.
	self assert: (index between: 1 and: slots size - self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: self instSize + index put: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:07'!
atAllPut: value 

	slots atAllPut: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:18'!
basicAt: index 
	"Return indexed value at given raw index, starting with 1"

	self assert: (index between: 1 and: slots size).
	^ slots at: index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:32'!
bodySizeInBytes 
	
	^ self sizeInBytes! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:48:52'!
doesNotUnderstand: aMessage 
	"Assume setter or accessor and try to do the right thing"
	| sel ivars |
	sel := aMessage selector.
	ivars := self allInstVarNames.
	sel isUnary
		ifTrue: [ (ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel ] ].
	(sel isKeyword and: [ sel numArgs == 1 ])
		ifTrue: [ sel := sel allButLast.
			(ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel put: aMessage arguments first ] ].
	^ super doesNotUnderstand: aMessage! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:20'!
headerFlags 

	| variable named small |
	variable := spec isVariable ifTrue: [2] ifFalse: [0].
	named := spec instSize == 0 ifTrue: [0] ifFalse: [4].
	small := self isSmall ifTrue: [16r80] ifFalse: [0].
	^ variable | named | small! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:31'!
headerHash 

	^hash! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:43'!
headerHash: anInteger 

	hash := anInteger! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:51:28'!
size 
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ slots size! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:51:56'!
sizeInBytes 

	^ self size * self wordSize! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:09'!
slotAt: index 
	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self assert: (index between: 1 and: self instSize).
	^slots at: index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:24'!
slotAt: index put: value 
	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self assert: (index between: 1 and: self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: index put: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:35'!
slots 

	^slots! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:54:19'!
value 

	| message |
	(self allInstVarNames includes: #value) ifFalse: [ ^super value ].
	message := Message selector: #value.
	^ self doesNotUnderstand: message! !

!SlotObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:44:48'!
new: anRGBehavior size: size withAll: value 

	| obj |
	obj := self new: anRGBehavior size: size.
	^obj atAllPut: value; yourself! !

!SmallintObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:58:25'!
isImmediate 

	^ true! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:57:39'!
initializeAs: anRGBehavior sized: size 

	self shouldNotImplement! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:57:49'!
initializeAs: anRGBehavior valued: anInteger 

	self assert: anRGBehavior name == #SmallInteger.
	self assert: anInteger isInteger.
	spec := anRGBehavior.
	value := anInteger! !

!SmallintObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 14:02:57'!
validate 

	super validate.
"	self assert: value isSmallInteger "
	self assert: value class == SmallInteger! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:56:49'!
at: index 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:57:06'!
at: index put: anObject 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:57:21'!
hash 

	^ value hash! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:21'!
size 
	"I have zero object slots"
	^ 0! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:32'!
slotAt: index 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:42'!
slotAt: index put: anObject 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:00:55'!
value 

	^value! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:01:10'!
value: aSmallInteger 

	value := aSmallInteger! !

!SmallintObjectMap methodsFor: 'comparing' stamp: 'KenD 2/22/2021 13:56:26'!
= anObject 

	anObject class == self class
		ifFalse: [ ^ false ].
	^value == anObject value! !

!SmallintObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:55:55'!
new: anRGBehavior valued: anInteger 

	^self new initializeAs: anRGBehavior valued: anInteger! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:18'!
initialize 

	fields := Dictionary new! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:52'!
loadFrom: aClassDefinition 

	name := aClassDefinition name asSymbol.
	aClassDefinition allInstVarNames
		withIndexDo: [:ivarName :i | self indexOf: ivarName be: i]! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:45'!
indexOf: ivarName 
	
	^fields at: ivarName asString! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:57'!
indexOf: ivarName be: i 

	fields at: ivarName put: i! !

!ObjectShape class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:21:32'!
new 

	^self basicNew initialize! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:44'!
printOn: aStream indent: anInteger 

	super printOn: aStream! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:04:54'!
isAssignment 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:01'!
isCascade 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:10'!
isCascadeMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:16'!
isIdentifier 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:23'!
isInstVar 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:32'!
isLiteral 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:39'!
isMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:48'!
isMethod 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:55'!
isReturn 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:06:02'!
isSuper 

	^false! !

!SExpression methodsFor: 'visiting' stamp: 'KenD 2/22/2021 13:04:25'!
acceptVisitor: visitor 

	^self subclassResponsibility! !

!SIdenitifier methodsFor: 'visiting' stamp: 'KenD 2/23/2021 14:16:50'!
acceptVisitor: visitor 

	^visitor visitIdentifier: self! !

!SIdenitifier methodsFor: 'printing' stamp: 'KenD 2/23/2021 14:20:31'!
printOn: aStream indent: anInteger 

	aStream
		tab: anInteger;
		nextPutAll: '{IdentifierId. ';
		print: binding;
		nextPutAll: '}'! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:19'!
isArgument 

	^binding isArgument! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:33'!
isAssociation 

	^binding isAssociation! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:48'!
isIdentifier 

	^true! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:02'!
isInstVar 

	^binding isInstVar! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:12'!
isLiteral 

	^binding isLiteral! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:32'!
isSelf 
	
	^binding isSelf! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:43'!
isSelfOrSuper 

	^binding isSelf or: [binding isSuper]! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:53'!
isSuper 

	^binding isSuper! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:20:07'!
isTemporary 

	^binding isTemporary! !

!SIdenitifier methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:18:01'!
binding: aBinding 

	binding := aBinding! !

!SIdenitifier methodsFor: 'as yet unclassified' stamp: 'KenD 2/23/2021 14:17:16'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeIdentifier! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:28'!
index 

	^index! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:39'!
index: anInteger 

	index := anInteger! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:57:44'!
visit: aParseNode 

	^aParseNode notNil ifTrue: [aParseNode acceptVisitor: self] ! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:57:56'!
visitAssignment: anAssignmentNode 

	^self visitParseNode: anAssignmentNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:10'!
visitBlock: aBlockNode 

	^self visitParseNode: aBlockNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:23'!
visitBraceNode: aBraceNode 

	^self visitParseNode: aBraceNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:34'!
visitCascade: aCascadeNode 

	^self visitParseNode: aCascadeNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:54'!
visitCascadeMessage: aCascadeMessageNode 

	^self visitMessage: aCascadeMessageNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 15:54:18'!
visitForeignNode: anForeignNode 

	^self visitLiteral: anForeignNode ! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:29'!
visitIdentifier: anIdentifierNode 

	^self visitParseNode: anIdentifierNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:45'!
visitLiteral: aLiteralNode 

	^self visitParseNode: aLiteralNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:58'!
visitMessage: aMessageNode 

	^self visitParseNode: aMessageNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:09'!
visitMethod: aMethodNode 

	^self visitParseNode: aMethodNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:21'!
visitNumberNode: aNumberNode 

	^self visitLiteral: aNumberNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:33'!
visitParseNode: aParseNode 

	^self subclassResponsibility! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:42'!
visitPragma: aPragmaNode 

	^self visitParseNode: aPragmaNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:53'!
visitReturn: aReturnNode 

	^self visitParseNode: aReturnNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:03'!
visitSelector: aSelectorNode 

	^self visitParseNode: aSelectorNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:16'!
visitString: aStringNode 

	^self visitLiteral: aStringNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:30'!
visitSymbolicPragma: aPragmaNode 

	^self visitPragma: aPragmaNode! !

!SParseTreeVisitor class methodsFor: 'instance creation' stamp: 'KenD 2/21/2021 13:57:12'!
new 

	^super new initialize! !

!SToken methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:24:19'!
isDelimitedIdentifier 

	^false! !

!SToken methodsFor: 'initialization' stamp: 'KenD 2/21/2021 13:26:35'!
initialize 

	super initialize.
	stretch := 1 thru: 0! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:01'!
endsExpression 

	^self isEnd! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:14'!
hasSymbol 

	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:44'!
is: anObject 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:55'!
isAssignment 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:07'!
isBar 

	^(self is: #'|') or: [self is: #'/']! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:17'!
isBlockNode 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:28'!
isComment 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:24:56'!
isDelimiter 

	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:24:49'!
isEnd 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:09'!
isIdentifier 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:20'!
isLiteral 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:29'!
isNameToken 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:38'!
isNumberNode 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:52'!
isPoolLiteral 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:26:57'!
sStringToken 

	^false! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:18:29'!
compileWarning: aString 

	compiler notify: aString at: self stretch! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:18:41'!
compiler 

	^compiler! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:14'!
compiler: aSmalltalkCompiler 

	compiler := aSmalltalkCompiler! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:25'!
end 

	^stretch end! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:35'!
end: aNumber 

	stretch end: aNumber! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:27:49'!
position 

	^stretch start! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:02'!
position: aNumber 

	stretch start: aNumber! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:13'!
prevPosition 

	^stretch start - 1! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:27'!
source 
	^compiler sourceCode copyFrom: stretch start to: stretch end! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:38'!
stretch 

	^stretch! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:50'!
stretch: aStretch 

	stretch := aStretch! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:45'!
comments 

	^comments! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:56'!
comments: aCollection 

	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:27:32'!
moveCommentsTo: aParseNode 

	aParseNode comments: comments.
	comments := nil! !

!SEndToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:05:41'!
value: aString 

	''! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:04:42'!
position: aNumber 

	super position: aNumber - 1! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:05:00'!
prevPosition 

	^stretch start! !

!SEndToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:04:14'!
isEnd
	^true! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:52:09'!
moveCommentsFrom: aParseNode 

	aParseNode moveCommentsTo: self! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:12'!
ast 

	^compiler ast! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:34'!
hasAssign 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:48'!
isAssign 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:00'!
isBraceNode 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:11'!
isCascade 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:22'!
isCascadeMessage 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:30'!
isEvaluable 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:39'!
isImmediate 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:45'!
isMessageNode 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:52'!
isMethod 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:59'!
isMethodArgument 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:05'!
isMethodTemporary 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:14'!
isReturn 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:28'!
isSelector 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:34'!
isSelf 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:45'!
isSuper 

	^false! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:48:44'!
allNodesDo: aBlock 

	self nodesDo: aBlock includingDeclarations: true! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:52:43'!
nodeWithLiteral: anObject 

	^self nodesDetect: [:n | (n isLiteral or: [n isSelector]) 
					and: [n value = anObject]] 
		ifAbsent: nil
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:53:52'!
nodesDetect: aBlock ifAbsent: absentBlock 

	self  nodesDo: [:node | (aBlock value: node) ifTrue: [ ^node ] ] 
		includingDeclarations: false.
	^absentBlock value! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:54:05'!
nodesDo: aBlock 

	self nodesDo: aBlock includingDeclarations: false! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:54:21'!
nodesDo: aBlock includingDeclarations: aBoolean 

	aBlock evaluateWith: self! !

!SParseNode methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:48:13'!
acceptVisitor: visitor 

	^visitor visitParseNode: self! !

!SIdentifierNode methodsFor: 'evaluating' stamp: 'KenD 2/23/2021 14:29:21'!
name: aString 

	name := aString reduced! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 2/23/2021 14:23:55'!
beAssigned 

	| immutable |
	binding canBeAssigned ifTrue: [^self].
	immutable := binding isClassBinding
		ifTrue: ['class']
		ifFalse: [compiler activeScope describe: binding name].
	self compileError: 'cannot assign to ' , immutable! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 2/23/2021 14:29:35'!
resolveAssigning: aBoolean 
	| scope |
	scope := compiler activeScope.
	binding := scope resolve: name.
	binding isUnresolved ifFalse: [^binding].
	(scope hasMultipleBindingsFor: name)
		ifTrue: [self compileError: 'variable belongs in multiple pools'].
	compiler undeclaredErrorAt: self stretch assignment: aBoolean.
	^binding := scope resolve: name! !

!SIdentifierNode methodsFor: 'emitCode' stamp: 'KenD 2/23/2021 14:26:14'!
emitLoadAusing: anAstcodeEncoder 

	binding emitLoadAusing: anAstcodeEncoder! !

!SIdentifierNode methodsFor: 'initialization' stamp: 'KenD 2/23/2021 14:26:31'!
nitialize 

	super initialize.
	binding := UnresolvedBinding default! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:24:42'!
checkLowercase 
	| char |
	char := name first.
	(char isLetter and: [char isUppercase]) ifFalse: [^self].
	self compileWarning: name storeString , ' should start with lowercase'! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:26:53'!
isEvaluable 

	^self isIdentifierLiteral! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:06'!
isIdentifier 

	^true! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:15'!
isIdentifierLiteral 

	binding isUnresolved ifFalse: [^binding isLiteral].
	^self ast ifNil: [false] ifNotNil: [:ast | | b |
		b := ast scope resolve: name.
		b isLiteral]! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:40'!
isImmediate 

	^true! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:54'!
isMethodArgument 
	| ast |
	binding isArgument ifFalse: [^false].
	ast := self ast ifNil: [^false].
	^ast arguments includes: self declaration! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:13'!
isMethodTemporary 

	^self ast temporaries includes: self declaration! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:22'!
isSelf 

	^binding isSelf! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:33'!
sSuper 

	^binding isSuper! !

!SIdentifierNode methodsFor: 'visiting' stamp: 'KenD 2/23/2021 14:23:40'!
acceptVisitor: visitor 

	^visitor visitIdentifier: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:06'!
declaration 

	^binding declaration! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:20'!
defineArgumentIn: aScriptScope 

	binding := aScriptScope defineArgument: name.
	binding declaration: self! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:37'!
defineTemporaryIn: scope 

	binding := scope defineTemporary: name.
	binding declaration: self! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:41'!
hasSymbol 

	^value isSymbol! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:28'!
isEvaluable 

	^true! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:19'!
isImmediate 

	^true! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:00'!
isLiteral 

	^true! !

!SLiteralNode methodsFor: 'accessing' stamp: 'KenD 2/22/2021 12:59:23'!
value 

	^value! !

!SLiteralNode methodsFor: 'accessing' stamp: 'KenD 2/22/2021 12:59:34'!
value: anObject 

	value := anObject! !

!SLiteralNode methodsFor: 'emitCode' stamp: 'KenD 2/22/2021 13:02:25'!
emitLoadAusing: anSExpressionNativizer 

	anSExpressionNativizer encodeLoadAwithLiteral: value! !

!SLiteralNode methodsFor: 'private' stamp: 'KenD 2/22/2021 13:01:22'!
beSymbol 

	value := value asSymbol! !

!SLiteralNode methodsFor: 'visiting' stamp: 'KenD 2/22/2021 12:55:31'!
acceptVisitor: visitor 
	
	^visitor visitLiteral: self! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:05'!
value 

	^value! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:25'!
value: anObject 

	value := anObject! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:12:43'!
is: anObject 

	^value == anObject! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:07'!
endsExpression 

	^value = $. or: [value = $]] or: [value = $)] or: [value = $}]! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:17'!
isAssignment 

	^self is: #':='! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:30'!
isDelimiter 

	^true! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:07:46'!
beCharacter 

	value := value isCharacter ifTrue: [value] ifFalse: [value first]! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:08:46'!
value: aString 

	super value: aString asSymbol! !

!SDelimiterToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:07:09'!
asSelectorNode 

	^compiler selectorNode symbol: value asString; stretch: stretch! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:10:39'!
hasSymbol 

	^value isSymbol! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:10:52'!
isBinary 

	^value isSymbol! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:04'!
isDelimitedIdentifier 

	^value first = ${! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:18'!
isKeyword 

	^value last = $:! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:32'!
isNameToken 

	^(self isKeyword or: [self isBinary]) not! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:43'!
isStringToken 

	^true! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:10:03'!
asIdentifierNode 

	^compiler identifierNode
		name: value;
		stretch: stretch;
		comments: comments! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:10:21'!
asSelectorNode 

	^compiler selectorNode symbol: value; stretch: stretch! !
AstBindingTypes initialize!
