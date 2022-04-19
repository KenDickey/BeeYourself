'From Cuis 6.0 [latest update: #5107] on 19 April 2022 at 3:23:02 pm'!
'Description Bee compatibile!!'!
!provides: 'BeeCompatibility' 1 9!
SystemOrganization addCategory: 'BeeCompatibility'!


!classDefinition: #PSharedPool category: 'BeeCompatibility'!
SharedPool subclass: #PSharedPool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'PSharedPool class' category: 'BeeCompatibility'!
PSharedPool class
	instanceVariableNames: ''!

!classDefinition: #Stretch category: 'BeeCompatibility'!
Object subclass: #Stretch
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'Stretch class' category: 'BeeCompatibility'!
Stretch class
	instanceVariableNames: ''!

!classDefinition: #TargetOSPlatform category: 'BeeCompatibility'!
Object subclass: #TargetOSPlatform
	instanceVariableNames: ''
	classVariableNames: 'CPU OS WordSizeInBits'
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'TargetOSPlatform class' category: 'BeeCompatibility'!
TargetOSPlatform class
	instanceVariableNames: ''!


!TargetOSPlatform commentStamp: '<historical>' prior: 0!
I am working around current target system assumptions.

Nota Bene: x86:64 Linux => See  TargetOSPlatform class >> initialize

For current system, note:
  	Smalltalk wordSize.  "8  => number of Bytes" 
	Smalltalk platformName ." 'unix' "
	Smalltalk platformSubtype. " 'aarch64' "
	Smalltalk osVersion ." 'linux-gnu' "
	!

!Stretch methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:41:14'!
printOn: aStream 

	aStream
		nextPutAll: start asString;
		nextPutAll: ' thru: ';
		nextPutAll: end asString! !

!PSharedPool class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:33:58'!
asArray 

	^self classPool asArray! !

!PSharedPool class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:34:07'!
at: aString 
	| var |
	var :=  self classPool
		associationAt: aString asSymbol
		ifAbsent: [ self error: 'no such pool var' ].
	^var value! !

!PSharedPool class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:34:15'!
at: aString ifAbsent: aBlock 
	| var |
	var := self classPool associationAt: aString asSymbol ifAbsent: [^aBlock value].
	^ var value! !

!PSharedPool class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:34:30'!
at: aString put: anObject 

	^self classPool
		at: aString 
		put: anObject! !

!PSharedPool class methodsFor: 'enumerating' stamp: 'Install-PowerLang 4/25/2021 10:33:29'!
detect: aBlock ifNone: anotherBlock 

	^self classPool detect: aBlock  ifNone: [ ^ anotherBlock value ]! !

!PSharedPool class methodsFor: 'enumerating' stamp: 'Install-PowerLang 4/25/2021 10:32:41'!
do: aBlock 

	^self classPool do: aBlock! !

!Stretch methodsFor: 'comparing' stamp: 'KenD 2/21/2021 13:37:03'!
= aStretch 

	self class == aStretch class ifFalse: [^false].
	^start = aStretch start and: [end = aStretch end]! !

!Stretch methodsFor: 'comparing' stamp: 'KenD 2/21/2021 13:38:19'!
hash 

	^start hashWith: end! !

!Stretch methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:39:03'!
includes: anInteger 

	^anInteger between: start and: end! !

!Stretch methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:39:26'!
intersects: aStretch 

	self isEmpty ifTrue: [^false].
	(aStretch includes: start) ifTrue: [^true].
	^aStretch includes: end! !

!Stretch methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:39:38'!
isEmpty 

	^end < start! !

!Stretch methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:40:40'!
notEmpty 

	^start <= end! !

!Stretch methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:37:58'!
end 

	^end! !

!Stretch methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:38:07'!
end: anInteger 

	end := anInteger! !

!Stretch methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:41:30'!
start 

	^start! !

!Stretch methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:41:38'!
start: anInteger 

	start := anInteger! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:36:10'!
