'From Cuis 6.0 [latest update: #5095] on 29 March 2022 at 3:13:57 pm'!
'Description '!
!provides: 'Bee' 1 0!
!requires: 'BeeCompatibility' 1 4 nil!
SystemOrganization addCategory: 'Bee-CodeSpecs-Porting'!
SystemOrganization addCategory: 'Bee-CodeSpecs'!


!classDefinition: #ImageModuleBuilder category: 'Bee-CodeSpecs-Porting'!
Object subclass: #ImageModuleBuilder
	instanceVariableNames: 'module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ImageModuleBuilder class' category: 'Bee-CodeSpecs-Porting'!
ImageModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #MethodSpec category: 'Bee-CodeSpecs'!
Object subclass: #MethodSpec
	instanceVariableNames: 'selector class source category module ast'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs'!
!classDefinition: 'MethodSpec class' category: 'Bee-CodeSpecs'!
MethodSpec class
	instanceVariableNames: ''!

!classDefinition: #ModuleSpec category: 'Bee-CodeSpecs'!
Object subclass: #ModuleSpec
	instanceVariableNames: 'name description classes extendedClasses subclassifiedClasses imports dependencies'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs'!
!classDefinition: 'ModuleSpec class' category: 'Bee-CodeSpecs'!
ModuleSpec class
	instanceVariableNames: ''!

!classDefinition: #SpeciesSpec category: 'Bee-CodeSpecs'!
Object subclass: #SpeciesSpec
	instanceVariableNames: 'instanceVariables methods module format'
	classVariableNames: 'Format'
	poolDictionaries: ''
	category: 'Bee-CodeSpecs'!
!classDefinition: 'SpeciesSpec class' category: 'Bee-CodeSpecs'!
SpeciesSpec class
	instanceVariableNames: ''!

!classDefinition: #ClassSpec category: 'Bee-CodeSpecs'!
SpeciesSpec subclass: #ClassSpec
	instanceVariableNames: 'name supername classVariables sharedPools metaclass variable pointers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs'!
!classDefinition: 'ClassSpec class' category: 'Bee-CodeSpecs'!
ClassSpec class
	instanceVariableNames: ''!

!classDefinition: #MetaclassSpec category: 'Bee-CodeSpecs'!
SpeciesSpec subclass: #MetaclassSpec
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs'!
!classDefinition: 'MetaclassSpec class' category: 'Bee-CodeSpecs'!
MetaclassSpec class
	instanceVariableNames: ''!


!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:31:20'!
category 

	^ self isExtension
		ifTrue: ['*' , (module name readStream upToLast: $-)]
		ifFalse: [category]! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:31:34'!
category: aString 

	category := aString! !

!MethodSpec methodsFor: 'printing' stamp: 'KenD 3/29/2022 14:34:06'!
printOn: aStream 

	aStream nextPutAll: class name asString , '>>#' , selector asString! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:52:00'!
name 

	^ name! !

!ModuleSpec methodsFor: 'printing' stamp: 'KenD 3/29/2022 14:52:27'!
printOn: aStream 

	aStream
		nextPut: $<;
		print: name;
		nextPutAll: '> module'! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:21:34'!
allSubclasses 
	| all |
	all := OrderedCollection new.
	self allSubclassesDo: [:cls | all add: cls].
	^all! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:21:47'!
allSubclassesDo: aBlock 

	self subclasses do: [:class | 
		aBlock value: class.
		class allSubclassesDo: aBlock]! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:24:24'!
methods 

	^ methods! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:25:57'!
selectors 

	^ methods collect: #selector! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:26:09'!
subclasses 

	^ module allClasses select: [:c | c supername = self name]! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:25:10'!
removeCategory: aSymbol 

	methods removeAllSuchThat: [:m | m category == aSymbol]! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:25:32'!
removeSelector: aSymbol 

	methods removeAllSuchThat: [:m | m selector == aSymbol]! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:20:48'!
allInstVarNames 

	^(self withAllSuperclasses reversed gather: [:c | c instVarNames]) asArray! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:22:03'!
allSuperclasses 
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:s | superclasses add: s].
	^superclasses! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:26:20'!
withAllSubclasses 

	^ OrderedCollection with: self withAll: self allSubclasses! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:26:41'!
withAllSuperclasses 

	^ OrderedCollection with: self withAll: self allSuperclasses! !

