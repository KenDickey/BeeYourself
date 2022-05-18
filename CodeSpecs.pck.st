'From Cuis 6.0 [latest update: #5171] on 18 May 2022 at 2:01:21 pm'!
'Description Transliterator for translating between Smalltalk dialects.
Used in Bee/Powerlang porting.

Copyright (c) 2021 Quorum Software.
	See (MIT) license in LICENSES directory.'!
!provides: 'CodeSpecs' 1 6!
!requires: 'BeeCompatibility' 1 21 nil!
!requires: 'ExchangeFormat-Tonel-Lite' 1 38 nil!
SystemOrganization addCategory: 'CodeSpecs'!
SystemOrganization addCategory: 'CodeSpecs-Porting-Rules'!
SystemOrganization addCategory: 'CodeSpecs-Porting'!
SystemOrganization addCategory: 'CodeSpecs-Porting-Tests'!


!classDefinition: #ModuleTransliteratorTest category: 'CodeSpecs-Porting-Tests'!
TestCase subclass: #ModuleTransliteratorTest
	instanceVariableNames: 'module transliterator builder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Tests'!
!classDefinition: 'ModuleTransliteratorTest class' category: 'CodeSpecs-Porting-Tests'!
ModuleTransliteratorTest class
	instanceVariableNames: ''!

!classDefinition: #MethodSpec category: 'CodeSpecs'!
Object subclass: #MethodSpec
	instanceVariableNames: 'selector class source category module ast'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs'!
!classDefinition: 'MethodSpec class' category: 'CodeSpecs'!
MethodSpec class
	instanceVariableNames: ''!

!classDefinition: #ModuleSpec category: 'CodeSpecs'!
Object subclass: #ModuleSpec
	instanceVariableNames: 'name description classes extendedClasses subclassifiedClasses imports dependencies'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs'!
!classDefinition: 'ModuleSpec class' category: 'CodeSpecs'!
ModuleSpec class
	instanceVariableNames: ''!

!classDefinition: #SpeciesSpec category: 'CodeSpecs'!
Object subclass: #SpeciesSpec
	instanceVariableNames: 'instanceVariables methods module format'
	classVariableNames: 'Format'
	poolDictionaries: ''
	category: 'CodeSpecs'!
!classDefinition: 'SpeciesSpec class' category: 'CodeSpecs'!
SpeciesSpec class
	instanceVariableNames: 'Format'!

!classDefinition: #ClassSpec category: 'CodeSpecs'!
SpeciesSpec subclass: #ClassSpec
	instanceVariableNames: 'name supername classVariables sharedPools metaclass variable pointers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs'!
!classDefinition: 'ClassSpec class' category: 'CodeSpecs'!
ClassSpec class
	instanceVariableNames: ''!

!classDefinition: #MetaclassSpec category: 'CodeSpecs'!
SpeciesSpec subclass: #MetaclassSpec
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs'!
!classDefinition: 'MetaclassSpec class' category: 'CodeSpecs'!
MetaclassSpec class
	instanceVariableNames: ''!

!classDefinition: #TransliterationRule category: 'CodeSpecs-Porting-Rules'!
Object subclass: #TransliterationRule
	instanceVariableNames: 'scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'TransliterationRule class' category: 'CodeSpecs-Porting-Rules'!
TransliterationRule class
	instanceVariableNames: ''!

!classDefinition: #MethodFilterRule category: 'CodeSpecs-Porting-Rules'!
TransliterationRule subclass: #MethodFilterRule
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'MethodFilterRule class' category: 'CodeSpecs-Porting-Rules'!
MethodFilterRule class
	instanceVariableNames: ''!

!classDefinition: #RefactoringRule category: 'CodeSpecs-Porting-Rules'!
TransliterationRule subclass: #RefactoringRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'RefactoringRule class' category: 'CodeSpecs-Porting-Rules'!
RefactoringRule class
	instanceVariableNames: ''!

!classDefinition: #ClassRemoveRule category: 'CodeSpecs-Porting-Rules'!
RefactoringRule subclass: #ClassRemoveRule
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'ClassRemoveRule class' category: 'CodeSpecs-Porting-Rules'!
ClassRemoveRule class
	instanceVariableNames: ''!

!classDefinition: #ConversionRule category: 'CodeSpecs-Porting-Rules'!
RefactoringRule subclass: #ConversionRule
	instanceVariableNames: 'original new'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'ConversionRule class' category: 'CodeSpecs-Porting-Rules'!
ConversionRule class
	instanceVariableNames: ''!

!classDefinition: #IdentifierRenameRule category: 'CodeSpecs-Porting-Rules'!
ConversionRule subclass: #IdentifierRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'IdentifierRenameRule class' category: 'CodeSpecs-Porting-Rules'!
IdentifierRenameRule class
	instanceVariableNames: ''!

!classDefinition: #PackageRenameRule category: 'CodeSpecs-Porting-Rules'!
ConversionRule subclass: #PackageRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'PackageRenameRule class' category: 'CodeSpecs-Porting-Rules'!
PackageRenameRule class
	instanceVariableNames: ''!

!classDefinition: #SelectorRenameRule category: 'CodeSpecs-Porting-Rules'!
ConversionRule subclass: #SelectorRenameRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'SelectorRenameRule class' category: 'CodeSpecs-Porting-Rules'!
SelectorRenameRule class
	instanceVariableNames: ''!

!classDefinition: #PackageRemoveRule category: 'CodeSpecs-Porting-Rules'!
RefactoringRule subclass: #PackageRemoveRule
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'PackageRemoveRule class' category: 'CodeSpecs-Porting-Rules'!
PackageRemoveRule class
	instanceVariableNames: ''!

!classDefinition: #RemoveInstVarRule category: 'CodeSpecs-Porting-Rules'!
RefactoringRule subclass: #RemoveInstVarRule
	instanceVariableNames: 'ivar classname'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting-Rules'!
!classDefinition: 'RemoveInstVarRule class' category: 'CodeSpecs-Porting-Rules'!
RemoveInstVarRule class
	instanceVariableNames: ''!

!classDefinition: #ImageModuleBuilder category: 'CodeSpecs-Porting'!
Object subclass: #ImageModuleBuilder
	instanceVariableNames: 'module'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'ImageModuleBuilder class' category: 'CodeSpecs-Porting'!
ImageModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #BeeModuleBuilder category: 'CodeSpecs-Porting'!
ImageModuleBuilder subclass: #BeeModuleBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'BeeModuleBuilder class' category: 'CodeSpecs-Porting'!
BeeModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #PharoModuleBuilder category: 'CodeSpecs-Porting'!
ImageModuleBuilder subclass: #PharoModuleBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'PharoModuleBuilder class' category: 'CodeSpecs-Porting'!
PharoModuleBuilder class
	instanceVariableNames: ''!

!classDefinition: #ModuleTransliterator category: 'CodeSpecs-Porting'!
Object subclass: #ModuleTransliterator
	instanceVariableNames: 'module rules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'ModuleTransliterator class' category: 'CodeSpecs-Porting'!
ModuleTransliterator class
	instanceVariableNames: ''!

!classDefinition: #RejectMethodRule category: 'CodeSpecs-Porting'!
Object subclass: #RejectMethodRule
	instanceVariableNames: 'scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'RejectMethodRule class' category: 'CodeSpecs-Porting'!
RejectMethodRule class
	instanceVariableNames: ''!

!classDefinition: #TonelModuleExporter category: 'CodeSpecs-Porting'!
Object subclass: #TonelModuleExporter
	instanceVariableNames: 'module path compatible'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'TonelModuleExporter class' category: 'CodeSpecs-Porting'!
TonelModuleExporter class
	instanceVariableNames: ''!

!classDefinition: #TonelModuleImporter category: 'CodeSpecs-Porting'!
Object subclass: #TonelModuleImporter
	instanceVariableNames: 'module path metadata'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'TonelModuleImporter class' category: 'CodeSpecs-Porting'!
TonelModuleImporter class
	instanceVariableNames: ''!

!classDefinition: #TransliterationScope category: 'CodeSpecs-Porting'!
Object subclass: #TransliterationScope
	instanceVariableNames: 'module class method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodeSpecs-Porting'!
!classDefinition: 'TransliterationScope class' category: 'CodeSpecs-Porting'!
TransliterationScope class
	instanceVariableNames: ''!


!ModuleTransliteratorTest commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!MethodSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ModuleSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!SpeciesSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ClassSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!MetaclassSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!TransliterationRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!MethodFilterRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!RefactoringRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ClassRemoveRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ConversionRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!IdentifierRenameRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!PackageRenameRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!SelectorRenameRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!PackageRemoveRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!RemoveInstVarRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!BeeModuleBuilder commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ModuleTransliterator commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!RejectMethodRule commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!TonelModuleExporter commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!TonelModuleImporter commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!TransliterationScope commentStamp: '<historical>' prior: 0!
Copyright (c) 2021 Quorum Software.
	See (MIT) license in root directory.
!

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
builderClass
	^PharoModuleBuilder
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
setUp
	module := ModuleSpec new name: 'TestModule'.
	transliterator := ModuleTransliterator new module: module.
	builder := self builderClass new module: module
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
test001doNothing
	builder addMethod: ModuleTransliteratorTest >> #test001doNothing.
	transliterator transliterate.
	self
		assert: module name equals: 'TestModule';
		assert: module classes size equals: 0;
		assert: module extendedClasses size equals: 1;
		assert: module extendedClasses first name equals: 'ModuleTransliteratorTest'
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
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
		assert: class methods first selector equals: #test001doNothing
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
test010removeClass
	| extensions test |
	builder
		addMethod: self class >> #test001doNothing;
		addMethod: self class >> #test010removeClass;
		addMethodCompiling: '& anInteger 	^self bitAnd: anInteger' in: LargeInteger;
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
		assert: test methods first selector equals: #test001doNothing
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
test020removeInstVar
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
		assert: point methods first selector equals: #y
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
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
		assert: (source includesString: 'z')
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
test031renameClassVar
	| spec extensions source large method |
	spec := builder addClassExtension: LargeInteger.
	spec cvarNames: #('Base' 'DigitLength').
	builder
		addMethodCompiling: 'digitAt: index put: integer
	| valid |
	valid := integer bitAnd: Base - 1.
	self uShortAtOffset: index - 1 * DigitLength put: valid' in: LargeInteger.
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
		assert: (source includesString: 'Foo')
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
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
		assert: (source includesString: 'Foo')
! !

!ModuleTransliteratorTest methodsFor: 'private' stamp: 'KenD 5/1/2022 12:58:38'!
test033renameSharedPool
	| spec |
	spec := builder addClassDefinition: Character.
	spec sharedPools add: #CharacterConstants.
	transliterator
		renameIdentifier: 'CharacterConstants' to: 'Characters';
		transliterate.
	self
		assert: module classes first sharedPools asArray sort equals: #(#'Characters')
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
canBeCompiled
	^self compiler notNil
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
canBeParsed
	^self cannonicalAst notNil
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
equals: aMethodSpec
	^self canBeCompiled
		and: [aMethodSpec canBeCompiled]
		and: [self isFrameless not]
		and: [self isEquivalentTo: aMethodSpec]
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
isEquivalentTo: aMethodSpec
	| m1 m2 |
	selector == aMethodSpec selector ifFalse: [^false].
	class == aMethodSpec classBinding ifFalse: [^false].
	m1 := self asCompiledMethod.
	m1 isNil ifTrue: [^false].
	m2 := aMethodSpec asCompiledMethod.
	m2 isNil ifTrue: [^false].
	^m1 equals: m2
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
isExtension
	^class isExtension
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
isFrameless
	^self halt asCompiledMethod isFrameless
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
referencesIdentifier: aString
	^self referencedIdentifiers
		anySatisfy: [:identifier | identifier name = aString]
! !

!MethodSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:18:05'!
usesInstanceVariableNamed: aString
	^(self ast variableNamed: aString) notNil
! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 5/1/2022 12:18:05'!
asCompiledMethod
	self canBeCompiled ifFalse: [^nil].
	^self
		propertyAt: #compiledMethod
		ifAbsentPut: [self compiler compileMethod: source]
! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 5/1/2022 12:18:05'!
ast
	self canBeCompiled ifFalse: [^nil].
	^ast ifNil: 
		[ast := [self compiler parse: source] on: SUndeclaredIdentifierError do: [ :e | e resume ]]
! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 5/1/2022 12:18:05'!
cannonicalAst
	^self halt propertyAt: #cannonicalAst ifAbsentPut: [self ast]
! !

!MethodSpec methodsFor: 'converting' stamp: 'KenD 5/1/2022 12:18:05'!
referencedIdentifiers
	^self ast ifNil: [#()] ifNotNil: [:node | node identifiers]
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
category
	^self isExtension
		ifTrue: ['*' , (module name readStream upToLast: $-)]
		ifFalse: [category]
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
category: aString
	category := aString
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
classBinding
	^class
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
classBinding: aSpeciesSpec
	class := aSpeciesSpec
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/5/2022 13:43:14'!
compiler 

	^ Smalltalk at: #SSmalltalkCompiler ifAbsent: [ nil ]! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
module
	^module
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
module: aModuleSpec
	module := aModuleSpec
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
removeFromClass
	class removeMethod: self
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
selector
	^selector
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
selector: aSymbol
	selector := aSymbol
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
source
	^source
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
source: aString
	source := aString.
	ast := nil
! !

!MethodSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:18:05'!
sourceCode
	^source
! !

!MethodSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:18:05'!
bytecodes
	^self canBeCompiled ifTrue: [self asCompiledMethod bytecodes]
! !

!MethodSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:18:05'!
classname
	^class name
! !

!MethodSpec methodsFor: 'comparing' stamp: 'KenD 5/1/2022 12:18:05'!
= aMethodSpec
	^aMethodSpec class = self class
		and: [aMethodSpec selector == selector]
		and: [aMethodSpec classBinding = class]
! !

!MethodSpec methodsFor: 'comparing' stamp: 'KenD 5/1/2022 12:18:05'!
hash
	^class name hash hashWith: selector
! !

!MethodSpec methodsFor: 'printing' stamp: 'KenD 5/1/2022 12:18:05'!
printOn: aStream
	aStream nextPutAll: class name asString , '>>#' , selector asString
! !

!MethodSpec methodsFor: 'services' stamp: 'KenD 5/1/2022 12:18:05'!
resolveClass
	^module resolveClass: class name
! !

!ModuleSpec methodsFor: 'services' stamp: 'KenD 5/1/2022 12:16:33'!
withAllSubclasses: aClassSpec
	| all |
	all := self allClasses.
	aClassSpec isMetaclass ifTrue: [all := all collect: #metaclass].
	^all select: [:c | c withAllSuperclasses includes: aClassSpec]
! !

!ModuleSpec methodsFor: '*CodeSpecs-Porting' stamp: 'KenD 5/1/2022 13:17:47'!
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
	^changes
! !

!ModuleSpec methodsFor: '*CodeSpecs-Porting' stamp: 'KenD 5/1/2022 13:17:47'!
exportPseudoTonel: path
	TonelModuleExporter new path: path; module: self; exportPseudoTonel
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
addClass: aClassSpec
	classes add: aClassSpec
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
addClassExtension: aClassSpec
	extendedClasses add: aClassSpec
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
addClasses: aCollection
	aCollection do: [:c | self addClass: c]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
addDependencies: aCollection
	aCollection keysAndValuesDo: [:dep :objects | 
		dependencies
			at: dep
			put: objects
			ifPresent: [:current | (current addAll: objects) withoutDuplicates]]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/18/2022 13:53:46'!
addSubclassifiedClass: aClassSpec
	subclassifiedClasses ifAbsentAdd: aClassSpec
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
associationAt: aSymbol ifAbsent: aBlock
	| string |
	string := aSymbol asString.
	classes do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	extendedClasses do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	subclassifiedClasses do: [:c | c name = string ifTrue: [^aSymbol -> c]].
	^imports associationAt: aSymbol ifAbsent: aBlock
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
cleanDependencies
	| needed |
	needed := OrderedCollection new.
	self methodReferences keys do: [:identifier | needed add: identifier name].
	self hierarchyReferences keys
		do: [:identifier | needed add: identifier name].
	extendedClasses do: [:c | needed add: c name].
	dependencies copy keysAndValuesDo: [:module :identifiers | 
		(identifiers keys anySatisfy: [:identifier | needed includes: identifier])
			ifFalse: [dependencies removeKey: module]]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
hierarchyReferences
	| references |
	references := Dictionary new.
	self allClassesDo: [:c | | list |
		c superclass ifNotNil: [
			list := references at: c superclass ifAbsentPut: [OrderedCollection new].
			list add: c]].
	^references
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
methodReferences
	| references |
	references := Dictionary new.
	self allMethodsDo: [:m | 
		m referencedIdentifiers reject: #isLocal thenDo: [:identifier | | list |
			list := references at: identifier ifAbsentPut: [OrderedCollection new].
			list add: m]].
	^references
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
printOn: aStream
	aStream
		nextPut: $<;
		print: name;
		nextPutAll: '> module'
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeCategory: aSymbol inClass: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	class removeCategory: aSymbol
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeClass: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	classes remove: class ifAbsent: nil
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeEmptyExtensions
	extendedClasses copy
		reject: #hasMethods
		thenDo: [:c | extendedClasses remove: c]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeExtendedClass: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	extendedClasses remove: class ifAbsent: nil
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeMethod: aMethodSpec
	self ASSERT: (self includesClass: aMethodSpec classBinding).
	aMethodSpec classBinding removeMethod: aMethodSpec
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeSelectors: aCollection
	self allClassesDo: [:c | 
		c removeSelectors: aCollection.
		c metaclass removeSelectors: aCollection]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeSelectors: aCollection inClass: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	class removeSelectors: aCollection
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeSelectors: aCollection inScope: aClassSpec
	| class all |
	class := self resolveClass: aClassSpec.
	all := self withAllSubclasses: class.
	all do: [:c | c removeSelectors: aCollection]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeSubclassesOf: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	class allSubclasses do: [:c | self removeClass: c; removeExtendedClass: c]
! !

!ModuleSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:16:33'!
removeSubclassifiedClass: aClassSpec
	| class |
	class := self resolveClass: aClassSpec.
	subclassifiedClasses remove: class ifAbsent: nil
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
at: aSymbol
	^self at: aSymbol ifAbsent: nil
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
at: aSymbol ifAbsent: aBlock
	| string |
	string := aSymbol asString.
	classes do: [:c | c name = string ifTrue: [^c]].
	extendedClasses do: [:c | c name = string ifTrue: [^c]].
	subclassifiedClasses do: [:c | c name = string ifTrue: [^c]].
	^imports at: aSymbol ifAbsent: aBlock
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
classes
	^classes
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
dependencies
	^dependencies
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
dependencies: aDictionary
	dependencies := aDictionary
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
description
	^description
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
description: aString
	description := aString
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
extendedClasses
	^extendedClasses
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
name
	^name
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
name: aString
	name := aString
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
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
	^referenced
! !

!ModuleSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:16:33'!
requiredImports
	| required |
	required := Dictionary new.
	self referencedGlobals
		keysAndValuesDo: [:global :dependents | (self definesGlobal: global)
			ifFalse: [required at: global put: dependents]].
	^required
! !

!ModuleSpec methodsFor: 'private' stamp: 'KenD 5/1/2022 12:16:33'!
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
	^sorted
! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:16:33'!
addImport: anAssociation
	imports add: anAssociation
! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:16:33'!
addImports: aCollection
	aCollection do: [:token | self addImport: token asSymbol -> nil]
! !

!ModuleSpec methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:16:33'!
initialize
	classes := OrderedCollection new.
	extendedClasses := OrderedCollection new.
	subclassifiedClasses := OrderedCollection new.
	imports := Dictionary new.
	dependencies := Dictionary new
! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 5/1/2022 12:16:33'!
basicResolveClass: aString
	classes do: [:c | c name asString = aString ifTrue: [^c]].
	extendedClasses do: [:c | c name asString = aString ifTrue: [^c]].
	subclassifiedClasses do: [:c | c name asString = aString ifTrue: [^c]].
	^nil
! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 5/1/2022 12:16:33'!
definesGlobal: aString
	^classes anySatisfy: [:c | c name = aString]
! !

!ModuleSpec methodsFor: 'resolving' stamp: 'KenD 5/1/2022 12:16:33'!
resolveClass: class
	| moniker metaclass found |
	moniker := class isString ifTrue: [class] ifFalse: [class name].
	metaclass := moniker endsWith: ' class'.
	metaclass ifTrue: [moniker := moniker trimTail: ' class'].
	found := self basicResolveClass: moniker.
	^found ifNotNil: [metaclass ifTrue: [found metaclass] ifFalse: [found]]
! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:16:33'!
definesClassNamed: aString
	^classes anySatisfy: [:c | c name = aString]
! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:16:33'!
extendsClassNamed: aString
	^extendedClasses anySatisfy: [:c | c name = aString]
! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:16:33'!
includesClass: aClassSpec
	^(self resolveClass: aClassSpec) notNil
! !

!ModuleSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:16:33'!
subclassifiesClassNamed: aString
	^subclassifiedClasses anySatisfy: [:c | c name = aString]
! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:16:33'!
allClassesDo: aBlock
	classes do: aBlock.
	extendedClasses do: aBlock
! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:16:33'!
allMethods
	| methods |
	methods := OrderedCollection new.
	self allMethodsDo: [:m | methods add: m].
	^methods
! !

!ModuleSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:16:33'!
allMethodsDo: aBlock
	self allClassesDo: [:c | 
		c metaclass methods do: aBlock.
		c methods do: aBlock]
! !

!ModuleSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:16:33'!
allClasses
	^classes , extendedClasses
! !

!ModuleSpec class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:16:33'!
new
	^super new initialize
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
addMethod: aMethodSpec
	^methods add: aMethodSpec
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
addMethods: aCollection
	aCollection do: [:m | self addMethod: m]
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
removeCategory: aSymbol
	methods removeAllSuchThat: [:m | m category == aSymbol]
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
removeMethod: aMethodSpec
	methods remove: aMethodSpec ifAbsent: nil
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
removeSelector: aSymbol
	methods removeAllSuchThat: [:m | m selector == aSymbol]
! !

!SpeciesSpec methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 12:13:10'!
removeSelectors: aCollection
	methods removeAllSuchThat: [:m | aCollection includes: m selector]
! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:13:10'!
allInstVarNames
	^(self withAllSuperclasses reversed gather: [:c | c instVarNames]) asArray
! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:13:10'!
allSharedPools
	| pools |
	pools := Set new.
	self withAllSuperclasses do: [:c | pools addAll: c sharedPools].
	^pools
! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:13:10'!
allSuperclasses
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:s | superclasses add: s].
	^superclasses
