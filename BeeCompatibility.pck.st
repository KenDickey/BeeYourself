'From Cuis 5.0 [latest update: #4638] on 18 June 2021 at 12:55:21 pm'!
'Description Bee compatibile!!'!
!provides: 'BeeCompatibility' 1 4!
SystemOrganization addCategory: #BeeCompatibility!


!classDefinition: #PSharedPool category: #BeeCompatibility!
SharedPool subclass: #PSharedPool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'PSharedPool class' category: #BeeCompatibility!
PSharedPool class
	instanceVariableNames: ''!

!classDefinition: #Stretch category: #BeeCompatibility!
Object subclass: #Stretch
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'Stretch class' category: #BeeCompatibility!
Stretch class
	instanceVariableNames: ''!

!classDefinition: #TargetOSPlatform category: #BeeCompatibility!
Object subclass: #TargetOSPlatform
	instanceVariableNames: ''
	classVariableNames: 'CPU OS WordSizeInBits'
	poolDictionaries: ''
	category: 'BeeCompatibility'!
!classDefinition: 'TargetOSPlatform class' category: #BeeCompatibility!
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
TargetOSPlatform initialize!
