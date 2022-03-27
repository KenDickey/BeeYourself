'From Cuis 6.0 [latest update: #5095] on 27 March 2022 at 4:34:05 pm'!
'Description Code Metamodel (used by Powerlang/Bee-DMR)

Ported from https://github.com/pavel-krivanek/Ring2
  but without support for Traits'!
!provides: 'Ring2' 1 14!
SystemOrganization addCategory: 'Ring2-Core-Kernel'!
SystemOrganization addCategory: 'Ring2-Core'!
SystemOrganization addCategory: 'Ring2-Core-Environment'!


!classDefinition: #RGBadInstantiationError category: 'Ring2-Core-Kernel'!
Error subclass: #RGBadInstantiationError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBadInstantiationError class' category: 'Ring2-Core-Kernel'!
RGBadInstantiationError class
	instanceVariableNames: ''!

!classDefinition: #RGIncompatibleBehaviorTypeError category: 'Ring2-Core-Kernel'!
Error subclass: #RGIncompatibleBehaviorTypeError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGIncompatibleBehaviorTypeError class' category: 'Ring2-Core-Kernel'!
RGIncompatibleBehaviorTypeError class
	instanceVariableNames: ''!

!classDefinition: #RGJoiningError category: 'Ring2-Core-Kernel'!
Error subclass: #RGJoiningError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGJoiningError class' category: 'Ring2-Core-Kernel'!
RGJoiningError class
	instanceVariableNames: ''!

!classDefinition: #RGMergeError category: 'Ring2-Core-Kernel'!
Error subclass: #RGMergeError
	instanceVariableNames: 'property target source'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGMergeError class' category: 'Ring2-Core-Kernel'!
RGMergeError class
	instanceVariableNames: ''!

!classDefinition: #RGNotFoundError category: 'Ring2-Core-Kernel'!
Error subclass: #RGNotFoundError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGNotFoundError class' category: 'Ring2-Core-Kernel'!
RGNotFoundError class
	instanceVariableNames: ''!

!classDefinition: #RGResolvingError category: 'Ring2-Core-Kernel'!
Error subclass: #RGResolvingError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGResolvingError class' category: 'Ring2-Core-Kernel'!
RGResolvingError class
	instanceVariableNames: ''!

!classDefinition: #RGWrongEnvironment category: 'Ring2-Core-Kernel'!
Error subclass: #RGWrongEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGWrongEnvironment class' category: 'Ring2-Core-Kernel'!
RGWrongEnvironment class
	instanceVariableNames: ''!

!classDefinition: #RGBehaviorFactory category: 'Ring2-Core-Kernel'!
Object subclass: #RGBehaviorFactory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBehaviorFactory class' category: 'Ring2-Core-Kernel'!
RGBehaviorFactory class
	instanceVariableNames: ''!

!classDefinition: #RGStampParser category: 'Ring2-Core-Kernel'!
Object subclass: #RGStampParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGStampParser class' category: 'Ring2-Core-Kernel'!
RGStampParser class
	instanceVariableNames: ''!

!classDefinition: #RGUnresolvedValue category: 'Ring2-Core-Kernel'!
Object subclass: #RGUnresolvedValue
	instanceVariableNames: 'default'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGUnresolvedValue class' category: 'Ring2-Core-Kernel'!
RGUnresolvedValue class
	instanceVariableNames: ''!

!classDefinition: #RGObject category: 'Ring2-Core'!
Object subclass: #RGObject
	instanceVariableNames: 'properties name parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core'!
!classDefinition: 'RGObject class' category: 'Ring2-Core'!
RGObject class
	instanceVariableNames: ''!

!classDefinition: #RGBehaviorStrategy category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGBehaviorStrategy
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBehaviorStrategy class' category: 'Ring2-Core-Kernel'!
RGBehaviorStrategy class
	instanceVariableNames: ''!

!classDefinition: #RGBehavior category: 'Ring2-Core-Kernel'!
RGBehaviorStrategy subclass: #RGBehavior
	instanceVariableNames: 'superclass localMethods traitComposition metaclass tagsForMethods tags'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBehavior class' category: 'Ring2-Core-Kernel'!
RGBehavior class
	instanceVariableNames: ''!

!classDefinition: #RGBehaviorStrategyUser category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGBehaviorStrategyUser
	instanceVariableNames: 'behaviorStrategy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBehaviorStrategyUser class' category: 'Ring2-Core-Kernel'!
RGBehaviorStrategyUser class
	instanceVariableNames: ''!

!classDefinition: #RGElement category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGElement class' category: 'Ring2-Core-Kernel'!
RGElement class
	instanceVariableNames: ''!

!classDefinition: #RGComment category: 'Ring2-Core-Kernel'!
RGElement subclass: #RGComment
	instanceVariableNames: 'content author time'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGComment class' category: 'Ring2-Core-Kernel'!
RGComment class
	instanceVariableNames: ''!

!classDefinition: #RGMethod category: 'Ring2-Core-Kernel'!
RGElement subclass: #RGMethod
	instanceVariableNames: 'sourceCode package author time tags'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGMethod class' category: 'Ring2-Core-Kernel'!
RGMethod class
	instanceVariableNames: ''!

!classDefinition: #RGSlot category: 'Ring2-Core-Kernel'!
RGElement subclass: #RGSlot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGSlot class' category: 'Ring2-Core-Kernel'!
RGSlot class
	instanceVariableNames: ''!

!classDefinition: #RGIndexedSlot category: 'Ring2-Core-Kernel'!
RGSlot subclass: #RGIndexedSlot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGIndexedSlot class' category: 'Ring2-Core-Kernel'!
RGIndexedSlot class
	instanceVariableNames: ''!

!classDefinition: #RGInstanceVariableSlot category: 'Ring2-Core-Kernel'!
RGIndexedSlot subclass: #RGInstanceVariableSlot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGInstanceVariableSlot class' category: 'Ring2-Core-Kernel'!
RGInstanceVariableSlot class
	instanceVariableNames: ''!

!classDefinition: #RGUnknownSlot category: 'Ring2-Core-Kernel'!
RGSlot subclass: #RGUnknownSlot
	instanceVariableNames: 'expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGUnknownSlot class' category: 'Ring2-Core-Kernel'!
RGUnknownSlot class
	instanceVariableNames: ''!

!classDefinition: #RGVariable category: 'Ring2-Core-Kernel'!
RGElement subclass: #RGVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGVariable class' category: 'Ring2-Core-Kernel'!
RGVariable class
	instanceVariableNames: ''!

!classDefinition: #RGClassVariable category: 'Ring2-Core-Kernel'!
RGVariable subclass: #RGClassVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGClassVariable class' category: 'Ring2-Core-Kernel'!
RGClassVariable class
	instanceVariableNames: ''!

!classDefinition: #RGPoolVariable category: 'Ring2-Core-Kernel'!
RGVariable subclass: #RGPoolVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGPoolVariable class' category: 'Ring2-Core-Kernel'!
RGPoolVariable class
	instanceVariableNames: ''!

!classDefinition: #RGGlobalVariable category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGGlobalVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGGlobalVariable class' category: 'Ring2-Core-Kernel'!
RGGlobalVariable class
	instanceVariableNames: ''!

!classDefinition: #RGLayout category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGLayout class' category: 'Ring2-Core-Kernel'!
RGLayout class
	instanceVariableNames: ''!

!classDefinition: #RGEmptyLayout category: 'Ring2-Core-Kernel'!
RGLayout subclass: #RGEmptyLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGEmptyLayout class' category: 'Ring2-Core-Kernel'!
RGEmptyLayout class
	instanceVariableNames: ''!

!classDefinition: #RGObjectLayout category: 'Ring2-Core-Kernel'!
RGLayout subclass: #RGObjectLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGObjectLayout class' category: 'Ring2-Core-Kernel'!
RGObjectLayout class
	instanceVariableNames: ''!

!classDefinition: #RGBitsLayout category: 'Ring2-Core-Kernel'!
RGObjectLayout subclass: #RGBitsLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGBitsLayout class' category: 'Ring2-Core-Kernel'!
RGBitsLayout class
	instanceVariableNames: ''!

!classDefinition: #RGCompiledMethodLayout category: 'Ring2-Core-Kernel'!
RGObjectLayout subclass: #RGCompiledMethodLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGCompiledMethodLayout class' category: 'Ring2-Core-Kernel'!
RGCompiledMethodLayout class
	instanceVariableNames: ''!

!classDefinition: #RGImmediateLayout category: 'Ring2-Core-Kernel'!
RGObjectLayout subclass: #RGImmediateLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGImmediateLayout class' category: 'Ring2-Core-Kernel'!
RGImmediateLayout class
	instanceVariableNames: ''!

!classDefinition: #RGPointerLayout category: 'Ring2-Core-Kernel'!
RGLayout subclass: #RGPointerLayout
	instanceVariableNames: 'slots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGPointerLayout class' category: 'Ring2-Core-Kernel'!
RGPointerLayout class
	instanceVariableNames: ''!

!classDefinition: #RGEphemeronLayout category: 'Ring2-Core-Kernel'!
RGPointerLayout subclass: #RGEphemeronLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGEphemeronLayout class' category: 'Ring2-Core-Kernel'!
RGEphemeronLayout class
	instanceVariableNames: ''!

!classDefinition: #RGFixedLayout category: 'Ring2-Core-Kernel'!
RGPointerLayout subclass: #RGFixedLayout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGFixedLayout class' category: 'Ring2-Core-Kernel'!
RGFixedLayout class
	instanceVariableNames: ''!

!classDefinition: #RGPackageDefinition category: 'Ring2-Core-Kernel'!
RGObject subclass: #RGPackageDefinition
	instanceVariableNames: 'definedBehaviors extensionMethods tagsForClasses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Kernel'!
!classDefinition: 'RGPackageDefinition class' category: 'Ring2-Core-Kernel'!
RGPackageDefinition class
	instanceVariableNames: ''!

!classDefinition: #RGEnvironment category: 'Ring2-Core-Environment'!
RGObject subclass: #RGEnvironment
	instanceVariableNames: 'announcer behaviors packages globalVariables backend queryInterface version'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'RGEnvironment class' category: 'Ring2-Core-Environment'!
RGEnvironment class
	instanceVariableNames: ''!

!classDefinition: #GlobalVariable category: 'Ring2-Core-Environment'!
Object subclass: #GlobalVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'GlobalVariable class' category: 'Ring2-Core-Environment'!
GlobalVariable class
	instanceVariableNames: ''!

!classDefinition: #RGEnvironmentBackend category: 'Ring2-Core-Environment'!
Object subclass: #RGEnvironmentBackend
	instanceVariableNames: 'environment providedDefinitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'RGEnvironmentBackend class' category: 'Ring2-Core-Environment'!
RGEnvironmentBackend class
	instanceVariableNames: ''!

!classDefinition: #RGReadOnlyBackend category: 'Ring2-Core-Environment'!
RGEnvironmentBackend subclass: #RGReadOnlyBackend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'RGReadOnlyBackend class' category: 'Ring2-Core-Environment'!
RGReadOnlyBackend class
	instanceVariableNames: ''!

!classDefinition: #RGReadOnlyImageBackend category: 'Ring2-Core-Environment'!
RGReadOnlyBackend subclass: #RGReadOnlyImageBackend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'RGReadOnlyImageBackend class' category: 'Ring2-Core-Environment'!
RGReadOnlyImageBackend class
	instanceVariableNames: ''!

!classDefinition: #RGEnvironmentQueryInterface category: 'Ring2-Core-Environment'!
Object subclass: #RGEnvironmentQueryInterface
	instanceVariableNames: 'environment behaviorsDictionary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ring2-Core-Environment'!
!classDefinition: 'RGEnvironmentQueryInterface class' category: 'Ring2-Core-Environment'!
RGEnvironmentQueryInterface class
	instanceVariableNames: ''!


!RGBehaviorFactory commentStamp: '<historical>' prior: 0!
My subclasses are very simple factories that serve as entry point to create different kind of behaviors. There should be no instances of me.

The behaviors are composition of a RGBehavior instances and a strategy that describes a kind of the behavior. The behavior factory only create sach pairs so for example my subclass RGClass creates a composition of RGBehavior instance with a RGClassStrategy.!

!RGObject commentStamp: '<historical>' prior: 0!
I am the root class of the Ring meta-model definitions.
A Ring definition has a name, properties and knows its environment!

!RGBehavior commentStamp: '<historical>' prior: 0!
An RGBehavior is an abstract definition for class-alike entities (e.g. classes, traits)

Instance Variables
	methods:		<Collection>
	protocols:		<Collection>
	superclass:		<Object>!

!RGBehaviorStrategyUser commentStamp: '<historical>' prior: 0!
I am an abstract behavior that has a behavior strategy and and delegates all messages to it.
!

!RGElement commentStamp: '<historical>' prior: 0!
RG2Element is the abstract class for representing elements of a class-alike definition (i.e., methods, variables, comment).

parent holds the RG2ClassDefinition or RG2Metaclass defining this element.
	
	
Now a RingEntityDefinition offers two APIs: one that is generic and works for all the source code entities and this is the one we just 
presented: parent, parentName and realParent. Having such interface is important to build generic tools that could manipulate 
any entities in a polymorphic way (yes no isKindOf: everywhere).

In addition, a ring method definition offers a specific interface that should only be used when you know that you are solely manipulate
specific entity such as class element: method definition, class comment, and variables. 

Here is the equivalence table

	realParent 				realClass
	parent					ringClass
	parentName			className
	
For example for a methodDefinition we will have the following:

GENERIC API
------------------
* To access the ring class definition name, use parentName
	aRG2MethodDefinition parentName
	