! !

!SpeciesSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:13:10'!
withAllSuperclasses
	^OrderedCollection with: self withAll: self allSuperclasses
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
allSubclasses
	| all |
	all := OrderedCollection new.
	self allSubclassesDo: [:cls | all add: cls].
	^all
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
allSubclassesDo: aBlock
	self subclasses do: [:class | 
		aBlock value: class.
		class allSubclassesDo: aBlock]
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
instVarNames
	^instanceVariables
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
instVarNames: aCollection
	instanceVariables := aCollection asOrderedCollection
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
ivars: aCollection
	instanceVariables := aCollection asOrderedCollection
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
methods
	^methods
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
module: aModuleSpec
	module := aModuleSpec
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
selectors
	^methods collect: #selector
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
subclasses
	^module allClasses select: [:c | c supername = self name]
! !

!SpeciesSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:13:10'!
withAllSubclasses
	^OrderedCollection with: self withAll: self allSubclasses
! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:13:10'!
hasMethods
	^methods notEmpty
! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:13:10'!
isExtension
	^module extendedClasses includes: self instanceClass
! !

!SpeciesSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:13:10'!
isMetaclass
	^false
! !

!SpeciesSpec methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:13:10'!
initialize
	super initialize.
	methods := OrderedCollection new.
	instanceVariables := #().
	format := 0
! !

!SpeciesSpec methodsFor: 'printing' stamp: 'KenD 5/1/2022 12:13:10'!
printOn: aStream
	aStream nextPutAll: '<' , self name , '>'
! !

!SpeciesSpec class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:13:10'!
arrayedFlag
	^2
! !