!SpeciesSpec methodsFor: 'printing' stamp: 'KenD 3/29/2022 14:24:56'!
printOn: aStream 

	aStream nextPutAll: '<' , self name , '>'! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:22:27'!
hasMethods 

	^ methods notEmpty! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:06:50'!
configureCompiler: aCompiler

	"?EMPTY?"! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:10:51'!
name

	^ name! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:13'!
sharedPools 

	^ sharedPools! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:33'!
superclass 

	supername ifNil: [^nil].
	^module resolveClass: supername! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:06:04'!
classVarNames 

	^ classVariables keys! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:10:00'!
localPools 

	^ classVariables select: [:c | c isKindOf: PoolDictionary]! !

!ClassSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 15:04:52'!
allSharedPoolsUsing: namespace 

	^ self allSharedPools! !

!ClassSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 15:05:10'!
allSuperclassesDo: aBlock 
	| s |
	supername isNil ifTrue: [^self].
	s := self superclass.
	s isNil ifTrue: [^self].
	aBlock value: s.
	s allSuperclassesDo: aBlock! !

!ClassSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 15:07:56'!
hasMethods 

	^ super hasMethods or: [metaclass hasMethods]! !

!ClassSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 15:09:05'!
isPointers 

	^ pointers! !

!ClassSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 15:09:43'!
isVariable 

	^ variable! !

!MetaclassSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 15:00:28'!
allSuperclassesDo: aBlock 
	| s c |
	class supername isNil ifTrue: [
		c := module resolveClass: 'Class'.
		c ifNil: [c := Class].
		c allSuperclassesDo: aBlock].
	s := self superclass.
	s isNil ifTrue: [^self].
	aBlock value: s.
	s allSuperclassesDo: aBlock! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:00:53'!
classVarNames 

	^ class classVarNames! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:02:10'!
name 

	^ class name , ' class'! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:02:22'!
sharedPools 

	^ class sharedPools! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:02:36'!
superclass 

	^ class superclass ifNotNil: [:c | c metaclass]! !

!ImageModuleBuilder methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:15:09'!
module 

	^module! !

!ImageModuleBuilder methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:15:33'!
name: aString 

	module name: aString! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:01'!
addClass: aClass 
	| class |
	class := self addClassDefinition: aClass.
	self addAllMethodsFrom: aClass into: class! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:15'!
addClassDefinition: aClass 
	| spec |
	spec := self specFromClass: aClass.
	module addClass: spec.
	self importSharedPoolsOf: aClass.
	^spec! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:27'!
addClassExtension: aClass 
	| spec |
	spec := self specFromClass: aClass.
	module addClassExtension: spec.
	self importSharedPoolsOf: aClass.
	^spec! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:37'!
addClasses: aCollection 

	aCollection do: [:c | self addClass: c]! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:46'!
addMethod: aCompiledMethod 

	^self subclassResponsibility! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:11:54'!
addMethodCompiling: aString in: aSpecies 
	| class spec |
	class := self ensureClass: aSpecies.
	spec := self specFromSource: aString species: class.
	class addMethod: spec
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:12:06'!
addMethods: aCollection into: aSpeciesSpec 
	| specs |
	specs := aCollection
		collect: [:m | self specFromMethod: m species: aSpeciesSpec].
	aSpeciesSpec addMethods: specs! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:12:18'!
addSelectors: aCollection from: aSpecies 
	| class methods |
	class := self ensureClass: aSpecies instanceClass.
	aSpecies isMetaclass ifTrue: [class := class metaclass].
	methods := aCollection collect: [:selector | aSpecies >> selector].
	self addMethods: methods into: class! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:12:26'!
addSubclassifiedClasses 

	module allClassesDo: [:c | self addSuperclassesOf: c]! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:12:38'!
addSuperclassesOf: aClassSpec 
	| next spec |
	next := aClassSpec supername.
	[
		next ifNil: [| c |
			c := Smalltalk at: aClassSpec name asSymbol ifAbsent: [^self].
			next := c superclass ifNotNil: [:s | s name]].
		next ifNil: [^self].
		spec := module resolveClass: next.
		spec isNil or: [self isIncomplete: spec]]
		whileTrue: [| class |
			class := Smalltalk at: next asSymbol.
			spec := self specFromClass: class.
			module addSubclassifiedClass: spec.
			next := spec supername]! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:13:24'!
ensureClass: aClass 
	| class |
	class := module resolveClass: aClass name.
	^class ifNil: [self addClassExtension: aClass] ifNotNil: [class]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:13:43'!
