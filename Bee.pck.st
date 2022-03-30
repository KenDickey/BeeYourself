'From Cuis 6.0 [latest update: #5095] on 30 March 2022 at 12:49:15 pm'!
'Description Bee Transliterator'!
!provides: 'Bee' 1 7!
!requires: 'BeeCompatibility' 1 4 nil!
SystemOrganization addCategory: 'Bee-CodeSpecs-Porting'!
SystemOrganization addCategory: 'Bee-CodeSpecs'!


!classDefinition: #ModuleTransliteratorTest category: 'Bee-CodeSpecs-Porting'!
TestCase subclass: #ModuleTransliteratorTest
	instanceVariableNames: 'module transliterator builder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ModuleTransliteratorTest class' category: 'Bee-CodeSpecs-Porting'!
ModuleTransliteratorTest class
	instanceVariableNames: ''!

!classDefinition: #ImageModuleBuilder category: 'Bee-CodeSpecs-Porting'!
Object subclass: #ImageModuleBuilder
	instanceVariableNames: 'module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ImageModuleBuilder class' category: 'Bee-CodeSpecs-Porting'!
ImageModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #BeeModuleBuilder category: 'Bee-CodeSpecs-Porting'!
ImageModuleBuilder subclass: #BeeModuleBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'BeeModuleBuilder class' category: 'Bee-CodeSpecs-Porting'!
BeeModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #PharoModuleBuilder category: 'Bee-CodeSpecs-Porting'!
ImageModuleBuilder subclass: #PharoModuleBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'PharoModuleBuilder class' category: 'Bee-CodeSpecs-Porting'!
PharoModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #ModuleTransliterator category: 'Bee-CodeSpecs-Porting'!
Object subclass: #ModuleTransliterator
	instanceVariableNames: 'module rules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ModuleTransliterator class' category: 'Bee-CodeSpecs-Porting'!
ModuleTransliterator class
	instanceVariableNames: ''!

!classDefinition: #RejectMethodRule category: 'Bee-CodeSpecs-Porting'!
Object subclass: #RejectMethodRule
	instanceVariableNames: 'scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'RejectMethodRule class' category: 'Bee-CodeSpecs-Porting'!
RejectMethodRule class
	instanceVariableNames: ''!

!classDefinition: #TonelModuleExporter category: 'Bee-CodeSpecs-Porting'!
Object subclass: #TonelModuleExporter
	instanceVariableNames: 'module path compatible'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'TonelModuleExporter class' category: 'Bee-CodeSpecs-Porting'!
TonelModuleExporter class
	instanceVariableNames: ''!

!classDefinition: #TonelModuleImporter category: 'Bee-CodeSpecs-Porting'!
Object subclass: #TonelModuleImporter
	instanceVariableNames: 'module path metadata'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'TonelModuleImporter class' category: 'Bee-CodeSpecs-Porting'!
TonelModuleImporter class
	instanceVariableNames: ''!

!classDefinition: #TransliterationRule category: 'Bee-CodeSpecs-Porting'!
Object subclass: #TransliterationRule
	instanceVariableNames: 'scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'TransliterationRule class' category: 'Bee-CodeSpecs-Porting'!
TransliterationRule class
	instanceVariableNames: ''!

!classDefinition: #MethodFilterRule category: 'Bee-CodeSpecs-Porting'!
TransliterationRule subclass: #MethodFilterRule
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'MethodFilterRule class' category: 'Bee-CodeSpecs-Porting'!
MethodFilterRule class
	instanceVariableNames: ''!

!classDefinition: #RefactoringRule category: 'Bee-CodeSpecs-Porting'!
TransliterationRule subclass: #RefactoringRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'RefactoringRule class' category: 'Bee-CodeSpecs-Porting'!
RefactoringRule class
	instanceVariableNames: ''!

!classDefinition: #ClassRemoveRule category: 'Bee-CodeSpecs-Porting'!
RefactoringRule subclass: #ClassRemoveRule
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ClassRemoveRule class' category: 'Bee-CodeSpecs-Porting'!
ClassRemoveRule class
	instanceVariableNames: ''!

!classDefinition: #ConversionRule category: 'Bee-CodeSpecs-Porting'!
RefactoringRule subclass: #ConversionRule
	instanceVariableNames: 'original new'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'ConversionRule class' category: 'Bee-CodeSpecs-Porting'!
ConversionRule class
	instanceVariableNames: ''!