!SpeciesSpec class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:13:10'!
bytesFlag
	^1
! !

!SpeciesSpec class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:13:10'!
new
	^super new initialize
! !

!ClassSpec methodsFor: 'services' stamp: 'KenD 5/1/2022 12:15:24'!
beArrayed
	format := format | self class arrayedFlag
! !

!ClassSpec methodsFor: 'services' stamp: 'KenD 5/1/2022 12:15:24'!
beBytes
	format := format | self class bytesFlag
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
classVariables
	^classVariables
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
configureCompiler: aCompiler
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
cvarNames: aCollection
	aCollection do: [:cvar | classVariables at: cvar put: nil]
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
cvars: aDictionary
	classVariables := aDictionary
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
instanceClass
	^self
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
isPointers
	^pointers
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
isPointers: aBoolean
	pointers := aBoolean
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
isVariable
	^variable
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
isVariable: aBoolean
	variable := aBoolean
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
metaclass
	^metaclass
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
metaclass: aMetaclassSpec
	metaclass := aMetaclassSpec
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
name
	^name
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
name: aString
	name := aString
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
sharedPools
	^sharedPools
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
sharedPools: aCollection
	sharedPools addAll: aCollection
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
superclass
	supername ifNil: [^nil].
	^module resolveClass: supername
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
supername
	^supername
! !

!ClassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:24'!
supername: aString
	supername := aString
! !

!ClassSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:15:24'!
hasMethods
	^super hasMethods or: [metaclass hasMethods]
! !

!ClassSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:15:24'!
allSharedPoolsUsing: namespace
	^self allSharedPools
! !

!ClassSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:15:24'!
allSuperclassesDo: aBlock
	| s |
	supername isNil ifTrue: [^self].
	s := self superclass.
	s isNil ifTrue: [^self].
	aBlock value: s.
	s allSuperclassesDo: aBlock
! !

!ClassSpec methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:15:24'!
initialize
	super initialize.
	classVariables := OrderedDictionary new.
	sharedPools := OrderedCollection new
! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:24'!
allMethods
	^methods & metaclass methods
! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:24'!
classVarNames
	^classVariables keys
! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:24'!
localPools
	^classVariables select: [:c | c isKindOf: PoolDictionary]
! !

!ClassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:24'!
metaMethods
	^metaclass methods
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
classVarNames
	^class classVarNames
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
metaMethods
	^#()
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
name
	^class name , ' class'
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
sharedPools
	^class sharedPools
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
superclass
	^class superclass ifNotNil: [:c | c metaclass]
! !

!MetaclassSpec methodsFor: 'inquiries' stamp: 'KenD 5/1/2022 12:15:56'!
supername
	^self superclass name
! !

!MetaclassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:56'!
instanceClass
	^class
! !

!MetaclassSpec methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:15:56'!
instanceClass: aClassSpec
	class := aClassSpec
! !

!MetaclassSpec methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:15:56'!
isMetaclass
	^true
! !

!MetaclassSpec methodsFor: 'enumerating' stamp: 'KenD 5/1/2022 12:15:56'!
allSuperclassesDo: aBlock
	| s c |
	class supername isNil ifTrue: [
		c := module resolveClass: 'Class'.
		c ifNil: [c := Class].
		c allSuperclassesDo: aBlock].
	s := self superclass.
	s isNil ifTrue: [^self].
	aBlock value: s.
	s allSuperclassesDo: aBlock
! !

!TransliterationRule methodsFor: 'private' stamp: 'KenD 5/1/2022 12:56:07'!
basicApplyTo: aModuleSpec
! !

!TransliterationRule methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:56:07'!
initialize
	scope := TransliterationScope new
! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:07'!
class: aString
	scope class: aString
! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:07'!
module: aString
	scope module: aString
! !

!TransliterationRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:07'!
scope
	^scope
! !

!TransliterationRule methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:56:07'!
appliesTo: aModuleSpec
	^scope includesModule: aModuleSpec name
! !

!TransliterationRule methodsFor: 'actions' stamp: 'KenD 5/1/2022 12:56:07'!
applyTo: aModuleSpec
	(self appliesTo: aModuleSpec) ifFalse: [^self].
	self basicApplyTo: aModuleSpec
! !

!TransliterationRule class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:56:07'!
new
	^super new initialize
! !

!MethodFilterRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:37:45'!
basicApplyTo: aModuleSpec
	aModuleSpec allClassesDo: [:c | | candidates |
		(scope includesClass: c name) ifTrue: [
			candidates := c methods, c metaclass methods select: block.
			candidates do: #removeFromClass]]
! !

!MethodFilterRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:37:45'!
block: aClosure
	block := aClosure
! !

!MethodFilterRule class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 15:37:45'!
on: aClosure
	^self new block: aClosure
! !

!ClassRemoveRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:32:46'!
basicApplyTo: aModuleSpec
	(aModuleSpec definesClassNamed: name) ifTrue: [aModuleSpec
		removeClass: name].
	(aModuleSpec extendsClassNamed: name)
		ifTrue: [aModuleSpec removeExtendedClass: name].
	(aModuleSpec subclassifiesClassNamed: name)
		ifTrue: [aModuleSpec
			removeSubclassesOf: name;
			removeSubclassifiedClass: name].
	aModuleSpec dependencies do: [:dict | 
		dict do: [:refs | 
			refs copy do: [:ref | 
				(ref class == MethodSpec and: [ref referencesIdentifier: name]) ifTrue: [
					ref removeFromClass.
					refs remove: ref].
				ref class == ClassSpec ifTrue: [refs remove: ref]]]].
	aModuleSpec allMethods
		select: [:m | m referencesIdentifier: name]
		thenDo: [:m | m removeFromClass]
! !

!ClassRemoveRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:32:46'!
name: aString
	name := aString
! !

!ClassRemoveRule class methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:32:46'!
name: aString
	^self new name: aString
! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:33:00'!
new
	^new
! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:33:00'!
new: aString
	new := aString
! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:33:00'!
original
	^original
! !

!ConversionRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:33:00'!
original: anObject
	original := anObject
! !

!ConversionRule class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 15:33:00'!
from: old to: new
	^self new original: old; new: new
! !

!IdentifierRenameRule methodsFor: 'actions' stamp: 'KenD 5/1/2022 15:33:20'!
applyToMethod: aMethodSpec
	| ast var code |
	ast := aMethodSpec ast ifNil: [^self].
	var := ast variableNamed: original.
	var isNil ifTrue: [^self].
	code := aMethodSpec sourceCode.
	var sourceIntervals
		reverseDo: [:s | code := code replace: original at: s start with: new].
	aMethodSpec source: code
! !

!IdentifierRenameRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:33:20'!
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
		c sharedPools replace: original asSymbol with: new asSymbol]
! !

!PackageRenameRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:34:46'!
basicApplyTo: aModuleSpec
	| deps references |
	aModuleSpec name = original ifTrue: [aModuleSpec name: new].
	deps := aModuleSpec dependencies.
	references := deps at: original ifAbsent: [^self].
	deps
		removeKey: original;
		at: new put: references
! !

!SelectorRenameRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:40:25'!
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
	aMethodSpec source: ast format
! !

!SelectorRenameRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:40:25'!
basicApplyTo: aModuleSpec
	aModuleSpec allMethodsDo: [:m | self applyToMethod: m]
! !

!PackageRemoveRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:38:36'!
basicApplyTo: aModuleSpec
	| dict |
	dict := aModuleSpec dependencies at: name ifAbsent: [^self].
	dict do: [:refs | 
		refs do: [:ref | 
			ref class == MethodSpec ifTrue: [aModuleSpec removeMethod: ref].
			ref class == ClassSpec ifTrue: [aModuleSpec removeClass: ref]]].
	aModuleSpec dependencies removeKey: name
! !

!PackageRemoveRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:38:36'!
name: aString
	name := aString
! !

!PackageRemoveRule class methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:38:36'!
name: aString
	^self new name: aString
! !

!RemoveInstVarRule methodsFor: 'private' stamp: 'KenD 5/1/2022 15:40:04'!
basicApplyTo: aModuleSpec
	| class all |
	class := aModuleSpec resolveClass: classname.
	class ifNil: [^self].
	all := aModuleSpec withAllSubclasses: class.
	all do: [:c | 
		c methods copy
			select: [:m | m usesInstanceVariableNamed: ivar]
			thenDo: [:m | aModuleSpec removeMethod: m]].
	class instVarNames remove: ivar ifAbsent: nil.
! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:40:04'!
classname
	^classname
! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:40:04'!
classname: aString
	classname := aString
! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:40:04'!
ivar
	^ivar
! !

!RemoveInstVarRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 15:40:04'!
ivar: aString
	ivar := aString
! !

!RemoveInstVarRule class methodsFor: 'private' stamp: 'KenD 5/1/2022 15:40:04'!
named: aString in: classname
	^self new ivar: aString; classname: classname
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addClass: aClass
	| class |
	class := self addClassDefinition: aClass.
	self addAllMethodsFrom: aClass into: class
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addClassDefinition: aClass
	| spec |
	spec := self specFromClass: aClass.
	module addClass: spec.
	self importSharedPoolsOf: aClass.
	^spec
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addClassExtension: aClass
	| spec |
	spec := self specFromClass: aClass.
	module addClassExtension: spec.
	self importSharedPoolsOf: aClass.
	^spec
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addClasses: aCollection
	aCollection do: [:c | self addClass: c]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addMethod: aCompiledMethod
	^self subclassResponsibility
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addMethodCompiling: aString in: aSpecies
	| class spec |
	class := self ensureClass: aSpecies.
	spec := self specFromSource: aString species: class.
	class addMethod: spec

! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addMethods: aCollection into: aSpeciesSpec
	| specs |
	specs := aCollection
		collect: [:m | self specFromMethod: m species: aSpeciesSpec].
	aSpeciesSpec addMethods: specs
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addSelectors: aCollection from: aSpecies
	| class methods |
	class := self ensureClass: aSpecies instanceClass.
	aSpecies isMetaclass ifTrue: [class := class metaclass].
	methods := aCollection collect: [:selector | aSpecies >> selector].
	self addMethods: methods into: class
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
addSubclassifiedClasses
	module allClassesDo: [:c | self addSuperclassesOf: c]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
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
			next := spec supername]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
ensureClass: aClass
	| class |
	class := module resolveClass: aClass name.
	^class ifNil: [self addClassExtension: aClass] ifNotNil: [class]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
importSharedPoolsOf: aClass
	aClass sharedPools do: [:symbol | 
		module at: symbol ifAbsent: [| pool |
			pool := Smalltalk at: symbol.
			module addImport: symbol -> pool copy]]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
isIncomplete: aClassSpec
	"
	a class that has been added inderectly and whose shape is not defined
	"
	^aClassSpec name !!= 'ProtoObject' and: [aClassSpec superclass = nil]
! !

!ImageModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:12'!
removeClass: aClassSpec
	module removeClass: aClassSpec
! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 5/1/2022 13:18:12'!
compilerFor: aSpeciesSpec
		^self subclassResponsibility
! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 5/1/2022 13:18:12'!
specFromMetaclass: aMetaclass class: aClassSpec
	^MetaclassSpec new
		ivars: aMetaclass instVarNames asOrderedCollection;
		module: module;
		instanceClass: aClassSpec
! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 5/1/2022 13:18:12'!
specFromMethod: aCompiledMethod species: aSpeciesSpec
	^MethodSpec new
		module: module;
		selector: aCompiledMethod selector;
		classBinding: aSpeciesSpec;
		source: aCompiledMethod sourceCode;
		category: aCompiledMethod category
! !

!ImageModuleBuilder methodsFor: 'private' stamp: 'KenD 5/1/2022 13:18:12'!
specFromSource: aString species: aSpeciesSpec
	| compiler method |
	compiler := self compilerFor: aSpeciesSpec.
	method := compiler compile: aString.
	^MethodSpec new
		module: module;
		selector: method selector;
		classBinding: aSpeciesSpec;
		source: aString;
		category: 'unclassified'
! !

!ImageModuleBuilder methodsFor: 'accessing' stamp: 'KenD 5/1/2022 13:18:12'!
module
	^module
! !

!ImageModuleBuilder methodsFor: 'accessing' stamp: 'KenD 5/1/2022 13:18:12'!
name: aString
	module name: aString
