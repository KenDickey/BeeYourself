'From Cuis 5.0 [latest update: #4530] on 19 February 2021 at 8:54:01 am'!
'Description Code Metamodel (used by Powerlang/Bee-DMR)'!
!provides: 'Ring2' 1 0!
SystemOrganization addCategory: 'Ring2-Core'!


!classDefinition: #RGObject category: 'Ring2-Core'!
Object subclass: #RGObject
	instanceVariableNames: 'properties name parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core'!
!classDefinition: 'RGObject class' category: 'Ring2-Core'!
RGObject class
	instanceVariableNames: ''!


!RGObject commentStamp: '<historical>' prior: 0!
I am the root class of the Ring meta-model definitions.
A Ring definition has a name, properties and knows its environment!

!RGObject methodsFor: 'copying' stamp: 'KenD 2/17/2021 23:09:06'!
postCopy 

	super postCopy.
	properties := properties copy.! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/19/2021 08:39:19'!
name 

	^ (self backend nameFor: self) orDefaultForUnresolved ! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:08:32'!
properties 

	^ properties ifNil: [ properties := IdentityDictionary new ]! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:08:15'!
propertyNamed: propertyName 
	
	^ self
		propertyNamed: propertyName
		ifAbsent: [ nil ]! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:07:59'!
propertyNamed: annotationName ifAbsent: exceptionBlock 

	^ self properties
			at: annotationName
			ifAbsent: [ exceptionBlock value ]! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:07:43'!
propertyNamed: annotationName ifAbsentPut: blockValue 

	^ self properties
		at: annotationName
		ifAbsentPut: blockValue! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:07:23'!
propertyNamed: annotationName put: value 

	self properties
		at: annotationName
		put: value! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:07:05'!
propertyNames 
	
	self hasProperties
		ifFalse:[ ^ OrderedCollection new ].
	^ properties keys! !

!RGObject methodsFor: 'properties' stamp: 'KenD 2/17/2021 23:04:07'!
removePropertyNamed: propertyName 
	
	(self hasPropertyNamed: propertyName)
		ifTrue: [ properties removeKey: propertyName ]! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/19/2021 08:39:54'!
name: aString 

	| oldName |
	
	oldName := name.
	self backend setNameFor: self to: aString.
	self parent child: self renamedFrom: oldName to: aString.! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/17/2021 23:10:53'!
package 

	^ self parent package! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/17/2021 23:10:33'!
parent 
	"The parent of a class definition element: method, comment and variable is the class definition. This method retrieves the class that defines such element"
	
	"@@@???@@@ <ignoreForMutations>"
	parent ifNil: [ 
		self parent: self defaultParentStub.
		self addoptToParentStub ].
	
	^ parent.! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/17/2021 23:09:59'!
parent: anRGBehavior 

	"If possible, do not use this method directly."
	"@@@???@@@  <ignoreForMutations>"

	parent := anRGBehavior.
	"self addoptToParentStub."! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/17/2021 23:03:39'!
resolvedNameOrNil 

	^ self hasResolvedName
		ifTrue: [ self name. ]
		ifFalse: [ nil ].		! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/17/2021 23:02:47'!
unresolveName 

	| oldName result |
	
	oldName := name.
	result := self unresolvedValue: self unresolvedName.
	self pvtName: result.
	self parent child: self renamedFrom: oldName to: result value.
	^ result! !

!RGObject methodsFor: 'resolving' stamp: 'KenD 2/17/2021 23:02:14'!
defaultUnresolvedName 

	^ #unresolved! !

!RGObject methodsFor: 'resolving' stamp: 'KenD 2/17/2021 23:12:53'!
markAsRingResolved 

	self propertyNamed: #resolved put: true.! !

!RGObject methodsFor: 'resolving' stamp: 'KenD 2/17/2021 23:03:15'!
resolvedProperties 

	^ (self backend resolvedPropertiesFor: self)! !

!RGObject methodsFor: 'resolving' stamp: 'KenD 2/17/2021 23:01:30'!
unresolvedName 

	^ #unresolved! !

!RGObject methodsFor: 'resolving' stamp: 'KenD 2/17/2021 23:01:10'!
unresolvedProperties 

	^ (self backend unresolvedPropertiesFor: self)! !

!RGObject methodsFor: 'converting' stamp: 'KenD 2/17/2021 23:00:36'!
unresolvedValue 

	^ RGUnresolvedValue new.! !

!RGObject methodsFor: 'converting' stamp: 'KenD 2/17/2021 23:00:12'!
unresolvedValue: aDefaultValue 

	^ RGUnresolvedValue new
		default: aDefaultValue;
		yourself! !

!RGObject methodsFor: 'private' stamp: 'KenD 2/17/2021 23:06:00'!
pvtParent: anRGObject 

	parent := anRGObject.! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:11:38'!
named: aString 

	 name := aString! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:06:48'!
pvtFullyResolved 

	^ (self pvtResolvableProperties collect: #value) allSatisfy: #isRingFullyResolved! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:06:35'!
pvtFullyUnresolved 
		
	^ (self pvtResolvableProperties collect: #value) noneSatisfy: #isRingFullyResolved! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 22:57:02'!
pvtName 

	^ name! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 22:57:46'!
pvtName: aString 

	 name := aString! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:05:13'!
pvtResolvableProperties 

	^ { #name -> name }.! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:04:51'!
pvtResolvedProperties 

	^ self pvtResolvableProperties select: [:each | each value isRingResolved ] thenCollect: #key! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:04:31'!
pvtUnresolvedProperties 

	^ self pvtResolvableProperties select: [:each | each value isRingResolved not ] thenCollect: #key! !

!RGObject class methodsFor: 'instance creation' stamp: 'KenD 2/17/2021 22:54:29'!
asYetUnclassifiedProtocolName 

	^ 'as yet unclassified' asSymbol! !

!RGObject class methodsFor: 'instance creation' stamp: 'KenD 2/17/2021 22:59:01'!
named: aString 
	"create model in its own environment"

	^self new
		name: aString;
		yourself! !