!classDefinition: #IdentifierRenameRule category: 'Bee-CodeSpecs-Porting'!
ConversionRule subclass: #IdentifierRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'IdentifierRenameRule class' category: 'Bee-CodeSpecs-Porting'!
IdentifierRenameRule class
	instanceVariableNames: ''!

!classDefinition: #PackageRenameRule category: 'Bee-CodeSpecs-Porting'!
ConversionRule subclass: #PackageRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'PackageRenameRule class' category: 'Bee-CodeSpecs-Porting'!
PackageRenameRule class
	instanceVariableNames: ''!

!classDefinition: #SelectorRenameRule category: 'Bee-CodeSpecs-Porting'!
ConversionRule subclass: #SelectorRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'SelectorRenameRule class' category: 'Bee-CodeSpecs-Porting'!
SelectorRenameRule class
	instanceVariableNames: ''!

!classDefinition: #PackageRemoveRule category: 'Bee-CodeSpecs-Porting'!
RefactoringRule subclass: #PackageRemoveRule
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'PackageRemoveRule class' category: 'Bee-CodeSpecs-Porting'!
PackageRemoveRule class
	instanceVariableNames: ''!

!classDefinition: #RemoveInstVarRule category: 'Bee-CodeSpecs-Porting'!
RefactoringRule subclass: #RemoveInstVarRule
	instanceVariableNames: 'ivar classname'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'RemoveInstVarRule class' category: 'Bee-CodeSpecs-Porting'!
RemoveInstVarRule class
	instanceVariableNames: ''!

!classDefinition: #TransliterationScope category: 'Bee-CodeSpecs-Porting'!
Object subclass: #TransliterationScope
	instanceVariableNames: 'module class method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Bee-CodeSpecs-Porting'!
!classDefinition: 'TransliterationScope class' category: 'Bee-CodeSpecs-Porting'!
TransliterationScope class
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