+ delta 

	delta isInteger ifTrue: [^start + delta thru: end + delta].
	delta isPoint ifTrue: [^start + delta x thru: end + delta y].
	^start + delta start thru: end + delta end! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:36:25'!
- delta 

	^self + delta negated! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:36:38'!
// anInteger 
	^start // anInteger thru: end // anInteger! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:37:14'!
center 

	^start + end // 2! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:37:28'!
down: anInteger 

	^start thru: end + anInteger! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:39:53'!
length 

	^end - start + 1! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:40:04'!
max 

	^start max: end! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:40:13'!
min 

	^start min: end! !

!Stretch methodsFor: 'arithmetic' stamp: 'KenD 2/21/2021 13:40:25'!
negated 

	^start negated thru: end negated! !

!Stretch class methodsFor: 'instance creation' stamp: 'KenD 2/21/2021 13:35:42'!
from: start thru: end 

	^self new start: start; end: end! !

!TargetOSPlatform methodsFor: 'testing' stamp: 'KenD 2/24/2021 14:36:38'!
isUnix64

	^true! !

!TargetOSPlatform methodsFor: 'testing' stamp: 'KenD 2/24/2021 14:36:26'!
isWin64

	^false! !

!TargetOSPlatform class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 14:24:04'!
initialize
	"Nota Bene: x86:64"
	CPU := #Intel.
	OS := #Linux.
	WordSizeInBits := 64.! !

!TargetOSPlatform class methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:27:13'!
targetCPU

	^CPU! !

!TargetOSPlatform class methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:27:45'!
targetOS

	^OS ! !

!TargetOSPlatform class methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:32:24'!
targetWordSizeInBits

	^WordSizeInBits ! !

!TargetOSPlatform class methodsFor: 'instance creation' stamp: 'KenD 6/18/2021 12:28:07'!
current

	^self new initialize.! !

!False methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 10:55:15'!
and: block1 andNot: block2 

	^ self! !

!False methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 10:54:53'!
andNot: aBlock 

	^ self! !

!False methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 11:00:52'!
asParameter 
	"Answer machine value for falsity"
	^ 0! !

!True methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 10:57:00'!
andNot: aBlock 
	
	^ aBlock value not! !

!True methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 10:59:03'!
asParameter 
	"Answer machine value for truth"
	^ 1! !

!UndefinedObject methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 11:02:35'!
asParameter 
	"Answer machine value for 'no value'"
	^ 0! !

!Behavior methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 14:24:21'!
_instancesAreArrayed

	^ self isVariable ! !

!Behavior methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 14:23:46'!
_instancesHavePointers

	^ self isPointers ! !

!String methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 10:43:38'!
arity
	"Answer number of arguments I have as a selector or -1"
	^ self numArgs! !

!String methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 12:25:55'!
trimBlanks

	^ self withBlanksTrimmed! !

!Array methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 14:44:01'!
& otherArray
	| combinedArray offset |
	combinedArray := Array new: (self size + otherArray size).
	1 to: self size do: [ :index | combinedArray at: index put: (self at: index) ].
	offset := self size.
	1 to: otherArray size do: [ :index | combinedArray at: index + offset put: (otherArray at: index) ].
	^ combinedArray! !

!CompiledMethod methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 15:02:12'!
classBinding

	^ self methodClass! !

!PositionableStream methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 14:49:24'!
copyFrom: start to: finish

	^ collection copyFrom: start to: finish! !

!PositionableStream methodsFor: '*BeeCompatibility' stamp: 'KenD 4/19/2022 15:21:39'!
nextWordOrNumber
	"Take next non-separators as a 'word' and return it"
	| word |
	word := ''.
	[self atEnd]
		whileFalse:
		[| aChar |
		aChar := self next.
		aChar isSeparator 
			ifTrue: [ word := word , aChar asString ]
			ifFalse: [^ self position: self position-1]
		].
	^ word! !
TargetOSPlatform initialize!
