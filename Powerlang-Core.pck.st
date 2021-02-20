'From Cuis 5.0 [latest update: #4530] on 20 February 2021 at 3:11:30 pm'!
'Description Powerlang Core code to manage Cuis hosted Bee runtime code'!
!provides: 'Powerlang-Core' 1 0!
!requires: 'Ring2' 1 1 nil!
!requires: 'BeePParser' 1 17 nil!
SystemOrganization addCategory: 'Powerlang-Core'!


!classDefinition: #SSmalltalkScanner category: 'Powerlang-Core'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSmalltalkScanner class' category: 'Powerlang-Core'!
SSmalltalkScanner class
	instanceVariableNames: ''!