Example:
	(Point>>#dist:) asRing2Definition parentName
		->  #Point
		
* If you have a complete model where classes and methods are ring definition, to access the ring class definition , use parent
	aRG2MethodDefinition parent
	
Example:
	aRG2MethodDefinition(Point>>#dist:) parent
		->  aRG2ClassDefinition(Point)
		
* If you want to access the smalltalk class that contains the compiledMethod that is represented by a ringMethodDefinition, use realParent
	aRG2MethodDefinition realParent
	
Example:
	(Point>>#dist:) asRing2Definition realParent
		->  Point
		


CLASS Element specific API
------------------------------------------
* The message class returns the class of the object :). Yes as you see we could not use class and className because class is already used to refer to the class of the object.

Example:
	(Point>>#dist:) asRing2Definition class
		->  RingMethodDefinition
		
* The message className returns the name of the ring class defining the reingMethodDefinition.

Example:
	(Point>>#dist:) asRing2Definition className
		->  #Point		
		
* If you have a complete model where classes and methods are ring definition, to access the ring class definition , use parent
	aRG2MethodDefinition ringClass
	
Example:
	aRG2MethodDefinition(Point>>#dist:) ringClass
		->  aRG2ClassDefinition(Point)
		
		
* If you want to access the smalltalk class that contains the compiledMethod that is represented by a ringMethodDefinition, use realClass
	aRG2MethodDefinition realClass
	
Example:
	(Point>>#dist:) asRing2Definition realClass
		->  Point

!

!RGComment commentStamp: '<historical>' prior: 0!
RGComment is a first-class representation of class's comments!

!RGMethod commentStamp: '<historical>' prior: 0!
RG2Method is a concrete representation of methods. It can be used to build browser for methods that are not in the image. It is polymorphic with CompiledMethod. 

* We can ask a RG2Method for its selector using the selector message.
Example:
	(Point>>#dist:) asRing2Definition selector
		-> #dist

We can also ask the ring object representation of its class or the Smalltalk class actually implementing the corresponding compiledMethod. 

* To access the ring class definition name, use parentName
	aRG2MethodDefinition parentName
	
Example:
	(Point>>#dist:) asRing2Definition parentName
		->  #Point
		
* If you have a complete model where classes and methods are ring definition, to access the ring class definition , use parent
	aRG2MethodDefinition parent
	
Example:
	aRG2MethodDefinition(Point>>#dist:) parent
		->  aRG2ClassDefinition(Point)
		
* If you want to access the smalltalk class that contains the compiledMethod that is represented by a ringMethodDefinition, use realParent
	aRG2MethodDefinition realParent
	
Example:
	(Point>>#dist:) asRing2Definition realParent
		->  Point
		

Now a RingEntityDefinition offers two APIs: one that is generic and works for all the source code entities and this is the one we just 
presented: parent, parentName and realParent. Having such interface is important to build generic tools that could manipulate 
any entities in a polymorphic way (yes no isKindOf: everywhere).

In addition, a ring method definition offers a specific interface that should only be used when you know that you are solely manipulate
specific entity such as class element: method definition, class comment, and variables. 

Here is the equivalence table

	realParent 			realClass
	parent			ringClass
	parentName			className


* The message class returns the class of the object :).

Example:
	(Point>>#dist:) asRing2Definition class
		->  RingMethodDefinition
		
* The message className returns the name of the ring class defining the reingMethodDefinition.

Example:
	(Point>>#dist:) asRing2Definition className
		->  #Point		
		
* If you have a complete model where classes and methods are ring definition, to access the ring class definition , use parent
	aRG2MethodDefinition ringClass
	
Example:
	aRG2MethodDefinition(Point>>#dist:) ringClass
		->  aRG2ClassDefinition(Point)
		
		
* If you want to access the smalltalk class that contains the compiledMethod that is represented by a ringMethodDefinition, use realClass
	aRG2MethodDefinition realClass
	
Example:
	(Point>>#dist:) asRing2Definition realClass
		->  Point
!

!RGClassVariable commentStamp: '<historical>' prior: 0!
A class variable definition!

!RGPackageDefinition commentStamp: '<historical>' prior: 0!
RGPackageDefinition is the representation for packages.
A package manages classes, methods and children packages as elements.
A package can also know in which package is defined!

!RGEnvironment commentStamp: '<historical>' prior: 0!
I'm a representation of a Smalltalk environment that contains behaviors, packages and global variables. I have my own announcer for processing of events inside of the environment. 

I'm connected to a data source - backend, that provides me real data I'm working with. 

In most cases, you should communicate with me using my query interface. You will get it by sending me a message #ask.
!

!RGEnvironmentBackend commentStamp: '<historical>' prior: 0!
@This appears to be a trampoline class.  Why does it exist?
   Also: could send #clean to all, rather than #cleanFoo for each Foo.  Polymorphism!!!!
@
!

!RGObject methodsFor: 'copying' stamp: 'KenD 2/17/2021 23:09:06'!
postCopy 

	super postCopy.
	properties := properties copy.! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/19/2021 08:39:19'!
name 

	^ (self backend nameFor: self) orDefaultForUnresolved ! !

!RGBehaviorStrategy methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 3/27/2022 13:16:53'!
instanceSide 

	^ self owner! !

!RGBehaviorStrategy methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 3/27/2022 13:22:57'!
theMetaClass

	self flag: #deprecated.
	^ self owner! !

!RGBehaviorStrategy methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 3/27/2022 13:23:14'!
theNonMetaClass

	self flag: #deprecated.
	^ self owner! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:08:26'!
allClassVarNames 

	self subclassResponsibility! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:10:49'!
bindingOf: varName 

	^ self owner isRootInEnvironment
		ifFalse: [self owner superclass bindingOf: varName]
		ifTrue: [ nil ]! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:11:03'!
category 

	self subclassResponsibility ! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:11:11'!
category: aString 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:11:44'!
classVarNames 

	^#()! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:12:49'!
classVariablesString 

	^ String new! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:13:25'!
comment 

	self subclassResponsibility! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:13:34'!
comment: anRGComment 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:17:10'!
instanceVariablesString 

	^ String new! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:18:29'!
kindOfSubclass 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:26'!
sharedPools 

	^ OrderedCollection new! !

!RGBehaviorStrategy methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:17:53'!
isMeta 
	"By default a non-meta class is considered"

	^ false! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:14:49'!
environment 

	^ self owner environment! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:16:16'!
instSize 

	^ 0! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:16:26'!
instVarNames 

	^ OrderedCollection new! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:11:30'!
superclass 

	^ self backend forBehavior superclassFor: self! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:11:49'!
superclass: anRGBehavior 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setSuperclassFor: self to: anRGBehavior ].! !

!RGBehavior methodsFor: 'accessing class hierarchy' stamp: 'KenD 3/27/2022 14:48:42'!
inheritsFrom: aClass 
	"Answer whether the argument, aClass, is on the receiver's superclass 
	chain."

	| aSuperclass |
	aSuperclass := self superclass.
	[aSuperclass == nil]
		whileFalse: 
			[aSuperclass == aClass ifTrue: [^true].
			aSuperclass := aSuperclass superclass].
	^false! !

!RGBehavior methodsFor: 'accessing class hierarchy' stamp: 'KenD 3/27/2022 15:11:14'!
subclasses 

	| result |
	result := IdentitySet new.
	self environment behaviorsDo: [ :each |
		(each superclass == self) ifTrue: [ result add: each] ].
	^ result asArray! !

!RGBehavior methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 14:12:08'!
classVariablesString 
	"Answer a string of my class variable names separated by spaces."

	^ self behaviorStrategy classVariablesString! !

!RGBehavior methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 15:09:15'!
sharedPoolsString 
	"Answer a string of my class variable names separated by spaces."

	"TODO: check validity"
	^String streamContents: [ :stream | 
		self sharedPools 
			do: [ :each | stream nextPutAll: each name]
			separatedBy: [ stream space ] ]! !

!RGBehavior methodsFor: 'printing' stamp: 'KenD 3/27/2022 14:58:27'!
printOn: aStream 

	aStream nextPutAll: self name! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:48:14'!
includesSelector: aString 

	^ self selectors includes: aString! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:57:13'!
methods 

	| methodsFromTraits methodsDict |
	"TODO: make nicer"
	"^ self propertyNamed: #methods ifAbsentPut: [ "
	methodsFromTraits := self traitComposition methods collect:  [ :each | each copy parent: self ].
	methodsDict := Dictionary new.
	methodsFromTraits do: [ :each |
		methodsDict at: each name put: each ].
	self localMethodsDo: [ :each |
		methodsDict at: each name put: each ].
	^ methodsDict values asArray"]"! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 15:09:00'!
selectors 

	^ self methods collect: #name! !

!RGBehavior methodsFor: 'queries - other' stamp: 'KenD 3/27/2022 14:09:49'!
allInstVarNames 
	"Answer an Array of the names of the receiver's instance variables. The 
	Array ordering is the order in which the variables are stored and 
	accessed by the interpreter."

	| vars |
	(self superclass == self or: [ self superclass isNil ])
		ifTrue: [vars := self instVarNames copy]	"Guarantee a copy is answered."
		ifFalse: [vars := self superclass allInstVarNames , self instVarNames].
	^vars! !

!RGBehavior methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 14:46:50'!
hasMethods 
	"validates the existance of methods"

	^ self methods notEmpty! !

!RGBehavior methodsFor: 'testing' stamp: 'KenD 3/27/2022 14:46:15'!
hasComment 

	^ self comment isEmptyOrNil not! !

!RGBehavior methodsFor: 'testing' stamp: 'KenD 3/27/2022 14:49:55'!
isBehavior 

	^ true! !

!RGBehavior methodsFor: 'testing' stamp: 'KenD 3/27/2022 14:51:53'!
isPointers 

	^ self isBits not! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:50:07'!
isBits 

	^ self layout isBitsLayout! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:50:15'!
isBytes 

	^ self layout isByteLayout ! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:51:31'!
isEphemeronClass 

	^ self layout isEphemeronLayout! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:51:41'!
isImmediateClass 

	^ self layout isImmediateLayout ! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:53:48'!
isVariable 

	"is the definition a variable class?"

	^ self layout isVariableLayout! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:54:12'!
isWeak 

	^ self layout isWeakLayout! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:54:22'!
isWords 

	^ self layout isWordLayout! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:59:35'!
instSize 

	^ self behaviorStrategy instSize! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:59:46'!
instVarNames 

	^ self behaviorStrategy instVarNames
! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:59:54'!
instanceSide 

	^ self behaviorStrategy instanceSide! !

!RGBehaviorStrategyUser methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 12:59:01'!
definition 

	^ self behaviorStrategy definition! !

!RGBehaviorStrategyUser methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 13:05:56'!
theMetaClass 

	^ self behaviorStrategy theMetaClass! !

!RGBehaviorStrategyUser methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 13:06:07'!
theNonMetaClass 

	^ self behaviorStrategy theNonMetaClass! !

!RGBehaviorStrategyUser methodsFor: 'printing' stamp: 'KenD 3/27/2022 13:00:52'!
instanceVariablesString 

	^ self behaviorStrategy instanceVariablesString! !

!RGBehaviorStrategyUser methodsFor: 'printing' stamp: 'KenD 3/27/2022 13:05:43'!
storeOn: aStream 

	^ self behaviorStrategy storeOn: aStream! !

!RGBehaviorStrategyUser methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 13:01:34'!
isMeta 
	"By default a non-meta class is considered"

	^ self behaviorStrategy isMeta! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:54:29'!
allClassVarNames 

	^ self behaviorStrategy allClassVarNames! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:56:29'!
bindingOf: varName 

	^ self behaviorStrategy bindingOf: varName! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:56:38'!
category 

	^ self behaviorStrategy category! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:56:48'!
category: aString 

	^ self behaviorStrategy category: aString! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:09'!
classVarNames 

	^ self behaviorStrategy classVarNames! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:58:11'!
comment 

	^ self behaviorStrategy comment! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:58:19'!
comment: anRGComment 

	^ self behaviorStrategy comment: anRGComment! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:05:01'!
sharedPools 

	^ self behaviorStrategy sharedPools! !

!RGBehaviorStrategyUser methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:02:17'!
kindOfSubclass 

	^ self behaviorStrategy kindOfSubclass! !

!RGComment methodsFor: 'printing' stamp: 'KenD 3/24/2022 14:08:07'!
printOn: aStream 

	self parent name ifNotNil: [
		aStream nextPutAll: self parent name;
				  nextPutAll: ' ' ].
	aStream nextPutAll: self name asString! !

!RGMethod methodsFor: 'backward compatibility' stamp: 'KenD 3/23/2022 12:28:30'!
category 

	^ self protocol! !

!RGMethod methodsFor: 'printing' stamp: 'KenD 3/23/2022 12:38:07'!
printOn: aStream 

	self parent name ifNotNil: [
		aStream nextPutAll: self parent name;
				  nextPutAll: '>>' ].
	aStream print: self selector! !

!RGPointerLayout methodsFor: 'queries - slots' stamp: 'KenD 3/27/2022 16:19:13'!
instVarNames 

	^ self slots collect: #name! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:02:24'!
environment 

	^ self! !

!RGEnvironment methodsFor: 'binding' stamp: 'KenD 3/24/2022 12:05:11'!
bindingOf: aSymbol 
	
	| behavior result |
	
	self globalVariablesBindings at: aSymbol ifPresent: [ :val | ^ val ].
	
	self ask globalVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | 
		self globalVariablesBindings at: aSymbol put: found.
		^ found ].

	behavior := self ask behaviorNamed: aSymbol.
	result := behavior ifNotNil: [ GlobalVariable key: aSymbol value: behavior].
	self globalVariablesBindings at: aSymbol put: result.
	^ result! !

!GlobalVariable methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:25:41'!
asRingMinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGGlobalVariable named: self key asSymbol parent: anRGEnvironment].! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:40:27'!
environment 

	^ environment! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:30:40'!
environment 

	^ environment! !

!RGIncompatibleBehaviorTypeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:22:03'!
messageText 

	^ 'This message cannot be sent. Incompatible behavior type.'! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:41:32'!
property 

	^ property! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:41:45'!
property: anObject 

	property := anObject
! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:41:54'!
source 

	^ source! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:42:03'!
source: anObject 

	source := anObject! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:42:14'!
target 

	^ target! !

!RGMergeError methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:42:21'!
target: anObject 

	target := anObject! !

!RGMergeError class methodsFor: 'instance creation' stamp: 'KenD 3/23/2022 13:41:04'!
property: propertySymbol target: targetDefinition source: sourceDefinition 

	^ self new
		property: propertySymbol;
		target: targetDefinition;
		source: sourceDefinition;
		signal.! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:26:34'!
named: aString 

	^ (RGBehavior named: aString behaviorStrategy: self newStrategy)
		yourself! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:27:34'!
named: aString parent: anRGObject 

	^ (RGBehavior 
		named: aString 
		parent: anRGObject 
		behaviorStrategy: (self newStrategyFor: anRGObject environment))
		yourself! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:27:44'!
newStrategy 

	self subclassResponsibility ! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:27:53'!
newStrategyFor: anRGEnvironment 

	^ self newStrategy! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:28:17'!
parent: anRGObject 

	^ (RGBehavior 
		parent: anRGObject 
		behaviorStrategy: (self newStrategyFor: anRGObject environment))
		yourself! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:28:31'!
unnamed 

	^ RGBehavior unnamedWithBehaviorStrategy: self newStrategy! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:28:43'!
unresolved 

	^ RGBehavior unresolvedWithBehaviorStrategy: self newStrategy! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:29:10'!
unresolvedNamed: aString withParent: anRGDefintion 

	^ RGBehavior 
		unresolvedNamed: aString 
		withParent: anRGDefintion 
		behaviorStrategy: (self newStrategyFor: anRGDefintion environment)! !

!RGBehaviorFactory class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:29:38'!
unresolvedWithParent: anRGDefintion 

	^ RGBehavior 
		unresolvedWithParent: anRGDefintion 
		behaviorStrategy: (self newStrategyFor: anRGDefintion environment) ! !

!RGStampParser methodsFor: 'parsing' stamp: 'KenD 3/23/2022 13:21:59'!
authorForStamp: aString 
	
	^ aString isEmptyOrNil
		ifTrue: [ self historicalStamp ]
		ifFalse: [ self parseAuthorAliasFrom: aString ].
! !

!RGStampParser methodsFor: 'parsing' stamp: 'KenD 3/23/2022 13:22:16'!
historicalStamp 

	^ '<historical>'! !

!RGStampParser methodsFor: 'parsing' stamp: 'KenD 3/23/2022 13:28:08'!
parseTimestampFrom: aString default: anObject 
	"Parse a date-time from a timestamp-string that is extracted from a source file. If there is no timestamp, or we cannot make sense of it, we return the default value."

	| tokens dateStartIndex unknown |
	"The following timestamp strings are supported (source: squeak sources archeological survey):
		<authorname><date><time>. 
		<authorname><date>
		<date><time>
		<date><time><authorname>
		<date><authorname>
		<historical>
	All fields can be separated by spaces or line ends but a separator between authorname and date can be missing as well"
	unknown := anObject.
	aString isEmptyOrNil
		ifTrue: [ ^ unknown ].
	dateStartIndex := (aString indexOf: $/) - 1.	"If there is no / character in the timestamp, we cannot parse a date and return the epoch"
	dateStartIndex = -1
		ifTrue: [ ^ unknown ].
	^ [ 
	"Go the start of the date string (there can be 1 or 2 digits and a space separator can be missing at the front!!!!)"
	(dateStartIndex >= 2 and: [ (aString at: dateStartIndex - 1) isDigit ])
		ifTrue: [ dateStartIndex := dateStartIndex - 1 ].	"Extract only those tokens that possibly represent date or time"
	tokens := (aString copyFrom: dateStartIndex to: aString size) substrings
		select: [ :token | (token occurrencesOf: $/) = 2 or: [ (token occurrencesOf: $:) = 1 ] ].	"2 tokens is a datetime"
	tokens size = 2
		ifTrue: [ (tokens decodeUsing: Character space) asDateAndTime ]
		ifFalse: [ tokens first asDate asDateAndTime ] ]
		on: Exception
		do: [ :e | unknown ]

! !

!RGStampParser methodsFor: 'parsing stamp' stamp: 'KenD 3/23/2022 13:23:43'!
basicParseAuthorAliasFrom: aString 
	"Parse an alias/name of the author from a string that is extracted from a source file. If there is no alias/name we return emtpy string."

	| tokens dateStartIndex unknown |
	"The following timestamp strings are supported (source: squeak sources archeological survey):
		<authorname><date><time>. 
		<authorname><date>
		<date><time>
		<date><time><authorname>
		<date><authorname>
		<historical>
	All fields can be separated by spaces or line ends but a separator between author alias/name and date can be missing as well"
	"unknown:= 'unknown'."
	
	aString = '<historical>' ifTrue: [ ^ aString ].
	
	unknown := nil.
	aString isEmptyOrNil
		ifTrue: [ ^ unknown ].
	dateStartIndex := (aString indexOf: $/) - 1.	"If there is no / character in the timestamp, no author alias/name exists"
	dateStartIndex = -1
		ifTrue: [ ^ unknown ].
	^ [ 
	"Go the start of the date string (there can be 1 or 2 digits and a space separator can be missing at the front!!!!)"
	(dateStartIndex >= 2 and: [ (aString at: dateStartIndex - 1) isDigit ])
		ifTrue: [ dateStartIndex := dateStartIndex - 1 ].	"Extract only those tokens that do not possible represent date or time - meaning that authorname may be at the end"
	tokens := (aString copyFrom: dateStartIndex to: aString size) substrings
		reject: [ :token | (token occurrencesOf: $/) = 2 or: [ (token occurrencesOf: $:) = 1 ] ].	"only one token should be left if author name/alias exists"
	^ tokens isEmpty
		ifTrue: [ 
			"if dateStartIndex is not 1 then the authorname may be at the beginning"
			dateStartIndex > 1
				ifTrue: [ (aString copyFrom: 1 to: dateStartIndex - 1) trimBoth ]
				ifFalse: [ unknown ] ]
		ifFalse: [ tokens first ] ]
		on: Exception
		do: [ :e | unknown ]! !

!RGStampParser methodsFor: 'parsing stamp' stamp: 'KenD 3/23/2022 13:26:59'!
parseAuthorAliasFrom: aString 
	"Allows other applications  to treat a different empty alias by overriding this method"
	
	^self basicParseAuthorAliasFrom: aString! !

!RGStampParser methodsFor: 'parsing stamp' stamp: 'KenD 3/23/2022 13:27:13'!
parseTimestampFrom: aString 

	^self parseTimestampFrom: aString default: nil! !

!RGStampParser methodsFor: 'parsing stamp' stamp: 'KenD 3/23/2022 13:28:38'!
timeForStamp: stamp 

	^ stamp
		ifNil: [ 	DateAndTime new]
		ifNotNil: [ 
			| substrings |
			substrings := stamp substrings.
			([(DateAndTime fromString: (' ' join: substrings allButFirst ))] on: Exception do: [DateAndTime epoch]) ]. ! !

!RGUnresolvedValue methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:14:22'!
default 

	^ default! !

!RGUnresolvedValue methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:14:31'!
default: anObject 

	default := anObject! !

!RGUnresolvedValue methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:19:05'!
orDefaultForUnresolved 

	^ self default! !

!RGUnresolvedValue methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:19:17'!
referencedBehaviors 

	^ #()! !

!RGUnresolvedValue methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:19:28'!
value 

	^ self default
! !

!RGUnresolvedValue methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:15:30'!
isRGUnresolvedValue 

	^ true! !

!RGUnresolvedValue methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:17:22'!
isRingFullyResolved 

	^ false! !

!RGUnresolvedValue methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:18:36'!
isRingFullyUnresolved 

	^ true! !

!RGUnresolvedValue methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:18:46'!
isRingResolved 

	^ false! !

!RGUnresolvedValue class methodsFor: 'as yet unclassified' stamp: 'KenD 3/23/2022 13:13:50'!
recursive 

	| unresolvedValue |
	
	unresolvedValue := self new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue! !

!RGObject methodsFor: 'accessing' stamp: 'KenD 2/20/2021 15:05:21'!
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
	self prvtName: result.
	self parent child: self renamedFrom: oldName to: result value.
	^ result! !

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
prvtParent: anRGObject 

	parent := anRGObject.! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:11:38'!
named: aString 

	 name := aString! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:06:48'!
prvtFullyResolved 

	^ (self prvtResolvableProperties collect: #value) allSatisfy: #isRingFullyResolved! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:06:35'!
prvtFullyUnresolved 
		
	^ (self prvtResolvableProperties collect: #value) noneSatisfy: #isRingFullyResolved! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 22:57:02'!
prvtName 

	^ name! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 22:57:46'!
prvtName: aString 

	 name := aString! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:05:13'!
prvtResolvableProperties 

	^ { #name -> name }.! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:04:51'!
prvtResolvedProperties 

	^ self prvtResolvableProperties select: [:each | each value isRingResolved ] thenCollect: #key! !

!RGObject methodsFor: 'private - backend interface' stamp: 'KenD 2/17/2021 23:04:31'!
prvtUnresolvedProperties 

	^ self prvtResolvableProperties select: [:each | each value isRingResolved not ] thenCollect: #key! !

!RGObject class methodsFor: 'instance creation' stamp: 'KenD 2/17/2021 22:54:29'!
asYetUnclassifiedProtocolName 

	^ 'as yet unclassified' asSymbol! !

!RGObject class methodsFor: 'instance creation' stamp: 'KenD 2/17/2021 22:59:01'!
named: aString 
	"create model in its own environment"

	^self new
		name: aString;
		yourself! !

!RGBehaviorStrategy methodsFor: 'accessing' stamp: 'KenD 3/27/2022 13:11:30'!
classSide 

	^ self owner! !

!RGBehaviorStrategy methodsFor: 'accessing' stamp: 'KenD 3/27/2022 13:19:19'!
owner 

	^ owner! !

!RGBehaviorStrategy methodsFor: 'accessing' stamp: 'KenD 3/27/2022 13:19:26'!
owner: anObject 

	owner := anObject! !

!RGBehaviorStrategy methodsFor: 'class variables' stamp: 'KenD 3/27/2022 13:12:10'!
classVariableDefinitionString 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'copying' stamp: 'KenD 3/27/2022 13:13:57'!
copyForBehaviorDefinitionPostCopy 

	super postCopy.! !

!RGBehaviorStrategy methodsFor: 'copying' stamp: 'KenD 3/27/2022 13:14:07'!
copyForBehaviorDefinitionWithOwner: aNewOwner 

	^ self shallowCopy 
		owner: aNewOwner;
		copyForBehaviorDefinitionPostCopy! !

!RGBehaviorStrategy methodsFor: 'default model values' stamp: 'KenD 3/27/2022 13:14:38'!
defaultMetaClass 

	^ self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'initialization' stamp: 'KenD 3/27/2022 13:15:54'!
initializeUnresolved

	"empty"! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:08:06'!
addClassVariable: anRGInstanceVariableDefinition 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:08:17'!
addSharedPool: anRGPoolVariable 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:08:35'!
allClassVariables 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:10:21'!
baseBehavior 

	^ self owner! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:10:28'!
baseClass 

	^ self owner! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:10:36'!
baseClass: anRGClass 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:12:21'!
classVariables 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:12:31'!
classVariables: aCollectionOfSymbols 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:12:40'!
classVariablesDo: aBlock 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:13:01'!
cleanClassVariables 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:13:16'!
cleanSharedPools 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:15:03'!
incompatibleBehaviorType 

	RGIncompatibleBehaviorTypeError signal! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:16:06'!
innerBindingOf: aSymbol 

	^ nil! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:17:03'!
instanceVariables: aCollectionOfSymbols 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:20:36'!
referencedBehaviors 

	^ { self owner superclass. self owner metaclass} " , 
		self owner traitComposition referencedBehaviors"! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:20:46'!
referencedPackages 

	^ Array new! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:00'!
removeClassVariable: anRGInstanceVariableDefinition 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:09'!
removeSharedPool: anRGPoolVariable 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:17'!
sharedPoolNames 

	^ OrderedCollection new! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:34'!
sharedPools: aCollectionOfSymbols 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 13:21:42'!
sharedPoolsDo: aBlock 

	self incompatibleBehaviorType! !

!RGBehaviorStrategy methodsFor: 'resolving' stamp: 'KenD 3/27/2022 13:19:05'!
makeResolved 

	"do nothing"! !

!RGBehaviorStrategy methodsFor: 'resolving' stamp: 'KenD 3/27/2022 13:19:44'!
prvtResolvableProperties 

	^ OrderedCollection new! !

!RGBehaviorStrategy methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:17:31'!
isClass 

	^ false! !

!RGBehaviorStrategy methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:17:39'!
isClassStrategy 

	^ false! !

!RGBehaviorStrategy methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:18:03'!
isMetaclass 
	
	^ false! !

!RGBehaviorStrategy methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:18:13'!
isMetaclassStrategy 
	
	^ false! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:08:59'!
allSlots 

	^ OrderedCollection new! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:09:11'!
announceDefinitionChangeDuring: aBlock 

	self owner announceDefinitionChangeDuring: aBlock! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:09:57'!
backend 

	^ self owner backend forBehavior! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:21:54'!
sibling 

	^ self subclassResponsibility ! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:22:05'!
storeName 

	self subclassResponsibility ! !

!RGBehaviorStrategy methodsFor: 'utilities' stamp: 'KenD 3/27/2022 13:23:29'!
unresolvedValue: aDefaultValue 

	^ self owner unresolvedValue: aDefaultValue! !

!RGBehaviorStrategy methodsFor: 'visiting' stamp: 'KenD 3/27/2022 13:07:24'!
acceptVisitor: aVisitor 

	self subclassResponsibility! !

!RGBehaviorStrategy class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 13:07:00'!
unresolved 

	^ self basicNew! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:08:32'!
addLocalMethod: anRGMethod 

	self backend forBehavior addLocalMethod: anRGMethod to: self.
	
	self announcer methodAdded: anRGMethod.! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:08:45'!
addMethodTag: aSymbol 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior addMethodTag: aSymbol to: self. ].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:08:55'!
addProtocol: aSymbol 

	self addMethodTag: aSymbol
! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:12:39'!
cleanLocalMethods 

	| oldMethods |
	
	oldMethods := self localMethods.

	self backend forBehavior cleanLocalMethodsFor: self.

	self cleanProtocols.
	
	oldMethods do: [ :each |
		self announcer methodRemoved: each ]! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:12:54'!
cleanProtocols 
	
	self cleanTagsForMethods! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:13:05'!
cleanTags 

	self announceDefinitionChangeDuring: [ 
		self cleanTagsWithoutAnnouncemnt ].
! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:13:16'!
cleanTagsForMethods 

	self backend forPackage cleanTagsForMethodsFor: self
! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:13:27'!
cleanTagsWithoutAnnouncemnt 

	self backend forBehavior cleanClassTagsFor: self.! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:13:35'!
compiler 

	^ self class compiler! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:55:01'!
localMethodsDo: aBlock 

	self backend forBehavior localMethodsFor: self do: aBlock! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:56:23'!
metaclass 

	^ self backend forBehavior metaclassFor: self! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:56:34'!
metaclass: anRGMetaclass 

	self backend forBehavior setMetaclassFor: self to: anRGMetaclass.! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 14:57:51'!
name: aString 

	| oldName subclassesWithOldDefinitions |
	
	oldName := self name.
	
	subclassesWithOldDefinitions := (self subclasses reject: #isMeta) collect: [ :each | 
		each -> each copyForBehaviorDefinition ].
	
	self announceDefinitionChangeDuring: [ 
		super name: aString ].
	
	self announcer behaviorRenamed: self from: oldName.

	subclassesWithOldDefinitions do: [ :assoc |
		self announcer behaviorDefinitionChangedFrom: assoc value to: assoc key.
		self announcer behaviorModificationAppliedTo: assoc key.
		self announcer behaviorParentRenamed: assoc key from: oldName ].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:08:22'!
removeLocalMethod: anRGMethod 

	(anRGMethod package = self package)
		ifFalse: [ anRGMethod package removeExtensionMethod:  anRGMethod ].
		
	self backend forBehavior removeLocalMethod: anRGMethod from: self.
	
	self announcer methodRemoved: anRGMethod.
! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:08:35'!
removeMethodTag: aSymbol 

	self backend forPackage removeMethodTag: aSymbol from: self.
	
	self localMethodsDo: [ :method | 
		method untagFrom: aSymbol ].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:08:46'!
removeProtocol: aSymbol 

	self removeMethodTag: aSymbol.! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:12:01'!
tagWith: aSymbol 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior tagClass: self with: aSymbol.
		self package addClassTag: aSymbol.
	].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:13:16'!
tagsDo: aBlock 

	self backend forBehavior tagsForClass: self do: aBlock! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:13:50'!
tagsForMethodsDo: aBlock 

	self backend forBehavior tagsForMethodsFor: self do: aBlock! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:14:54'!
unresolveName 

	| oldName subclassesWithOldDefinitions |
	
	oldName := self name.
	
	subclassesWithOldDefinitions := (self subclasses reject: #isMeta) collect: [ :each | 
		each -> each copyForBehaviorDefinition ].
	
	self announceDefinitionChangeDuring: [ 
		super unresolveName ].
	
	self announcer behaviorRenamed: self from: oldName.

	subclassesWithOldDefinitions do: [ :assoc |
		self announcer behaviorDefinitionChangedFrom: assoc value to: assoc key.
		self announcer behaviorModificationAppliedTo: assoc key.
		self announcer behaviorParentRenamed: assoc key from: oldName ].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:15:09'!
unresolveSuperclass 

	self announceDefinitionChangeDuring: [ 
		self prvtSuperclass: (RGUnresolvedValue recursive) ].! !

!RGBehavior methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:15:20'!
untagFrom: aSymbol 

	self backend forPackage untagClass: self from: aSymbol! !

!RGBehavior methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 14:11:58'!
classVariablesBindings 

	^ self propertyNamed: #classVariablesBindings ifAbsentPut: [ IdentityDictionary new.]! !

!RGBehavior methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 14:18:02'!
definitionForNautilus 

	^ self definition! !

!RGBehavior methodsFor: 'accessing - model' stamp: 'KenD 3/27/2022 15:12:58'!
tags 

	^ self tagsSet asArray ! !

!RGBehavior methodsFor: 'accessing - model' stamp: 'KenD 3/27/2022 15:13:33'!
tagsForMethods 
	"Retrieves the traits defined in the receiver"

	| allTags |
	allTags := self defaultTagsForMethods.
	self tagsForMethodsDo: [ :each | allTags add: each].
	^ allTags asArray! !

!RGBehavior methodsFor: 'accessing - model' stamp: 'KenD 3/27/2022 15:14:03'!
tagsForMethodsSet 
	"Retrieves the traits defined in the receiver"

	| allTags |
	allTags := self defaultTagsForMethods.
	self tagsForMethodsDo: [ :each | allTags add: each].
	^ allTags! !

!RGBehavior methodsFor: 'accessing - model' stamp: 'KenD 3/27/2022 15:14:14'!
tagsSet 

	| allTags |
	allTags := self defaultTags.
	self tagsDo: [ :each | allTags add: each].
	^ allTags ! !

!RGBehavior methodsFor: 'announcements' stamp: 'KenD 3/27/2022 14:10:16'!
announceDefinitionChangeDuring: aBlock 

	| oldVersion |

	self announcer isSuspended ifTrue: [ 
		aBlock value. 
		^ self ]	.
		
	self announcer  suspendAllWhile: [ 
		oldVersion := self copyForBehaviorDefinition.].
	aBlock value.
	self announcer 	behaviorDefinitionChangedFrom: oldVersion to: self.
	self announcer behaviorModificationAppliedTo: self.
! !

!RGBehavior methodsFor: 'asYetUnclassified' stamp: 'KenD 3/27/2022 14:10:53'!
asYetUnclassifiedProtocolName 

	^ 'as yet unclassified' asSymbol! !

!RGBehavior methodsFor: 'copying' stamp: 'KenD 3/27/2022 14:16:15'!
copyForBehaviorDefinitionPostCopy 

	| behaviorStrategy |
	super copyForBehaviorDefinitionPostCopy.
	
	superclass := self superclass shallowCopy. "we need the superclass name"
	"traitComposition := self traitComposition copyForBehaviorDefinition."
	tagsForMethods := self tagsForMethods copy asSet.
	tags := self tags copy asSet.
	self flag: #behaviorStrategy .
	behaviorStrategy := behaviorStrategy copyForBehaviorDefinitionWithOwner: self
! !

!RGBehavior methodsFor: 'default model values' stamp: 'KenD 3/27/2022 14:16:50'!
defaultLayout 

	^ self defaultFixedLayoutStubIn: self.! !

!RGBehavior methodsFor: 'default model values' stamp: 'KenD 3/27/2022 14:17:04'!
defaultLocalMethods 

	^ Set new! !

!RGBehavior methodsFor: 'default model values' stamp: 'KenD 3/27/2022 14:17:36'!
defaultTags 

	^ Set new! !

!RGBehavior methodsFor: 'default model values' stamp: 'KenD 3/27/2022 14:17:45'!
defaultTagsForMethods 

	^ Set new! !

!RGBehavior methodsFor: 'documentation' stamp: 'KenD 3/27/2022 14:46:03'!
extensions 

	^ self localMethods select: [ :each | each package ~= self package ]! !

!RGBehavior methodsFor: 'initialization' stamp: 'KenD 3/27/2022 14:49:22'!
initialize 

	super initialize.
	
	"use unresolved value for superclass to avoid infinite recursion. It needs to be set later"
	superclass := RGUnresolvedValue recursive.
	metaclass := RGUnresolvedValue recursive.
	localMethods := self unresolvedValue: self defaultLocalMethods.
	"traitComposition := self unresolvedValue: self defaultTraitComposition."
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	! !

!RGBehavior methodsFor: 'initialization' stamp: 'KenD 3/27/2022 14:49:44'!
initializeUnresolved 

	super initializeUnresolved.

	superclass := self. "will be set later"
	metaclass := self. "will be set later"
	localMethods := self unresolvedValue: self defaultLocalMethods.
	"traitComposition := self unresolvedValue: self defaultTraitComposition."
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	! !

!RGBehavior methodsFor: 'managing container' stamp: 'KenD 3/27/2022 14:09:20'!
addoptToParentStub 

	self isRingResolved ifFalse: [ ^ self ].

	super addoptToParentStub.

	self parent prvtAddBehavior: self.! !

!RGBehavior methodsFor: 'managing container' stamp: 'KenD 3/27/2022 14:17:21'!
defaultParentStub 

	^ self defaultEnvironmentStub! !

!RGBehavior methodsFor: 'printing' stamp: 'KenD 3/27/2022 15:09:33'!
slotDefinitionString 
	"Answer a string that contains an executable description of my Slots"

	"^self slots ifNotEmpty: [self slots asString] ifEmpty: ['{}']"
	
	^String streamContents: [ :str | | special |
		str nextPutAll: '{ '.
		self slots do: [:slot |
				str nextPutAll: slot definitionString.
				special := slot isSpecial]				
			separatedBy: [ 
				str nextPutAll: '. '.  
				special ifTrue: [ str cr;tab;tab;tab;tab ]].
		str nextPutAll: ' }'. ]! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:18:38'!
ensureLocalMethodNamed: aSymbol 

	^ self localMethodNamed: aSymbol ifAbsent: [ 
		| newMethod |
		newMethod := RGMethod named: aSymbol asSymbol parent: self.
		self addLocalMethod: newMethod.
		newMethod].! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:19:54'!
ensureUnresolvedLocalMethod 

	| newMethod |
	newMethod := RGMethod parent: self.
	self addLocalMethod: newMethod.
	^ newMethod! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:54:33'!
localMethodNamed: aSymbol ifAbsent: aBlock 

	self localMethodsDo: [ :each | (each name = aSymbol) ifTrue: [^ each]].
	
	^ aBlock value.! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:54:43'!
localMethods 

	^ self localMethodsSet asArray! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:55:13'!
localMethodsSet 

	| methods |
	
	methods := self defaultLocalMethods.
	self localMethodsDo: [ :each | methods add: each ].
	^ methods! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:55:27'!
localSelectors 

	^ self localMethods collect: #name! !

!RGBehavior methodsFor: 'queries - methods' stamp: 'KenD 3/27/2022 14:56:48'!
methodNamed: aSymbol 

	| allMethods |
	allMethods := IdentitySet new.
	self methods do: [ :each | each name = aSymbol ifTrue: [^ each]].
	^ nil! !

!RGBehavior methodsFor: 'queries - protocols' stamp: 'KenD 3/27/2022 14:19:39'!
ensureProtocolNamed: aSymbol 
 
	^ self ensureMethodTagNamed: aSymbol! !

!RGBehavior methodsFor: 'queries - protocols' stamp: 'KenD 3/27/2022 14:58:42'!
protocols 

	| methodTags |
	
	methodTags := self tagsForMethods.
	^	methodTags
		ifEmpty: [ 
			self methods 
				ifEmpty: [ OrderedCollection new ]
				ifNotEmpty: [  OrderedCollection with: self class asYetUnclassifiedProtocolName   ].
			]
		ifNotEmpty: [ methodTags  ]! !

!RGBehavior methodsFor: 'queries - tags' stamp: 'KenD 3/27/2022 14:19:14'!
ensureMethodTagNamed: aSymbol 

	^ self tagsForMethods detect: [ :each | each asSymbol = aSymbol ] ifNone: [ 
		self addMethodTag: aSymbol.
		aSymbol ]! !

!RGBehavior methodsFor: 'queries - tags' stamp: 'KenD 3/27/2022 14:53:30'!
isTaggedWith: aSymbol 

	^self tags includes: aSymbol ! !

!RGBehavior methodsFor: 'queries - tags' stamp: 'KenD 3/27/2022 14:57:29'!
methodsTaggedWith: aSymbol 

	^ self localMethods select: [ :each | each isTaggedWith: aSymbol ]! !

!RGBehavior methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 14:47:02'!
hasResolvedSuperclass 

	^ self hasResolved: #superclass! !

!RGBehavior methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 14:47:58'!
hasTraitComposition 
	"Traits not supported"

	^ false "	self traitComposition transformations isEmpty not"! !

!RGBehavior methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 14:52:08'!
isReferencedIn: anRGMethod 

	^ (anRGMethod ast variableNodes select: #isGlobal) anySatisfy: [ :each | each name = self name ] ! !

!RGBehavior methodsFor: 'queries - testing' stamp: 'KenD 3/27/2022 14:53:07'!
isRootInEnvironment 
		
	^ self superclass == self or: [ self superclass isNil ] ! !

!RGBehavior methodsFor: 'resolving' stamp: 'KenD 3/27/2022 14:56:07'!
makeResolved 

	superclass := self superclass markAsRingResolved.
	localMethods := self localMethodsSet markAsRingResolved.
	"traitComposition := self traitComposition markAsRingResolved."
	metaclass := self metaclass markAsRingResolved.
	tagsForMethods := self tagsForMethodsSet markAsRingResolved.
	tags := self tagsSet markAsRingResolved.
	
	super makeResolved.! !

!RGBehavior methodsFor: 'slots' stamp: 'KenD 3/27/2022 15:10:05'!
slots 	
		
	^ self layout slots ! !

!RGBehavior methodsFor: 'slots' stamp: 'KenD 3/27/2022 15:16:06'!
usesSpecialSlot 
	"return true if we define something else than InstanceVariableSlots"

	^ self slots anySatisfy: [ :each | each isSpecial ]! !

!RGBehavior methodsFor: 'testing' stamp: 'KenD 3/27/2022 14:11:31'!
canMergeWith: anRGObject visited: visitedDefinitions 

	| newVisited |

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].
	
	(self isRingFullyResolved or: [ anRGObject isRingFullyResolved]) ifTrue: [^ true].

	(super canMergeWith: anRGObject visited: visitedDefinitions) ifFalse: [ ^ false ].

	newVisited := visitedDefinitions copyWith: self.
	
	self superclass ~~ self ifTrue: [ 
		(self superclass canMergeWith: anRGObject superclass visited: newVisited) ifFalse: [ ^ false ]].

	self metaclass ~~ self ifTrue: [ 
		(self metaclass canMergeWith: anRGObject metaclass visited: newVisited) ifFalse: [ ^ false ]].
	
	^ true.! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:50:24'!
isCompiledMethod 

	^ self layout isCompiledMethodLayout ! !

!RGBehavior methodsFor: 'testing - layouts' stamp: 'KenD 3/27/2022 14:50:34'!
isEphemeron 

	^ self layout isEphemeronLayout! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:04:01'!
prvtMetaclass: anRGMetaclass 

	self environment verifyOwnership: anRGMetaclass.

	^ metaclass := anRGMetaclass! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:04:17'!
prvtRemoveLocalMethod: anRGMethod 

	self environment verifyOwnership: anRGMethod.
	
	localMethods remove: anRGMethod.! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:03:41'!
prvtRemoveMethodTag: aSymbol 
	
	tagsForMethods remove: aSymbol.
	
	"TODO:Announce"! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:06:12'!
prvtTagWith: aSymbol 
	
	tags isRingResolved ifFalse: [ 
		self prvtCleanTags  ].
	
	tags add: aSymbol.	! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:06:37'!
prvtTags: aCollection 

	^ tags := aCollection! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:06:51'!
prvtTagsDo: aBlock 

	^ tags value do: aBlock! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:07:11'!
prvtTagsForMethodsDo: aBlock 

	^ tagsForMethods value do: aBlock! !

!RGBehavior methodsFor: 'private - backend access' stamp: 'KenD 3/27/2022 15:07:59'!
prvtUntagFrom: aSymbol 
	
	(tags value includes: aSymbol)
		ifTrue: [ tags remove: aSymbol ].
	
	"TODO:Announce"! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 14:59:53'!
prvtAddLocalMethod: anRGMethod 

	self environment verifyOwnership: anRGMethod.
	
	localMethods isRingResolved ifFalse: [ 
		self prvtCleanLocalMethods ].

	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self prvtCleanTagsForMethods ].

	anRGMethod tags do: [ :aTag |
		self prvtAddMethodTag: aTag ].

	localMethods add: anRGMethod.	! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:00:23'!
prvtAddMethodTag: aSymbol 
	
	tagsForMethods isRingResolved ifFalse: [ 
		self prvtCleanTagsForMethods  ].
	
	tagsForMethods add: aSymbol.! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:01:13'!
prvtCleanLocalMethods 

	localMethods := self defaultLocalMethods.
	! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:01:29'!
prvtCleanTags 

	tags := self defaultTags.
		
	"TODO:Announce if not empty"! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:01:44'!
prvtCleanTagsForMethods 

	tagsForMethods := self defaultTagsForMethods.
		
	"TODO:Announce if not empty"! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:01:58'!
prvtLocalMethods: aCollection 

	"use only for low-level copying"
	localMethods := aCollection! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:02:16'!
prvtLocalMethodsDo: aBlock 

	^ localMethods value do: aBlock! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:04:55'!
prvtResolvableProperties 

	^ super prvtResolvableProperties, { 
		#superclass -> superclass. 
		#localMethods -> localMethods. 
		#traitComposition -> traitComposition.  
		#metaclass -> metaclass.  
		#tagsForMethods -> tagsForMethods. 
 		#tags -> tags. 
    	}, self behaviorStrategy prvtResolvableProperties! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:05:39'!
prvtSuperclass 

	^ superclass value! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:05:55'!
prvtSuperclass: anRGBehavior 

	anRGBehavior ifNotNil: [ 
		self environment verifyOwnership: anRGBehavior.].

	^ superclass := anRGBehavior! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:07:27'!
prvtTraitComposition 

	^ traitComposition value! !

!RGBehavior methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:07:45'!
prvtTraitComposition: anRGTraitComposition 

	self environment verifyOwnership: anRGTraitComposition.

	^ traitComposition := anRGTraitComposition! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:04:45'!
badInstantiationError 

	RGBadInstantiationError signal: 'I cannot be instantiated this way because every RGBehavior must know its proper behavior strategy. Please use a subclass of RGBehaviorFactory or my methods like #newClass'! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:05:00'!
named: aString 

	^ self badInstantiationError! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:05:25'!
named: aName behaviorStrategy: anRGBehaviorStrategy 

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
		prvtName: aName asSymbol;
		yourself		! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:05:34'!
named: aString parent: anRGObject 

	^ self badInstantiationError! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:05:53'!
named: aName parent: anRGObject behaviorStrategy: anRGBehaviorStrategy 
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior
		prvtName: aName asSymbol;
		yourself		! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:06:04'!
newClass 

	^ self unnamedWithBehaviorStrategy: RGClassStrategy basicNew! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:06:26'!
newMetaclass 

	^ self unnamedWithBehaviorStrategy: RGMetaclassStrategy basicNew! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:06:49'!
parent: anRGObject behaviorStrategy: anRGBehaviorStrategy 
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:07:05'!
unnamedWithBehaviorStrategy: anRGBehaviorStrategy 

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initialize.
	anRGBehaviorStrategy initialize.
	^ aBehavior! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:07:37'!
unresolvedNamed: aName 
withParent: anRGObject 
behaviorStrategy: anRGBehaviorStrategy 
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior
		prvtName: aName asSymbol;
		yourself		! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:07:51'!
unresolvedWithBehaviorStrategy: anRGBehaviorStrategy 

	| aBehavior |
	
	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior! !

!RGBehavior class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 14:08:03'!
unresolvedWithParent: anRGObject behaviorStrategy: anRGBehaviorStrategy 
	
	| aBehavior |

	aBehavior := self basicNew
		behaviorStrategy: anRGBehaviorStrategy;
		parent: anRGObject;
		initializeUnresolved.
	anRGBehaviorStrategy initializeUnresolved.
	^ aBehavior! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:55:36'!
baseClass 

	^ self behaviorStrategy baseClass! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:55:45'!
baseClass: anRGClass 

	^ self behaviorStrategy baseClass: anRGClass! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:55:58'!
behaviorStrategy 

	^ behaviorStrategy! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 12:56:11'!
behaviorStrategy: anObject 

	| needsInitialization |
	
	needsInitialization := behaviorStrategy isNil.
	behaviorStrategy := anObject.
	behaviorStrategy owner: self.
	needsInitialization ifTrue: [ 
		behaviorStrategy initializeUnresolved ].! !

!RGBehaviorStrategyUser methodsFor: 'accessing' stamp: 'KenD 3/27/2022 13:00:06'!
instanceVariables: aCollectionOfSymbols 

	^ self behaviorStrategy instanceVariables: aCollectionOfSymbols! !

!RGBehaviorStrategyUser methodsFor: 'accessing - definition' stamp: 'KenD 3/27/2022 13:04:51'!
sharedPoolNames 

	^ self behaviorStrategy sharedPoolNames! !

!RGBehaviorStrategyUser methodsFor: 'queries - other' stamp: 'KenD 3/27/2022 12:55:21'!
baseBehavior 

	^ self behaviorStrategy baseBehavior! !

!RGBehaviorStrategyUser methodsFor: 'resolving' stamp: 'KenD 3/27/2022 13:03:08'!
makeResolved 

	self behaviorStrategy makeResolved.
	super makeResolved.! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:54:04'!
addClassVariable: anRGInstanceVariableDefinition 

	^ self behaviorStrategy addClassVariable: anRGInstanceVariableDefinition ! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:54:14'!
addSharedPool: anRGPoolVariable 

	^ self behaviorStrategy addSharedPool: anRGPoolVariable! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:54:43'!
allClassVariables 

	^ self behaviorStrategy allClassVariables! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:54:53'!
allSlots 

	^ self behaviorStrategy allSlots! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:56:56'!
classSide 

	^ self behaviorStrategy classSide! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:17'!
classVariableDefinitionString 

	^ self behaviorStrategy classVariableDefinitionString! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:28'!
classVariables 

	^ self behaviorStrategy classVariables! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:36'!
classVariables: aCollectionOfSymbols 

	^ self behaviorStrategy classVariables: aCollectionOfSymbols! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:46'!
classVariablesDo: aBlock 

	^ self behaviorStrategy classVariablesDo: aBlock! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:57:54'!
cleanClassVariables 

	^ self behaviorStrategy cleanClassVariables! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:58:03'!
cleanSharedPools 

	^ self behaviorStrategy cleanSharedPools! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:58:28'!
defaultMetaClass 

	^ self behaviorStrategy defaultMetaClass! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 12:59:13'!
innerBindingOf: aSymbol 

	^ self behaviorStrategy innerBindingOf: aSymbol! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:02:34'!
layout 

	^ self behaviorStrategy layout! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:02:42'!
layout: anRGLayout 

	^ self behaviorStrategy layout: anRGLayout! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:03:27'!
package 

	^ self behaviorStrategy package! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:03:36'!
package: anRGPackageDefinition 

	^ self behaviorStrategy package: anRGPackageDefinition! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:03:47'!
referencedBehaviors 

	^ self behaviorStrategy referencedBehaviors! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:03:57'!
referencedPackages 

	^ self behaviorStrategy referencedPackages! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:04:10'!
removeClassVariable: anRGInstanceVariableDefinition 

	^ self behaviorStrategy removeClassVariable: anRGInstanceVariableDefinition! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:04:19'!
removeSharedPool: anRGPoolVariable 

	^ self behaviorStrategy removeSharedPool: anRGPoolVariable! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:05:10'!
sharedPools: aCollectionOfSymbols 

	^ self behaviorStrategy sharedPools: aCollectionOfSymbols! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:05:20'!
sharedPoolsDo: aBlock 

	^ self behaviorStrategy sharedPoolsDo: aBlock! !

!RGBehaviorStrategyUser methodsFor: 'strategy' stamp: 'KenD 3/27/2022 13:05:29'!
sibling 

	^ self behaviorStrategy sibling! !

!RGBehaviorStrategyUser methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:01:03'!
isClass 

	^ self behaviorStrategy isClass! !

!RGBehaviorStrategyUser methodsFor: 'testing' stamp: 'KenD 3/27/2022 13:01:54'!
isMetaclass 

	^ self behaviorStrategy isMetaclass! !

!RGBehaviorStrategyUser methodsFor: 'visiting' stamp: 'KenD 3/27/2022 12:52:31'!
acceptVisitor: aVisitor 
	
	^ self behaviorStrategy acceptVisitor: aVisitor! !

!RGElement methodsFor: 'accessing' stamp: 'KenD 3/23/2022 08:08:11'!
package

	^ self parent package! !

!RGComment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 14:06:14'!
fullName 
	
	^ (self parent name, ' comment') asSymbol! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:04:04'!
author 

	^ self backend forBehavior classCommentAuthorFor: self! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:04:13'!
author: aString 

	self backend forBehavior setClassCommentAuthorFor: self to: aString.
	
	self announcer behaviorCommentModified: self parent.! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:04:26'!
content 

	^ self backend forBehavior classCommentContentFor: self! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:04:35'!
content: aString 

	self backend forBehavior setClassCommentContentFor: self to: aString.
	
	self announcer behaviorCommentModified: self parent.
! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:08:37'!
prvtAuthor 

	^ author value! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:08:49'!
prvtAuthor: aString 

	^ author := aString! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:09:00'!
prvtContent 

	^ content value! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:09:15'!
prvtContent: aString 

	^ content := aString! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:09:32'!
prvtResolvableProperties 

	^ super pvtResolvableProperties, { 
		#content -> content. 
		#author -> author. 
		#time -> time. 
	}! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:09:44'!
prvtTime 

	^ time value! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:09:56'!
prvtTime: aDateAndTime 

	^ time := aDateAndTime! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:10:48'!
time 

	^ self backend forBehavior classCommentTimeFor: self! !

!RGComment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 14:11:00'!
time: aDateAndTime 

	self backend forBehavior setClassCommentTimeFor: self to: aDateAndTime.
	
	self announcer behaviorCommentModified: self parent.! !

!RGComment methodsFor: 'backward compatibility' stamp: 'KenD 3/24/2022 14:10:34'!
sourceCode 

	^ self content   ! !

!RGComment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 14:05:00'!
defaultAuthor 

	^ ''! !

!RGComment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 14:05:08'!
defaultContent 

	^ ''! !

!RGComment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 14:05:29'!
defaultParentStub 

	^ self defaultClassStub! !

!RGComment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 14:05:39'!
defaultTime 

	^ DateAndTime new! !

!RGComment methodsFor: 'initialization' stamp: 'KenD 3/24/2022 14:06:35'!
initialize 

	super initialize.
	
	content := self unresolvedValue: self defaultContent.	
	author := self unresolvedValue: self defaultAuthor.	
	time := self unresolvedValue: self defaultTime.	! !

!RGComment methodsFor: 'initialization' stamp: 'KenD 3/24/2022 14:06:51'!
initializeUnresolved 

	super initializeUnresolved.
	
	content := self unresolvedValue: self defaultContent.	
	author := self unresolvedValue: self defaultAuthor.	
	time := self unresolvedValue: self defaultTime.	! !

!RGComment methodsFor: 'managing container' stamp: 'KenD 3/24/2022 14:03:39'!
addoptToParentStub 

	super addoptToParentStub.

	self environment backend createUnresolvedClassGroupFor: self parent! !

!RGComment methodsFor: 'resolving' stamp: 'KenD 3/24/2022 14:07:43'!
makeResolved 

	super makeResolved.
	
	content := self content markAsRingResolved.
	author := self author markAsRingResolved.
	time := self time markAsRingResolved.! !

!RGComment methodsFor: 'testing' stamp: 'KenD 3/24/2022 14:07:17'!
isComment 

	^ true! !

!RGComment methodsFor: 'testing' stamp: 'KenD 3/24/2022 14:07:27'!
isEmptyOrNil 

	^ self content isEmptyOrNil ! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:25:06'!
argumentNames

	^self ast argumentNames! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:25:35'!
ast
	"Answer my AST with semantic analysis. See #parseTree."
	
	^ self propertyNamed: #ast ifAbsentPut: [ self parseTree doSemanticAnalysisIn: self methodClass ]! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:30:17'!
compiledMethod 

	^ self! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:32:13'!
fullName 
	"Keeps a unique description for the receiver. As annotation to avoid converting each time is invoked"
	
	^ (self parent name, '>>#', self selector) asSymbol! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:32:30'!
hasSourceCode 

	^ self backend forMethod hasSourceCodeFor: self! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:34:04'!
isExtension 
	"The receiver is an extension when is defined in a different package to the one of its parent"
	
	^ self parent package ~= self package! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:36:45'!
numArgs 

	^ self selector asString numArgs! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:37:42'!
parseTree 

	^(RBParser 
		parseMethod: self sourceCode 
		onError: [ :msg :pos | ^ nil ]) methodClass: self methodClass.! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:43:24'!
selector 
	"Retrieves the name of the method"

	^ self name asSymbol! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:43:36'!
sourceCode 

	^ self backend forMethod sourceCodeFor: self! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:43:49'!
sourceCode: anObject 

	"ATTENTION: There is no check here if the selector is changed!!"

	self backend forMethod setSourceCodeFor: self to: anObject asString
	"TODO: announcements"! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:44:04'!
sourceCodeForNoSelector 

	^ 'unresolvedMessage', String cr, String tab, '"source code for the method model not set"'! !

!RGMethod methodsFor: 'accessing' stamp: 'KenD 3/23/2022 12:44:16'!
sourceCodeForNoSource 

	^ self selector asMethodPreamble, String cr, String tab, '"source code for the method model not set"'! !

!RGMethod methodsFor: 'accessing - model' stamp: 'KenD 3/23/2022 12:45:10'!
tags 

	| allTags |
	allTags := IdentitySet new.
	self tagsDo: [ :each | allTags add: each].
	^ allTags asArray! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:27:16'!
author

	^ self backend forBehavior authorFor: self
! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:27:33'!
author: aString 

	self backend forBehavior setAuthorFor: self to: aString
! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:29:42'!
cleanTags 

	self changeProtocolDuring: [ 
		self cleanTagsWithoutAnnouncemnt ]! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:29:56'!
cleanTagsWithoutAnnouncemnt 

	self backend forMethod cleanMethodTagsFor: self.! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:37:01'!
package 

	^ self backend forMethod methodPackageFor: self! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:37:24'!
package: anRGPackageDefinition 

	self backend forMethod setMethodPackageFor: self to: anRGPackageDefinition.
	self environment addPackage: anRGPackageDefinition.
	(self parent package = anRGPackageDefinition)
		ifFalse: [ self package addExtensionMethod: self ].
! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:38:31'!
protocol 

	| methodTags |
	
	methodTags := self tags.
	^ methodTags
		ifEmpty: [  self class asYetUnclassifiedProtocolName]
		ifNotEmpty: [ methodTags sorted first ]
! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:38:44'!
protocol: aSymbol 

	self cleanTagsWithoutAnnouncemnt.
	self tagWith: aSymbol.! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:44:33'!
tagWith: aSymbol 

	self changeProtocolDuring: [ 
		self backend forMethod tagMethod: self with: aSymbol.
		self parent addMethodTag: aSymbol.
	]! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:45:28'!
tagsDo: aBlock 

	self backend forMethod tagsForMethod: self do: aBlock! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:45:43'!
time 

	^ self backend forBehavior timeFor: self! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:45:59'!
time: aDateAndTime 

	self backend forBehavior setTimeFor: self to: aDateAndTime! !

!RGMethod methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 12:46:14'!
untagFrom: aSymbol 

	self backend forMethod untagMethod: self from: aSymbol! !

!RGMethod methodsFor: 'default model values' stamp: 'KenD 3/23/2022 12:30:52'!
defaultAuthor 

	^ ''! !

!RGMethod methodsFor: 'default model values' stamp: 'KenD 3/23/2022 12:31:27'!
defaultSourceCode 

	^ self sourceCodeForNoSelector! !

!RGMethod methodsFor: 'default model values' stamp: 'KenD 3/23/2022 12:31:38'!
defaultTags 

	^ Set new! !

!RGMethod methodsFor: 'default model values' stamp: 'KenD 3/23/2022 12:31:53'!
defaultTime 

	^ DateAndTime new
! !

!RGMethod methodsFor: 'initialization' stamp: 'KenD 3/23/2022 12:33:17'!
initialize 

	super initialize.

	sourceCode := self unresolvedValue: self defaultSourceCode.
	tags := self unresolvedValue: self defaultTags.	"tags must be set before package"
	package := self unresolvedValue: self parent package.
	author := self unresolvedValue: self defaultAuthor.
	time := self unresolvedValue: self defaultTime.
	! !

!RGMethod methodsFor: 'initialization' stamp: 'KenD 3/23/2022 12:33:39'!
initializeUnresolved 

	super initializeUnresolved.

	sourceCode := self unresolvedValue: self defaultSourceCode.
	tags := self unresolvedValue: self defaultTags.	
	package := self unresolvedValue: self parent package.
	author := self unresolvedValue: self defaultAuthor.
	time := self unresolvedValue: self defaultTime.! !

!RGMethod methodsFor: 'managing container' stamp: 'KenD 3/23/2022 12:24:27'!
addoptToParentStub

	super addoptToParentStub.
	self environment backend createUnresolvedClassGroupFor: self parent.
	self flag: #prvtAddLocalMethod.
	self parent addLocalMethod: self.! !

!RGMethod methodsFor: 'managing container' stamp: 'KenD 3/23/2022 12:31:10'!
defaultParentStub 

	^ self defaultClassStub
! !

!RGMethod methodsFor: 'queries - class' stamp: 'KenD 3/23/2022 12:36:22'!
methodClass 

	^ self parent! !

!RGMethod methodsFor: 'resolving' stamp: 'KenD 3/23/2022 12:35:57'!
makeResolved 

	super makeResolved.
	
	sourceCode := self sourceCode markAsRingResolved.
	package := self package markAsRingResolved.	
	author := self author markAsRingResolved.	
	time := self time markAsRingResolved.	
	tags := self tags markAsRingResolved.! !

!RGMethod methodsFor: 'testing' stamp: 'KenD 3/23/2022 12:34:33'!
isFromTrait 

	^ self parent isTrait! !

!RGMethod methodsFor: 'testing' stamp: 'KenD 3/23/2022 12:34:49'!
isMetaSide 

	^ self parent isMeta! !

!RGMethod methodsFor: 'testing' stamp: 'KenD 3/23/2022 12:35:06'!
isMethod 

	^ true! !

!RGMethod methodsFor: 'testing' stamp: 'KenD 3/23/2022 12:35:20'!
isTaggedWith: aSymbol 

	^self tags includes: aSymbol 
! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:39:25'!
prvtAuthor 

	^ author value! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:39:37'!
prvtAuthor: aString 

	^ author := aString! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:40:07'!
prvtCleanTags 

	tags := self defaultTags.
		
	"TODO:Announce if not empty"! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:40:23'!
prvtPackage 

	^ package value
! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:40:37'!
prvtPackage: anRGPackageDefinition 

	self environment verifyOwnership: anRGPackageDefinition.

	^ package := anRGPackageDefinition! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:40:52'!
prvtResolvableProperties 

	^ super prvtResolvableProperties, { 
		#sourceCode -> sourceCode. 
		#package -> package. 
		#author -> author. 
		#time -> time. 
		#tags -> tags. 
	}! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:41:52'!
prvtTagWith: aSymbol 
	
	tags isRingResolved ifFalse: [ 
		self prvtCleanTags  ].
	
	tags add: aSymbol.	! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:42:04'!
prvtTagsDo: aBlock 

	^ tags value do: aBlock! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:42:12'!
prvtTime 

	^ time value! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:42:24'!
prvtTime: aDateAndTime 

	^ time := aDateAndTime! !

!RGMethod methodsFor: 'private - backend interface' stamp: 'KenD 3/23/2022 12:42:36'!
prvtUntagFrom: aSymbol 
	
	(tags value includes: aSymbol)
		ifTrue: [ tags remove: aSymbol ].
	
	"TODO:Announce"! !

!RGMethod methodsFor: 'removing' stamp: 'KenD 3/23/2022 12:43:09'!
removeFromSystem 

	^ self parent removeLocalMethod: self! !

!RGMethod methodsFor: 'private' stamp: 'KenD 3/23/2022 12:26:09'!
astFromSource

	^ RBParser parseMethod: self sourceCode! !

!RGMethod methodsFor: 'private' stamp: 'KenD 3/23/2022 12:29:07'!
changeProtocolDuring: aBlock 

	| oldProtocol |
	
	oldProtocol := self protocol.
	aBlock value.
	self announce: (MethodRecategorized method: self oldProtocol: oldProtocol)! !

!RGMethod methodsFor: 'private' stamp: 'KenD 3/23/2022 12:41:11'!
prvtSafeSourceCode 

	| aStringOrUnresolved |
	aStringOrUnresolved := self prvtSourceCode. 
	^ aStringOrUnresolved isRingResolved
		ifFalse: [ 
			self prvtName isRingResolved 
				ifTrue: [ self sourceCodeForNoSource ]
				ifFalse: [ self sourceCodeForNoSelector ] ]
		ifTrue: [ aStringOrUnresolved value ]! !

!RGMethod methodsFor: 'private' stamp: 'KenD 3/23/2022 12:41:25'!
prvtSourceCode 

	^ sourceCode ! !

!RGMethod methodsFor: 'private' stamp: 'KenD 3/23/2022 12:41:35'!
prvtSourceCode: anObject 

	sourceCode := anObject! !

!RGSlot methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:30:57'!
definitionString 

	^ String streamContents: [ :aStream |
		aStream nextPutAll: '#'; nextPutAll: self name]! !

!RGSlot methodsFor: 'bootstrap' stamp: 'KenD 3/23/2022 13:29:31'!
accept: anInterpreter assign: aValue inNode: aVariableNode 

	self error: #TBD! !

!RGSlot methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:30:05'!
addoptToParentStub 

	super addoptToParentStub.
	self parent addSlot: self.! !

!RGSlot methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:30:19'!
defaultParentStub 

	^ self defaultFixedLayoutStub! !

!RGSlot methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:31:31'!
isSlot 

	^ true! !

!RGSlot methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:31:42'!
isSpecial 

	^ true! !

!RGSlot methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:31:55'!
name: aString 

	self parent parent announceDefinitionChangeDuring: [ 
		super name: aString ].
! !

!RGInstanceVariableSlot methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:49:20'!
isSpecial 

	^ false! !

!RGUnknownSlot methodsFor: 'prvt - backend interface' stamp: 'KenD 3/27/2022 15:31:47'!
prvtExpression 

	^ expression value! !

!RGUnknownSlot methodsFor: 'prvt - backend interface' stamp: 'KenD 3/27/2022 15:32:00'!
prvtExpression: aString 

	^ expression := aString! !

!RGUnknownSlot methodsFor: 'prvt - backend interface' stamp: 'KenD 3/27/2022 15:32:17'!
prvtResolvableProperties 

	^ super prvtResolvableProperties, { 
		#expression -> expression. 
	}! !

!RGUnknownSlot methodsFor: 'resolving' stamp: 'KenD 3/27/2022 15:31:12'!
makeResolved 

	super makeResolved.
	
	expression := self expression markAsRingResolved.! !

!RGUnknownSlot methodsFor: 'initialization' stamp: 'KenD 3/27/2022 15:30:43'!
initialize 

	super initialize.
	
	expression := self unresolvedValue: self defaultExpression.! !

!RGUnknownSlot methodsFor: 'initialization' stamp: 'KenD 3/27/2022 15:30:54'!
initializeUnresolved 

	super initializeUnresolved.
	
	expression := self unresolvedValue: self defaultExpression.! !

!RGUnknownSlot methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:30:06'!
expression 

	^ self backend forBehavior expressionFor: self! !

!RGUnknownSlot methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 15:30:15'!
expression: aString 

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior setExpressionFor: self to: aString ].! !

!RGUnknownSlot methodsFor: 'private - backend interface' stamp: 'KenD 3/27/2022 15:29:36'!
definitionString 

	^ String streamContents: [ :aStream |
		aStream nextPutAll: '#'; nextPutAll: self name; nextPutAll: ' => '; nextPutAll: self expression ]! !

!RGUnknownSlot methodsFor: 'default model values' stamp: 'KenD 3/27/2022 15:29:11'!
defaultExpression 

	'InstanceVariableSlot named: #slotOfUnknownType'! !

!RGVariable methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:07:16'!
definitionString 
	"non special globals are defined by the symbol"
	
	^self isSpecial
		ifTrue: [ String streamContents: [ :aStream |
			aStream nextPutAll: '#'; nextPutAll: self name]]
		ifFalse: [self name printString]! !

!RGVariable methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:09:06'!
name: aString 

	self parent announceDefinitionChangeDuring: [ 
		super name: aString ].! !

!RGVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:08:05'!
isClassInstanceVariable 

	^ false! !

!RGVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:08:18'!
isClassVariable 

	^ false! !

!RGVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:08:33'!
isPoolVariable 

	^ false! !

!RGVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:08:43'!
isSpecial 

	^ false! !

!RGVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:08:52'!
isVariableDefinition 

	^ true! !

!RGClassVariable methodsFor: 'managing container' stamp: 'KenD 3/24/2022 14:12:32'!
addoptToParentStub 

	super addoptToParentStub.
	self environment backend createUnresolvedClassGroupFor: self parent.
	self parent addClassVariable: self.! !

!RGClassVariable methodsFor: 'managing container' stamp: 'KenD 3/24/2022 14:12:52'!
defaultParentStub 

	^ self defaultClassStub! !

!RGClassVariable methodsFor: 'printing' stamp: 'KenD 3/24/2022 14:13:20'!
definitionString 

	"TODO: special class variables?"

	^ self name printString! !

!RGClassVariable methodsFor: 'testing' stamp: 'KenD 3/27/2022 12:49:44'!
isClassVariable 

	^ true! !

!RGPoolVariable methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:33:48'!
addoptToParentStub 

	super addoptToParentStub.

	self environment backend createUnresolvedClassGroupFor: self parent! !

!RGPoolVariable methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:33:58'!
defaultParentStub 

	^ self defaultClassStub! !

!RGPoolVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:34:25'!
isPoolVariable 

	^ true! !

!RGGlobalVariable methodsFor: 'managing container' stamp: 'KenD 3/23/2022 14:23:34'!
addoptToParentStub 

	super addoptToParentStub.
	self parent addGlobalVariable: self.! !

!RGGlobalVariable methodsFor: 'managing container' stamp: 'KenD 3/23/2022 14:23:57'!
defaultParentStub 

	^ self defaultEnvironmentStub! !

!RGGlobalVariable methodsFor: 'testing' stamp: 'KenD 3/23/2022 14:24:16'!
isGlobalVariable 

	^ true! !

!RGLayout methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:44:41'!
allSlots

	^ {  }
! !

!RGLayout methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:45:16'!
nstVarNames 

	^ {}! !

!RGLayout methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:44:10'!
addoptToParentStub 

	super addoptToParentStub.
	self environment backend createUnresolvedClassGroupFor: self parent.
	self flag: #prvtLayout:.
	self parent behaviorStrategy layout: self.! !

!RGLayout methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:44:53'!
defaultParentStub 

	^ self defaultClassStub! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:45:42'!
isBitsLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:45:58'!
isByteLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:46:08'!
isCompiledMethodLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:46:19'!
isEmptyLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:46:27'!
isEphemeronLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:46:47'!
isImmediateLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:01'!
isLayout 

	^ true! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:09'!
isObjectLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:24'!
isPointerLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:35'!
isVariableLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:43'!
isWeakLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:47:52'!
isWordLayout 

	^ false! !

!RGLayout methodsFor: 'testing' stamp: 'KenD 3/23/2022 13:46:36'!
sFixedLayout 

	^ false! !

!RGEmptyLayout methodsFor: 'accessing' stamp: 'KenD 3/24/2022 14:01:03'!
layoutName 

	^ #EmptyLayout! !

!RGEmptyLayout methodsFor: 'testing' stamp: 'KenD 3/24/2022 14:00:52'!
isEmptyLayout 

	^ true! !

!RGObjectLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:24:48'!
layoutName 

	^ #ObjectLayout! !

!RGObjectLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:24:59'!
slots 

	"only for API compatibility purposes"
	^ Array new! !

!RGObjectLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:24:23'!
isObjectLayout 

	^ true! !

!RGBitsLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:32:15'!
layoutName 

	^ #BitsLayout! !

!RGBitsLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:32:29'!
isBitsLayout 

	^ true! !

!RGBitsLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:32:24'!
isVariableLayout 

	^ true! !

!RGCompiledMethodLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:31:25'!
layoutName 

	^ #CompiledMethodLayout! !

!RGCompiledMethodLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:30:48'!
isBitsLayout 

	^ true! !

!RGCompiledMethodLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:30:56'!
isByteLayout 

	^ true! !

!RGCompiledMethodLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:31:05'!
isCompiledMethodLayout 

	^ true! !

!RGCompiledMethodLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:31:15'!
isVariableLayout 

	^ true! !

!RGImmediateLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:27:01'!
layoutName 

	^ #ImmediateLayout! !

!RGImmediateLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:26:51'!
isImmediateLayout 

	^ true! !

!RGPointerLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:20:03'!
layoutName 

	^ #PointerLayout! !

!RGPointerLayout methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 16:12:09'!
addSlot: anRGSlot 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addSlot: anRGSlot to: self ].! !

!RGPointerLayout methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 16:12:45'!
cleanSlots 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior cleanSlotsFor: self ].! !

!RGPointerLayout methodsFor: 'accessing - backend' stamp: 'KenD 3/27/2022 16:23:13'!
slotsDo: aBlock 

	self backend forBehavior slotsFor: self do: aBlock! !

!RGPointerLayout methodsFor: 'default model values' stamp: 'KenD 3/27/2022 16:16:54'!
defaultSlots 

	^ OrderedCollection new! !

!RGPointerLayout methodsFor: 'initialization' stamp: 'KenD 3/27/2022 16:16:30'!
initialize 

	super initialize.
	slots := self unresolvedValue: self defaultSlots.! !

!RGPointerLayout methodsFor: 'initialization' stamp: 'KenD 3/27/2022 16:18:43'!
initializeUnresolved 

	super initializeUnresolved.
	slots := self unresolvedValue: self defaultSlots.! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:21:27'!
prvtAddSlot: anRGSlot 

	self environment verifyOwnership: anRGSlot.
	
	slots isRingResolved ifFalse: [ 
		self prvtCleanSlots  ].
	
	slots add: anRGSlot.	! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:21:44'!
prvtCleanSlots 

	slots := self defaultSlots.! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:21:58'!
prvtRemoveSlot: anRGSlot 

	self environment verifyOwnership: anRGSlot.
	
	slots remove: anRGSlot.! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:22:13'!
prvtResolvableProperties 

	^ super prvtResolvableProperties, { 
		#slots -> slots. 
	}! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:22:25'!
prvtSlotsDo: aBlock 

	slots value do: aBlock! !

!RGPointerLayout methodsFor: 'prvt - backend access' stamp: 'KenD 3/27/2022 16:22:37'!
removeSlot: anRGSlot 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSlot: anRGSlot from: self ].! !

!RGPointerLayout methodsFor: 'queries - slots' stamp: 'KenD 3/27/2022 16:12:32'!
allSlots 

	^ self slots! !

!RGPointerLayout methodsFor: 'queries - slots' stamp: 'KenD 3/27/2022 16:22:56'!
slots 

	| allSlots |
	allSlots := OrderedCollection new.
	self slotsDo: [ :each | allSlots add: each].
	^ allSlots asArray! !

!RGPointerLayout methodsFor: 'resolving' stamp: 'KenD 3/27/2022 16:20:26'!
makeResolved 

	super makeResolved.
	
	slots := self slots asOrderedCollection markAsRingResolved.! !

!RGPointerLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:19:46'!
isPointerLayout 

	^ true! !

!RGEphemeronLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:28:42'!
layoutName 

	^ #EphemeronLayout! !

!RGEphemeronLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:28:52'!
isEphemeronLayout 

	^ true! !

!RGFixedLayout methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:28:03'!
layoutName 

	^ #FixedLayout! !

!RGFixedLayout methodsFor: 'testing types' stamp: 'KenD 3/27/2022 16:27:54'!
isFixedLayout 

	^ true! !

!RGPackageDefinition methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:38:18'!
categories 
	
	^ self definedBehaviors collect: #category as: Set! !

!RGPackageDefinition methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:38:35'!
categoryName 

	^ self name ! !

!RGPackageDefinition methodsFor: 'accessing' stamp: 'KenD 3/23/2022 13:38:44'!
classNames 

	^ self classes collect: #name! !

!RGPackageDefinition methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 13:36:42'!
addClassTag: sSymbol 

	self backend forPackage addClassTag: sSymbol to: self! !

!RGPackageDefinition methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 13:36:59'!
addDefinedBehavior: anRGBehavior 

	self backend forPackage addDefinedBehavior: anRGBehavior to: self
! !

!RGPackageDefinition methodsFor: 'accessing - backend' stamp: 'KenD 3/23/2022 13:37:15'!
addExtensionMethod: anRGMethod 

	self backend forPackage addExtensionMethod: anRGMethod to: self! !

!RGPackageDefinition methodsFor: 'managing container' stamp: 'KenD 3/23/2022 13:37:57'!
addoptToParentStub 

	self isRingResolved ifFalse: [ ^ self ].
	
	super addoptToParentStub.

	^ self parent addPackage: self.! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 12:03:12'!
announcer 

	^ announcer ifNil: [ announcer := RGEnvironmentAnnouncer new ]! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 12:03:32'!
ask 

	^ queryInterface ifNil: [ queryInterface := RGEnvironmentQueryInterface for: self ].
! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 12:03:44'!
backend 

	^ backend ifNil: [ backend := RGEnvironmentBackend for: self ].! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 12:03:56'!
backend: anRGEnvironmentBackend 

	^ backend := anRGEnvironmentBackend! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 12:59:34'!
definitionFor: anObject 

	^ self backend definitionFor: anObject.! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:03:04'!
globalVariablesBindings 

	^ self 
		propertyNamed: #globalVariablesBindings 
		ifAbsentPut: [ IdentityDictionary new.]! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:05:04'!
package 

	^ nil! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:10:46'!
queryInterface 

	^ self ask! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:15:00'!
version 

	^ version
! !

!RGEnvironment methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:15:09'!
version: anObject 

	version := anObject! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 12:02:18'!
addBehavior: anRGBehavior 

	self backend forEnvironment
		addBehavior: anRGBehavior
		to: self.
	anRGBehavior isMeta ifFalse: [
		anRGBehavior package
			ifNotNil: [ :package | 
				self backend forEnvironment addPackage: anRGBehavior package	to: self.
				package addDefinedBehavior: anRGBehavior. ].
		"self backend forEnvironment
					addGlobalVariable: (RGGlobalVariable named: anRGBehavior name parent: self)
					to: self" ].

	(anRGBehavior hasResolvedName)
		ifTrue: [ self queryInterface behaviorsDictionary at: anRGBehavior name asSymbol put: anRGBehavior ].! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 12:02:35'!
addGlobalVariable: anRGGlobalVariable 

	self backend forBehavior addGlobalVariable: anRGGlobalVariable to: self.! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 12:02:48'!
addPackage: anRGPackageDefinition 

	self backend forPackage addPackage: anRGPackageDefinition to: self.
	
	self announce: (RPackageRegistered to: anRGPackageDefinition).! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 12:04:21'!
behaviorsDo: aBlock 

	self backend forEnvironment behaviorsFor: self do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:03:18'!
globalVariablesDo: aBlock 

	self backend forBehavior globalVariablesFor: self do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:05:17'!
packagesDo: aBlock 

	self backend  packagesFor: self do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:06:12'!
prvtAddBehavior: anRGBehavior 

	self environment verifyOwnership: anRGBehavior.
	
	behaviors isRingResolved ifFalse: [ 
		self prvtCleanBehaviors ].
	
	(behaviors includes: anRGBehavior)
		ifFalse: [ 
			behaviors add: anRGBehavior.
			self announcer behaviorAdded: anRGBehavior].! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:06:43'!
prvtAddGlobalVariable: anRGGlobalVariable 

	self environment verifyOwnership: anRGGlobalVariable.
	
	globalVariables isRingResolved ifFalse: [ 
		self prvtCleanGlobalVariables  ].
	
	globalVariables add: anRGGlobalVariable.	! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:07:12'!
prvtAddPackage: anRGPackageDefinition 

	self environment verifyOwnership: anRGPackageDefinition.
	
	packages isRingResolved ifFalse: [ 
		self prvtCleanPackages ].
	
	packages add: anRGPackageDefinition! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:07:33'!
prvtBehaviorsDo: aBlock 

	^ behaviors value do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:07:48'!
prvtCleanBehaviors 

	behaviors := self defaultBehaviors.
		
	"TODO:Announce if not empty"! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:08:07'!
prvtCleanGlobalVariables 

	globalVariables := self defaultGlobalVariables.! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:08:21'!
prvtCleanPackages 

	packages := self defaultPackages.
		
	"TODO:Announce if not empty"! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:08:36'!
prvtGlobalVariablesDo: aBlock 

	globalVariables value do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:08:59'!
prvtPackagesDo: aBlock 

	^ packages value do: aBlock! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:09:14'!
prvtRemoveBehavior: anRGBehavior 

	self verifyOwnership: anRGBehavior.
	
	behaviors remove: anRGBehavior.
	
	"TODO:Announce"! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:09:29'!
prvtRemoveGlobalVariable: anRGGlobalVariable 

	self environment verifyOwnership: anRGGlobalVariable.
	
	globalVariables remove: anRGGlobalVariable.! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:09:55'!
prvtRemovePackage: anRGPackageDefinition 

	self verifyOwnership: anRGPackageDefinition.
	
	packages remove: anRGPackageDefinition.
	
	"TODO:Announce"! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:10:12'!
prvtResolvableProperties 

	^ super prvtResolvableProperties, { 
		#behaviors -> behaviors. 
		#packages -> packages. 
		#globalVariables -> globalVariables. 
	}! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:11:05'!
removeBehavior: anRGBehavior 

	self backend forEnvironment removeBehavior: anRGBehavior from: self.
	
	"remove extensions methods deleted with the behavior from owning packages"
	anRGBehavior extensions do: [ :each |
		each package removeExtensionMethod: each ].
	
	(anRGBehavior package notNil and: [anRGBehavior package  definedBehaviors includes: anRGBehavior]) ifTrue: [ 
	anRGBehavior package removeDefinedBehavior: anRGBehavior.
	].
	
	self announcer behaviorRemoved: anRGBehavior.
	
	(anRGBehavior hasResolvedName) ifTrue: [ 
		self queryInterface behaviorsDictionary removeKey: anRGBehavior name ifAbsent: []].! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:11:26'!
removeGlobalVariable: anRGGlobalVariable 

	self backend forBehavior removeGlobalVariable: anRGGlobalVariable from: self! !

!RGEnvironment methodsFor: 'accessing - backend' stamp: 'KenD 3/24/2022 13:11:40'!
removePackage: anRGPackageDefinition 

	self backend forPackage removePackage: anRGPackageDefinition from: self.
	
	self announce: (RPackageUnregistered to: anRGPackageDefinition).! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:05:59'!
child: aChildDefinition renamedFrom: oldName to: newName 

	self queryInterface behaviorsDictionary removeKey: oldName ifAbsent: [].
	self queryInterface behaviorsDictionary at: newName asSymbol put: aChildDefinition.! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:06:23'!
clean 

	self cleanWithMetaclassNamed: #Metaclass! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:06:41'!
cleanBehaviors 

	| oldBehaviors |
	
	oldBehaviors := self ask behaviors.
	
	self backend forPackage cleanBehaviorsFor: self.
	
	oldBehaviors do: [ :each |
		self announcer behaviorRemoved: each ].
	
	self queryInterface resetBehaviorsDictionary.! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:07:06'!
cleanGlobalVariables 

	self backend forBehavior cleanGlobalVariablesFor: self.
! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:07:20'!
cleanPackages 

	self backend forEnvironment cleanPackagesFor: self! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:07:41'!
cleanSuperclassesOfMetaclasses 

	"fix suprclasses of metaclasses do not pointing to metaclasses of superclasses"
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass and: [ each superclass isRingResolved not ])
			ifTrue: [ 
				each baseClass superclass ifNotNil: [ 
					each superclass: each baseClass superclass metaclass] ] ].! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:08:00'!
cleanUnusedUnreferencedBehaviors 

	"remove behaviors that are not linked in the graph of the named behaviors"
	
	| referenced unreferenced newelyAdded |
	
	referenced := IdentitySet new.
	self ask behaviorsDo: [ :each |
		(each hasResolvedName) ifTrue: [ 
			referenced add: each.
			referenced addAll: (each referencedBehaviors copyWithoutAll: {each. nil}) ]  ].
	[	newelyAdded := IdentitySet new.
		(referenced copyWithout: nil) do: [ :each | 
			each referencedBehaviors do: [ :ref |
				(referenced includes: ref) ifFalse: [
					referenced add: ref.
					newelyAdded add: ref]]].
		newelyAdded isEmpty ] whileFalse.

	unreferenced := (self ask behaviors copyWithoutAll: referenced).

	unreferenced do: [:each | self removeBehavior: each  ].
	
	^ unreferenced! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:08:20'!
cleanUnusedUnreferencedPackages 

	"remove packages that are not not used"
	
	| referenced unreferenced |
	
	referenced := IdentitySet new.
	self ask behaviorsDo: [ :each |
		referenced addAll: each referencedPackages ].
	
	unreferenced := (self ask packages copyWithoutAll: referenced).

	unreferenced do: [:each | self removePackage: each  ].
	
	^ unreferenced! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 12:08:38'!
cleanWithMetaclassNamed: aProposedName 

	self unifyMetaclass: aProposedName.
	self hasTraits ifTrue: [ 
		self unifyTrait.
		self unifyClassTrait. ].
	self cleanSuperclassesOfMetaclasses.
	self cleanUnusedUnreferencedBehaviors.
	self cleanUnusedUnreferencedPackages.! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:00:10'!
ensureClassNamed: aSymbol 

	self assert: (aSymbol endsWith: ' classTrait') not.

	^ self ask behaviorNamedExactlyAs: aSymbol ifAbsent: [ 
		 | behaviorClass newBehavior sibling siblingName |
		siblingName := (aSymbol endsWith: ' class') 
			ifTrue: [ aSymbol withoutSuffix: ' class' ]
			ifFalse: [ (aSymbol, 'class') asSymbol ].
				
			sibling := self ask behaviors detect: [ :each | each name = siblingName ] ifNone: nil.
			sibling ifNotNil: [ 
				| result |
				result := sibling isMetaclass 
					ifTrue: [ sibling baseClass ]
					ifFalse: [ sibling metaclass ].
				result name: aSymbol.
				result propertyNamed: #resolved put: true.
				^ result ].
			
			behaviorClass := (aSymbol endsWith: ' class') 
				ifFalse: [ RGClass ]
				ifTrue: [ RGMetaclass ].
			newBehavior := behaviorClass named: aSymbol parent: self.
			self addBehavior: newBehavior.
			newBehavior ] ! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:00:50'!
ensureMetaclass 

	| aMetaclass |
	
	aMetaclass := self ask behaviorNamed: #Metaclass.
	aMetaclass ifNotNil: [ ^ aMetaclass ].
	
	aMetaclass := self ask behaviors detect: [ :each | 
		(each propertyNamed: #Metaclass ifAbsent: [ false ]) ] ifNone: [ nil ].
	aMetaclass ifNotNil: [ ^ aMetaclass ].

	aMetaclass := self ensureClassNamed: #Metaclass.	
	
	aMetaclass propertyNamed: #Metaclass put: true.	
	
	^ aMetaclass.! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:01:06'!
ensureMetaclass: aProposedName 

	| aMetaclass |
	
	aMetaclass := self ask behaviorNamed: aProposedName.
	aMetaclass ifNotNil: [ ^ aMetaclass ].
	
	aMetaclass := self ask behaviors detect: [ :each | 
		(each propertyNamed: #Metaclass ifAbsent: [ false ]) ] ifNone: [ nil ].
	aMetaclass ifNotNil: [ ^ aMetaclass ].

	aMetaclass := self ensureClassNamed: aProposedName.	
	
	aMetaclass propertyNamed: #Metaclass put: true.	
	
	^ aMetaclass.! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:01:31'!
ensurePackageNamed: aSymbol 

	^ self ask packages 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | newPackage |
				newPackage := RGPackageDefinition named: aSymbol parent: self.
				self addPackage: newPackage.
				newPackage ].! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:02:06'!
ensureUnpackagedPackage 

	^ self unpackagedPackageOrNil
		ifNotNil: [ :found | found ]
		ifNil: [ | newPackage |
			newPackage := RGPackageDefinition unresolvedWithParent: self.
			newPackage prvtName: self unpackagedPackageName.
			self prvtAddPackage: newPackage.
			^ newPackage ]! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:02:40'!
fixProtoObjectClassSuperclass 

	(self ask classNamed: #'ProtoObject class') superclass: (self ask classNamed: #Class).
! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:12:44'!
unifyMetaclass 

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aMetaclass |

	aMetaclass := self ensureMetaclass.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass)
			ifTrue: [ each metaclass: aMetaclass] ].
! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:12:56'!
unifyMetaclass: aProposedName 

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aMetaclass |

	aMetaclass := self ensureMetaclass: aProposedName.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass)
			ifTrue: [ each metaclass: aMetaclass] ].! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:13:52'!
unpackagedPackage 

	| aProtocol |
	aProtocol := RGPackageDefinition unresolvedWithParent: self.
	aProtocol prvtName: self unpackagedPackageName.
	
	^ aProtocol! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:14:02'!
unpackagedPackageName 

	^ '_UnpackagedPackage' asSymbol! !

!RGEnvironment methodsFor: 'cleaning' stamp: 'KenD 3/24/2022 13:14:12'!
unpackagedPackageOrNil 

	self packagesDo: [ :each |
		(each name = self unpackagedPackageName) ifTrue: [ ^ each ] ].
	
	^ nil.! !

!RGEnvironment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 12:53:46'!
defaultBehaviors 

	^ IdentitySet new! !

!RGEnvironment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 12:58:59'!
defaultGlobalVariables 

	^ IdentitySet new! !

!RGEnvironment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 12:59:10'!
defaultPackages 

	^ IdentitySet new! !

!RGEnvironment methodsFor: 'default model values' stamp: 'KenD 3/24/2022 12:59:19'!
defaultVersion 

	^ 6! !

!RGEnvironment methodsFor: 'initialization' stamp: 'KenD 3/24/2022 12:52:17'!
createDefaultEnvironment 

	| protoobject protoobjectClass object objectClass class classClass classDescription classDescriptionClass behavior behaviorClass metaclass metaclassClass kernelPackage |
	
	protoobject := RGClass unresolvedNamed: #'ProtoObject' withParent: self.
	protoobjectClass := RGMetaclass unresolvedNamed: #'ProtoObject class' withParent: self.
	object := RGClass unresolvedNamed: #'Object' withParent: self.
	objectClass := RGMetaclass unresolvedNamed: #'Object class' withParent: self.
	class := RGClass unresolvedNamed: #'Class' withParent: self.
	classClass := RGMetaclass unresolvedNamed: #'Class class' withParent: self.
	classDescription := RGClass unresolvedNamed: #'ClassDescription' withParent: self.
	classDescriptionClass := RGMetaclass unresolvedNamed: #'ClassDescription class' withParent: self.
	behavior := RGClass unresolvedNamed: #'Behavior' withParent: self.
	behaviorClass := RGMetaclass unresolvedNamed: #'Behavior class' withParent: self.
	metaclass := RGClass unresolvedNamed: #'Metaclass' withParent: self.
	metaclassClass := RGMetaclass unresolvedNamed: #'Metaclass class' withParent: self.
	kernelPackage := RGPackageDefinition unresolvedNamed: #'Kernel' withParent: self.
	
	{ protoobject. protoobjectClass. object. objectClass. class. classClass. classDescription. classDescriptionClass. behavior. behaviorClass. metaclass. metaclassClass } do: [ :each |
		kernelPackage prvtAddDefinedBehavior: each.
		self prvtAddBehavior: each.].
	self prvtAddPackage: kernelPackage.
	
	protoobject prvtSuperclass: protoobject.
	protoobject prvtMetaclass: protoobjectClass.
	protoobject behaviorStrategy prvtPackage: kernelPackage.

	protoobjectClass prvtSuperclass: class.
	protoobjectClass prvtMetaclass: metaclass.

	object prvtSuperclass: protoobject.
	object prvtMetaclass: objectClass.
	object behaviorStrategy prvtPackage: kernelPackage.

	objectClass prvtSuperclass: protoobjectClass.
	objectClass prvtMetaclass: metaclass.

	class prvtSuperclass: classDescription.
	class prvtMetaclass: classClass.
	class behaviorStrategy prvtPackage: kernelPackage.

	classClass prvtSuperclass: classDescriptionClass.
	classClass prvtMetaclass: metaclass.

	classDescription prvtSuperclass: behavior.
	classDescription prvtMetaclass: classDescriptionClass.
	classDescription behaviorStrategy prvtPackage: kernelPackage.

	classDescriptionClass prvtSuperclass: behaviorClass.
	classDescriptionClass prvtMetaclass: metaclass.

	behavior prvtSuperclass: object.
	behavior prvtMetaclass: behaviorClass.
	behavior behaviorStrategy prvtPackage: kernelPackage.

	behaviorClass prvtSuperclass: objectClass.
	behaviorClass prvtMetaclass: metaclass.

	metaclass prvtSuperclass: classDescription.
	metaclass prvtMetaclass: metaclassClass.
	metaclass behaviorStrategy prvtPackage: kernelPackage.

	metaclassClass prvtSuperclass: classDescriptionClass.
	metaclassClass prvtMetaclass: metaclass.
! !

!RGEnvironment methodsFor: 'initialization' stamp: 'KenD 3/24/2022 13:03:44'!
initialize 

	super initialize.

	behaviors := self unresolvedValue: self defaultBehaviors.
	packages := self unresolvedValue: self defaultPackages.
	globalVariables := self unresolvedValue: self defaultGlobalVariables.
	
	version := self defaultVersion
	! !

!RGEnvironment methodsFor: 'initialization' stamp: 'KenD 3/24/2022 13:03:58'!
initializeUnresolved 

	super initializeUnresolved.

	behaviors := self unresolvedValue: self defaultBehaviors.
	packages := self unresolvedValue: self defaultPackages.
	globalVariables := self unresolvedValue: self defaultGlobalVariables.
	
	version := self defaultVersion! !

!RGEnvironment methodsFor: 'resolving' stamp: 'KenD 3/24/2022 13:04:39'!
makeResolved 

	super makeResolved.
	
	behaviors := self ask behaviors markAsRingResolved.
	packages := self ask packages markAsRingResolved.
	globalVariables := self ask globalVariables markAsRingResolved.! !

!RGEnvironment methodsFor: 'testing' stamp: 'KenD 3/24/2022 13:04:18'!
isEnvironment 

	^ true! !

!RGEnvironment methodsFor: 'testing' stamp: 'KenD 3/24/2022 13:14:47'!
verifyOwnership: anRGObject 

	"ignore unresolved values. TODO: check default values ownership?"
	anRGObject isRingResolved ifFalse: [ ^ self.].

	(anRGObject environment = self)
		ifFalse: [ RGWrongEnvironment signal ].! !

!RGEnvironment methodsFor: 'unpackaged' stamp: 'KenD 3/24/2022 13:12:14'!
removeUnusedPackages 

	"remove all packages that are not used in the system. It cannot be done automatically
	for every change in the package structure because then it would be impossible to 
	create e.g. an environment with one empty package"
	
	| usedPackages | 
	
	usedPackages := IdentitySet new.
	self behaviorsDo: [ :behavior |
		behavior isMeta 
			ifFalse: [ usedPackages add: behavior package]. 
		behavior localMethodsDo: [ :method |
			  usedPackages add: method package]].
		
	self ask packages copy do: [ :each |
		(usedPackages includes: each) 
			ifFalse: [ self removePackage: each ] ].! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:39:38'!
definitionFor: anObject 

	^ self 
		definitionFor: anObject
		ifAbsentRegister: [ anObject ensureRingDefinitionIn: self environment ]! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:40:08'!
definitionFor: anObject ifAbsentRegister: aDefinitionOrBlock 

	^ providedDefinitions 
		at: anObject 
		ifPresent: [:definition | definition ]
		ifAbsentPut: [ aDefinitionOrBlock value ].! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:40:36'!
environment: anRGEnironment 
		
	environment := anRGEnironment! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:44:47'!
metaclassFor: anRGBehavior 

	^  anRGBehavior prvtMetaclass! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:44:58'!
methodPackageFor: anRGMethod 

	^  anRGMethod prvtPackage! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:45:10'!
nameFor: anRGObject 

	^ anRGObject prvtName! !

!RGEnvironmentBackend methodsFor: 'accessing' stamp: 'KenD 3/24/2022 13:52:08'!
setNameFor: anRGObject to: aString 

	^ anRGObject prvtName: aString! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:35:43'!
addLocalMethod: anRGMethod to: anRGBehavior 

	^ anRGBehavior prvtAddLocalMethod: anRGMethod! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:35:50'!
cleanLocalMethodsFor: anRGBehavior 

	^ anRGBehavior prvtCleanLocalMethods! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:44:31'!
localMethodsFor: anRGBehavior do: aBlock 

	^ anRGBehavior prvtLocalMethodsDo: aBlock
! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:47:51'!
removeLocalMethod: anRGMethod from: anRGBehavior 

	^ anRGBehavior prvtRemoveLocalMethod: anRGMethod! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:51:09'!
setLayoutFor: anRGBehavior to: anRGLayout 

	^  anRGBehavior behaviorStrategy prvtLayout: anRGLayout! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:52:47'!
setSuperclassFor: anRGBehavior to: anObject 

	^  anRGBehavior prvtSuperclass: anObject! !

!RGEnvironmentBackend methodsFor: 'behavior' stamp: 'KenD 3/24/2022 13:54:02'!
superclassFor: anRGBehavior 

	^  anRGBehavior prvtSuperclass! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:26:53'!
addClassVariable: anRGInstanceVariableDefinition to: anRGBehavior 

	^ anRGBehavior 
		behaviorStrategy prvtAddClassVariable: anRGInstanceVariableDefinition! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:33:14'!
addMethodTag: aSymbol to: anRGBehavior 

	^ anRGBehavior prvtAddMethodTag: aSymbol! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:33:26'!
addSharedPool: anRGPoolVariable to: anRGBehavior 

	^ anRGBehavior behaviorStrategy prvtAddSharedPool: anRGPoolVariable! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:33:41'!
classVariablesFor: anRGBehavior do: aBlock 

	^ anRGBehavior behaviorStrategy prvtClassVariablesDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:34:16'!
cleanClassTagsFor: anRGBehavior 

	anRGBehavior prvtCleanTags.! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:34:27'!
cleanClassVariablesFor: anRGBehavior 

	^ anRGBehavior behaviorStrategy prvtCleanClassVariables! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:35:01'!
cleanSharedPoolsFor: anRGBehavior 

	^ anRGBehavior behaviorStrategy prvtCleanSharedPools! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:35:27'!
cleanTagsForMethodsFor: anRGBehavior 

	anRGBehavior prvtCleanTagsForMethods.! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:45:23'!
packageFor: anRGBehavior 

	^  anRGBehavior behaviorStrategy prvtPackage! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:46:34'!
removeClassVariable: anRGInstanceVariableDefinition from: anRGBehavior 

	^ anRGBehavior behaviorStrategy 
			prvtRemoveClassVariable: anRGInstanceVariableDefinition! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:48:04'!
removeMethodTag: aSymbol from: anRGBehavior 

	^ anRGBehavior prvtRemoveMethodTag: aSymbol! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:48:35'!
removeSharedPool: anRGPoolVariable from: anRGBehavior 

	^ anRGBehavior behaviorStrategy prvtRemoveSharedPool: anRGPoolVariable! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:50:37'!
setCommentFor: anRGBehavior to: anRGComment 

	^  anRGBehavior behaviorStrategy prvtComment: anRGComment! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:52:21'!
setPackageFor: anRGBehavior to: anRGPackageDefinition 

	^  anRGBehavior behaviorStrategy prvtPackage: anRGPackageDefinition! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:53:19'!
sharedPoolsFor: anRGBehavior do: aBlock 

	^ anRGBehavior behaviorStrategy prvtSharedPoolsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:54:14'!
tagClass: anRGBehavior with: aSymbol 

	^ anRGBehavior prvtTagWith: aSymbol! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:54:39'!
tagsForClass: anRGBehavior do: aBlock 

	^  anRGBehavior prvtTagsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:55:16'!
tagsForMethodsFor: anRGBehavior do: aBlock 

	^  anRGBehavior prvtTagsForMethodsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'class' stamp: 'KenD 3/24/2022 13:55:58'!
untagClass: anRGBehavior from: aSymbol 

	^ anRGBehavior prvtUntagFrom: aSymbol! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:32:11'!
classCommentAuthorFor: anRGComment 

	^  anRGComment prvtAuthor! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:32:20'!
classCommentContentFor: anRGComment 

	^ anRGComment prvtContent! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:32:31'!
classCommentTimeFor: anRGComment 

	^  anRGComment prvtTime! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:32:53'!
commentFor: anRGBehavior 

	^  anRGBehavior behaviorStrategy prvtComment! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:49:56'!
setClassCommentAuthorFor: anRGComment to: aString 

	^  anRGComment prvtAuthor: aString! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:50:08'!
setClassCommentContentFor: anRGComment to: anObject 

	anRGComment prvtContent: anObject.! !

!RGEnvironmentBackend methodsFor: 'class comment' stamp: 'KenD 3/24/2022 13:50:21'!
setClassCommentTimeFor: anRGComment to: aDateAndTime 

	^  anRGComment prvtTime: aDateAndTime! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:30:53'!
addBehavior: anRGBehavior to: anRGEnvironment 

	^ anRGEnvironment prvtAddBehavior: anRGBehavior! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:06'!
addGlobalVariable: anRGGlobalVariable to: anRGEnvironment 

	^ anRGEnvironment prvtAddGlobalVariable: anRGGlobalVariable! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:18'!
addPackage: anRGPackageDefinition to: anRGEnvironment 

	^ anRGEnvironment prvtAddPackage: anRGPackageDefinition! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:27'!
behaviorsFor: anRGEnvironment do: aBlock 

	^  anRGEnvironment prvtBehaviorsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:36'!
cleanBehaviorsFor: anRGEnvironment 

	anRGEnvironment prvtCleanBehaviors.! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:50'!
cleanGlobalVariablesFor: anRGEnvironment 

	^ anRGEnvironment prvtCleanGlobalVariables! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:31:56'!
cleanPackagesFor: anRGEnvironment 

	anRGEnvironment prvtCleanPackages! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:42:47'!
globalVariablesFor: anRGEnvironment do: aBlock 

	^ anRGEnvironment prvtGlobalVariablesDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:45:35'!
packagesFor: anRGEnvironment do: aBlock 

	^  anRGEnvironment prvtPackagesDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:45:48'!
removeBehavior: anRGBehavior from: anRGEnvironment 

	anRGEnvironment prvtRemoveBehavior: anRGBehavior.! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:47:39'!
removeGlobalVariable: anRGGlobalVariable from: anRGEnvironment 

	^ anRGEnvironment prvtRemoveGlobalVariable: anRGGlobalVariable! !

!RGEnvironmentBackend methodsFor: 'environment' stamp: 'KenD 3/24/2022 13:48:19'!
removePackage: anRGPackageDefinition from: anRGEnvironment 

	^ anRGEnvironment prvtRemovePackage: anRGPackageDefinition! !

!RGEnvironmentBackend methodsFor: 'initialization' stamp: 'KenD 3/24/2022 13:44:16'!
initialize 

	super initialize.
	
	providedDefinitions := IdentityDictionary new.! !

!RGEnvironmentBackend methodsFor: 'metaclass' stamp: 'KenD 3/24/2022 13:30:34'!
baseClassFor: anRGBehavior 

	^  anRGBehavior behaviorStrategy prvtBaseClass! !

!RGEnvironmentBackend methodsFor: 'metaclass' stamp: 'KenD 3/24/2022 13:49:44'!
setBaseClassFor: anRGBehavior to: anRGClass 

	^  anRGBehavior behaviorStrategy prvtBaseClass: anRGClass
! !

!RGEnvironmentBackend methodsFor: 'metaclass' stamp: 'KenD 3/24/2022 13:51:35'!
setMetaclassFor: anRGBehavior to: anRGMetaclass 

	^  anRGBehavior prvtMetaclass: anRGMetaclass! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/23/2022 14:51:10'!
astFor: anRGMethod 

	^  anRGMethod astFromSource! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:30:02'!
authorFor: anRGMethod 

	^  anRGMethod prvtAuthor! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:30:11'!
cleanMethodTagsFor: anRGMethod 

	anRGMethod prvtCleanTags.! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:43:47'!
hasSourceCodeFor: anRGMethod 

	^ anRGMethod prvtSourceCode notNil! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:49:29'!
setAuthorFor: anRGMethod to: aDateAndTime 

	^  anRGMethod prvtAuthor: aDateAndTime! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:51:51'!
setMethodPackageFor: anRGMethod to: anRGPackageDefinition 

	^  anRGMethod prvtPackage: anRGPackageDefinition! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:52:32'!
setSourceCodeFor: anRGMethod to: anObject 

	anRGMethod prvtSourceCode: anObject! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:52:58'!
setTimeFor: anRGMethod to: aDateAndTime 

	^  anRGMethod prvtTime: aDateAndTime! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:53:46'!
sourceCodeFor: anRGMethod 

	^ anRGMethod prvtSafeSourceCode! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:54:26'!
tagMethod: anRGMethod with: aSymbol 

	^ anRGMethod prvtTagWith: aSymbol! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:55:03'!
tagsForMethod: anRGMethod do: aBlock 

	^  anRGMethod prvtTagsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:55:30'!
timeFor: anRGMethod 

	^  anRGMethod prvtTime! !

!RGEnvironmentBackend methodsFor: 'method' stamp: 'KenD 3/24/2022 13:56:11'!
untagMethod: anRGMethod from: aSymbol 

	^ anRGMethod prvtUntagFrom: aSymbol! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:26:19'!
addClassTag: aSymbol to: anRGPackageDefinition 

	^ anRGPackageDefinition prvtAddClassTag: aSymbol! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:28:36'!
addDefinedBehavior: anRGBehavior to: anRGPackageDefinition 

	^ anRGPackageDefinition prvtAddDefinedBehavior: anRGBehavior! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:28:52'!
addExtensionMethod: anRGMethod to: anRGPackageDefinition 

	^ anRGPackageDefinition prvtAddExtensionMethod: anRGMethod! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:29:24'!
cleanDefinedBehaviorsFor: anRGPackageDefinition 

	anRGPackageDefinition prvtCleanDefinedBehaviors.! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:29:34'!
cleanExtensionMethodsFor: anRGPackageDefinition 

	anRGPackageDefinition prvtCleanExtensionMethods! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:29:43'!
cleanTagsForClassesFor: anRGPackageDefinition 

	anRGPackageDefinition prvtCleanTagsForClasses.! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:39:15'!
definedBehaviorsFor: anRGPackageDefinition do: aBlock 

	^  anRGPackageDefinition prvtDefinedBehaviorsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:41:32'!
extensionMethodsFor: anRGPackageDefinition do: aBlock 

	^ anRGPackageDefinition prvtExtensionMethodsDo: aBlock
! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:46:03'!
removeClassTag: aSymbol from: anRGPackageDefinition 

	^ anRGPackageDefinition prvtRemoveClassTag: aSymbol! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:46:51'!
removeDefinedBehavior: anRGBehavior from: anRGPackageDefinition 

	^ anRGPackageDefinition prvtRemoveDefinedBehavior: anRGBehavior! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:47:23'!
removeExtensionMethod: anRGMethod from: anRGPackageDefinition 

	^ anRGPackageDefinition prvtRemoveExtensionMethod: anRGMethod
! !

!RGEnvironmentBackend methodsFor: 'package' stamp: 'KenD 3/24/2022 13:54:50'!
tagsForClassesFor: anRGPackageDefinition do: aBlock 

	^  anRGPackageDefinition prvtTagsForClassesDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'pointer layout' stamp: 'KenD 3/24/2022 13:36:14'!
addSlot: anRGSlot to: anRGLayout 

	^ anRGLayout prvtAddSlot: anRGSlot! !

!RGEnvironmentBackend methodsFor: 'pointer layout' stamp: 'KenD 3/24/2022 13:36:24'!
cleanSlotsFor: anRGLayout 

	^ anRGLayout prvtCleanSlots! !

!RGEnvironmentBackend methodsFor: 'pointer layout' stamp: 'KenD 3/24/2022 13:48:52'!
removeSlot: anRGSlot from: anRGLayout 

	^ anRGLayout prvtRemoveSlot: anRGSlot! !

!RGEnvironmentBackend methodsFor: 'pointer layout' stamp: 'KenD 3/24/2022 13:53:33'!
slotsFor: anRGLayout do: aBlock 

	^ anRGLayout prvtSlotsDo: aBlock! !

!RGEnvironmentBackend methodsFor: 'resolving' stamp: 'KenD 3/24/2022 13:43:23'!
hasFullyResolved: anRGObject 

	^ anRGObject prvtFullyResolved! !

!RGEnvironmentBackend methodsFor: 'resolving' stamp: 'KenD 3/24/2022 13:43:34'!
hasFullyUnresolved: anRGObject 
		
	^ anRGObject prvtFullyUnresolved! !

!RGEnvironmentBackend methodsFor: 'resolving' stamp: 'KenD 3/24/2022 13:49:11'!
resolvedPropertiesFor: anRGObject 

	^ anRGObject prvtResolvedProperties! !

!RGEnvironmentBackend methodsFor: 'resolving' stamp: 'KenD 3/24/2022 13:55:46'!
unresolvedPropertiesFor: anRGObject 

	^ anRGObject prvtUnresolvedProperties! !

!RGEnvironmentBackend methodsFor: 'slot' stamp: 'KenD 3/24/2022 13:41:17'!
expressionFor: anRGUnknownSlot 

	^  anRGUnknownSlot prvtExpression! !

!RGEnvironmentBackend methodsFor: 'slot' stamp: 'KenD 3/24/2022 13:50:51'!
setExpressionFor: anRGUnknownSlot to: aString 

	^  anRGUnknownSlot prvtExpression: aString! !

!RGEnvironmentBackend methodsFor: 'subbackends' stamp: 'KenD 3/24/2022 13:41:58'!
forBehavior 

	^ self ! !

!RGEnvironmentBackend methodsFor: 'subbackends' stamp: 'KenD 3/24/2022 13:42:07'!
forEnvironment 

	^ self ! !

!RGEnvironmentBackend methodsFor: 'subbackends' stamp: 'KenD 3/24/2022 13:42:18'!
forMethod 

	^ self ! !

!RGEnvironmentBackend methodsFor: 'subbackends' stamp: 'KenD 3/24/2022 13:42:27'!
forPackage 

	^ self ! !

!RGEnvironmentBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/24/2022 13:37:32'!
createNewUnresolvedClass 

| classStub metaclassStub packageStub |
	
	classStub := RGClass unresolvedWithParent: self environment.
	packageStub := RGPackageDefinition unresolvedWithParent: self environment.
	classStub behaviorStrategy prvtPackage: packageStub.
	packageStub prvtAddDefinedBehavior: classStub.
	metaclassStub := self createNewUnresolvedMetaclassFor: classStub.

	classStub prvtSuperclass: classStub.
	classStub prvtMetaclass: metaclassStub.
	classStub prvtPackage: packageStub.
	packageStub prvtAddDefinedBehavior: classStub.
	self environment prvtAddBehavior: classStub.
	self environment prvtAddPackage: packageStub.

	^ classStub! !

!RGEnvironmentBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/24/2022 13:38:03'!
createNewUnresolvedMetaclassFor: anRGBehavior 

	| metaclassStub superclassMetaclass |
	
	metaclassStub := RGMetaclass unresolvedWithParent: self environment.

	superclassMetaclass := anRGBehavior prvtSuperclass prvtMetaclass.
	superclassMetaclass 
		ifNotNil: [ 
			metaclassStub prvtSuperclass: superclassMetaclass.
			metaclassStub prvtMetaclass: superclassMetaclass ]
		ifNil: [ 
			metaclassStub prvtSuperclass: metaclassStub.
			metaclassStub prvtMetaclass: metaclassStub ].
	self environment prvtAddBehavior: metaclassStub.

	^ metaclassStub	! !

!RGEnvironmentBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/24/2022 13:38:41'!
createUnresolvedClassGroupFor: anRGBehavior 

	| classStub metaclassStub superclassStub superclassMetaclassStub packageStub1 packageStub2 |

	classStub := anRGBehavior isMeta
		ifFalse: [ anRGBehavior ]
		ifTrue: [ RGClass unresolvedWithParent: self environment ].
	classStub propertyNamed: #creator put: anRGBehavior.
	classStub propertyNamed: #role put: #class.
		
	metaclassStub := anRGBehavior isMeta
		ifFalse: [ RGMetaclass unresolvedWithParent: self environment ]
		ifTrue: [ anRGBehavior ].
	metaclassStub propertyNamed: #creator put: anRGBehavior.
	metaclassStub propertyNamed: #role put: #metaclass.

	superclassStub := RGClass unresolvedWithParent: self environment.
	superclassStub propertyNamed: #creator put: anRGBehavior.
	superclassStub propertyNamed: #role put: #superclass.

	superclassMetaclassStub := RGMetaclass unresolvedWithParent: self environment.
	superclassMetaclassStub propertyNamed: #creator put: anRGBehavior.
	superclassMetaclassStub propertyNamed: #role put: #superclassMetaclass.
	
	packageStub1 := RGPackageDefinition unresolvedWithParent: self environment.
	classStub behaviorStrategy prvtPackage: packageStub1.
	self environment prvtAddPackage: packageStub1.
	packageStub1 prvtAddDefinedBehavior: classStub.
	packageStub1 propertyNamed: #creator put: anRGBehavior.
	packageStub1 propertyNamed: #role put: #package.
	
	packageStub2 := RGPackageDefinition unresolvedWithParent: self environment.
	superclassStub behaviorStrategy prvtPackage: packageStub2.
	self environment prvtAddPackage: packageStub2.
	packageStub2 prvtAddDefinedBehavior: superclassStub.
	packageStub2 propertyNamed: #creator put: anRGBehavior.
	packageStub2 propertyNamed: #role put: #superclassPackage.

	classStub prvtSuperclass: superclassStub.
	classStub prvtMetaclass: metaclassStub.
	
	superclassStub prvtSuperclass: superclassStub.
	superclassStub prvtMetaclass: superclassMetaclassStub.
	
	metaclassStub prvtSuperclass: superclassMetaclassStub.
	metaclassStub prvtMetaclass: superclassMetaclassStub.
	metaclassStub behaviorStrategy prvtBaseClass: classStub.
	
	superclassMetaclassStub prvtSuperclass: superclassMetaclassStub.
	superclassMetaclassStub prvtMetaclass: superclassMetaclassStub.
	superclassMetaclassStub behaviorStrategy prvtBaseClass: superclassStub.
	
	self environment prvtAddBehavior: classStub.
	self environment prvtAddBehavior: metaclassStub. 	
	self environment prvtAddBehavior: superclassStub.
	self environment prvtAddBehavior: superclassMetaclassStub.
	

	^ 	anRGBehavior isMeta
		ifFalse: [ metaclassStub ]
		ifTrue: [ classStub ].
! !

!RGEnvironmentBackend class methodsFor: 'instance creation' stamp: 'KenD 3/23/2022 14:37:23'!
for: anRGEnvironment 

	^ self new 
		environment: anRGEnvironment;
		yourself.! !

!RGReadOnlyBackend methodsFor: 'accessing' stamp: 'KenD 3/27/2022 15:44:33'!
readOnlyError 

	self error: 'read-only environment'! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:38:24'!
addLocalMethod: anRGMethod to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:39:00'!
addProtocol: anRGProtocolDefinition to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:41:08'!
cleanLocalMethodsFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:41:53'!
cleanProtocolsFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:46:11'!
removeLocalMethod: anRGMethod from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:46:47'!
removeProtocol: anRGProtocolDefinition from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:46:56'!
removeSharedPool: anRGPoolVariable from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:48:57'!
setLayoutFor: anRGBehavior to: anRGLayout 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 15:50:47'!
setSuperclassFor: anRGBehavior to: anObject 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:36:57'!
addClassVariable: anRGInstanceVariableDefinition to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:38:37'!
addMethodTag: aSymbol to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:39:12'!
addSharedPool: anRGPoolVariable to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:39:56'!
cleanClassTagsFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:40:12'!
cleanClassVariablesFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:42:08'!
cleanSharedPoolsFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:45:10'!
removeClassVariable: anRGInstanceVariableDefinition from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:46:23'!
removeMethodTag: aSymbol from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:48:20'!
setCommentFor: anRGBehavior to: anRGComment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:50:14'!
setPackageFor: anRGBehavior to: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:51:00'!
tagClass: anRGBehavior with: aSymbol 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:51:09'!
tagMethod: anRGMethod with: aSymbol 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:51:18'!
untagClass: anRGBehavior from: aSymbol 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:51:29'!
untagMethod: anRGMethod from: aSymbol 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:47:50'!
setClassCommentAuthorFor: anRGComment to: aString 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:47:59'!
setClassCommentContentFor: anRGComment to: anObject 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:48:08'!
setClassCommentTimeFor: anRGComment to: aDateAndTime 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class description' stamp: 'KenD 3/27/2022 15:38:07'!
addInstanceVariable: anRGInstanceVariableDefinition to: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class description' stamp: 'KenD 3/27/2022 15:40:56'!
cleanInstanceVariablesFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class description' stamp: 'KenD 3/27/2022 15:45:58'!
removeInstanceVariable: anRGInstanceVariableDefinition from: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'class description' stamp: 'KenD 3/27/2022 15:49:16'!
setMetaClassFor: anRGBehavior to: anRGMetaclass 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:36:14'!
addBehavior: anRGBehavior to: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:37:32'!
addGlobalVariable: anRGGlobalVariable to: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:38:48'!
addPackage: anRGPackageDefinition to: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:39:44'!
cleanBehaviorsFor: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:40:45'!
cleanGlobalVariablesFor: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:41:41'!
cleanPackagesFor: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:44:46'!
removeBehavior: anRGBehavior from: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:45:46'!
removeGlobalVariable: anRGGlobalVariable from: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:46:35'!
removePackage: anRGPackageDefinition from: anRGEnvironment 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'general' stamp: 'KenD 3/27/2022 15:50:03'!
setNameFor: anRGObject to: aString 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'metaclass' stamp: 'KenD 3/27/2022 15:47:26'!
setBaseClassFor: anRGBehavior to: anRGClass 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:41:29'!
cleanMethodTagsFor: anRGMethod 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:42:40'!
cleanTagsForMethodsFor: anRGBehavior 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:49:27'!
setMethodPackageFor: anRGMethod to: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:49:37'!
setMethodStampFor: anRGMethod to: anObject 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:50:26'!
setProtocolFor: anRGMethod to: anObject 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:50:36'!
setSourceCodeFor: anRGMethod to: anObject 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:36:39'!
addClassTag: aSymbol to: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:37:08'!
addDefinedBehavior: anRGBehavior to: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:37:21'!
addExtensionMethod: anRGMethod to: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:40:23'!
cleanDefinedBehaviorsFor: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:40:34'!
cleanExtensionMethodsFor: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:42:29'!
cleanTagsForClassesFor: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:44:58'!
removeClassTag: aSymbol from: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:45:21'!
removeDefinedBehavior: anRGBehavior from: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:45:34'!
removeExtensionMethod: anRGMethod from: anRGPackageDefinition 

	self readOnlyError.! !

!RGReadOnlyBackend methodsFor: 'pointer layout' stamp: 'KenD 3/27/2022 15:39:33'!
addSlot: anRGSlot to: anRGLayout 

	self readOnlyError ! !

!RGReadOnlyBackend methodsFor: 'pointer layout' stamp: 'KenD 3/27/2022 15:42:17'!
cleanSlotsFor: anRGLayout 

	self readOnlyError ! !

!RGReadOnlyBackend methodsFor: 'pointer layout' stamp: 'KenD 3/27/2022 15:47:08'!
removeSlot: anRGSlot from: anRGLayout 

	self readOnlyError ! !

!RGReadOnlyBackend methodsFor: 'slot' stamp: 'KenD 3/27/2022 15:48:41'!
setExpressionFor: anRGUnknownSlot to: aString 

	self readOnlyError! !

!RGReadOnlyBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/27/2022 15:43:09'!
createNewUnresolvedClass 

	self readOnlyError 
"	| unresolvedValue |
	
	unresolvedValue := RGUnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."! !

!RGReadOnlyBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/27/2022 15:43:22'!
createNewUnresolvedMetaclassFor: anRGBehavior 

	self readOnlyError 
	"^ RGUnresolvedValue recursive"! !

!RGReadOnlyBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/27/2022 15:43:33'!
createNewUnresolvedMetaclassMetaclassFor: anRGBehavior 

	self readOnlyError 
	"| unresolvedValue |
	
	unresolvedValue := RGUnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."! !

!RGReadOnlyBackend class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 15:35:46'!
for: anRGEnvironment 

	^ self new 
		environment: anRGEnvironment;
		yourself.! !

!RGReadOnlyImageBackend methodsFor: 'accessing' stamp: 'KenD 3/27/2022 15:57:36'!
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject ensureRingDefinitionIn: self environment ]! !

!RGReadOnlyImageBackend methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:03:24'!
realBehaviorFor: anRGBehavior 

	"TODO: should we cache the definition?"
	^ Smalltalk classOrTraitNamed: anRGBehavior name asSymbol! !

!RGReadOnlyImageBackend methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:03:38'!
realMethodFor: anRGMethod 

	"TODO: should we cache the definition?"
	^ ((self realBehaviorFor: anRGMethod parent) >> anRGMethod selector)! !

!RGReadOnlyImageBackend methodsFor: 'accessing' stamp: 'KenD 3/27/2022 16:04:08'!
realPackageFor: anRGPackageDefinition 

	^ RPackageOrganizer default 
		packageNamed: anRGPackageDefinition name 
		ifAbsent: [nil].! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:00:45'!
layoutFor: anRGBehavior 

	| realClass realLayout def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realLayout := realClass classLayout.
	def := self 	definitionFor: realLayout ifAbsentRegister: [ 
			realLayout asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:00:58'!
localMethodsFor: anRGBehavior do: aBlock 

	(self realBehaviorFor: anRGBehavior) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRingMinimalDefinitionIn: anRGBehavior environment].
		aBlock value: def]
! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:01:29'!
metaclassFor: anRGBehavior 

	| realBehavior realMetaclass def |
	
	realBehavior := self realBehaviorFor: anRGBehavior.
	realMetaclass := realBehavior class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:05:59'!
superclassFor: anRGBehavior 

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def
! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:06:42'!
tagsForClass: anRGBehavior do: aBlock 

	| realClass |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realClass tags do: [:tag | aBlock value: tag ]! !

!RGReadOnlyImageBackend methodsFor: 'behavior' stamp: 'KenD 3/27/2022 16:07:37'!
traitCompositionFor: anRGBehavior 

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def! !

!RGReadOnlyImageBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:54:45'!
categoryFor: anRGBehavior 

	^ (self realBehaviorFor: anRGBehavior) category! !

!RGReadOnlyImageBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:55:41'!
classVariablesFor: anRGBehavior do: aBlock 

	| realClass |
	realClass := self realBehaviorFor: anRGBehavior.
	realClass classVariables do: [ :classVariable | 
		| def |
		def := RGClassVariable named: classVariable key parent: anRGBehavior.
		aBlock value: def. ]! !

!RGReadOnlyImageBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 15:56:02'!
commentFor: anRGBehavior 

	^  (self realBehaviorFor: anRGBehavior) 
			asRingMinimalCommentDefinitionIn: self environment! !

!RGReadOnlyImageBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 16:02:38'!
packageFor: anRGBehavior 

	^ (self realBehaviorFor: anRGBehavior) package 
			asRingMinimalDefinitionIn: anRGBehavior environment.! !

!RGReadOnlyImageBackend methodsFor: 'class' stamp: 'KenD 3/27/2022 16:04:43'!
sharedPoolsFor: anRGBehavior do: aBlock 

	^ anRGBehavior behaviorStrategy prvtSharedPoolsDo: aBlock! !

!RGReadOnlyImageBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:55:05'!
classCommentAuthorFor: anRGComment 

	^ RGStampParser authorForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.! !

!RGReadOnlyImageBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:55:17'!
classCommentContentFor: anRGComment 

	^ (self realBehaviorFor: anRGComment parent) organization classComment.! !

!RGReadOnlyImageBackend methodsFor: 'class comment' stamp: 'KenD 3/27/2022 15:55:26'!
classCommentTimeFor: anRGComment 

	^ RGStampParser timeForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.! !

!RGReadOnlyImageBackend methodsFor: 'class description' stamp: 'KenD 3/27/2022 16:01:17'!
metaClassFor: anRGBehavior 

	| realClass realMetaclass def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realMetaclass := realClass class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRingMinimalDefinitionIn: anRGBehavior environment ].
	^ def! !

!RGReadOnlyImageBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:54:16'!
behaviorsFor: anRGEnvironment do: aBlock 

	SystemNavigation default allBehaviors do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].! !

!RGReadOnlyImageBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 15:58:44'!
globalVariablesFor: anRGEnvironment do: aBlock 

	Smalltalk globals associations do: [:each |
		| def | 
		def := self 
				definitionFor: each 
				ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].! !

!RGReadOnlyImageBackend methodsFor: 'environment' stamp: 'KenD 3/27/2022 16:03:05'!
packagesFor: anRGEnvironment do: aBlock 

	RPackageOrganizer default packagesDo: [:each |
		| def | 
		def := self 
			definitionFor: each 
			ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].! !

!RGReadOnlyImageBackend methodsFor: 'general' stamp: 'KenD 3/27/2022 16:02:20'!
nameFor: anRGObject 

	^ anRGObject prvtName! !

!RGReadOnlyImageBackend methodsFor: 'initialization' stamp: 'KenD 3/27/2022 16:00:27'!
initialize 

	super initialize.
	
	providedDefinitions := IdentityDictionary new.! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:52:56'!
astFor: anRGMethod 

	^  anRGMethod astFromSource! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:53:08'!
authorFor: anRGMethod 

	^ RGStampParser authorForStamp: (self realMethodFor: anRGMethod) stamp! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 15:59:46'!
hasSourceCodeFor: anRGMethod 

	^ (self realMethodFor: anRGMethod) sourceCode! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 16:01:58'!
methodPackageFor: anRGMethod 

	^ (self realMethodFor: anRGMethod) package 
			asRingMinimalDefinitionIn: anRGMethod environment.! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 16:05:37'!
sourceCodeFor: anRGMethod  

	^ (self realMethodFor: anRGMethod) sourceCode! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 16:07:00'!
tagsForMethod: anRGMethod do: aBlock 

	| realMethod |
	
	realMethod := self realMethodFor: anRGMethod.
	{ realMethod protocol } do: aBlock.! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 16:07:14'!
tagsForMethodsFor: anRGBehavior do: aBlock 

	(self realBehaviorFor: anRGBehavior) protocols do: aBlock! !

!RGReadOnlyImageBackend methodsFor: 'method' stamp: 'KenD 3/27/2022 16:07:24'!
timeFor: anRGMethod 

	^ RGStampParser timeForStamp: (self realMethodFor: anRGMethod) stamp! !

!RGReadOnlyImageBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:57:10'!
definedBehaviorsFor: anRGPackageDefinition do: aBlock 

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			def := self definitionFor: cls ifAbsentRegister: [cls 
				asRingMinimalDefinitionIn: anRGPackageDefinition environment].
			aBlock value: def.]]! !