importSharedPoolsOf: aClass 

	aClass sharedPools do: [:symbol | 
		module at: symbol ifAbsent: [| pool |
			pool := Smalltalk at: symbol.
			module addImport: symbol -> pool copy]]! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:15:51'!
removeClass: aClassSpec 

	module removeClass: aClassSpec! !

!ImageModuleBuilder methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:14:03'!
initialize 

	module := ModuleSpec new! !

!ImageModuleBuilder methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:15:20'!
module: aModuleSpec 

	module := aModuleSpec! !

!ImageModuleBuilder methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:14:46'!
isIncomplete: aClassSpec 
	"
	a class that has been added inderectly and whose shape is not defined
	"
	^aClassSpec name !!= 'ProtoObject' and: [aClassSpec superclass = nil]! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 3/29/2022 14:13:08'!
compilerFor: aSpeciesSpec 

		^self subclassResponsibility! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 3/29/2022 14:16:02'!
specFromMetaclass: aMetaclass class: aClassSpec 

	^MetaclassSpec new
		ivars: aMetaclass instVarNames asOrderedCollection;
		module: module;
		instanceClass: aClassSpec! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 3/29/2022 14:16:21'!
specFromMethod: aCompiledMethod species: aSpeciesSpec 

	^MethodSpec new
		module: module;
		selector: aCompiledMethod selector;
		classBinding: aSpeciesSpec;
		source: aCompiledMethod sourceCode;
		category: aCompiledMethod category! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 3/29/2022 14:16:40'!
specFromSource: aString species: aSpeciesSpec 
	| compiler method |
	compiler := self compilerFor: aSpeciesSpec.
	method := compiler compile: aString.
	^MethodSpec new
		module: module;
		selector: method selector;
		classBinding: aSpeciesSpec;
		source: aString;
		category: 'unclassified'! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:31:47'!
classBinding 

	^ class! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:31:57'!
classBinding: aSpeciesSpec 

	class := aSpeciesSpec! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:33:29'!
module 

	^module! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:33:41'!
module: aModuleSpec 

	module := aModuleSpec
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:34:55'!
removeFromClass 

	class removeMethod: self! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:35:41'!
selector: aSymbol 

	selector := aSymbol! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:35:51'!
source 

	^ source! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:36:01'!
source: aString 

	source := aString.
	ast := nil! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:36:12'!
sourceCode 

	^ source! !

!MethodSpec methodsFor: 'comparing' stamp: 'KenD 3/29/2022 14:29:09'!
= aMethodSpec 

	^aMethodSpec class = self class
		and: [aMethodSpec selector == selector]
		and: [aMethodSpec classBinding = class]! !

!MethodSpec methodsFor: 'comparing' stamp: 'KenD 3/29/2022 14:32:43'!
hash 

	^ class name hash hashWith: selector! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 3/29/2022 14:29:33'!
asCompiledMethod 

	self canBeCompiled ifFalse: [^nil].
	^self
		propertyAt: #compiledMethod
		ifAbsentPut: [self compiler compileMethod: source]! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 3/29/2022 14:29:45'!
ast 

	self canBeCompiled ifFalse: [^nil].
	^ast ifNil: 
		[ast := [self compiler parse: source] on: SUndeclaredIdentifierError do: [ :e | e resume ]]! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 3/29/2022 14:34:26'!