! !

!ImageModuleBuilder methodsFor: 'initialization' stamp: 'KenD 5/1/2022 13:18:12'!
initialize
	module := ModuleSpec new
! !

!ImageModuleBuilder methodsFor: 'initialization' stamp: 'KenD 5/1/2022 13:18:12'!
module: aModuleSpec
	module := aModuleSpec
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
addAllMethodsFrom: aClass into: aClassSpec
	self addAllMethodsFrom: aClass project: aClass project into: aClassSpec
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
addAllMethodsFrom: aClass project: aBeeProject into: aClassSpec
	| instance meta |
	instance := aBeeProject methodsOf: aClass.
	meta := aBeeProject methodsOf: aClass class.
	self
		addMethods: instance into: aClassSpec;
		addMethods: meta into: aClassSpec metaclass
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
addMethod: aCompiledMethod
	| class spec |
	class := self ensureClass: aCompiledMethod classBinding instanceClass.
	aCompiledMethod classBinding isMetaclass ifTrue: [class := class metaclass].
	spec := self specFromMethod: aCompiledMethod species: class.
	class addMethod: spec
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
addMethods: aCollection
	(aCollection groupBy: #classBinding) keysAndValuesDo: [:class :methods | | spec |
		spec := self ensureClass: class instanceClass.
		class isMetaclass ifTrue: [spec := spec metaclass].
		self addMethods: methods into: spec]
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
addProject: aBeeProject
	self addClasses: aBeeProject classes; addMethods: aBeeProject extensions
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
loadExtensionFromImage: aClassSpec
	| class supername |
	class := Smalltalk at: aClassSpec name asSymbol ifAbsent: [^self].
	supername := class superclass ifNotNil: [:s | s name].
	aClassSpec
		name: class name;
		supername: supername;
		ivars: class instVarNames asOrderedCollection;
		cvars: class classVariables;
		sharedPools: class sharedPools.
	aClassSpec metaclass ivars: class class instVarNames asOrderedCollection
! !

!BeeModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:18:48'!
loadExtensionsFromImage
	module extendedClasses copy do: [:spec | self loadExtensionFromImage: spec]
! !

!BeeModuleBuilder methodsFor: 'private' stamp: 'KenD 5/1/2022 13:18:48'!
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
	^class
! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
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
			deps := extensions at: class project name ifAbsentPut: [Dictionary new].
			methods := deps at: spec name ifAbsentPut: [OrderedCollection new].
			methods addAll: spec methods]].
	module addDependencies: extensions
! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
ignoredProjects
	^self class ignoredProjects
! !

!BeeModuleBuilder methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
leaveOnlyProject: aBeeProject
	| target |
	target := OrderedCollection new.
	module allMethodsDo: [:m | | class |
		class := Smalltalk at: m classBinding name asSymbol.
		(aBeeProject includesClass: class selector: m selector)
			ifFalse: [target add: m]].
	target do: [:m | m classBinding removeSelector: m selector]
! !

!BeeModuleBuilder class methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
fromClass: aClass
	^self new name: aClass name; addClass: aClass; module
! !

!BeeModuleBuilder class methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
fromMethod: aCompiledMethod
	^self new
		name: aCompiledMethod selector asString;
		addMethod: aCompiledMethod;
		module
! !

!BeeModuleBuilder class methodsFor: 'services' stamp: 'KenD 5/1/2022 13:18:48'!
fromProject: aBeeProject
	^self new
		name: aBeeProject name;
		addProject: aBeeProject;
		calculateDependencies;
		module
! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 13:18:48'!
ignoredProjects
	^#('extensions' nil)
! !

!BeeModuleBuilder class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 13:18:48'!
new
	^super new initialize
! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 15:39:21'!
addMethod: aCompiledMethod
	| class spec |
	class := self ensureClass: aCompiledMethod methodClass instanceSide.
	aCompiledMethod methodClass isMeta ifTrue: [class := class metaclass].
	spec := self specFromMethod: aCompiledMethod species: class.
	class addMethod: spec

! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 15:39:21'!
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
	module addDependencies: extensions
	
! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 15:39:21'!
compilerFor: aSpeciesSpec
	^(SCompiler forClass: aSpeciesSpec) namespace: module
! !

!PharoModuleBuilder methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 15:39:21'!
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
	^class
! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:12:19'!
addRule: aTransliterationRule
	rules add: aTransliterationRule
! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:12:19'!
addRules: aCollection
	rules addAll: aCollection
! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:12:19'!
initialize
	rules := OrderedCollection new
! !

!ModuleTransliterator methodsFor: 'adding / removing' stamp: 'KenD 5/1/2022 13:12:19'!
module
	^module
! !

!ModuleTransliterator methodsFor: 'accessing' stamp: 'KenD 5/1/2022 13:12:19'!
module: aModuleSpec
	module := aModuleSpec
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeClass: aString
	| rule |
	rule := ClassRemoveRule name: aString.
	self addRule: rule
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeInstVar: ivar in: classname
	| rule |
	rule := RemoveInstVarRule named: ivar in: classname.
	self addRule: rule
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeMethodsSuchThat: aBlock
	self removeMethodsSuchThat: aBlock class: nil module: nil
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeMethodsSuchThat: aBlock class: classname module: modulename
	| rule |
	rule := (MethodFilterRule on: aBlock)
		module: modulename;
		class: classname.
	self addRule: rule
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removePackage: aString
	| rule |
	rule := PackageRemoveRule name: aString.
	self addRule: rule
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeSelectors: selectors
	self removeSelectors: selectors class: nil module: nil
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeSelectors: selectors class: classname
	^self removeSelectors: selectors class: classname module: nil
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeSelectors: selectors class: classname module: modulename
	| rule |
	rule := (MethodFilterRule on: [:m | selectors includes: m selector])
		module: modulename;
		class: classname.
	self addRule: rule
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
removeSelectors: selectors module: modulename
	^self removeSelectors: selectors class: nil module: modulename
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
renameIdentifier: from to: to
	self renameIdentifier: from to: to class: nil module: nil
! !

!ModuleTransliterator methodsFor: 'services' stamp: 'KenD 5/1/2022 13:12:19'!
renameIdentifier: from to: to class: classname
	self renameIdentifier: from to: to class: classname module: nil