!RGReadOnlyImageBackend methodsFor: 'package' stamp: 'KenD 3/27/2022 15:58:09'!
extensionMethodsFor: anRGPackageDefinition do: aBlock 

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage extensionMethods do: [:aCompiledMethod |
			| def | 
			def := self definitionFor: aCompiledMethod ifAbsentRegister: [aCompiledMethod asRingMinimalDefinitionIn: anRGPackageDefinition environment].
			aBlock value: def.]]! !

!RGReadOnlyImageBackend methodsFor: 'pointer layout' stamp: 'KenD 3/27/2022 16:05:22'!
slotsFor: anRGLayout do: aBlock 
	| realClass |
	realClass := self realBehaviorFor: anRGLayout parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ 
					each asRingMinimalDefinitionIn: anRGLayout environment ].
			aBlock value: def ]! !

!RGReadOnlyImageBackend methodsFor: 'resolving' stamp: 'KenD 3/27/2022 15:59:08'!
hasFullyResolved: anRGObject 

	^ true! !

!RGReadOnlyImageBackend methodsFor: 'resolving' stamp: 'KenD 3/27/2022 15:59:20'!
hasFullyUnresolved: anRGObject 
		
	^ false! !

!RGReadOnlyImageBackend methodsFor: 'resolving' stamp: 'KenD 3/27/2022 15:59:33'!
hasResolved: anRGObject 

	^ true! !