referencedIdentifiers 

	^ self ast ifNil: [#()] ifNotNil: [:node | node identifiers]! !

!MethodSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:30:08'!
bytecodes 

	^self canBeCompiled ifTrue: [self asCompiledMethod bytecodes]! !

!MethodSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:32:08'!
classname 

	^class name! !

!MethodSpec methodsFor: 'resolving' stamp: 'KenD 3/29/2022 14:35:28'!
resolveClass 

	^ module resolveClass: class name! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:30:31'!
canBeCompiled 

	^self compiler notNil! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:30:39'!
canBeParsed 

	^self cannonicalAst notNil! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:30:53'!
cannonicalAst 

	^self halt propertyAt: #cannonicalAst ifAbsentPut: [self ast]! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:32:56'!
isEquivalentTo: aMethodSpec 
	| m1 m2 |
	selector == aMethodSpec selector ifFalse: [^false].
	class == aMethodSpec classBinding ifFalse: [^false].
	m1 := self asCompiledMethod.
	m1 isNil ifTrue: [^false].
	m2 := aMethodSpec asCompiledMethod.
	m2 isNil ifTrue: [^false].
	^m1 equals: m2! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:33:09'!
isExtension 

	^ class isExtension! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:33:18'!
isFrameless 

	^self halt asCompiledMethod isFrameless! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:32:23'!
quals: aMethodSpec 

	^ self canBeCompiled
		and: [aMethodSpec canBeCompiled]
		and: [self isFrameless not]
		and: [self isEquivalentTo: aMethodSpec]! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:34:44'!
referencesIdentifier: aString 

	^self referencedIdentifiers
		anySatisfy: [:identifier | identifier name = aString]! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:36:29'!
usesInstanceVariableNamed: aString 

	^ (self ast variableNamed: aString) notNil! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:45:26'!
at: aSymbol 

	^ self at: aSymbol ifAbsent: nil! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:45:38'!
at: aSymbol ifAbsent: aBlock 
	| string |
	string := aSymbol asString.
	classes do: [:c | c name = string ifTrue: [^c]].
	extendedClasses do: [:c | c name = string ifTrue: [^c]].
	subclassifiedClasses do: [:c | c name = string ifTrue: [^c]].
	^imports at: aSymbol ifAbsent: aBlock! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:47:29'!
classes 

	^ classes! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:48:38'!
dependencies 

	^ dependencies! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:48:46'!
dependencies: aDictionary 

	dependencies := aDictionary! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:48:59'!
description 

	^ description! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:49:05'!
description: aString 

	description := aString! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:50:14'!
extendedClasses 

	^ extendedClasses! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:52:04'!
name: aString 

	name := aString! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:56:43'!
requiredImports 
	| required |
	required := Dictionary new.
	self referencedGlobals
		keysAndValuesDo: [:global :dependents | (self definesGlobal: global)
			ifFalse: [required at: global put: dependents]].
	^required! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:38:58'!
addClass: aClassSpec 

	classes add: aClassSpec! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:41:23'!
addSubclassifiedClass: aClassSpec 

	subclassifiedClasses addIfAbsent: aClassSpec! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:44:51'!
associationAt: aSymbol ifAbsent: aBlock 
	| string |
	string := aSymbol asString.
	classes do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	extendedClasses do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	subclassifiedClasses do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	^imports associationAt: aSymbol ifAbsent: aBlock! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:47:43'!
cleanDependencies 
	| needed |
	needed := OrderedCollection new.
	self methodReferences keys do: [:identifier | needed add: identifier name].
	self hierarchyReferences keys
		do: [:identifier | needed add: identifier name].
	extendedClasses do: [:c | needed add: c name].
	dependencies copy keysAndValuesDo: [:module :identifiers | 
		(identifiers keys anySatisfy: [:identifier | needed includes: identifier])
			ifFalse: [dependencies removeKey: module]]! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:50:46'!
hierarchyReferences 
	| references |
	references := Dictionary new.
	self allClassesDo: [:c | | list |
		c superclass ifNotNil: [
			list := references at: c superclass ifAbsentPut: [OrderedCollection new].
			list add: c]].
	^references! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:51:36'!
methodReferences 
	| references |
	references := Dictionary new.
	self allMethodsDo: [:m | 
		m referencedIdentifiers reject: #isLocal thenDo: [:identifier | | list |
			list := references at: identifier ifAbsentPut: [OrderedCollection new].
			list add: m]].
	^references! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:52:59'!
removeCategory: aSymbol inClass: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	class removeCategory: aSymbol! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:53:10'!
removeClass: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	classes remove: class ifAbsent: nil! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:53:19'!
removeEmptyExtensions 
	extendedClasses copy
		reject: #hasMethods
		thenDo: [:c | extendedClasses remove: c]! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:53:28'!
removeExtendedClass: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	extendedClasses remove: class ifAbsent: nil! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:55:48'!
removeMethod: aMethodSpec 

	self assert: (self includesClass: aMethodSpec classBinding).
	aMethodSpec classBinding removeMethod: aMethodSpec! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:55:52'!
removeSelectors: aCollection 

	self allClassesDo: [:c | 
		c removeSelectors: aCollection.
		c metaclass removeSelectors: aCollection]! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:56:01'!
