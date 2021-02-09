'From Cuis 5.0 [latest update: #4530] on 9 February 2021 at 3:56:17 pm'!
'Description Port of PowerLang/Bee-DMR Petite Parser code into Cuis'!
!provides: 'BeePParser' 1 4!
!requires: 'PetitParser' 1 2 nil!
SystemOrganization addCategory: 'BeePParser'!


!classDefinition: #BeePPStream category: 'BeePParser'!
PPStream subclass: #BeePPStream
	instanceVariableNames: 'failure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'BeePPStream class' category: 'BeePParser'!
BeePPStream class
	instanceVariableNames: ''!


!BeePPStream methodsFor: 'printing' stamp: 'KenD 2/9/2021 15:14:15'!
printOn: aStream
	collection isString
		ifFalse: [ ^ super printOn: aStream ].
	aStream
		nextPutAll: (collection copyFrom: 1 to: position);
		nextPutAll: 'ꞈ'; "@@?from Bee @@"
		nextPutAll: (collection copyFrom: position + 1 to: readLimit)! !

!BeePPStream methodsFor: 'accessing' stamp: 'KenD 2/7/2021 16:39:49'!
failure 

	^failure! !

!BeePPStream methodsFor: 'accessing' stamp: 'KenD 2/7/2021 16:40:07'!
failure: aPPFailure 

	(failure isNil or: [failure position < aPPFailure position])
		ifTrue: [failure := aPPFailure]! !

!BeePPStream methodsFor: 'converting' stamp: 'KenD 2/7/2021 16:39:16'!
asPetitStream 

	^ self! !

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