!RGReadOnlyImageBackend methodsFor: 'resolving' stamp: 'KenD 3/27/2022 16:04:26'!
resolvedPropertiesFor: anRGObject 

	^ anRGObject prvtResolvableProperties collect: #key! !

!RGReadOnlyImageBackend methodsFor: 'resolving' stamp: 'KenD 3/27/2022 16:08:03'!
unresolvedPropertiesFor: anRGObject 

	^ Dictionary new.! !

!RGReadOnlyImageBackend methodsFor: 'slot' stamp: 'KenD 3/27/2022 15:57:54'!
expressionFor: anRGUnknownSlot 

	| realClass realSlot |
	
	realClass := self realBehaviorFor: anRGUnknownSlot parent parent.
	realSlot := realClass slotNamed: anRGUnknownSlot name.
	^ (realSlot printString copyAfter: $>) trimBoth! !

!RGReadOnlyImageBackend methodsFor: 'unresolved objects' stamp: 'KenD 3/27/2022 15:56:27'!
createUnresolvedClassGroupFor: anRGBehavior 

	^ 	anRGBehavior isMeta
		ifFalse: [ anRGBehavior ]
		ifTrue: [ anRGBehavior metaclass].! !

!RGReadOnlyImageBackend class methodsFor: 'instance creation' stamp: 'KenD 3/27/2022 15:52:28'!
for: anRGEnvironment 

	^ self new 
		environment: anRGEnvironment;
		yourself.! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:26:53'!
