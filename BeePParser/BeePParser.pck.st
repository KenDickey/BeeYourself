'From Cuis 5.0 [latest update: #4527] on 7 February 2021 at 4:45:37 pm'!
'Description Port of PowerLang/Bee-DMR Petite Parser code into Cuis'!
!provides: 'BeePParser' 1 3!
!requires: 'PetitParser' 1 2 nil!
SystemOrganization addCategory: #BeePParser!


!classDefinition: #BeePPStream category: #BeePParser!
PPStream subclass: #BeePPStream
	instanceVariableNames: 'failure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BeePParser'!
!classDefinition: 'BeePPStream class' category: #BeePParser!
BeePPStream class
	instanceVariableNames: ''!


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