removeSelectors: aCollection inClass: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	class removeSelectors: aCollection! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:56:10'!
removeSelectors: aCollection inScope: aClassSpec 
	| class all |
	class := self resolveClass: aClassSpec.
	all := self withAllSubclasses: class.
	all do: [:c | c removeSelectors: aCollection]! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:56:21'!
removeSubclassesOf: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	class allSubclasses do: [:c | self removeClass: c; removeExtendedClass: c]! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:56:30'!
removeSubclassifiedClass: aClassSpec 
	| class |
	class := self resolveClass: aClassSpec.
	subclassifiedClasses remove: class ifAbsent: nil! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 14:43:45'!
allClassesDo: aBlock 

	classes do: aBlock.
	extendedClasses do: aBlock! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 14:44:08'!
allMethods 
	| methods |
	methods := OrderedCollection new.
	self allMethodsDo: [:m | methods add: m].
	^methods! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 14:44:29'!
allMethodsDo: aBlock 

	self allClassesDo: [:c | 
		c metaclass methods do: aBlock.
		c methods do: aBlock]! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 3/29/2022 14:58:36'!
withAllSubclasses: aClassSpec 
	| all |
	all := self allClasses.
	aClassSpec isMetaclass ifTrue: [all := all collect: #metaclass].
	^all select: [:c | c withAllSuperclasses includes: aClassSpec]! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:39:26'!
addImport: anAssociation 

	imports add: anAssociation! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:39:37'!
addImports: aCollection 

	aCollection do: [:token | self addImport: token asSymbol -> nil]! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:40:26'!
initialize 

	classes := OrderedCollection new.
	extendedClasses := OrderedCollection new.
	subclassifiedClasses := OrderedCollection new.
	imports := Dictionary new.
	dependencies := Dictionary new! !

!ModuleSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:41:49'!
allClasses 

	^ classes , extendedClasses! !

!ModuleSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:52:45'!
referencedGlobals 
	| referenced |
	referenced := Dictionary new.
	self allMethodsDo: [:m | 
		m referencedIdentifiers
			select: [:identifier | | b |
				b := identifier binding.
				b isGlobal or: [b isUnresolved]]
			thenDo: [:global | (referenced
				at: global name
				ifAbsentPut: [OrderedCollection new])
				add: m]].
	^referenced! !

!ModuleSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 14:57:50'!
sortedClasses 
	| remaining sorted |
	remaining := classes copy.
	sorted := OrderedCollection new.
	[remaining isEmpty] whileFalse: [| c |
		c := remaining first.
		(remaining includes: c superclass)
			ifTrue: [remaining removeFirst; add: c]
			ifFalse: [
				remaining remove: c.
				sorted add: c]].
	^sorted! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 3/29/2022 14:46:11'!
basicResolveClass: aString 

	classes do: [:c | c name asString = aString ifTrue: [^c]].
	extendedClasses do: [:c | c name asString = aString ifTrue: [^c]].
	subclassifiedClasses do: [:c | c name asString = aString ifTrue: [^c]].
	^nil! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 3/29/2022 14:48:26'!
definesGlobal: aString 

	^classes anySatisfy: [:c | c name = aString]! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 3/29/2022 14:56:55'!
resolveClass: class 
	| moniker metaclass found |
	moniker := class isString ifTrue: [class] ifFalse: [class name].
	metaclass := moniker endsWith: ' class'.
	metaclass ifTrue: [moniker := moniker trimTail: ' class'].
	found := self basicResolveClass: moniker.
	^found ifNotNil: [metaclass ifTrue: [found metaclass] ifFalse: [found]]! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:48:15'!
definesClassNamed: aString 

	^classes anySatisfy: [:c | c name = aString]! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:50:27'!
extendsClassNamed: aString 

	^extendedClasses anySatisfy: [:c | c name = aString]! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:51:08'!
includesClass: aClassSpec 

	^ (self resolveClass: aClassSpec) notNil! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:58:17'!
subclassifiesClassNamed: aString 

	^ subclassifiedClasses anySatisfy: [:c | c name = aString]! !

!ModuleSpec methodsFor: '*Bee-CodeSpecs-Porting' stamp: 'KenD 3/29/2022 14:47:12'!
beeDefinition 
	| changes sorted meta useful extmeta |
	sorted := self sortedClasses.
	meta := sorted collect: [:c | c metaclass].
	changes := OrderedCollection new.
	sorted collect: [:c | c beeDefinition] in: changes.
	useful := meta select: [:m | m instVarNames notEmpty].
	useful collect: [:m | m beeDefinition] in: changes.
	extmeta := extendedClasses collect: [:c | c metaclass].
	meta , sorted , extendedClasses , extmeta
		do: [:c | c methods collect: [:m | m beeDefinition] in: changes].
	^changes! !

!ModuleSpec methodsFor: '*Bee-CodeSpecs-Porting' stamp: 'KenD 3/29/2022 14:49:57'!
exportPseudoTonel: path 

	self flag: #Tonel.
	TonelModuleExporter new path: path; module: self; exportPseudoTonel! !

!ModuleSpec class methodsFor: 'instance creation' stamp: 'KenD 3/29/2022 14:38:31'!
new 

	^super new initialize! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:21:25'!
allSharedPools 
	| pools |
	pools := Set new.
	self withAllSuperclasses do: [:c | pools addAll: c sharedPools].
	^pools! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:23:32'!
instVarNames: aCollection 

	instanceVariables := aCollection asOrderedCollection! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:24:10'!
ivars: aCollection 

	instanceVariables := aCollection asOrderedCollection! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:24:33'!
module: aModuleSpec 

	module := aModuleSpec! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:20:09'!
addMethod: aMethodSpec 

	^methods add: aMethodSpec! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:20:22'!
addMethods: aCollection 

	aCollection do: [:m | self addMethod: m]! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:25:22'!
removeMethod: aMethodSpec 

	methods remove: aMethodSpec ifAbsent: nil! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 3/29/2022 14:25:42'!
removeSelectors: aCollection 

	methods removeAllSuchThat: [:m | aCollection includes: m selector]! !

!SpeciesSpec methodsFor: 'initialization' stamp: 'KenD 3/29/2022 14:23:20'!
initialize 

	super initialize.
	methods := OrderedCollection new.
	instanceVariables := {}. "#()."
	format := 0! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:23:44'!
isExtension 

	^module extendedClasses includes: self instanceClass! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 14:23:58'!
isMetaclass 

	^ false! !

!SpeciesSpec class methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:19:18'!
arrayedFlag 

	^ 2! !

!SpeciesSpec class methodsFor: 'accessing' stamp: 'KenD 3/29/2022 14:19:28'!
bytesFlag 

	^ 1! !

!SpeciesSpec class methodsFor: 'instance creation' stamp: 'KenD 3/29/2022 14:19:40'!
new 

	^super new initialize! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:06:23'!
classVariables 

	^ classVariables! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:07:25'!
cvarNames: aCollection 

	aCollection do: [:cvar | classVariables at: cvar put: nil]! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:07:34'!
cvars: aDictionary 

	classVariables := aDictionary! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:08:30'!
instanceClass 

	^ self! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:09:16'!
isPointers: aBoolean 

	pointers := aBoolean! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:09:28'!
isVariable: aBoolean 

	variable := aBoolean! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:10:29'!
metaclass 

	^ metaclass! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:10:39'!
metaclass: aMetaclassSpec 

	metaclass := aMetaclassSpec! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:00'!
name: aString 

	name := aString! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:22'!
sharedPools: aCollection 

	sharedPools addAll: aCollection! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:44'!
supername 

	^ supername! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:11:54'!
supername: aString 

	supername := aString! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:04:20'!
allMethods 

	^ methods & metaclass methods! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:10:11'!
metaMethods 

	^ metaclass methods! !

!ClassSpec methodsFor: 'initialization' stamp: 'KenD 3/29/2022 15:08:15'!
initialize 

	super initialize.
	classVariables := OrderedDictionary new.
	sharedPools := OrderedCollection new! !

!ClassSpec methodsFor: 'services' stamp: 'KenD 3/29/2022 15:05:38'!
beArrayed 

	format := format | self class arrayedFlag! !

!ClassSpec methodsFor: 'services' stamp: 'KenD 3/29/2022 15:05:48'!
beBytes 

	format := format | self class bytesFlag! !

!MetaclassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:01:12'!
instanceClass 

	^ class! !

!MetaclassSpec methodsFor: 'accessing' stamp: 'KenD 3/29/2022 15:01:23'!
instanceClass: aClassSpec 

	class := aClassSpec! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:01:59'!
metaMethods 

	^ #()! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 3/29/2022 15:02:54'!
supername 

	^ self superclass name! !

!MetaclassSpec methodsFor: 'testing' stamp: 'KenD 3/29/2022 15:01:45'!
isMetaclass 

	^ true! !