allClasses 

	^ self behaviors select: [ :each | each isClass ] 
! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:27:18'!
allClassesAndTraits 

	^ self behaviors select: [ :each | each isClass or: [ each isTrait and: [ each isMetaclassTrait not ] ] ]! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:27:37'!
behaviorNamed: aSymbol 

	^ self behaviorNamed: aSymbol ifAbsent: [ nil]! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:28:01'!
behaviorNamed: aSymbol ifAbsent: aBlock 

	| found siblingName | 
	
	found := self behaviorNamedExactlyAs: aSymbol ifAbsent: [nil].
	found ifNotNil: [ ^ found ].
	
	(aSymbol endsWith: ' class') 
		ifTrue: [ 
			siblingName := (aSymbol withoutSuffix: ' class').
			found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
			found ifNotNil: [ 
				found isClass ifTrue: [ ^ found metaclass ]]].

	(aSymbol endsWith: ' classTrait') 
		ifTrue: [ 
			siblingName := (aSymbol withoutSuffix: ' classTrait').
			found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
			found ifNotNil: [ 
				found isTrait ifTrue: [ ^ found classTrait ]]].
		
	siblingName := (aSymbol, ' class').
	found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
	found ifNotNil: [ ^ found baseClass ].		

	siblingName := (aSymbol, ' classTrait').
	found := self behaviorNamedExactlyAs: siblingName ifAbsent: [nil].
	found ifNotNil: [ ^ found baseTrait ].		
					
	^ aBlock value.! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:28:20'!