!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:50:16'!
definition 
	| names |
	names := (module classes collect: #name) sort.
	^OrderedDictionary new
		at: #name put: self moduleName asSymbol;
		at: #requires
		put: module dependencies keys asArray sort;
		at: #classes put: names asArray;
		yourself! !

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

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:23:44'!
builderClass 
	self flag: #PharoModuleBuilder.
	^ PharoModuleBuilder! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:25:51'!
est020removeInstVar 
	| extensions point |
	builder
		addMethod: Point >> #x;
		addMethod: Point >> #y.
	transliterator removeInstVar: 'x' in: 'Point'; transliterate.
	extensions := module extendedClasses.
	point := extensions first.
	self
		assert: extensions size equals: 1;
		assert: point name equals: 'Point';
		assert: point methods size equals: 1;
		assert: point methods first selector equals: #y! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:23:58'!
setUp 

	module := ModuleSpec new name: 'TestModule'.
	transliterator := ModuleTransliterator new module: module.
	builder := self builderClass new module: module! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:24:10'!
test001doNothing 

	builder addMethod: ModuleTransliteratorTest >> #test001doNothing.
	transliterator transliterate.
	self
		assert: module name equals: 'TestModule';
		assert: module classes size equals: 0;
		assert: module extendedClasses size equals: 1;
		assert: module extendedClasses first name equals: 'ModuleTransliteratorTest'! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:24:24'!
test002filterMethod 
	| extensions class |
	builder
		addMethod: self class >> #test001doNothing;
		addMethod: self class >> #test002filterMethod.
	extensions := module extendedClasses.
	class := extensions first.
	transliterator
		removeMethodsSuchThat: [:m | m selector beginsWith: 'test002'];
		transliterate.
	self
		assert: module name equals: 'TestModule';
		assert: extensions size equals: 1;
		assert: class name equals: 'ModuleTransliteratorTest';
		assert: class methods size equals: 1;
		assert: class methods first selector equals: #test001doNothing! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:25:25'!
test010removeClass 
	| extensions test |
	builder
		addMethod: self class >> #test001doNothing;
		addMethod: self class >> #test010removeClass;
		addMethodCompiling: '& anInteger 	^self bitAnd: anInteger' in: LargePositiveInteger "LargeInteger";
		addMethodCompiling: 'abs   ^self' in: LargePositiveInteger;
		addClassDefinition: LargeNegativeInteger;
		calculateDependencies.
	transliterator removeClass: 'LargeInteger'; transliterate.
	extensions := module extendedClasses.
	test := extensions first.
	self
		assert: module classes size equals: 0;
		assert: extensions size equals: 1;
		assert: test name equals: 'ModuleTransliteratorTest';
		assert: test methods size equals: 1;
		assert: test methods first selector equals: #test001doNothing! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:26:05'!
test030renameInstVar 
	| extensions point x source |
	builder
		addMethod: Point >> #x;
		addMethod: Point >> #y.
	transliterator
		renameIdentifier: 'x' to: 'z' class: 'Point';
		transliterate.
	extensions := module extendedClasses.
	point := extensions first.
	x := point methods first.
	source := x ast statements first source.
	self
		assert: extensions size equals: 1;
		assert: point name equals: 'Point';
		assert: point instVarNames asArray equals: #('z' 'y');
		assert: point methods size equals: 2;
		assert: x selector equals: #x;
		deny: (source includesString: 'x');
		assert: (source includesString: 'z')! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:26:41'!
test031renameClassVar 
	| spec extensions source large method |
	spec := builder addClassExtension: LargePositiveInteger.
	spec cvarNames: #('Base' 'DigitLength').
	builder
		addMethodCompiling: 'digitAt: index put: integer
	| valid |
	valid := integer bitAnd: Base - 1.
	self uShortAtOffset: index - 1 * DigitLength put: valid' in: LargePositiveInteger.
	transliterator
		renameIdentifier: 'Base' to: 'Foo' class: 'LargeInteger';
		transliterate.
	extensions := module extendedClasses.
	large := extensions first.
	method := large methods first.
	source := method ast source.
	self
		assert: large classVarNames asArray sort equals: #('DigitLength' 'Foo');
		deny: (source includesString: 'Base');
		assert: (source includesString: 'Foo')! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:26:53'!
test032renamePoolVar 
	| spec pool extensions character method source |
	spec := builder addClassExtension: Character.
	pool := PoolDictionary new at: 'Cr' put: 1; yourself.
	spec classVariables at: 'Characters' put: pool.
	builder addMethodCompiling: 'cr	^Cr' in: Character class.
	transliterator renameIdentifier: 'Cr' to: 'Foo'; transliterate.
	extensions := module extendedClasses.
	character := extensions first.
	method := character metaclass methods first.
	source := method ast source.
	self
		deny: (source includesString: 'Cr');
		assert: (source includesString: 'Foo')! !

!ModuleTransliteratorTest methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:27:04'!
test033renameSharedPool 
	| spec |
	spec := builder addClassDefinition: Character.
	spec sharedPools add: #CharacterConstants.
	transliterator
		renameIdentifier: 'CharacterConstants' to: 'Characters';
		transliterate.
	self
		assert: module classes first sharedPools asArray sort equals: #(#'Characters')! !

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

!BeeModuleBuilder methodsFor: 'private' stamp: 'KenD 3/30/2022 09:59:16'!
specFromClass: aClass 
	| class metaclass n |
	class := ClassSpec new.
	metaclass := self specFromMetaclass: aClass class: class.
	n := aClass superclass ifNotNil: [:s | s name].
	class
		module: module;
		metaclass: metaclass;
		name: aClass name;
		supername: n;
		ivars: aClass instVarNames asOrderedCollection;
		cvars: aClass classVariables;
		sharedPools: aClass sharedPools.
	aClass instancesAreArrayed ifTrue: [class beArrayed].
	aClass instancesHavePointers ifFalse: [class beBytes].
	^class! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:55:19'!
addAllMethodsFrom: aClass into: aClassSpec 

	self addAllMethodsFrom: aClass project: aClass project into: aClassSpec! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:55:31'!
addAllMethodsFrom: aClass project: aBeeProject into: aClassSpec 
	| instance meta |
	instance := aBeeProject methodsOf: aClass.
	meta := aBeeProject methodsOf: aClass class.
	self
		addMethods: instance into: aClassSpec;
		addMethods: meta into: aClassSpec metaclass! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:55:45'!
addMethod: aCompiledMethod 
	| class spec |
	class := self ensureClass: aCompiledMethod classBinding instanceClass.
	aCompiledMethod classBinding isMetaclass ifTrue: [class := class metaclass].
	spec := self specFromMethod: aCompiledMethod species: class.
	class addMethod: spec! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:55:57'!
addMethods: aCollection 

	(aCollection groupBy: #classBinding) keysAndValuesDo: [:class :methods | | spec |
		spec := self ensureClass: class instanceClass.
		class isMetaclass ifTrue: [spec := spec metaclass].
		self addMethods: methods into: spec]! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:56:08'!
addProject: aBeeProject 

	self addClasses: aBeeProject classes; addMethods: aBeeProject extensions! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:58:34'!
loadExtensionsFromImage 

	module extendedClasses copy do: [:spec | self loadExtensionFromImage: spec]! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 09:58:20'!
oadExtensionFromImage: aClassSpec 
	| class supername |
	class := Smalltalk at: aClassSpec name asSymbol ifAbsent: [^self].
	supername := class superclass ifNotNil: [:s | s name].
	aClassSpec
		name: class name;
		supername: supername;
		ivars: class instVarNames asOrderedCollection;
		cvars: class classVariables;
		sharedPools: class sharedPools.
	aClassSpec metaclass ivars: class class instVarNames asOrderedCollection! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 3/30/2022 09:57:36'!
calculateDependencies 
	| imports projects map extensions |
	self addSubclassifiedClasses.
	imports := module requiredImports.
	projects := imports associations groupBy: [:a | | global |
		global := Smalltalk at: a key asSymbol ifAbsent: [
			Transcript
				print: 'Global ' , a key printString
					, ' is being referenced but was not found in Smalltalk globals';
				cr.
			nil].
		global isSpecies
			ifTrue: [global project name]
			ifFalse: [global imageSegment ifNotNil: [:p | p name]]].
	self ignoredProjects do: [:d | projects removeKey: d ifAbsent: nil].
	map := projects collect: [:group | Dictionary withAll: group].
	module addImports: imports keys; addDependencies: map.
	extensions := Dictionary new.
	module extendedClasses do: [:spec | 
		Smalltalk at: spec name asSymbol ifPresent: [:class | | deps methods |
			deps := extensions 
						at: class project name 
						ifAbsentPut: [Dictionary new].
			methods := deps 
						at: spec name 
						ifAbsentPut: [OrderedCollection new].
			methods addAll: spec methods]].
	module addDependencies: extensions! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 3/30/2022 09:57:51'!
ignoredProjects 

	^ self class ignoredProjects! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 3/30/2022 09:58:03'!
leaveOnlyProject: aBeeProject 
	| target |
	target := OrderedCollection new.
	module allMethodsDo: [:m | | class |
		class := Smalltalk at: m classBinding name asSymbol.
		(aBeeProject includesClass: class selector: m selector)
			ifFalse: [target add: m]].
	target do: [:m | m classBinding removeSelector: m selector]! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 09:53:54'!
fromClass: aClass 

	^self new name: aClass name; addClass: aClass; module! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 09:54:07'!
fromMethod: aCompiledMethod 

	^self new
		name: aCompiledMethod selector asString;
		addMethod: aCompiledMethod;
		module! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 09:54:18'!
fromProject: aBeeProject 

	^self new
		name: aBeeProject name;
		addProject: aBeeProject;
		calculateDependencies;
		module! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 09:54:35'!
ignoredProjects 

	^#('extensions' nil)! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 09:54:46'!
new 

	^ super new initialize! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 12:37:10'!
addMethod: aCompiledMethod 
	| class spec |
	class := self ensureClass: aCompiledMethod methodClass instanceSide.
	aCompiledMethod methodClass isMeta ifTrue: [class := class metaclass].
	spec := self specFromMethod: aCompiledMethod species: class.
	class addMethod: spec! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 12:37:22'!
calculateDependencies 
	| imports extensions |
	self addSubclassifiedClasses.
	imports := module requiredImports.
	module addImports: imports keys.
	extensions := Dictionary new.
	module extendedClasses do: [:spec | 
		Smalltalk at: spec name asSymbol ifPresent: [:class | | deps methods |
			deps := extensions at: class package name ifAbsentPut: [Dictionary new].
			methods := deps at: spec name ifAbsentPut: [OrderedCollection new].
			methods addAll: spec methods]].
	module addDependencies: extensions! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 12:37:35'!
compilerFor: aSpeciesSpec 

	^(SCompiler forClass: aSpeciesSpec) namespace: module! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 12:37:46'!
specFromClass: aClass 
	| class metaclass n |
	class := ClassSpec new.
	metaclass := self specFromMetaclass: aClass class: class.
	n := aClass superclass ifNotNil: [:s | s name].
	class
		module: module;
		metaclass: metaclass;
		name: aClass name;
		supername: n;
		ivars: aClass instVarNames asOrderedCollection;
		cvars: aClass classPool;
		sharedPools: aClass sharedPools.
	aClass isVariable ifTrue: [class beArrayed].
	aClass isBytes ifTrue: [class beBytes].
	^class! !

!ModuleTransliterator methodsFor: 'accessing' stamp: 'KenD 3/30/2022 10:04:56'!
module 

	^ module! !

!ModuleTransliterator methodsFor: 'accessing' stamp: 'KenD 3/30/2022 10:05:06'!
module: aModuleSpec 

	module := aModuleSpec! !

!ModuleTransliterator methodsFor: 'accessing' stamp: 'KenD 3/30/2022 10:12:07'!
rules
	"Probably unused"
	
	^ rules! !

!ModuleTransliterator methodsFor: 'accessing' stamp: 'KenD 3/30/2022 10:10:40'!
rules: newRules
	"Probably unused"
	
	rules := newRules! !

!ModuleTransliterator methodsFor: 'actions' stamp: 'KenD 3/30/2022 10:09:03'!
transliterate 

	rules do: [:rule | rule applyTo: module].
	module cleanDependencies; removeEmptyExtensions! !

!ModuleTransliterator methodsFor: 'actions' stamp: 'KenD 3/30/2022 10:09:14'!
transliterate: aModuleSpec 

	module := aModuleSpec.
	self transliterate! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 10:03:59'!
addRule: aTransliterationRule 

	rules add: aTransliterationRule! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 3/30/2022 10:04:09'!
addRules: aCollection 

	rules addAll: aCollection! !

!ModuleTransliterator methodsFor: 'initialization' stamp: 'KenD 3/30/2022 10:04:32'!
initialize 

	rules := OrderedCollection new! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:05:41'!
removeClass: aString 
	| rule |
	rule := ClassRemoveRule name: aString.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:05:52'!
removeInstVar: ivar in: classname 
	| rule |
	rule := RemoveInstVarRule named: ivar in: classname.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:06:14'!
removeMethodsSuchThat: aBlock 

	self removeMethodsSuchThat: aBlock class: nil module: nil! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:06:28'!
removeMethodsSuchThat: aBlock class: classname module: modulename 
	| rule |
	rule := (MethodFilterRule on: aBlock)
		module: modulename;
		class: classname.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:06:51'!
removePackage: aString 
	| rule |
	rule := PackageRemoveRule name: aString.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:07:02'!
removeSelectors: selectors 

	self removeSelectors: selectors class: nil module: nil! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:07:14'!
removeSelectors: selectors class: classname 

	^ self removeSelectors: selectors class: classname module: nil! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:07:25'!
removeSelectors: selectors class: classname module: modulename 
	| rule |
	rule := (MethodFilterRule on: [:m | selectors includes: m selector])
		module: modulename;
		class: classname.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:07:37'!
removeSelectors: selectors module: modulename 

	^ self removeSelectors: selectors class: nil module: modulename! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:07:47'!
renameIdentifier: from to: to 

	self renameIdentifier: from to: to class: nil module: nil! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:08:01'!
renameIdentifier: from to: to class: classname 

	self renameIdentifier: from to: to class: classname module: nil! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:08:22'!
renameIdentifier: from
to: to
class: classname
module: modulename 
	| rule |
	rule := IdentifierRenameRule from: from to: to.
	rule class: classname; module: modulename.
	self addRule: rule! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 3/30/2022 10:08:33'!
renameSelector: aString to: anotherString 
	| rule |
	rule := SelectorRenameRule from: aString to: anotherString.
	self addRule: rule! !

!ModuleTransliterator class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 10:03:26'!
new 

	^ super new initialize! !

!RejectMethodRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:44:50'!
scope: aBlock 

	scope := aBlock! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:49:23'!
compatible: aBoolean 

	compatible := aBoolean! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:49:33'!
copyright 

	^'Copyright (c) ' , Date today year asString , ' Quorum Software.'! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:56:15'!
license 

	^'See (MIT) license in root directory.'! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:56:27'!
module: aModuleSpec 

	module := aModuleSpec! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:56:37'!
moduleFolder 

	^path \ self exportedName! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:57:06'!
path: aFilename 

	path := aFilename asFilename! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:50:42'!
export 

	self
		createFolder;
		exportMetadata;
		exportClasses;
		exportExtendedClasses! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:51:23'!
exportClass: aClassSpec 
	| filename |
	filename := self filenameForClass: aClassSpec.
	self withFileNamed: filename do: [:stream | | writer |
		stream truncate.
		self flag: #TonelWriter.
		writer := TonelWriter on: stream.
		writer
			category: self moduleName;
			class: aClassSpec;
			methods: (aClassSpec metaMethods sortBy: #selector)
				& (aClassSpec methods sortBy: #selector);
			write]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:51:37'!
exportClasses 

	module classes do: [:class | self exportClass: class]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:51:49'!
exportEmptyClass: aClassSpec 
	| filename |
	filename := self filenameForClass: aClassSpec.
	self withFileNamed: filename do: [:stream | | writer |
		writer := TonelWriter on: stream.
		writer
			category: self moduleName;
			class: aClassSpec;
			methods: #();
			write]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:52:02'!
exportEmptyClasses 

	module classes do: [:class | self exportEmptyClass: class]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:53:24'!
exportExtendedClass: aClassSpec 
	| filename |
	filename := self filenameForExtension: aClassSpec.
	self withFileNamed: filename do: [:stream | 
		stream truncate.
		self flag: #TonelWriter.
		(TonelWriter on: stream)
			writeMethods: (aClassSpec metaMethods sortBy: #selector)
				& (aClassSpec methods sortBy: #selector)]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:53:39'!
exportExtendedClasses 

	module extendedClasses do: [:class | self exportExtendedClass: class]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:54:45'!
exportMetadata 
	| package |
	package := self moduleFolder \ 'package.st'.
	self flag: #STONWriter.
	self withFileNamed: package do: [:stream | 
		stream nextPutAll: 'Package '.
		(STONWriter on: stream) writeMap: self definition]! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 3/30/2022 11:54:58'!
exportPseudoTonel 

	compatible := false.
	self export! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:50:00'!
createFolder 

	self moduleFolder createPath! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:55:21'!
exportedName 

	^ module name copy replace: Character space with: $\! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:55:34'!
filenameForClass: aClassSpec 
	| name |
	name := aClassSpec name asFilename.
	compatible ifTrue: [name := name appendExtension: 'class'].
	^self moduleFolder \ name appendExtension: 'st'! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:55:52'!
filenameForExtension: aClassSpec 
	| name |
	name := aClassSpec name asFilename.
	compatible ifTrue: [name := name appendExtension: 'extension'].
	^self moduleFolder \ name appendExtension: 'st'! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:56:49'!
moduleName 

	^self exportedName asFilename entityName! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 3/30/2022 11:57:22'!
withFileNamed: aFilename do: aBlock 
	| stream |
	stream := aFilename asFile writeStream.
	stream
		truncate;
		eol: String lf;
		nextPut: $";
		crtab;
		nextPutAll: self copyright;
		crtab;
		nextPutAll: self license;
		cr;
		nextPut: $";
		cr;
		cr.
	[aBlock evaluateWith: stream] ensure: [stream close]! !

!TonelModuleExporter class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 11:48:56'!
new 

	^ super new initialize! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:39:31'!
module 

	^ module! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:39:40'!
module: aModuleSpec 

	module := aModuleSpec! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:39:56'!
path: aFilename 

	path := aFilename! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:41:27'!
import 

	self importMetadata; importClasses; importExtendedClasses! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:42:45'!
importClass: aString 
	| filename reader definition pointers variable class metasclass stream |
	filename := path \ aString withExtension: 'st'.
	filename exists ifFalse: [
		filename := path \ aString withFullExtension: 'class.st'.
		filename exists
			ifFalse: [self error: 'Cannot find file for class ' , aString]].
	stream := filename asFile readStream.
	self flag: #TonelReader.
	reader := TonelReader on: stream.
	[reader read] ensure: [stream close].
	definition := reader definition.
	variable := pointers := true.
	definition at: #type ifPresent: [:type | 
		variable := true.
		type = #bytes ifTrue: [pointers := false]].
	class := ClassSpec new
		module: module;
		name: (definition at: #name) asString;
		supername: (definition at: #superclass ifAbsent: nil) asString;
		ivars: (definition at: #instVars ifAbsent: #());
		cvarNames: (definition at: #classVars ifAbsent: #());
		sharedPools: (definition at: #pools ifAbsent: #());
		isVariable: variable;
		isPointers: pointers.
	metasclass := MetaclassSpec new
		module: module;
		instanceClass: class;
		ivars: (definition at: #classInstVars ifAbsent: #()).
	class metaclass: metasclass.
	module addClass: class.
	reader methods do: [:m | self importMethod: m]! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:43:07'!
importClasses 

	(metadata at: #classes) do: [:name | self importClass: name]! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:43:21'!
importExtendedClass: aString 
	| filename stream reader definition class metaclass |
	filename := path \ aString withExtension: 'st'.
	filename exists ifFalse: [
		filename := path \ aString withFullExtension: 'extension.st'.
		filename exists
			ifFalse: [self error: 'Cannot find file for extended class ' , aString]].
	stream := filename asFile readStream.
	reader := TonelReader on: stream.
	[reader read] ensure: [stream close].
	definition := reader definition.
	class := ClassSpec new
		module: module;
		name: (definition at: #name) asString.
	metaclass := MetaclassSpec new module: module; instanceClass: class.
	class metaclass: metaclass.
	module addClassExtension: class.
	reader methods do: [:m | self importMethod: m]! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:43:36'!
importExtendedClasses 
	| classes filenames candidates |
	classes := metadata at: #classes.
	filenames := path asDirectory fileNamesWithExtension: 'st'.
	candidates := filenames collect: [:s | s asFilename fileNameOnly].
	candidates := candidates
		reject: [:n | n = 'package' or: [classes includes: n]].
	candidates do: [:n | self importExtendedClass: n]! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:44:16'!
importMetadata 
	| stream name |
	stream := (path \ 'package.st') asFile readStream.
	stream throughAll: 'Package '.
	self flag: #STONReader.
	metadata := (STONReader on: stream) parseMap.
	name := (metadata at: #name) replace: $- with: Character space.
	module name: name asString! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 3/30/2022 11:46:12'!
importMethod: aDictionary 
	| classname selector category class signature body source method |
	classname := aDictionary at: #class.
	selector := aDictionary at: #selector.
	category := aDictionary at: #category.
	class := module resolveClass: classname.
	class isNil ifTrue: [
		self
			error: 'Cannot find class for method ' , classname , ' >> #'
				, selector asString].
	signature := aDictionary at: #signature.
	body := aDictionary at: #body.
	source := signature dosToUnix unixToMac , String cr
		, body dosToUnix unixToMac.
	method := MethodSpec new
		module: module;
		classBinding: class;
		selector: selector;
		category: category;
		source: source.
	class addMethod: method! !

!TonelModuleImporter methodsFor: 'initialization' stamp: 'KenD 3/30/2022 11:38:30'!
initialize 
	
	super initialize.
	module := ModuleSpec new! !

!TonelModuleImporter class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 11:37:04'!
new 

	^ super new initialize! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:04:10'!
class: aString 

	scope class: aString! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:05:15'!
module: aString 

	scope module: aString! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:05:24'!
scope 

	^scope! !

!TransliterationRule methodsFor: 'actions' stamp: 'KenD 3/30/2022 12:03:14'!
applyTo: aModuleSpec 

	(self appliesTo: aModuleSpec) ifFalse: [^self].
	self basicApplyTo: aModuleSpec! !

!TransliterationRule methodsFor: 'initialization' stamp: 'KenD 3/30/2022 12:05:01'!
initialize 

	scope := TransliterationScope new! !

!TransliterationRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:03:45'!
basicApplyTo: aModuleSpec

	"Empty"! !

!TransliterationRule methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:02:55'!
appliesTo: aModuleSpec 

	^scope includesModule: aModuleSpec name! !

!TransliterationRule class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 12:02:04'!
new 

	^ super new initialize! !

!MethodFilterRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:17:41'!
block: aClosure 

	block := aClosure! !

!MethodFilterRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:17:54'!
basicApplyTo: aModuleSpec 

	aModuleSpec allClassesDo: [:c | | candidates |
		(scope includesClass: c name) ifTrue: [
			candidates := c methods, c metaclass methods select: block.
			candidates do: #removeFromClass]]! !

!MethodFilterRule class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 12:17:07'!
on: aClosure 

	^ self new block: aClosure! !

!ClassRemoveRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:14:08'!
name: aString 

	name := aString! !

!ClassRemoveRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:13:53'!
basicApplyTo: aModuleSpec 
	(aModuleSpec definesClassNamed: name) 
		ifTrue: [aModuleSpec removeClass: name].
	(aModuleSpec extendsClassNamed: name)
		ifTrue: [aModuleSpec removeExtendedClass: name].
	(aModuleSpec subclassifiesClassNamed: name)
		ifTrue: [aModuleSpec
			removeSubclassesOf: name;
			removeSubclassifiedClass: name].
	aModuleSpec dependencies do: [:dict | 
		dict do: [:refs | 
			refs copy do: [:ref | 
				(ref class == MethodSpec and: [ref referencesIdentifier: name]) 
				  ifTrue: [
					ref removeFromClass.
					refs remove: ref].
				ref class == ClassSpec ifTrue: [refs remove: ref]]]].
	aModuleSpec allMethods
		select: [:m | m referencesIdentifier: name]
		thenDo: [:m | m removeFromClass]! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:09:26'!
new

	^ new! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:09:35'!
new: aString 

	new := aString! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:10:04'!
original 

	^original! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:10:13'!
original: anObject 

	original := anObject! !

!ConversionRule class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 12:08:55'!
from: old to: new 

	^ self new original: old; new: new! !

!IdentifierRenameRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:15:50'!
basicApplyTo: aModuleSpec 
	| class |
	class := aModuleSpec resolveClass: original.
	class ifNotNil: [
		class subclasses do: [:s | s supername: new].
		class name: new].
	aModuleSpec allMethodsDo: [:m | self applyToMethod: m].
	aModuleSpec allClassesDo: [:c | | cvars |
		c instVarNames replace: original with: new.
		cvars := c classVariables.
		cvars at: original ifPresent: [:v | 
			cvars
				removeKey: original;
				at: new put: v].
		c sharedPools replace: original asSymbol with: new asSymbol]! !

!IdentifierRenameRule methodsFor: 'actions' stamp: 'KenD 3/30/2022 12:15:22'!
applyToMethod: aMethodSpec 
	| ast var code |
	ast := aMethodSpec ast ifNil: [^self].
	var := ast variableNamed: original.
	var isNil ifTrue: [^self].
	code := aMethodSpec sourceCode.
	var sourceIntervals
		reverseDo: [:s | code := code replace: original at: s start with: new].
	aMethodSpec source: code! !

!PackageRenameRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:43:48'!
basicApplyTo: aModuleSpec 
	| deps references |
	aModuleSpec name = original ifTrue: [aModuleSpec name: new].
	deps := aModuleSpec dependencies.
	references := deps at: original ifAbsent: [^self].
	deps
		removeKey: original;
		at: new put: references! !

!SelectorRenameRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:48:27'!
applyToMethod: aMethodSpec 
	| ast found |
	ast := aMethodSpec ast.
	found := aMethodSpec selector == original.
	found ifTrue: [
		aMethodSpec selector: new.
		ast selectorNode symbol: new].
	ast
		messagesDo: [:m | m selector symbol == original ifTrue: [found := true]].
	found ifFalse: [^self].
	ast replaceSelector: original with: new.
	aMethodSpec source: ast format! !

!SelectorRenameRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:48:41'!
basicApplyTo: aModuleSpec 

	aModuleSpec allMethodsDo: [:m | self applyToMethod: m]! !

!PackageRemoveRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:42:21'!
name: aString 

	name := aString! !

!PackageRemoveRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:42:08'!
basicApplyTo: aModuleSpec 
	| dict |
	dict := aModuleSpec dependencies at: name ifAbsent: [^self].
	dict do: [:refs | 
		refs do: [:ref | 
			ref class == MethodSpec ifTrue: [aModuleSpec removeMethod: ref].
			ref class == ClassSpec ifTrue: [aModuleSpec removeClass: ref]]].
	aModuleSpec dependencies removeKey: name! !

!PackageRemoveRule class methodsFor: 'instance creation' stamp: 'KenD 3/30/2022 12:42:51'!
name: aString 

	^ self new name: aString! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:47:04'!
classname 

	^ classname! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:47:13'!
classname: aString 

	classname := aString! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:47:26'!
ivar

	^ ivar! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 3/30/2022 12:47:35'!
ivar: aString 

	ivar := aString! !

!RemoveInstVarRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:46:48'!
basicApplyTo: aModuleSpec 
	| class all |
	class := aModuleSpec resolveClass: classname.
	class ifNil: [^self].
	all := aModuleSpec withAllSubclasses: class.
	all do: [:c | 
		c methods copy
			select: [:m | m usesInstanceVariableNamed: ivar]
			thenDo: [:m | aModuleSpec removeMethod: m]].
	class instVarNames remove: ivar ifAbsent: nil.! !

!RemoveInstVarRule methodsFor: 'private' stamp: 'KenD 3/30/2022 12:46:27'!
named: aString in: aClassname 

	^ self new ivar: aString; classname: aClassname! !

!TransliterationScope methodsFor: 'accessing' stamp: 'KenD 3/30/2022 11:59:33'!
class: aString 

	class := aString
! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 3/30/2022 11:59:49'!
includesClass: aString 

	^class isNil or: [class = aString]
! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:00:01'!
includesMethod: aSymbol 

	^method isNil or: [method = aSymbol]! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:00:15'!
includesModule: aString 

	^ module isNil or: [module = aString]! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:00:26'!
method: aSymbol 

	method := aSymbol! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 3/30/2022 12:00:35'!
module: aString 

	module := aString! !

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

!Compiler methodsFor: '*Bee-CodeSpecs-Porting' stamp: 'KenD 3/30/2022 12:29:16'!
parseMethod: aString 

	^ self parse: aString! !