! !

!RejectMethodRule methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:47'!
scope: aBlock
	scope := aBlock
! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:19'!
compatible: aBoolean
	compatible := aBoolean
! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:19'!
copyright
	^'Copyright (c) ' , Date today year asString , ' Quorum Software.'
! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:19'!
license
	^'See (MIT) license in root directory.'
! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:19'!
module: aModuleSpec
	module := aModuleSpec
! !

!TonelModuleExporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:19'!
path: aFilename
	path := aFilename asFilename
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
export
	self
		createFolder;
		exportMetadata;
		exportClasses;
		exportExtendedClasses
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportClass: aClassSpec
	| filename |
	filename := self filenameForClass: aClassSpec.
	self withFileNamed: filename do: [:stream | | writer |
		stream truncate.
		writer := TonelWriter on: stream.
		writer
			category: self moduleName;
			class: aClassSpec;
			methods: (aClassSpec metaMethods sortBy: #selector)
				& (aClassSpec methods sortBy: #selector);
			write]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportClasses
	module classes do: [:class | self exportClass: class]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportEmptyClass: aClassSpec
	| filename |
	filename := self filenameForClass: aClassSpec.
	self withFileNamed: filename do: [:stream | | writer |
		writer := TonelWriter on: stream.
		writer
			category: self moduleName;
			class: aClassSpec;
			methods: #();
			write]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportEmptyClasses
	module classes do: [:class | self exportEmptyClass: class]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportExtendedClass: aClassSpec
	| filename |
	filename := self filenameForExtension: aClassSpec.
	self withFileNamed: filename do: [:stream | 
		stream truncate.
		(TonelWriter on: stream)
			writeMethods: (aClassSpec metaMethods sortBy: #selector)
				& (aClassSpec methods sortBy: #selector)]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportExtendedClasses
	module extendedClasses do: [:class | self exportExtendedClass: class]
! !

!TonelModuleExporter methodsFor: 'export' stamp: 'KenD 5/1/2022 12:57:19'!
exportMetadata
	| package |
	package := self moduleFolder \ 'package.st'.
	self withFileNamed: package do: [:stream | 
		stream nextPutAll: 'Package '.
		(STONWriter on: stream) writeMap: self definition]
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
createFolder
	self moduleFolder createPath
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
definition
	| names |
	names := (module classes collect: #name) sort.
	^OrderedDictionary new
		at: #name put: self moduleName asSymbol;
		at: #requires
		put: module dependencies keys asArray sort;
		at: #classes put: names asArray;
		yourself
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
exportedName
	^module name copy replace: Character space with: $\
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
filenameForClass: aClassSpec
	| name |
	name := aClassSpec name asFilename.
	compatible ifTrue: [name := name appendExtension: 'class'].
	^self moduleFolder \ name appendExtension: 'st'
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
filenameForExtension: aClassSpec
	| name |
	name := aClassSpec name asFilename.
	compatible ifTrue: [name := name appendExtension: 'extension'].
	^self moduleFolder \ name appendExtension: 'st'
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
moduleFolder
	^path \ self exportedName
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
moduleName
	^self exportedName asFilename entityName
! !

!TonelModuleExporter methodsFor: 'private' stamp: 'KenD 5/1/2022 12:57:19'!
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
	[aBlock evaluateWith: stream] ensure: [stream close]
! !

!TonelModuleExporter methodsFor: 'services' stamp: 'KenD 5/1/2022 12:57:19'!
exportPseudoTonel
	compatible := false.
	self export
! !

!TonelModuleExporter class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:57:19'!
new
	^super new initialize
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
import
	self importMetadata; importClasses; importExtendedClasses
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/6/2022 08:04:15'!
importClass: aString
	| filename reader definition pointers variable class metasclass stream |
	filename := path \ aString withExtension: 'st'.
	filename exists ifFalse: [
		filename := path \ aString withFullExtension: 'class.st'.
		filename exists
			ifFalse: [self error: 'Cannot find file for class ' , aString]].
	stream := filename asFileEntry readStream.
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
	reader methods do: [:m | self importMethod: m]
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
importClasses
	(metadata at: #classes) do: [:name | self importClass: name]
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
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
	reader methods do: [:m | self importMethod: m]
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
importExtendedClasses
	| classes filenames candidates |
	classes := metadata at: #classes.
	filenames := path asDirectory fileNamesWithExtension: 'st'.
	candidates := filenames collect: [:s | s asFilename fileNameOnly].
	candidates := candidates
		reject: [:n | n = 'package' or: [classes includes: n]].
	candidates do: [:n | self importExtendedClass: n]
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
importMetadata
	| stream name |
	stream := (path \ 'package.st') asFile readStream.
	stream throughAll: 'Package '.
	metadata := (STONReader on: stream) parseMap.
	name := (metadata at: #name) replace: $- with: Character space.
	module name: name asString
! !

!TonelModuleImporter methodsFor: 'import' stamp: 'KenD 5/1/2022 12:57:06'!
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
	class addMethod: method
! !

!TonelModuleImporter methodsFor: 'initialization' stamp: 'KenD 5/1/2022 12:57:06'!
initialize
	super initialize.
	module := ModuleSpec new
! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:06'!
module
	^module
! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:06'!
module: aModuleSpec
	module := aModuleSpec
! !

!TonelModuleImporter methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:57:06'!
path: aFilename
	path := aFilename
! !

!TonelModuleImporter class methodsFor: 'instance creation' stamp: 'KenD 5/1/2022 12:57:06'!
new
	^super new initialize
! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:56:40'!
includesClass: aString
	^class isNil or: [class = aString]
! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:56:40'!
includesMethod: aSymbol
	^method isNil or: [method = aSymbol]
! !

!TransliterationScope methodsFor: 'testing' stamp: 'KenD 5/1/2022 12:56:40'!
includesModule: aString
	^module isNil or: [module = aString]
! !

!TransliterationScope methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:40'!
class: aString
	class := aString
! !

!TransliterationScope methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:40'!
method: aSymbol
	method := aSymbol
! !

!TransliterationScope methodsFor: 'accessing' stamp: 'KenD 5/1/2022 12:56:40'!
module: aString
	module := aString
! !