behaviorNamedExactlyAs: aSymbol 

	^ self behaviorNamedExactlyAs: aSymbol ifAbsent: [nil]! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:28:38'!
behaviorNamedExactlyAs: aSymbol ifAbsent: aBlock 

	^ self behaviorsDictionary at: aSymbol asSymbol ifAbsent: aBlock
	"	
	self behaviorsDo: [:each |
		(each name = aSymbol) ifTrue: [ ^ each ] ].
	
	^ nil
	"! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:28:50'!
behaviors 
	"Retrieves the traits defined in the receiver"

	| allBehaviors |
	allBehaviors := IdentitySet new.
	self behaviorsDo: [ :each | allBehaviors add: each].
	^ allBehaviors asArray! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:30:18'!
classNamed: aSymbol 

	^ self behaviorNamed: aSymbol! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:30:31'!
classOrTraitNamed: aSymbol 
	
	^ self behaviorNamed: aSymbol
! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:30:56'!
environment: anObject 

	environment := anObject! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:31:12'!
globalVariables 
	"Retrieves the traits defined in the receiver"

	| allGlobalVariables |
	allGlobalVariables := IdentitySet new.
	self globalVariablesDo: [ :each | allGlobalVariables add: each].
	^ allGlobalVariables asArray
! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:32:53'!
packageNamed: aString 
	
	self packagesDo: [:each |
		(each name = aString) ifTrue: [ ^ each ] ].
	
	^ nil! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:33:08'!
packages 
	"Retrieves the traits defined in the receiver"

	| allPackages |
	allPackages := IdentitySet new.
	self packagesDo: [ :each | allPackages add: each].
	^ allPackages asArray! !

!RGEnvironmentQueryInterface methodsFor: 'accessing' stamp: 'KenD 3/23/2022 14:36:16'!
traitNamed: traitName 
	"Retrieves an RGTrait object. The traitName could be theMetaClass name"
	| trait |
	
	^(trait:= self classOrTraitNamed: traitName) isTrait
		ifTrue:[ trait ]
		ifFalse:[ nil ]! !

!RGEnvironmentQueryInterface methodsFor: 'caching' stamp: 'KenD 3/23/2022 14:29:22'!
behaviorsDictionary 

	^ behaviorsDictionary ifNil: [ 
		behaviorsDictionary := IdentityDictionary new.
		self behaviorsDo: [:each |
			behaviorsDictionary at: each name put: each ]. 
		behaviorsDictionary
		]! !

!RGEnvironmentQueryInterface methodsFor: 'caching' stamp: 'KenD 3/23/2022 14:32:36'!
invalidateName: aSymbol 

	behaviorsDictionary removeKey: aSymbol! !

!RGEnvironmentQueryInterface methodsFor: 'caching' stamp: 'KenD 3/23/2022 14:34:19'!
replaceName: aSymbol with: aNewSymbol 

	| anRGBehavior |
	anRGBehavior := behaviorsDictionary at: aSymbol ifAbsent: [ nil ].
	anRGBehavior ifNotNil: [ 
		behaviorsDictionary removeKey: aSymbol.
		behaviorsDictionary at: aNewSymbol put: anRGBehavior.
		 ]! !

!RGEnvironmentQueryInterface methodsFor: 'caching' stamp: 'KenD 3/23/2022 14:36:01'!
resetBehaviorsDictionary 

	behaviorsDictionary := IdentityDictionary new! !

!RGEnvironmentQueryInterface methodsFor: 'iterators' stamp: 'KenD 3/23/2022 14:30:06'!
behaviorsDo: aBlock 

	self environment behaviorsDo: aBlock
! !

!RGEnvironmentQueryInterface methodsFor: 'iterators' stamp: 'KenD 3/23/2022 14:31:39'!
globalVariablesDo: aBlock 

	self environment globalVariablesDo: aBlock! !

!RGEnvironmentQueryInterface methodsFor: 'iterators' stamp: 'KenD 3/23/2022 14:33:23'!
packagesDo: aBlock 

	self environment packagesDo: aBlock! !

!RGEnvironmentQueryInterface methodsFor: 'testing' stamp: 'KenD 3/23/2022 14:32:05'!
includesClassNamed: aSymbol 

	self globalVariablesDo: [ :var |
		var name = aSymbol ifTrue: [ ^ true ] ].

	^ self behaviorsDictionary 
		at: aSymbol asSymbol 
		ifPresent: [ :element | true ]
		ifAbsent: [ false ]
	"	
	self behaviorsDo: [:each |
		(each name = aSymbol) ifTrue: [ ^ each ] ].
	
	^ nil
	"! !

!RGEnvironmentQueryInterface class methodsFor: 'instance creation' stamp: 'KenD 3/23/2022 14:26:20'!
for: anRGEnvironment 

	^ self new 
		environment: anRGEnvironment;
		yourself.! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:18:35'!
isRGObject 

	^ false! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:18:43'!
isRGUnresolvedValue 

	^ false! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:18:52'!
isRingFullyResolved 

	^ true! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:19:00'!
isRingFullyUnresolved 

	^ false! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:19:08'!
isRingResolved 

	^ true! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:19:19'!
markAsRingResolved 

	"do nothing"! !

!Object methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:19:27'!
orDefaultForUnresolved 

	^ self! !

!Class methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:21:19'!
asRingMinimalCommentDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRingMinimalDefinitionIn: anRGEnvironment).
	]. ! !

!Class methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:22:59'!
asRingMinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGClass named: self name asSymbol parent: anRGEnvironment]. ! !

!Class methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:23:12'!
ensureRingDefinitionIn: anRGEnvironment 

	^ anRGEnvironment ask behaviors 
		detect: [:each | each name = self name] 
		ifNone: [ 
			| behaviorModel |
			behaviorModel := self asRingMinimalDefinitionIn: anRGEnvironment.
			anRGEnvironment addBehavior: behaviorModel.
			behaviorModel]! !

!Metaclass methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:20:24'!
asRingMinimalDefinitionIn: anRGEnvironment 

	^ RGMetaclass named: self name parent: anRGEnvironment.! !

!CompiledMethod methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:24:19'!
asRingMinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGMethod 
			named: self selector asSymbol 
			parent: (self methodClass asRingMinimalDefinitionIn: anRGEnvironment)
	 ]! !

!CompiledMethod methodsFor: '*Ring2-Core' stamp: 'KenD 3/27/2022 15:24:41'!
ensureRingDefinitionIn: anRGEnvironment 

	| parentModel |
	
	parentModel := (self methodClass ensureRingDefinitionIn: anRGEnvironment).
	
	^ parentModel methods 
		detect: [:each | each selector = self selector]
		ifNone: [ 
			| methodModel |
			methodModel := self asRingMinimalDefinitionIn: anRGEnvironment.
			parentModel addLocalMethod: methodModel.
			methodModel ]	
! !
