'From Cuis 6.0 [latest update: #5663] on 26 February 2023 at 6:19:33 pm'!
'Description Port of Bee bootstrap code from https://github.com/powerlang to Cuis.

Original code Copyright LICENCES/Acuerna'!
!provides: 'PowerLang' 1 5!
!requires: 'Cuis-Base' 60 5663 nil!
!requires: 'BeeCompatibility' 1 41 nil!
!requires: 'ExchangeFormat-Tonel-Lite' 1 50 nil!
!requires: 'Ring2' 1 15 nil!
!requires: 'BeePParser' 1 21 nil!
SystemOrganization addCategory: 'Powerlang-Core-Metaphysics'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Bindings'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler'!
SystemOrganization addCategory: 'Powerlang-Core-Execution-LMR'!
SystemOrganization addCategory: 'Powerlang-Core-Mirrors'!
SystemOrganization addCategory: 'Powerlang-Core-Execution-Ring'!
SystemOrganization addCategory: 'Powerlang-Core-Execution'!
SystemOrganization addCategory: 'Powerlang-Core'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SystemOrganization addCategory: 'Powerlang-Core-SExpressions'!


!classDefinition: #PowerLangPackage category: 'Powerlang-Core'!
CodePackage subclass: #PowerLangPackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'PowerLangPackage class' category: 'Powerlang-Core'!
PowerLangPackage class
	instanceVariableNames: ''!


!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 2/24/2023 23:58:55'!
postPackageInstall

	self inform: 'PowerLang is PRE-alpha. Expect breakage'! !

!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 2/24/2023 23:59:36'!
prePackageInstall

	"We override SystemDictionary>>globals.
	Let the user OK or bring up debugger.."
	
	self assert: (PopUpMenu confirm:
	    'PowerLang overrides SystemDictionary>>globals; Yes->OK | No->Debug').
				
	"We may have been loaded before.  If not, capture COPY of
	Smalltalk SystemDictionary initial bindings."
	(Smalltalk includesKey: #globals)
		ifFalse: [ Smalltalk at: #globals put: Smalltalk copy ].
	"Might have nil globals; just in case.."
	(Smalltalk at: #globals)
		ifNil: [ Smalltalk at: #globals put: Smalltalk copy ].
! !
PowerLangPackage prePackageInstall!
!classDefinition: #ObjectHeaderMasks category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderMasks
	instanceVariableNames: ''
	classVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderMasks class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderMasks class
	instanceVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'!

!classDefinition: #ObjectHeaderOffsets category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderOffsets
	instanceVariableNames: ''
	classVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderOffsets class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderOffsets class
	instanceVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'!

!classDefinition: #CompiledBlockFormatMasks category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #CompiledBlockFormatMasks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledBlockFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledBlockFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodFormatMasks category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #CompiledMethodFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledMethodFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledMethodFormatMasks class
	instanceVariableNames: 'ArgCount BlockCount TempCount'!

!classDefinition: #FrameOffsets category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #FrameOffsets
	instanceVariableNames: ''
	classVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'FrameOffsets class' category: 'Powerlang-Core-Mirrors'!
FrameOffsets class
	instanceVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'!

!classDefinition: #SpeciesFormatMasks category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #SpeciesFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'InstSize IsPointers'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'SpeciesFormatMasks class' category: 'Powerlang-Core-Mirrors'!
SpeciesFormatMasks class
	instanceVariableNames: 'InstSize IsPointers'!

!classDefinition: #AstBindingTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core-SExpressions'!
AstBindingTypes class
	instanceVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'!

!classDefinition: #AstNodeTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstNodeTypes class' category: 'Powerlang-Core-SExpressions'!
AstNodeTypes class
	instanceVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'!

!classDefinition: #PowerLangPackage category: 'Powerlang-Core'!
CodePackage subclass: #PowerLangPackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'PowerLangPackage class' category: 'Powerlang-Core'!
PowerLangPackage class
	instanceVariableNames: ''!

!classDefinition: #Bridge category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Bridge
	instanceVariableNames: 'cache objects runtime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Bridge class' category: 'Powerlang-Core-Metaphysics'!
Bridge class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkBridge category: 'Powerlang-Core-Metaphysics'!
Bridge subclass: #SmalltalkBridge
	instanceVariableNames: 'nilObj trueObj falseObj'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'SmalltalkBridge class' category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge class
	instanceVariableNames: ''!

!classDefinition: #BootstrappedPstBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #BootstrappedPstBridge
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'BootstrappedPstBridge class' category: 'Powerlang-Core-Metaphysics'!
BootstrappedPstBridge class
	instanceVariableNames: ''!

!classDefinition: #PharoBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #PharoBridge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'PharoBridge class' category: 'Powerlang-Core-Metaphysics'!
PharoBridge class
	instanceVariableNames: ''!

!classDefinition: #PstBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #PstBridge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'PstBridge class' category: 'Powerlang-Core-Metaphysics'!
PstBridge class
	instanceVariableNames: ''!

!classDefinition: #Gate category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Gate
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Gate class' category: 'Powerlang-Core-Metaphysics'!
Gate class
	instanceVariableNames: ''!

!classDefinition: #DirectGate category: 'Powerlang-Core-Metaphysics'!
Gate subclass: #DirectGate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'DirectGate class' category: 'Powerlang-Core-Metaphysics'!
DirectGate class
	instanceVariableNames: ''!

!classDefinition: #MirageGate category: 'Powerlang-Core-Metaphysics'!
Gate subclass: #MirageGate
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'MirageGate class' category: 'Powerlang-Core-Metaphysics'!
MirageGate class
	instanceVariableNames: ''!

!classDefinition: #Handle category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Handle
	instanceVariableNames: 'runtime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Handle class' category: 'Powerlang-Core-Metaphysics'!
Handle class
	instanceVariableNames: ''!

!classDefinition: #ObjectHandle category: 'Powerlang-Core-Metaphysics'!
Handle subclass: #ObjectHandle
	instanceVariableNames: 'oid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHandle class' category: 'Powerlang-Core-Metaphysics'!
ObjectHandle class
	instanceVariableNames: ''!

!classDefinition: #LocalHandle category: 'Powerlang-Core-Metaphysics'!
ObjectHandle subclass: #LocalHandle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'LocalHandle class' category: 'Powerlang-Core-Metaphysics'!
LocalHandle class
	instanceVariableNames: ''!

!classDefinition: #PstFrameHandle category: 'Powerlang-Core-Metaphysics'!
Handle subclass: #PstFrameHandle
	instanceVariableNames: 'frame'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'PstFrameHandle class' category: 'Powerlang-Core-Metaphysics'!
PstFrameHandle class
	instanceVariableNames: ''!

!classDefinition: #MethodLookup category: 'Powerlang-Core-Metaphysics'!
Object subclass: #MethodLookup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'MethodLookup class' category: 'Powerlang-Core-Metaphysics'!
MethodLookup class
	instanceVariableNames: ''!

!classDefinition: #EmulationLookup category: 'Powerlang-Core-Metaphysics'!
MethodLookup subclass: #EmulationLookup
	instanceVariableNames: 'spec globals cache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'EmulationLookup class' category: 'Powerlang-Core-Metaphysics'!
EmulationLookup class
	instanceVariableNames: ''!

!classDefinition: #MirrorLookup category: 'Powerlang-Core-Metaphysics'!
MethodLookup subclass: #MirrorLookup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'MirrorLookup class' category: 'Powerlang-Core-Metaphysics'!
MirrorLookup class
	instanceVariableNames: ''!

!classDefinition: #PharoLookup category: 'Powerlang-Core-Metaphysics'!
MethodLookup subclass: #PharoLookup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'PharoLookup class' category: 'Powerlang-Core-Metaphysics'!
PharoLookup class
	instanceVariableNames: ''!

!classDefinition: #ObjectFormat category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ObjectFormat
	instanceVariableNames: 'runtime storage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
ObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #BootstrapObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #BootstrapObjectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'BootstrapObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
BootstrapObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #DmrObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #DmrObjectFormat
	instanceVariableNames: 'wordSize'
	classVariableNames: ''
	poolDictionaries: 'ObjectHeaderMasks ObjectHeaderOffsets'
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'DmrObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
DmrObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #PharoObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #PharoObjectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'PharoObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
PharoObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #ObjectShape category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ObjectShape
	instanceVariableNames: 'name fields'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectShape class' category: 'Powerlang-Core-Metaphysics'!
ObjectShape class
	instanceVariableNames: ''!

!classDefinition: #Runtime category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Runtime
	instanceVariableNames: 'lookup storage objectFormat bridge sources shapeMap objectModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Runtime class' category: 'Powerlang-Core-Metaphysics'!
Runtime class
	instanceVariableNames: ''!

!classDefinition: #ShapeMap category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ShapeMap
	instanceVariableNames: 'shapes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ShapeMap class' category: 'Powerlang-Core-Metaphysics'!
ShapeMap class
	instanceVariableNames: ''!

!classDefinition: #Storage category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Storage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Storage class' category: 'Powerlang-Core-Metaphysics'!
Storage class
	instanceVariableNames: ''!

!classDefinition: #BootstrapStorage category: 'Powerlang-Core-Metaphysics'!
Storage subclass: #BootstrapStorage
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'BootstrapStorage class' category: 'Powerlang-Core-Metaphysics'!
BootstrapStorage class
	instanceVariableNames: ''!

!classDefinition: #ByteArrayAdapter category: 'Powerlang-Core-Metaphysics'!
Storage subclass: #ByteArrayAdapter
	instanceVariableNames: 'bytes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ByteArrayAdapter class' category: 'Powerlang-Core-Metaphysics'!
ByteArrayAdapter class
	instanceVariableNames: ''!

!classDefinition: #Binding category: 'Powerlang-Core-SCompiler-Bindings'!
Object subclass: #Binding
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'Binding class' category: 'Powerlang-Core-SCompiler-Bindings'!
Binding class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #DynamicBinding
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'DynamicBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
DynamicBinding class
	instanceVariableNames: 'Default'!

!classDefinition: #NestedDynamicBinding category: 'Powerlang-Core-SCompiler-Bindings'!
DynamicBinding subclass: #NestedDynamicBinding
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'NestedDynamicBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
NestedDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #LiteralBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #LiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'LiteralBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #FalseBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #FalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'FalseBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
FalseBinding class
	instanceVariableNames: ''!

!classDefinition: #NilBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #NilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'NilBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
NilBinding class
	instanceVariableNames: ''!

!classDefinition: #TrueBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #TrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'TrueBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
TrueBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'LocalBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding class
	instanceVariableNames: ''!

!classDefinition: #ArgumentBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding subclass: #ArgumentBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'ArgumentBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
ArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #TemporaryBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding subclass: #TemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'TemporaryBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
TemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SelfBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'SelfBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SuperBinding category: 'Powerlang-Core-SCompiler-Bindings'!
SelfBinding subclass: #SuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'SuperBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
SuperBinding class
	instanceVariableNames: ''!

!classDefinition: #IdentifierBinder category: 'Powerlang-Core-SCompiler'!
Object subclass: #IdentifierBinder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'IdentifierBinder class' category: 'Powerlang-Core-SCompiler'!
IdentifierBinder class
	instanceVariableNames: ''!

!classDefinition: #StaticBinder category: 'Powerlang-Core-SCompiler'!
IdentifierBinder subclass: #StaticBinder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'StaticBinder class' category: 'Powerlang-Core-SCompiler'!
StaticBinder class
	instanceVariableNames: ''!

!classDefinition: #LocalEnvironment category: 'Powerlang-Core-SCompiler'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'LocalEnvironment class' category: 'Powerlang-Core-SCompiler'!
LocalEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArrayEnvironment category: 'Powerlang-Core-SCompiler'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArrayEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArrayEnvironment class
	instanceVariableNames: ''!

!classDefinition: #StackEnvironment category: 'Powerlang-Core-SCompiler'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'StackEnvironment class' category: 'Powerlang-Core-SCompiler'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #InlinedArgEnvironment category: 'Powerlang-Core-SCompiler'!
StackEnvironment subclass: #InlinedArgEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'InlinedArgEnvironment class' category: 'Powerlang-Core-SCompiler'!
InlinedArgEnvironment class
	instanceVariableNames: ''!

!classDefinition: #MessageInliner category: 'Powerlang-Core-SCompiler'!
Object subclass: #MessageInliner
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'MessageInliner class' category: 'Powerlang-Core-SCompiler'!
MessageInliner class
	instanceVariableNames: ''!

!classDefinition: #ScriptScope category: 'Powerlang-Core-SCompiler'!
Object subclass: #ScriptScope
	instanceVariableNames: 'script arguments temporaries stackSize envSize captureSelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ScriptScope class' category: 'Powerlang-Core-SCompiler'!
ScriptScope class
	instanceVariableNames: ''!

!classDefinition: #BlockScope category: 'Powerlang-Core-SCompiler'!
ScriptScope subclass: #BlockScope
	instanceVariableNames: 'environments captured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'BlockScope class' category: 'Powerlang-Core-SCompiler'!
BlockScope class
	instanceVariableNames: ''!

!classDefinition: #MethodScope category: 'Powerlang-Core-SCompiler'!
ScriptScope subclass: #MethodScope
	instanceVariableNames: 'pseudo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'MethodScope class' category: 'Powerlang-Core-SCompiler'!
MethodScope class
	instanceVariableNames: ''!

!classDefinition: #LMRObject category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #LMRObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRObject class
	instanceVariableNames: ''!

!classDefinition: #LMRHeapObject category: 'Powerlang-Core-Execution-LMR'!
LMRObject subclass: #LMRHeapObject
	instanceVariableNames: 'header'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRHeapObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject class
	instanceVariableNames: ''!

!classDefinition: #LMRByteObject category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRByteObject
	instanceVariableNames: 'bytes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRByteObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRByteObject class
	instanceVariableNames: ''!

!classDefinition: #LMRExecutableCode category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRExecutableCode
	instanceVariableNames: 'code'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRExecutableCode class' category: 'Powerlang-Core-Execution-LMR'!
LMRExecutableCode class
	instanceVariableNames: ''!

!classDefinition: #LMRSlotObject category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRSlotObject
	instanceVariableNames: 'slots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRSlotObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRSlotObject class
	instanceVariableNames: ''!

!classDefinition: #LMRBehaviorObject category: 'Powerlang-Core-Execution-LMR'!
LMRSlotObject subclass: #LMRBehaviorObject
	instanceVariableNames: 'runtime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRBehaviorObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRBehaviorObject class
	instanceVariableNames: ''!

!classDefinition: #LMRSmallInteger category: 'Powerlang-Core-Execution-LMR'!
LMRObject subclass: #LMRSmallInteger
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRSmallInteger class' category: 'Powerlang-Core-Execution-LMR'!
LMRSmallInteger class
	instanceVariableNames: ''!

!classDefinition: #LMRObjectHeader category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #LMRObjectHeader
	instanceVariableNames: 'behavior flags size hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRObjectHeader class' category: 'Powerlang-Core-Execution-LMR'!
LMRObjectHeader class
	instanceVariableNames: ''!

!classDefinition: #RingBasedLMRBootstrapper category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #RingBasedLMRBootstrapper
	instanceVariableNames: 'source dest nilObj trueObj falseObj behaviors mapping stack closureMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'RingBasedLMRBootstrapper class' category: 'Powerlang-Core-Execution-LMR'!
RingBasedLMRBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #Mirror category: 'Powerlang-Core-Mirrors'!
Object subclass: #Mirror
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'Mirror class' category: 'Powerlang-Core-Mirrors'!
Mirror class
	instanceVariableNames: ''!

!classDefinition: #ObjectMirror category: 'Powerlang-Core-Mirrors'!
Mirror subclass: #ObjectMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'ObjectMirror class' category: 'Powerlang-Core-Mirrors'!
ObjectMirror class
	instanceVariableNames: ''!

!classDefinition: #StackFrameMirror category: 'Powerlang-Core-Mirrors'!
Mirror subclass: #StackFrameMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'FrameOffsets'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'StackFrameMirror class' category: 'Powerlang-Core-Mirrors'!
StackFrameMirror class
	instanceVariableNames: ''!

!classDefinition: #ObjectMap category: 'Powerlang-Core-Execution-Ring'!
Object subclass: #ObjectMap
	instanceVariableNames: 'spec'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ObjectMap class' category: 'Powerlang-Core-Execution-Ring'!
ObjectMap class
	instanceVariableNames: ''!

!classDefinition: #BootstrapDictionaryMap category: 'Powerlang-Core-Execution-Ring'!
ObjectMap subclass: #BootstrapDictionaryMap
	instanceVariableNames: 'image assocs realSpec constant'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'BootstrapDictionaryMap class' category: 'Powerlang-Core-Execution-Ring'!
BootstrapDictionaryMap class
	instanceVariableNames: ''!

!classDefinition: #ByteObjectMap category: 'Powerlang-Core-Execution-Ring'!
ObjectMap subclass: #ByteObjectMap
	instanceVariableNames: 'bytes hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ByteObjectMap class' category: 'Powerlang-Core-Execution-Ring'!
ByteObjectMap class
	instanceVariableNames: ''!

!classDefinition: #SymbolMap category: 'Powerlang-Core-Execution-Ring'!
ByteObjectMap subclass: #SymbolMap
	instanceVariableNames: 'symbol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'SymbolMap class' category: 'Powerlang-Core-Execution-Ring'!
SymbolMap class
	instanceVariableNames: ''!

!classDefinition: #SlotObjectMap category: 'Powerlang-Core-Execution-Ring'!
ObjectMap subclass: #SlotObjectMap
	instanceVariableNames: 'slots hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'SlotObjectMap class' category: 'Powerlang-Core-Execution-Ring'!
SlotObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ClosureMap category: 'Powerlang-Core-Execution-Ring'!
SlotObjectMap subclass: #ClosureMap
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ClosureMap class' category: 'Powerlang-Core-Execution-Ring'!
ClosureMap class
	instanceVariableNames: ''!

!classDefinition: #SpeciesMap category: 'Powerlang-Core-Execution-Ring'!
SlotObjectMap subclass: #SpeciesMap
	instanceVariableNames: 'instanceSpec slotNames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'SpeciesMap class' category: 'Powerlang-Core-Execution-Ring'!
SpeciesMap class
	instanceVariableNames: ''!

!classDefinition: #ClassMap category: 'Powerlang-Core-Execution-Ring'!
SpeciesMap subclass: #ClassMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ClassMap class' category: 'Powerlang-Core-Execution-Ring'!
ClassMap class
	instanceVariableNames: ''!

!classDefinition: #MetaclassMap category: 'Powerlang-Core-Execution-Ring'!
SpeciesMap subclass: #MetaclassMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'MetaclassMap class' category: 'Powerlang-Core-Execution-Ring'!
MetaclassMap class
	instanceVariableNames: ''!

!classDefinition: #SmallintObjectMap category: 'Powerlang-Core-Execution-Ring'!
ObjectMap subclass: #SmallintObjectMap
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'SmallintObjectMap class' category: 'Powerlang-Core-Execution-Ring'!
SmallintObjectMap class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRingModule category: 'Powerlang-Core-Execution-Ring'!
Object subclass: #PowertalkRingModule
	instanceVariableNames: 'nilObj falseObj trueObj classes metaclasses runtime symbols identityMap specs vmPrimitivesSpec module kernel'
	classVariableNames: 'KernelSpec LMRBootstrapperSpec VMPrimitivesSpec'
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'PowertalkRingModule class' category: 'Powerlang-Core-Execution-Ring'!
PowertalkRingModule class
	instanceVariableNames: 'KernelSpec LMRBootstrapperSpec VMPrimitivesSpec'!

!classDefinition: #PowertalkRingImage category: 'Powerlang-Core-Execution-Ring'!
PowertalkRingModule subclass: #PowertalkRingImage
	instanceVariableNames: 'bootstrapDicts arraySpec closureSpec smiSpec symbolSpec wordSize minSMI maxSMI'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'PowertalkRingImage class' category: 'Powerlang-Core-Execution-Ring'!
PowertalkRingImage class
	instanceVariableNames: ''!

!classDefinition: #EvaluationContext category: 'Powerlang-Core-Execution'!
Object subclass: #EvaluationContext
	instanceVariableNames: 'system'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'EvaluationContext class' category: 'Powerlang-Core-Execution'!
EvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #LinkedEvaluationContext category: 'Powerlang-Core-Execution'!
EvaluationContext subclass: #LinkedEvaluationContext
	instanceVariableNames: 'parent method arguments temporaries environment isBlock _self'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'LinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #IterativeLinkedEvaluationContext category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext subclass: #IterativeLinkedEvaluationContext
	instanceVariableNames: 'operands work'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'IterativeLinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
IterativeLinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #RecursiveLinkedEvaluationContext category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext subclass: #RecursiveLinkedEvaluationContext
	instanceVariableNames: 'nonLocalReturn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'RecursiveLinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
RecursiveLinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #StackedEvaluationContext category: 'Powerlang-Core-Execution'!
EvaluationContext subclass: #StackedEvaluationContext
	instanceVariableNames: 'stack regSP regBP regM regS regE pc'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'StackedEvaluationContext class' category: 'Powerlang-Core-Execution'!
StackedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #PowertalkEvaluator category: 'Powerlang-Core-Execution'!
Object subclass: #PowertalkEvaluator
	instanceVariableNames: 'runtime falseObj trueObj nilObj context undermessages primitives messageCount'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkEvaluator class' category: 'Powerlang-Core-Execution'!
PowertalkEvaluator class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeInterpreter category: 'Powerlang-Core-Execution'!
PowertalkEvaluator subclass: #PowertalkIterativeInterpreter
	instanceVariableNames: 'regR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeLinkedInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter subclass: #PowertalkIterativeLinkedInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeLinkedInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLinkedLinearInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter subclass: #PowertalkLinkedLinearInterpreter
	instanceVariableNames: 'linearizer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkLinkedLinearInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkLinkedLinearInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLinkedTreeInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter subclass: #PowertalkLinkedTreeInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkLinkedTreeInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkLinkedTreeInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeStackedInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter subclass: #PowertalkIterativeStackedInterpreter
	instanceVariableNames: 'linearizer work'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeStackedInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeStackedInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRecursiveInterpreter category: 'Powerlang-Core-Execution'!
PowertalkEvaluator subclass: #PowertalkRecursiveInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkRecursiveInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkRecursiveInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRuntime category: 'Powerlang-Core-Execution'!
Object subclass: #PowertalkRuntime
	instanceVariableNames: 'methodCache falseObj trueObj nilObj interpreter overrides symbolCache'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkRuntime class' category: 'Powerlang-Core-Execution'!
PowertalkRuntime class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLMR category: 'Powerlang-Core-Execution-LMR'!
PowertalkRuntime subclass: #PowertalkLMR
	instanceVariableNames: 'kernel wordSize bootstrapper behaviorNextIndex behaviorMethodDictionaryIndex behaviorClassIndex classNameIndex methodFlagsIndex symbolTable maxSMI minSMI knownSymbols arrayClass metaclassClass speciesInstanceBehaviorIndex speciesFormatIndex methodOptimizedCodeIndex methodAstcodesIndex methodInstSize methodClassBindingIndex speciesSuperclassIndex methodClass smallIntegerClass blockClass speciesIvarsIndex dictionaryTableIndex metaclassInstanceClassIndex classModuleIndex moduleNamespaceIndex byteArrayClass stringClass closureBlockIndex closureClass lastHash blockMethodIndex behaviorClass classNamespacesIndex largePositiveIntegerClass largeNegativeIntegerClass'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags SCompiledMethodFlags'
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'PowertalkLMR class' category: 'Powerlang-Core-Execution-LMR'!
PowertalkLMR class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRingRuntime category: 'Powerlang-Core-Execution-Ring'!
PowertalkRuntime subclass: #PowertalkRingRuntime
	instanceVariableNames: 'image sexpressionsCache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'PowertalkRingRuntime class' category: 'Powerlang-Core-Execution-Ring'!
PowertalkRingRuntime class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #AstcodeDecoder category: 'Powerlang-Core-SExpressions'!
Object subclass: #AstcodeDecoder
	instanceVariableNames: 'method stream builder'
	classVariableNames: 'BindingTypes NodeTypes'
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeDecoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeDecoder class
	instanceVariableNames: 'BindingTypes NodeTypes'!

!classDefinition: #Subject category: 'Powerlang-Core-Metaphysics'!
ProtoObject subclass: #Subject
	instanceVariableNames: 'gate'
	classVariableNames: 'Counts'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Subject class' category: 'Powerlang-Core-Metaphysics'!
Subject class
	instanceVariableNames: 'Counts'!

!classDefinition: #ArgumentEnvironment category: 'Powerlang-Core-SCompiler'!
ProtoObject subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArgumentEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArgumentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #AssociationMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #AssociationMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'AssociationMirror class' category: 'Powerlang-Core-Mirrors'!
AssociationMirror class
	instanceVariableNames: ''!

!classDefinition: #BehaviorMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #BehaviorMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'BehaviorMirror class' category: 'Powerlang-Core-Mirrors'!
BehaviorMirror class
	instanceVariableNames: ''!

!classDefinition: #ClassMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #ClassMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'ClassMirror class' category: 'Powerlang-Core-Mirrors'!
ClassMirror class
	instanceVariableNames: ''!

!classDefinition: #ClosureMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #ClosureMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'ClosureMirror class' category: 'Powerlang-Core-Mirrors'!
ClosureMirror class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #CompiledBlockMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledBlockFormatMasks'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledBlockMirror class' category: 'Powerlang-Core-Mirrors'!
CompiledBlockMirror class
	instanceVariableNames: 'Flags'!

!classDefinition: #CompiledMethodMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #CompiledMethodMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledMethodFormatMasks'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledMethodMirror class' category: 'Powerlang-Core-Mirrors'!
CompiledMethodMirror class
	instanceVariableNames: 'Flags'!

!classDefinition: #DictionaryMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #DictionaryMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'DictionaryMirror class' category: 'Powerlang-Core-Mirrors'!
DictionaryMirror class
	instanceVariableNames: ''!

!classDefinition: #MethodDictionaryMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #MethodDictionaryMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'MethodDictionaryMirror class' category: 'Powerlang-Core-Mirrors'!
MethodDictionaryMirror class
	instanceVariableNames: ''!

!classDefinition: #SpeciesMirror category: 'Powerlang-Core-Mirrors'!
ProtoObject subclass: #SpeciesMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'SpeciesFormatMasks'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'SpeciesMirror class' category: 'Powerlang-Core-Mirrors'!
SpeciesMirror class
	instanceVariableNames: 'Flags'!

!classDefinition: #MetaclassMirror category: 'Powerlang-Core-Mirrors'!
SpeciesMirror subclass: #MetaclassMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'MetaclassMirror class' category: 'Powerlang-Core-Mirrors'!
MetaclassMirror class
	instanceVariableNames: ''!

!classDefinition: #LinkedLinearEvaluationContext category: 'Powerlang-Core-Execution'!
ProtoObject subclass: #LinkedLinearEvaluationContext
	instanceVariableNames: 'pc'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'LinkedLinearEvaluationContext class' category: 'Powerlang-Core-Execution'!
LinkedLinearEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #LinkedTreeEvaluationContext category: 'Powerlang-Core-Execution'!
ProtoObject subclass: #LinkedTreeEvaluationContext
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'LinkedTreeEvaluationContext class' category: 'Powerlang-Core-Execution'!
LinkedTreeEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'Powerlang-Core-SExpressions'!
ProtoObject subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeEncoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeEncoder class
	instanceVariableNames: ''!


!Bridge commentStamp: '<historical>' prior: 0!
I am the one in charge of 'discovering' well known objects in
the remote image, giving my clients handles to them. For example,
the Smalltalk bridge allows to get a handle to the remote Smalltalk
object. Subclasses of SmalltalkBridge implement this functionality,
as it is runtime specific.

!

!Gate commentStamp: '<historical>' prior: 0!
I am a proxy to a remote object given by my `handle`. My main goal is
to abstract semantics with which messages sent to me will be executed.
My subclasses implement those different semantics: 
 - DirectGate executes locally, doing lookup within the remote behavior
   of object.
 - MirageGate executes locally, doing lookup within a local specification
   of the behavior of the remote object.
!

!Handle commentStamp: '<historical>' prior: 0!
I represent entities in a remote Runtime. My subclasses determine
which kind of entity: ObjectHandles have an `oid` to uniquely referencing
an object of that runtime, FrameHandles have a `frame` to refer to a
particular stack frame in a frozen process of that runtime.

I could be seen as a lower-level mirror
!

!DmrObjectFormat commentStamp: '<historical>' prior: 0!
I represent the format of objects in the DMR. Ask me questions about
the header of an object.
!

!ShapeMap commentStamp: '<historical>' prior: 0!
I represent the shape of objects as used by mirrors. Mirrors
access instance variables by name, asking the runtime the for
the offsets of the instVars.
!

!RingBasedLMRBootstrapper commentStamp: '<historical>' prior: 0!
A base instance of VirtualSmalltalkImage only contains empty classes, nil, true, false,
and barely anything else. I am in charge of adding the Kernel module object to it and the
methods to the classes.
!

!PowertalkRingModule commentStamp: '<historical>' prior: 0!
I'm in charge of creating and managing the objects of an image. I'm created from a spec,
and I know how to bootstrap and connect an initial graph of objects and classes.

I do not add the spec methods to classes, as it requires some emulation done by
the `VirtualRuntime`. That step is left to the `VirtualImage`
that also creates the Kernel module.
!

!PowertalkRingRuntime commentStamp: '<historical>' prior: 0!
I allow sending messages to objects of the `VirtualSmalltalkImage`.
The messages are interpreted and evaluated with the objects living in
that virtual image, and our semantics tries to mimic as much as possible
the one of the final system.
!

!ObjectHeaderMasks class methodsFor: 'class initialization' stamp: 'KenD 2/22/2023 22:58:58'!
initialize
		IsBytes := 16r1.
		IsArrayed := 16r2.
		IsNamed := 16r4.
		IsSmall := 16r80

! !

!ObjectHeaderOffsets class methodsFor: 'class initialization' stamp: 'KenD 2/22/2023 22:58:58'!
initialize
	BehaviorOffset := -4.
	FlagsOffset := -5.
	SizeOffset := -6.
	HashOffset := -8.
	LargeSizeOffset := -16
! !

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 2/22/2023 22:58:46'!
initialize
	NilId := 1.
	TrueId := 2.
	FalseId := 3.
	ArgumentId := 4.
	TemporaryId := 5.
	SelfId := 6.
	SuperId := 7.
	DynamicVarId := 14.
	NestedDynamicVarId := 15.
	PushRid := 50.
	PopRid := 51
! !

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 2/22/2023 22:58:47'!
initialize
	MethodId := 101.
	BlockId := 102.
	IdentifierId := 103.
	LiteralId := 104.
	MessageId := 105.
	CascadeId := 106.
	BraceId := 107.
	AssignmentId := 108.
	ReturnId := 109.
	PragmaId := 110
! !

!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 2/24/2023 23:58:55'!
postPackageInstall

	self inform: 'PowerLang is PRE-alpha. Expect breakage'! !

!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 2/24/2023 23:59:36'!
prePackageInstall

	"We override SystemDictionary>>globals.
	Let the user OK or bring up debugger.."
	
	self assert: (PopUpMenu confirm:
	    'PowerLang overrides SystemDictionary>>globals; Yes->OK | No->Debug').
				
	"We may have been loaded before.  If not, capture COPY of
	Smalltalk SystemDictionary initial bindings."
	(Smalltalk includesKey: #globals)
		ifFalse: [ Smalltalk at: #globals put: Smalltalk copy ].
	"Might have nil globals; just in case.."
	(Smalltalk at: #globals)
		ifNil: [ Smalltalk at: #globals put: Smalltalk copy ].
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
findObjectNamed: aSymbol
	^self subclassResponsibility
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
initialize
	cache := IdentityDictionary new.
	objects := Dictionary new
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
mirrorOn: address
	^(runtime handleOn: address) mirror
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
name: object as: name
	^objects at: name put: object
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
objectNamed: aSymbol
	^ objects at: aSymbol ifAbsentPut: [ self findObjectNamed: aSymbol ]
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
objectNamed: aSymbol ifAbsent: aBlock
	^ objects at: aSymbol ifAbsent: aBlock
! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
runtime: aRuntime
	runtime := aRuntime
! !

!Bridge class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
new
	^self basicNew initialize
! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
false
	^falseObj
! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
findRootObjects
	self subclassResponsibility

! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
kernel
	^ self
		objectNamed: #kernel
		ifAbsent: [ self
				update;
				objectNamed: #kernel ]
! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
nil
	^nilObj
! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
true
	^trueObj
! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
update
	self
		findRootObjects
! !

!SmalltalkBridge class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new
	^self basicNew initialize
! !

!BootstrappedPstBridge methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
bootstrapper: aSmalltalkBootstrapper
	bootstrapper := aSmalltalkBootstrapper
! !

!BootstrappedPstBridge methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
updateGlobals
	bootstrapper globals keysAndValuesDo: [:name :obj | objects at: name put: obj ]
! !

!BootstrappedPstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
findNilObject
	^ nilObj := ObjectHandle
		on: runtime storage nilObject
		within: runtime
! !

!BootstrappedPstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
findRootObjects
	nilObj := ObjectHandle on: bootstrapper nilObject within: runtime.
	trueObj := ObjectHandle on: bootstrapper trueObject within: runtime.
	falseObj := ObjectHandle on: bootstrapper falseObject within: runtime
! !

!PharoBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:59'!
findRootObjects
	nilObj := LocalHandle on: nil within: runtime.
	trueObj := LocalHandle on: true within: runtime.
	falseObj := LocalHandle on: false within: runtime
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findFalseObject
	| s handle |
	s := runtime storage.
	handle := s class = PowertalkRingImage
		ifTrue: [ s false ]
		ifFalse: [ self ASSERT: false ].
	^ falseObj := ObjectHandle on: handle within: runtime
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findKernelModule
	| handle |
	handle := nilObj.
	[ handle getClass localName !!= 'Kernel' ]
		whileTrue: [ handle := handle nextObjectHandle ].

	self name: handle mirror as: #kernel.

! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findNilObject
	^ nilObj := ObjectHandle
		on: #ImageSegmentWriter nilOffset
		within: runtime
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findObjectNamed: name
	| namespace array |
	namespace := self kernel slotOf: #Kernel named: #namespace.
	array := namespace slotOf: #Namespace named: 'table'.
	array
		do: [ :slot | 
			| assoc |
			assoc := slot asAssociationMirror.
			assoc reflectsNil
				ifFalse: [ assoc key asLocalString = name
						ifTrue: [ ^ assoc value ] ] ].
	self error: 'object not found'
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findRootClasses
	| object subclasses |
	object := self objectNamed: 'Object'.
	subclasses := object asSpeciesMirror subclasses.
	1 to: subclasses size do: [ :i | 
		| subclass name |
		subclass := (subclasses slotAt: i) asSpeciesMirror.
		name := subclass name asLocalString.
		self name: subclass as: name ]
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findRootObjects
	| class |
	nilObj := self findNilObject.
	class := nilObj mirror reflectedClass.
	[ class reflectsNil ]
		whileFalse: [ | name |
			name := class name asLocalString.
			self name: class as: name.
			class := class superclass ].
	self findRootClasses; findKernelModule
! !

!PstBridge methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
findTrueObject
	self ASSERT: false.
	^ trueObj := ObjectHandle on: 0 within: runtime
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
asLocalCollection
	^handle asLocalCollection
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
asLocalString
	^handle asLocalString
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
dispatch: aMessage
	^self dispatch: aMessage from: nil
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
dispatch: aMessage from: parentInterpreter
	^self subclassResponsibility
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
handle
	^handle
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
handle: anObjectHandle
	handle := anObjectHandle
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
handleOn: objectHandle
	^handle handleOn: objectHandle
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
isLocal
	^handle isLocal
! !

!Gate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
mirror
	^handle mirror
! !

!Gate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:52'!
maneuvererOn: objectHandle
	^DirectGate subjectOn: objectHandle
! !

!Gate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:52'!
mirageOn: objectHandle
	^MirageGate subjectOn: objectHandle
! !

!Gate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:52'!
subject
	^Subject new _gate: self
! !

!Gate class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:52'!
on: handle
	^self new handle: handle
! !

!Gate class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:52'!
subjectOn: handle
	^(self on: handle) subject
! !

!DirectGate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
dispatch: aMessage from: parentInterpreter
	| receiver method interpreter |
	receiver := aMessage receiver.
	method := handle runtime lookup: aMessage selector on: receiver.
	method ifNil: [ self ASSERT: false ].
	interpreter := SmalltalkInterpreter
		on: receiver
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method
! !

!DirectGate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
dispatchSuper: aMessage from: parentInterpreter
	| receiver method interpreter |
	receiver := aMessage receiver.
	method := handle runtime
		lookupSuper: aMessage selector
		on: receiver
		from: parentInterpreter method classBinding superclass name.
	method ifNil: [ self ASSERT: false ].
	interpreter := SmalltalkInterpreter
		on: receiver
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method
! !

!DirectGate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
getInstVarNamed: name
	| index |
	index := handle mirror reflectedClass indexOfSlot: name.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index
! !

!DirectGate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
slotAt: index
	| slot |
	slot := handle slotAt: index.
	^self maneuvererOn: slot
! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:56'!
classBinding
	^class
! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:56'!
handle: anObjectHandle
	super handle: anObjectHandle.
	class := handle isLocal
		ifTrue: [ handle oid class ]
		ifFalse: [ handle mirror reflectedClass localEquivalent ]
! !

!MirageGate methodsFor: 'notifications' stamp: 'KenD 2/22/2023 22:58:56'!
dispatch: aMessage
	^self dispatch: aMessage from: nil
! !

!MirageGate methodsFor: 'notifications' stamp: 'KenD 2/22/2023 22:58:56'!
dispatch: aMessage from: parentInterpreter
	| receiver |
	receiver := aMessage receiver.
	^receiver _gate isLocal
		ifTrue: [ self dispatchLocal: aMessage from: parentInterpreter ]
		ifFalse: [ self dispatchRemote: aMessage from: parentInterpreter ]
! !

!MirageGate methodsFor: 'notifications' stamp: 'KenD 2/22/2023 22:58:56'!
dispatchLocal: aMessage from: parentInterpreter
	| args receiver result hresult |
	"args := aMessage arguments
		collect: [ :arg | 
			arg class == Subject
				ifTrue: [ arg _gate handle oid ]
				ifFalse: [ arg ] ]."
	args := aMessage arguments.
	receiver := aMessage receiver _gate handle.
	result := receiver oid perform: aMessage selector withArguments: args.
	result class == Subject
		ifTrue: [ ^ result ].
	hresult := LocalHandle on: result within: receiver runtime.
	^ hresult mirage
! !

!MirageGate methodsFor: 'notifications' stamp: 'KenD 2/22/2023 22:58:56'!
dispatchRemote: aMessage from: parentInterpreter
	| method interpreter |
	method := self lookup: aMessage selector.
	method ifNil: [ self error: 'cannot interpet ' , aMessage selector ].
	interpreter := SmalltalkInterpreter
		on: aMessage receiver
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method
! !

!MirageGate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:56'!
getInstVarNamed: name
	| index |
	index := class indexOfSlot: name.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index
! !

!MirageGate methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:56'!
printOn: aStream
	aStream nextPutAll: 'mirage gate on: ' , handle printString
! !

!MirageGate methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:56'!
lookup: selector
	^class methodNamed: selector
! !

!MirageGate methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
slotAt: index
	| slot |
	slot := handle slotAt: index.
	^self mirageOn: slot
! !

!Handle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:52'!
handleOn: objectId
	^self class on: objectId within: runtime
! !

!Handle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:52'!
isLocal
	^runtime isLocal
! !

!Handle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:52'!
objectHandleOn: objectId
	^ ObjectHandle on: objectId within: runtime
! !

!Handle methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
runtime
	^runtime
! !

!Handle methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
runtime: aRuntime
	runtime := aRuntime
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
= anObject
	^ anObject class = self class and: [ oid = anObject oid ]
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
handleOn: anObject
	^self class on: anObject within: runtime
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
indexOf: varname for: aMirror
	| type |
	type := self structureOf: aMirror structureType.
	^type indexOf: varname
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
indexOf: varname inStructureOf: type
	^runtime indexOf: varname inStructureOf: type
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
maneuverer
	^ DirectGate subjectOn: self
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
mirage
	^MirageGate subjectOn: self
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
mirror
	^ObjectMirror on: self
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
runtime
	^runtime
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
runtime: aRuntime
	runtime := aRuntime
! !

!ObjectHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
structureOf: type
	^runtime structureOf: type
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
arrayedSize
	^ runtime objectFormat arrayedSizeOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalBoolean
	runtime false oid = oid ifTrue: [ ^false ].
	runtime true oid = oid ifTrue: [ ^true ].
	self ASSERT: false.
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalBytes
	^runtime objectFormat bytesOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalCollection
	^self isBytes ifTrue: [runtime bytesOf: oid] ifFalse: [self ASSERT: false]
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalInteger
	^runtime integerOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalString
	^runtime stringOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalSymbol
	^runtime symbolOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
basicFlags
	^runtime objectFormat flagsOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
getBehavior
	| behavior |
	behavior := runtime objectFormat behaviorOf: oid.
	^self handleOn: behavior
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
getClass
	^runtime objectFormat classOf: self.

! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
isArrayed
	^runtime objectFormat isArrayed: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
isBytes
	^runtime objectFormat isBytes: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
isFixed
	^self isArrayed not
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
isLarge
	^self isSmall not
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
isSmall
	^runtime objectFormat isSmall: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
largeSize
	^runtime objectFormat largeSizeOf: oid
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
nextObjectHandle
	^ runtime objectFormat nextObjectHandleOf: self
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
printOn: aStream
	| format size bytes |
	format := runtime objectFormat.
	format print: oid on: aStream.
	self isBytes
		ifFalse: [ ^ self ].
	size := self size min: 128.
	size < 30
		ifTrue: [ aStream nextPutAll: ': ' ]
		ifFalse: [ aStream cr ].
	bytes := format bytesOf: oid count: size.
	aStream print: bytes
! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
size
	^runtime objectFormat sizeOf: oid
! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:57'!
at: index
	| slot |
	slot := runtime arrayedSlotOf: oid at: index.
	^ self handleOn: slot
! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:57'!
at: index put: anOid
	^ runtime arrayedSlotOf: oid at: index put: anOid
! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:57'!
slotAt: index
	| slot |
	slot := runtime slotOf: oid at: index.
	^self handleOn: slot
! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:57'!
slotAt: index put: anOid
	^runtime slotOf: oid at: index put: anOid
! !

!ObjectHandle methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:57'!
hash
	^oid hash
! !

!ObjectHandle methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:57'!
isInteger
	^runtime objectFormat isInteger: oid
! !

!ObjectHandle methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:57'!
oid
	^oid
! !

!ObjectHandle methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:57'!
nilObject
	^runtime nil
! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
oid: objectId
	self ASSERT: objectId !!== nil.
	oid := objectId
! !

!ObjectHandle class methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
on: anObject within: aRuntime
	^self new oid: anObject; runtime: aRuntime
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
asLocalCollection
	^ oid
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
asLocalInteger
	^ oid
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
asLocalString
	^ oid asString
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
getClass
	| handle |
	handle := runtime handleOn: oid class.
	^ handle mirror asSpeciesMirror
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
indexOf: varname for: aMirror
	^ oid class indexOfSlot: varname asString
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
isLocal
	^true
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
nilObject
	^self handleOn: nil
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
oid: objectId
	oid !!= nil ifTrue: [ self halt ].
	objectId class = ByteString
		ifTrue: [ self halt ].
	oid := objectId
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
size
	^ oid basicSize + oid class instSize
! !

!LocalHandle methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:55'!
slotAt: index
	| slot |
	slot := oid instVarAt: index.
	^ self handleOn: slot
! !

!PstFrameHandle methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:05'!
currentIp
	^frame currentIp
! !

!PstFrameHandle methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:05'!
frame: aFrame
	frame := aFrame
! !

!PstFrameHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:05'!
objectAtSlot: index
	| slot |
	slot := frame slotAt: index.
	^self objectHandleOn: slot
! !

!PstFrameHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:05'!
slotAt: index
	^self objectAtSlot: index
! !

!PstFrameHandle methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:05'!
slotAtTop
	^frame slotAtTop
! !

!PstFrameHandle methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:05'!
printOn: aStream
	aStream nextPutAll: 'FH with: ' , String cr , frame printString
! !

!PstFrameHandle class methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:05'!
on: frame within: runtime
	^self new frame: frame; runtime: runtime
! !

!MethodLookup methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:56'!
lookup: aSymbol on: aSubject
	^self subclassResponsibility
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
compile: anRGMethod
	| compiler method |
	compiler := SCompiler new.
	method := compiler
		forClass: anRGMethod parent;
		compile: anRGMethod sourceCode.
	^ method
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
compiledMethodFor: anRGMethod
	| method |
	cache at: anRGMethod ifPresent: [ :cm | ^ cm ].
	method := self compile: anRGMethod.
	^ cache at: anRGMethod put: method
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
globals: aPoolDictionary
	globals := aPoolDictionary
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
initialize
	cache := Dictionary new
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
lookup: aSymbol on: aSubject
	| behavior classname |
	classname := aSubject _gate handle oid classname.
	behavior := spec at: classname.
	^ self lookup: aSymbol startingAt: behavior
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
lookup: aSymbol startingAt: aBehavior
	| next m c |
	next := aBehavior.
	[ m := next methodNamed: aSymbol.
	m ifNotNil: [ ^ self compiledMethodFor: m ].
	next := next superclass.
	next notNil ] whileTrue.
	^ aBehavior isMeta
		ifTrue: [ c := aBehavior environment at: #Class.
			self lookup: aSymbol startingAt: c ]
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
lookupSuper: aSymbol on: aSubject from: classname
	| behavior |
	cache at: classname -> aSymbol ifPresent: [ :cached | ^ cached ].
	behavior := spec at: classname.
	^ self lookup: aSymbol startingAt: behavior
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
spec
	^spec
! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
spec: anRGEnvironment
	spec := anRGEnvironment
! !

!EmulationLookup class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:51'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!MirrorLookup methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:57'!
lookup: aSymbol on: aSubject
	^aSubject _gate mirror lookup: aSymbol
! !

!PharoLookup methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:59'!
lookup: aSymbol on: aSubject
	^ aSubject _gate handle oid class lookupSelector: aSymbol
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
bytesOf: oid
	| size |
	size := self sizeOf: oid.
	^self bytesOf: oid count: size
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
bytesOf: oid count: size
	^self subclassResponsibility
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
sizeOf: oid
	^self subclassResponsibility
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
stringOf: oid
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size - 1
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
stringOf: oid count: size
	^self subclassResponsibility
! !

!ObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:57'!
symbolOf: oid
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size
! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
runtime
	^ runtime
! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
runtime: aRuntime
	runtime := aRuntime
! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
storage
	^ storage
! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
storage: anObject
	storage := anObject
! !

!ObjectFormat class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:57'!
on: storage
	^self new storage: storage
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
arrayedSizeOf: oid
	^ oid arrayedSize
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
arrayedSlotOf: oid at: index
	^ oid at: index
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
arrayedSlotOf: oid at: index put: anotherOid
	^ oid at: index put: anotherOid
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
behaviorOf: oid
	^oid behavior
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
bytesOf: oid count: size
	^oid bytes copyFrom: 1 to: size
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
classOf: anObjectHandle
	| oid behavior handle class |
	oid := anObjectHandle oid.
	(self isInteger: oid) ifTrue: [ 
		class := storage classNamed: 'SmallInteger'.
		^(anObjectHandle runtime handleOn: class) mirror asClassMirror].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^handle mirror asBehaviorMirror instanceClass
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
integerOf: oid
	self ASSERT: oid isImmediate.
	^ oid value
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
isBytes: oid
	^oid isBytes
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
isInteger: oid
	^oid isImmediate
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
labelFor: oid
	| c |
	(self isInteger: oid) 
		ifTrue: [ ^'SMI 0x', (self integerOf: oid) printString ].
	(storage nameOf: oid) ifNotNil: [:name | ^name].
	c := self classOf: (runtime handleOn: oid).
	^c localName
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
newInteger: anInteger
	^storage newSmallInteger: anInteger
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
print: oid on: aStream
	| label |
	label := self labelFor: oid.
	aStream
		nextPut: $@;
		nextPutAll: label;
		nextPutAll: ' [size: 0x';
		nextPutAll: (self sizeOf: oid) printStringHex;
		nextPut: $].

! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
sizeOf: oid
	^oid size
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
slotOf: oid at: index
	^ oid slotAt: index
! !

!BootstrapObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:48'!
stringOf: oid count: size
	^(oid bytes copyFrom: 1 to: size) asString
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
behaviorOf: oid
	^ storage uint32of: oid atOffset: BehaviorOffset
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
classOf: anObjectHandle
	| oid class behavior handle |
	oid := anObjectHandle oid.
	oid odd ifTrue: [ class := storage classNamed: 'SmallInteger'.
			^ (anObjectHandle runtime handleOn: class) mirror asClassMirror ].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^ handle mirror asBehaviorMirror instanceClass
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
flagsOf: anObject
	^ storage uint8of: anObject atOffset: FlagsOffset
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
initialize
	wordSize := 8
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
integerOf: oid
	| shifted complement |
	self ASSERT: oid odd.
	shifted := oid bitShift: -1. 
	complement := 1 bitShift: storage wordSize * 8 - 1.
	^ oid >= complement
		ifTrue: [ shifted - complement ]
		ifFalse: [ shifted ]
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isArrayed: anObject
	^ (self flagsOf: anObject) anyMask: IsArrayed
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isBytes: anObject
	^ ((self flagsOf: anObject) anyMask: IsBytes)
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isInteger: oid
	^oid odd
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isLarge: anObject
	^(self isSmall: anObject) not
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isNamed: anObject
	^ (self flagsOf: anObject) anyMask: IsNamed
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
isSmall: oid
	^ (self flagsOf: oid) anyMask: IsSmall
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
nextObjectHandleOf: anObjectHandle
	| addr size |
	addr := anObjectHandle oid.
	size := self sizeInBytesOf: addr.
	^anObjectHandle runtime handleOn: addr + size.
	
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:51'!
slotOf: base at: index
	^ storage uint64atOffset: base + (8 * (index - 1))
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
bodySizeInBytesOf: oid
	| total |
	total := self sizeOf: oid.
	^ (self isBytes: oid)
		ifTrue: [ total + wordSize - 1 bitAnd: 0 - wordSize ]
		ifFalse: [ total * wordSize ]
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
bytesOf: oid count: size
	^ storage bytesAt: oid sized: size
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
headerSizeInBytesOf: oid
	^(self isSmall: oid) ifTrue: [8] ifFalse: [16]

! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
labelFor: oid
	^oid hex
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
largeSizeOf: oid
	^ storage uint32of: oid atOffset: LargeSizeOffset
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
print: oid on: aStream
	| size |
	aStream
		nextPut: $@;
		nextPutAll: oid hex;
		nextPutAll: '[flags: 0x';
		nextPutAll: (self flagsOf: oid) printStringHex.
	self printFlagsOf: oid on: aStream.
	size := self sizeOf: oid.
	aStream
		nextPutAll: ', size: 0x';
		nextPutAll: size printStringHex;
		nextPut: $].


! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
printFlagsOf: oid on: aStream
	| char |
	aStream nextPut: $(.
	char := (self isSmall: oid)
		ifTrue: [ $S ]
		ifFalse: [ $L ].
	aStream
		nextPut: char;
		space.
	char := (self isBytes: oid)
		ifTrue: [ $B ]
		ifFalse: [ $P ].
	aStream
		nextPut: char;
		space.
	char := (self isArrayed: oid)
		ifTrue: [ $A ]
		ifFalse: [ $F ].
	aStream
		nextPut: char;
		nextPut: $)
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
sizeInBytesOf: oid
	^ (self headerSizeInBytesOf: oid) + (self bodySizeInBytesOf: oid)
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
sizeOf: oid
	^ (self isSmall: oid)
		ifTrue: [ self smallSizeOf: oid ]
		ifFalse: [ self largeSizeOf: oid ]
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
smallSizeOf: oid
	^ storage uint8of: oid atOffset: SizeOffset
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 2/22/2023 22:58:51'!
stringOf: oid count: anInteger
	^storage stringAt: oid sized: anInteger
! !

!DmrObjectFormat class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:51'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
behaviorOf: oid
	^self ASSERT: false
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
bytesOf: oid count: size
	^oid copyFrom: 1 to: size
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
classOf: anObjectHandle
	^anObjectHandle oid class
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
integerOf: oid
	self ASSERT: oid isInteger.
	^ oid
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
isBytes: anObject
	^anObject class isBytes
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
isInteger: oid
	^oid isInteger
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
labelFor: oid
	| label |
	label := storage ifNotNil: [storage nameOf: oid].
	^label ifNil: [ 'unknown' ]
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
print: oid on: aStream
	aStream
		nextPutAll: '@local {';
		print: oid;
		nextPut: $}
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
sizeOf: oid
	^oid basicSize + oid class instSize
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
slotOf: oid at: index
	^ oid instVarAt: index
! !

!PharoObjectFormat methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:59'!
stringOf: oid count: size
	^(oid copyFrom: 1 to: size) asString
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
indexOf: ivarName
	^fields at: ivarName asString
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
indexOf: ivarName be: i
	fields at: ivarName put: i
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
initialize
	fields := Dictionary new
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
loadFrom: aClassDefinition
	name := aClassDefinition name asSymbol.
	aClassDefinition allInstVarNames
		withIndexDo: [:ivarName :i | self indexOf: ivarName be: i]
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
name
	^name
! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
printOn: aStream
	aStream nextPutAll: 'Shape of '; nextPutAll: name
! !

!ObjectShape class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:58'!
new
	^self basicNew initialize
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
arrayedSlotOf: object at: index
	^ objectFormat arrayedSlotOf: object at: index
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
arrayedSlotOf: object at: index put: value
	^ storage arrayedSlotOf: object at: index put: value
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
bytesOf: oid
	^objectFormat bytesOf: oid
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
slotOf: object at: index
	^objectFormat slotOf: object at: index
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
slotOf: object at: index put: value
	^ storage slotOf: object at: index put: value
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
stringOf: oid
	^objectFormat stringOf: oid
! !

!Runtime methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:06'!
symbolOf: oid
	^objectFormat symbolOf: oid
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
bridge
	^bridge
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
bridge: aBridge
	bridge := aBridge.
	bridge runtime: self
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
false
	^ bridge false
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
loadBridge
	bridge findRootObjects
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
nil
	^bridge nil
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
objectFormat
	^objectFormat
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
objectFormat: anObjectFormat
	objectFormat := anObjectFormat.
	anObjectFormat runtime: self
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
objectNamed: name
	^ bridge objectNamed: name
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
storage
	^storage
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
storage: anObject
	storage := anObject
! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:06'!
true
	^ bridge true
! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:59:06'!
handleOn: oid
	^ ObjectHandle on: oid within: self
! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:59:06'!
lookup
	^ lookup
! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:59:06'!
lookup: aSymbol on: aSubject
	^lookup lookup: aSymbol on: aSubject
! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:59:06'!
lookupSuper: aSymbol on: aSubject from: classname
	^ lookup lookupSuper: aSymbol on: aSubject from: classname
! !

!Runtime methodsFor: 'shapes' stamp: 'KenD 2/22/2023 22:59:06'!
indexOf: varname inStructureOf: type
	^shapeMap indexOf: varname at: type
! !

!Runtime methodsFor: 'shapes' stamp: 'KenD 2/22/2023 22:59:06'!
structureOf: type
	^shapeMap at: type
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
initialize
	shapeMap := ShapeMap new.
	self useMirrorLookup
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
isLocal
	^objectModel == Smalltalk.

! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
loadShapesFrom: anRGEnvironment
	objectModel := anRGEnvironment.
	anRGEnvironment allClasses do: [ :class | shapeMap load: class ]
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
loadShapesFromImage
	| classes |
	objectModel := Smalltalk.
	classes := #(ClassDescription Class Metaclass) collect: [ :name | Smalltalk at: name ].
	classes do: [ :class | shapeMap load: class ]
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
objectModel
	^objectModel
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
objectModel: aModuleSpec
	^objectModel := aModuleSpec
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
useEmulationLookup: anRGEnvironment
	lookup := EmulationLookup new spec: anRGEnvironment
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
useMirrorLookup
	lookup := MirrorLookup new
! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
usePharoLookup
	lookup := PharoLookup new
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
integerHandle: anInteger
	| oid |
	oid := objectFormat newInteger: anInteger.
	^ self handleOn: oid
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
integerOf: oid
	^objectFormat integerOf: oid
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
new: oid
	| instance |
	instance := storage new: oid.
	^ self handleOn: instance
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
new: oid sized: anInteger
	| instance |
	instance := storage new: oid sized: anInteger.
	^ self handleOn: instance
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
newClosure: anObjectHandle
	| oid |
	oid := storage newClosure: anObjectHandle.
	"should put a thing that lives in remote runtime, not a PCompiledBlock"
	oid block: anObjectHandle.
	^ self handleOn: oid
! !

!Runtime methodsFor: 'object format' stamp: 'KenD 2/22/2023 22:59:06'!
newClosureHandle: aPCompiledBlock
	| oid |
	oid := storage newClosure: aPCompiledBlock.
	"should put a thing that lives in remote runtime, not a PCompiledBlock"
	oid block: aPCompiledBlock.
	^ self handleOn: oid
! !

!Runtime class methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:06'!
forBootstrappingPst: aSmalltalkBootstrapper spec: anRGEnvironment
	^ self new
		bridge: (BootstrappedPstBridge new bootstrapper: aSmalltalkBootstrapper);
		objectFormat: (BootstrapObjectFormat on: aSmalltalkBootstrapper);
		storage: (BootstrapStorage on: aSmalltalkBootstrapper);
		useEmulationLookup: anRGEnvironment
! !

!Runtime class methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:06'!
forEmulatingPst: aSmalltalkBootstrapper
	^ self new
		bridge: (BootstrappedPstBridge new bootstrapper: aSmalltalkBootstrapper);
		objectFormat: (BootstrapObjectFormat on: aSmalltalkBootstrapper);
		storage: (BootstrapStorage on: aSmalltalkBootstrapper);
		loadBridge
! !

!Runtime class methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:06'!
forLocalPharo
	^ self new
		bridge: PharoBridge new;
		objectFormat: PharoObjectFormat new;
		usePharoLookup;
		loadBridge;
		loadShapesFromImage
! !

!Runtime class methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:06'!
forSimulating: aModuleSpec memory: aByteArray
	| adapter |
	adapter := ByteArrayAdapter on: aByteArray.
	^ self new
		bridge: PstBridge new;
		objectFormat: (DmrObjectFormat on: adapter);
		storage: adapter;
		loadShapesFrom: aModuleSpec;
		loadBridge
! !

!Runtime class methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:06'!
new
	^self basicNew initialize
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
add: structure
	shapes at: structure name put: structure
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
at: type
	^shapes at: type
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
indexInCurrentOf: varname at: type
	| species slot |
	species := Smalltalk at: type asSymbol.
	slot := species slotNamed: varname.
	slot isNil
		ifTrue: [ self error: 'inst var ' , varname , ' not found' ].
	^ slot index
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
indexOf: varname at: type
	| shape |
	shape := shapes at: type ifAbsent: [
		^self indexInCurrentOf: varname at: type].
	^shape indexOf: varname
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
initialize
	shapes := Dictionary new
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2023 22:59:22'!
load: aClassDefinition
	| shape |
	shape := ObjectShape new loadFrom: aClassDefinition.
	self add: shape
! !

!ShapeMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new
	^self basicNew initialize
! !

!Storage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:24'!
arrayedSlotOf: base at: index put: value
	^ self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:24'!
new: oid
	^self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:24'!
slotOf: base at: index
	^ self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:59:24'!
slotOf: base at: index put: value
	^self subclassResponsibility
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
arrayedSlotOf: oid at: index put: anotherOid
	"fixme: this message should be sent to ObjectFormat"
	^ oid at: index put: anotherOid
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
bootstrapper: aSmalltalkBootstrapper
	bootstrapper := aSmalltalkBootstrapper
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
new: oid
	| meta base behavior |
	meta := oid spec.
	self ASSERT: meta isMeta.
	base := meta baseClass.
	behavior := bootstrapper instanceBehaviorOfSpec: base.
	^ (ObjectMap new: base) behavior: behavior; atAllPut: bootstrapper nilObject
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
new: oid sized: anInteger
	| meta base behavior |
	meta := oid spec.
	self ASSERT: meta isMeta.
	base := meta baseClass.
	behavior := bootstrapper instanceBehaviorOfSpec: base.
	^ (ObjectMap new: base size: anInteger)
		behavior: behavior;
		atAllPut: bootstrapper nilObject
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
newClosure: anObjectHandle
	| size |
	size := anObjectHandle target size.
	^ bootstrapper new: #Closure sized: size
! !

!BootstrapStorage methodsFor: 'storage' stamp: 'KenD 2/22/2023 22:58:49'!
slotOf: anObjectMap at: index put: value
	index <= anObjectMap size
		ifTrue: [ anObjectMap slotAt: index put: value ]
		ifFalse: [ anObjectMap at: index put: value ].
	^ value
! !

!BootstrapStorage class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
on: aSmalltalkBootstrapper
	^ self new bootstrapper: aSmalltalkBootstrapper
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
bytes: aByteArray
	bytes := aByteArray
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
bytesAt: base sized: size
	^ bytes copyFrom: base + 1 to: base + size
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
slotOf: base at: index
	^ self uint64atOffset: base + (8 * (index - 1))
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
slotOf: base at: index put: value
	^ self uint64atOffset: base + ((index - 1) * 8) put: value
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
stringAt: base sized: size
	^ (self bytesAt: base sized: size) asString
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint16atOffset: anInteger
	^ bytes unsignedShortAt: anInteger + 1
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint16atOffset: anInteger put: value
	^ bytes unsignedShortAt: anInteger + 1 put: value
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint16of: base atOffset: offset
	^ self uint16atOffset: base + offset
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint32atOffset: anInteger
	^ bytes unsignedLongAt: anInteger + 1
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint32atOffset: anInteger put: value
	^ bytes unsignedLongAt: anInteger + 1 put: value
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint32of: base atOffset: offset
	^ self uint32atOffset: base + offset
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint64atOffset: anInteger
	^ bytes unsignedLongLongAt: anInteger + 1
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint64atOffset: anInteger put: value
	^ bytes unsignedLongLongAt: anInteger + 1 put: value
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint8atOffset: anInteger
	^ bytes unsignedByteAt: anInteger + 1
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint8atOffset: anInteger put: value
	^ bytes unsignedByteAt: anInteger + 1 put: value
! !

!ByteArrayAdapter methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:49'!
uint8of: base atOffset: offset
	^ self uint8atOffset: base + offset
! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
wordSize
	^8
! !

!ByteArrayAdapter class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
on: aByteArray
	^self new bytes: aByteArray
! !

!Binding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:48'!
beReferencedFrom: aScriptNode
	
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
canBeAssigned
	^true
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
declaration
	^self
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
encodeUsing: anAstcodeEncoder
	self ASSERT: false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isArgument
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isClassBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isClassVariable
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isConstantBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isDynamic
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isGlobal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isInStack
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isInstVar
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isLiteral
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isLocal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isPoolVariableBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isSelf
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isSelfOrSuper
	^self isSelf or: [self isSuper]
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isSuper
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
isTemporary
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:48'!
literal
	^nil
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
name
	^name
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
name: aString
	name := aString
! !

!Binding methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:48'!
printNameOn: aStream
		aStream
		print: name

! !

!Binding methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:48'!
printOn: aStream
	self printNameOn: aStream.
	aStream
		nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
beReferencedFrom: aScriptNode
	"a dynamic binding could refer to an ivar, so we have to be conservative"
	aScriptNode useSelf
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeDynamicVar: name
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
isDynamic
	^true
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
literal
	^name asSymbol
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
default
	^Default ifNil: [Default := self new name: '<unresolved>']
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
named: aString
	| index first second |
	index := aString indexOf: $..
	index = 0 ifTrue: [ ^self new name: aString ].
	first := aString copyFrom: 1 to: index - 1.
	second := aString copyFrom: index + 1 to: aString size.
	^NestedDynamicBinding new name: { first. second }
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:57'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNestedDynamicVar: name
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:57'!
literal
	^name collect: [ :n | n asSymbol]
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:57'!
printNameOn: aStream
	name do: [ :n | aStream nextPutAll: n ] separatedBy: [ aStream nextPut: $. ]
! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isLiteral
	^true
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeFalse
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
name
	^'false'
! !

!FalseBinding methodsFor: 'evaluating' stamp: 'KenD 2/22/2023 22:58:52'!
value
	^false
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNil
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:57'!
name
	^'nil'
! !

!NilBinding methodsFor: 'evaluating' stamp: 'KenD 2/22/2023 22:58:57'!
value
	^nil
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeTrue
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
name
	^'true'
! !

!TrueBinding methodsFor: 'evaluating' stamp: 'KenD 2/22/2023 22:59:25'!
value
	^true
! !

!LocalBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:55'!
beInArray
	environment := ArrayEnvironment new
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
declaration
	^declaration
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
declaration: anIdentifierNode
	declaration := anIdentifierNode
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
environment
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
environmentIndex
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
environmentIndex: anInteger
	environment index: anInteger
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
environmentObject
	^environment
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
environmentType
	^environment environmentType
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
index
	^index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:55'!
index: aNumber
	index := aNumber
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isInArray
	^self isInStack not
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isInStack
	^environment isStack
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isLocal
	^true
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:46'!
beInlined
	environment := InlinedArgEnvironment new
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:46'!
description
	^'argument ' , name
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:46'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeArgument: index env: environment
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:58:46'!
isInlined
	^environment isInlinedArgument
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
canBeAssigned
	^false
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
index: aNumber
	index := aNumber.

! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
isArgument
	^true
! !

!ArgumentBinding methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:46'!
initialize
	super initialize.
	environment := ArgumentEnvironment new
! !

!ArgumentBinding class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:46'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!TemporaryBinding methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:25'!
description
	^'temporary ' , name
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:25'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeTemporary: index env: environment
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:25'!
initialize
	super initialize.
	environment := StackEnvironment new
! !

!TemporaryBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:25'!
isTemporary
	^true
! !

!TemporaryBinding class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:25'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SelfBinding methodsFor: 'actions' stamp: 'KenD 2/22/2023 22:59:22'!
beReferencedFrom: aScriptNode
	aScriptNode useSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
canBeAssigned
	^false
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
isSelf
	^true
! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
name
	^'self'
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSuper
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
name
	^'super'
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:25'!
isSelf
	^false
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:25'!
isSuper
	^true
! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
contents
	^contents
! !

!IdentifierBinder methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:52'!
keyFor: aString
	^self subclassResponsibility
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:52'!
printOn: aStream
	self printOn: aStream indent: 0
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:52'!
printOn: aStream indent: anInteger
	self subclassResponsibility
! !

!IdentifierBinder class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:52'!
new
	^super new initialize
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
at: aString
	^contents at: aString ifAbsent: nil
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
at: aString ifAbsentPut: aBlock
	^contents at: aString ifAbsentPut: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
at: aString put: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
define: aString as: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
defines: identifier
	^contents includesKey: identifier
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
do: aBlock
	contents do: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
select: aBlock
	^contents select: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
values
	^contents values
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
withIndexDo: aBlock
	contents withIndexDo: aBlock
! !

!StaticBinder methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
initialize
	super initialize.
	contents := OrderedDictionary new
! !

!StaticBinder methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:24'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPut: $<.
	contents keys
		do: [:name | name printOn: aStream]
		separatedBy: [aStream space].
	aStream nextPut: $>
! !

!StaticBinder class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:24'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isInlinedArgument
	^false
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:46'!
environmentType
	^EnvironmentValue
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:46'!
index
	^index
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:46'!
index: anInteger
	index := anInteger
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
isCurrent
	^index isNil
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
isIndirect
	^self isCurrent not
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:46'!
isStack
	^false
! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
index
	^nil
! !

!StackEnvironment methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
isStack
	^true
! !

!InlinedArgEnvironment methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
isInlinedArgument
	^true
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 2/22/2023 22:58:55'!
inline: aMessageNode
	| s keywords |
	message := aMessageNode.
	message receiver isSuper
		ifTrue: [ ^ self ].
	(message isCascadeMessage and: [ message receiver isBlockNode ])
		ifTrue: [ ^ self ].
	s := message selector value.
	s == #ifTrue:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifFalse:
		ifTrue: [ ^ self inlineConditional ].
	s == #or:
		ifTrue: [ ^ self inlineConditional ].
	s == #and:
		ifTrue: [ ^ self inlineConditional ].
	s == #timesRepeat:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifTrue:ifFalse:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifFalse:ifTrue:
		ifTrue: [ ^ self inlineConditional ].
	s == #andNot:
		ifTrue: [ ^ self inlineConditional ].
	s == #orNot:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifNil:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifNotNil:
		ifTrue: [ ^ self inlineIfNotNil ].
	s == #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineIfNilIfNotNil ].
	s == #ifNotNil:ifNil:
		ifTrue: [ ^ self inlineIfNotNilIfNil ].
	s == #whileTrue:
		ifTrue: [ ^ self inlineWhile ].
	s == #whileFalse:
		ifTrue: [ ^ self inlineWhile ].
	s == #whileTrue
		ifTrue: [ ^ self inlineUnitaryWhile ].
	s == #whileFalse
		ifTrue: [ ^ self inlineUnitaryWhile ].
	s == #repeat
		ifTrue: [ ^ self inlineRepeat ].
	s == #to:do:
		ifTrue: [ ^ self inlineToDo ].
	"s == #to:by:do:
		ifTrue: [ ^ self inlineToByDo ]."
	keywords := $: split: s.
	keywords last = ''
		ifTrue: [ keywords := keywords allButLast ].
	(keywords conform: [ :k | k = 'and' ])
		ifTrue: [ ^ self inlineConditional ].
	(keywords conform: [ :k | k = 'or' ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'and' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'or' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ self inlineConditional ]
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 2/22/2023 22:58:55'!
inlineRepeat
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable
		ifFalse: [ ^ self ].
	arguments := message arguments.
	arguments isEmpty
		ifFalse: [ ^ self ].
	receiver isBlockNode
		ifFalse: [ ^ self ].
	message beInlined.
	receiver beInlined
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 2/22/2023 22:58:55'!
inlineUnitaryWhile
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable ifFalse: [^self].
	arguments := message arguments.
	arguments size = 0 ifFalse: [^self].
	self inlineConditional.
	receiver isBlockNode ifTrue: [
		message beInlined.
		receiver beInlined]
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineConditional
	| arguments |
	arguments := message arguments.
	arguments size >= 1 ifFalse: [^self].
	arguments do: [:arg | arg isEvaluable ifFalse: [^self]].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineIfNilIfNotNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments first isEvaluable ifFalse: [^self].
	arg := arguments second.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
	
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineIfNotNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 1 ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arg isBlockNode ifTrue: [arg beInlined]
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineIfNotNilIfNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments second isEvaluable ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineToByDo
	| arguments arg step |
	arguments := message arguments.
	arguments size = 3 ifFalse: [^self].
	arg := arguments at: 3.
	arg isBlockNode ifFalse: [^self].
	arg arguments size = 1 ifFalse: [^self].
	step := arguments at: 2.
	(step isNumberNode and: [step value isSmallInteger]) ifFalse: [^self].
	message beInlined.
	arg beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineToDo
	| arguments last |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	last := arguments at: 2.
	last isBlockNode ifFalse: [^self].
	last arguments size = 1 ifFalse: [^self].
	message beInlined.
	last beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 2/22/2023 22:58:55'!
inlineWhile
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable
		ifFalse: [ ^ self ].
	arguments := message arguments.
	arguments size = 1
		ifFalse: [ ^ self ].
	arguments last isNullary
		ifFalse: [ ^ self ].
	self inlineConditional.
	receiver isBlockNode
		ifTrue: [ receiver beInlined ]
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:21'!
capturesSelf
	^ captureSelf
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:21'!
describe: identifier
	| binding type |
	binding := self resolve: identifier.
	type := self class name asLowercase allButLast: 'scope' size.
	^binding description , ' of ' , type
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:21'!
environmentSize
	^envSize
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:21'!
scopeOf: aString
	| s |
	s := self scriptDefining: aString.
	^s notNil ifTrue: [s scope]
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:21'!
stackSize
	^stackSize
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
defineArgument: identifier
	| binding |
	(self resolves: identifier) ifTrue: [self redefinitionError: identifier].
	binding := ArgumentBinding new name: identifier.
	arguments define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
defineTemporary: identifier
	| binding |
	(temporaries defines: identifier)
		ifTrue: [self redefinitionError: identifier].
	binding := TemporaryBinding new name: identifier.
	temporaries define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
defines: aString
	^(temporaries defines: aString) or: [arguments defines: aString]
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
localBindings
	^arguments values , temporaries values
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
resolveLocal: aString
	(temporaries at: aString) ifNotNil: [:binding | ^binding].
	^arguments at: aString
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:59:21'!
resolves: aString
	^(self resolve: aString) isDynamic not
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
growEnvironment
	^envSize := envSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
growStack
	^stackSize := stackSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
positionDefinedArguments
	arguments withIndexDo: [:binding :index | binding index: index]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
positionDefinedLocals
	self positionDefinedTemporariesIn: self; positionDefinedArguments
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
positionDefinedTemporariesIn: aScriptScope
	temporaries do: [:binding | | position |
		position := binding isInStack
			ifTrue: [aScriptScope growStack]
			ifFalse: [aScriptScope growEnvironment].
		binding index: position]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
positionLocals
	self positionDefinedLocals
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
realScope
	^script realScript scope
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:21'!
redefinitionError: name
	| scope description |
	scope := self scopeOf: name.
	description := scope describe: name.
	script compiler
		warning: name , ' already declared as ' , description
		at: script stretch
! !

!ScriptScope methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:21'!
initialize
	super initialize.
	arguments := StaticBinder new.
	temporaries := StaticBinder new.
	stackSize := envSize := 0.
		captureSelf := false.
! !

!ScriptScope methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
script: aScriptNode
	script := aScriptNode
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:21'!
new
	^super new initialize
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:21'!
on: aScriptNode
	^self new script: aScriptNode
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:58:48'!
captureArgument: anArgumentBinding
	| name |
	name := anArgumentBinding name.
	^captured at: name ifAbsentPut: [| transferred copy |
		transferred := self parent transferLocal: name.
		copy := self copyLocal: transferred.
		(anArgumentBinding isInlined and: [copy !!= anArgumentBinding])
			ifTrue: [anArgumentBinding beInArray].
		copy declaration: transferred declaration]
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:58:48'!
localBindings
	^super localBindings , captured values
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/22/2023 22:58:48'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
captureEnvironment: aScriptNode
	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
capturedEnvironmentIndexOf: aScriptNode
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self ASSERT: index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
copyLocal: binding
	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
environmentIndexOf: aScriptNode
	"
	temporal compatibility
	"
	(aScriptNode isKindOf: SScriptNode)
		ifFalse: [ self ASSERT: false. ^nil ].
	^self capturedEnvironmentIndexOf: aScriptNode
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
environmentSizeUpToCapturedArguments
	^self environmentSizeUpToEnvironments + self capturedArguments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
environmentSizeUpToEnvironments
	| receiver |
	receiver := self capturesSelf ifTrue: [ 1 ] ifFalse: [ 0 ].
	^receiver + environments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
parent
	^script parent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionCapturedArgument: anArgumentBinding
	anArgumentBinding index: self growEnvironment
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionCapturedLocals
	script isInlined ifTrue: [^self].
	envSize := self environmentSizeUpToEnvironments.
	captured do: [:binding | 
		binding isArgument
			ifTrue: [self positionCapturedArgument: binding]
			ifFalse: [self positionCapturedTemporary: binding]]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionCapturedTemporary: aTemporaryBinding
	| outest index declaration |
	outest := self scriptDefining: aTemporaryBinding name.
	index := self capturedEnvironmentIndexOf: outest realScript.
	aTemporaryBinding environmentIndex: index.
	declaration := outest scope resolve: aTemporaryBinding name.
	self ASSERT: declaration index isInteger.
	aTemporaryBinding index: declaration index
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionDefinedArgumentsIn: aScriptScope
	arguments do: [:binding | | index |
		index := binding isInArray
			ifTrue: [aScriptScope growEnvironment]
			ifFalse: [aScriptScope growStack].
		binding index: index]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionDefinedLocals
	| real |
	script isInlined
		ifTrue: [
			real := self realScope.
			self
				positionDefinedTemporariesIn: real;
				positionDefinedArgumentsIn: real]
		ifFalse: [super positionDefinedLocals]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
positionLocals
	self positionCapturedLocals.
	super positionLocals
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
realParent
	^script realParent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:48'!
transferLocal: name
	| binding copy |
	(self resolveLocal: name) ifNotNil: [:b | ^b].
	binding := self parent transferLocal: name.
	copy := self copyLocal: binding.
	captured at: name put: copy.
	^copy
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
captureLocal: aLocalBinding
	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
captureSelf
	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
captureTemporary: aTemporaryBinding
	| name |
	name := aTemporaryBinding name.
	(self defines: name) ifTrue: [^aTemporaryBinding].
	^captured at: name ifAbsentPut: [| parent declaration transferred copy |
		parent := self parent.
		declaration := parent scriptDefining: name.
		self realScope captureEnvironment: declaration realScript.
		transferred := parent transferLocal: name.
		copy := self copyLocal: transferred.
		copy isInArray ifTrue: [aTemporaryBinding beInArray].
		copy declaration: transferred declaration]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
capturedArguments
	^captured select: [:b | b isArgument]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
capturedEnvironments
	^environments
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
capturesHome
	^self home notNil
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
environments
	"
	compatibility, removes the home environment
	"
	| first |
	environments isEmpty ifTrue: [^#()].
	first := environments first.
	^first isMethod ifTrue: [environments allButFirst] ifFalse: [environments]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
home
	| first |
	environments isEmpty ifTrue: [^nil].
	first := environments first.
	^first isMethod ifTrue: [first]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
resolveLocal: aString
	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:48'!
scriptDefining: aString
	(self defines: aString) ifTrue: [^script].
	^self parent scriptDefining: aString
! !

!BlockScope methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:48'!
initialize
	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:56'!
captureEnvironment: aScriptNode
	self ASSERT: aScriptNode == script
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:56'!
transferLocal: name
	^self resolveLocal: name
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
captureLocal: aLocalBinding
	self ASSERT: (self resolveLocal: aLocalBinding name) notNil.
	^aLocalBinding
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
captureSelf
	captureSelf := true.

! !

!MethodScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
environmentIndexOf: aScriptNode
	self ASSERT: aScriptNode == script.
	^nil
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [ :binding | ^ binding ].
	(self resolvePseudo: aString) ifNotNil: [ :binding | ^ binding ].
	^ DynamicBinding named: aString
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:56'!
scriptDefining: aString
	(self resolveLocal: aString) ifNotNil: [^script].
	self ASSERT: false.
	^nil
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:56'!
initialize
	super initialize.
	self initializePseudoVars
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:56'!
initializePseudoVars
	pseudo := StaticBinder new.
	pseudo
		at: 'nil' put: NilBinding new;
		at: 'true' put: TrueBinding new;
		at: 'false' put: FalseBinding new;
		at: 'self' put: SelfBinding new;
		at: 'super' put: SuperBinding new
! !

!MethodScope methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:56'!
resolvePseudo: aString
	^pseudo at: aString

! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
at: index
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self subclassResponsibility  
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
at: index put: value
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	
	self subclassResponsibility  
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
isBytes
	^ false
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
isImmediate
	^false
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
pointersSize
	^0
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
behavior
	^header behavior
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
behavior: anLMRHeapObject
	header behavior: anLMRHeapObject
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
header: anInteger
	header := anInteger
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
headerFlags
	^header flags
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
headerHash
	^ header hash
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
headerHash: anInteger
	header hash: anInteger
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
isSmall
	^ header isSmall
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
localClassName
	^ self behavior localClassName
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
printOn: aStream
	self behavior printInstance: self on: aStream
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
size
	^header size
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
asLocalString
	^ bytes allButLast asString
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
at: index put: anLMRObject
	| value |
	value := anLMRObject value.
	bytes at: index put: value.
	^ anLMRObject
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
bytes
	^bytes
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
bytes: aByteArray
	self ASSERT: aByteArray size = header size.
	self ASSERT: aByteArray class == ByteArray.
	bytes := aByteArray
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
header: anLMRObjectHeader
	super header: anLMRObjectHeader.
	bytes := ByteArray new: header size
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
isBytes
	^true
! !

!LMRExecutableCode methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
code
	^code
! !

!LMRExecutableCode methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
code: anObject
	code := anObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
at: index
	^ slots at: header behavior classInstSize + index
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
at: index put: anLMRObject
	^ slots at: header behavior classInstSize + index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
basicAt: index put: anLMRObject
	^ slots at: index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
header: anLMRObjectHeader
	super header: anLMRObjectHeader.
	slots := Array new: header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
nilSlots: nilObj
	slots atAllPut: nilObj
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
pointersSize
	^ header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
size
	^header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
slotAt: index
	^ slots at: index
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
slotAt: index put: anLMRObject
	^ slots at: index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
slots
	^ slots
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
classInstSize
	| class |
	class := runtime behaviorClass: self.
	^runtime speciesInstanceSize: class
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
localClassName
	| class |
	class := runtime behaviorClass: self.
	^ runtime speciesLocalName: class
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
printInstance: anLMRObject on: aStream
	runtime print: anLMRObject on: aStream
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
printOn: aStream
	runtime printBehavior: self on: aStream
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:53'!
runtime: aPowertalkLMR
	runtime := aPowertalkLMR
! !

!LMRSmallInteger methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:54'!
= anObject
	anObject class == self class
		ifFalse: [ ^ false ].
	^ value = anObject value
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
hash
	^value hash
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
isImmediate
	^true
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
printOn: aStream
	aStream
		nextPut: $<;
		print: value;
		nextPut: $>
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
value
	^value
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
value: anInteger
	value := anInteger
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
behavior
	^behavior
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
behavior: anLMRHeapObject
	behavior := anLMRHeapObject
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
bytes: bytes arrayed: arrayed named: named
	| b a n |
	b := bytes
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	a := arrayed
		ifTrue: [ 2 ]
		ifFalse: [ 0 ].
	n := named	ifTrue: [ 4 ]
		ifFalse: [ 0 ].
	flags := b | a | n 
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
flags
	^flags
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
hash
	^hash
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
hash: anInteger
	hash := anInteger
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
isSmall
	^ self size < 256
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
size
	^size 
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
size: anInteger
	size := anInteger.
	self isSmall ifTrue: [ flags := flags | 16r80]
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
=> aSymbol
	| classmap |
	classmap := source classNamed: aSymbol.
	^mapping at: classmap
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
closureCompiledBlock: anSCompiledBlock
	| method index spec species table s selector m |
	method := anSCompiledBlock method.
	selector := source newSymbol: method selector.
	index := method indexOf: anSCompiledBlock.
	spec := source specs at: method classBinding name.
	species := source speciesFor: spec.
	table := species instanceBehavior methods table.
	2 to: table size by: 2 do: [ :i | 
		s := table basicAt: i.
		s == selector
			ifTrue: [ m := table basicAt: i + 1.
				closureMethods add: m.
				^ m at: index ] ].
	^ self halt
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
convert
	nilObj := self newMapping: source nil.
	trueObj := self newMapping: source true.
	falseObj := self newMapping: source false.
	dest nil: nilObj true: trueObj false: falseObj.
	self
		map: source nil to: nilObj;
		map: source true to: trueObj;
		map: source false to: falseObj;
		instantiateMetaobjects;
		fixBehaviors;
		convertBootstrapDictionaries;
		convertClosure;
		initializeSymbolTable;
		initializeRuntime.

! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
convertBootstrapDictionaries
	source bootstrapDictionaries do: [ :dict | self convertBootstrapDictionary: dict ]
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
convertBootstrapDictionary: aBootstrapDictionary
	| class dict converted |
	class := source classes at: aBootstrapDictionary realSpec.
	dict := source runtime sendLocal: #new to: class.
	aBootstrapDictionary
		associations do: [ :assoc | 
			source runtime
				sendLocal: #at:put:
				to: dict
				with:
					{assoc key.
					assoc value} ].
	converted:= self newMapping: dict.
	self map: aBootstrapDictionary to: converted
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
convertClosure
	| obj |
	[ stack isEmpty ]
		whileFalse: [ obj := stack removeFirst.
			self convertSlotsOf: obj key in: obj value ]
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
convertSlotsOf: ringObj in: lmrObj
	| mapped block |
	ringObj isPointers
		ifFalse: [ ^ self ].
	ringObj slots
		withIndexDo: [ :slot :index | 
			mapped := mapping at: slot ifAbsentPut: [ self newMapping: slot ].
			lmrObj basicAt: index put: mapped ].
	ringObj isClosure ifFalse: [^self]. block := self closureCompiledBlock: ringObj block.
			mapped := mapping at: block ifAbsentPut: [ self newMapping: block ].
			lmrObj basicAt: 1 put: mapped
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
createNewBlock: sblock
	| format transferred method literal tliteral |
	format := dest newInteger: sblock format.
	transferred := dest
		sendLocal: #new:
		to: self => #CompiledBlock
		with: {(dest newInteger: sblock size)}.
	method := mapping at: sblock method.
	dest
		sendLocal: #format: to: transferred with: {format};
		sendLocal: #method: to: transferred with: {method}.
	1 to: sblock size do: [ :i | 
		literal := sblock at: i.
		tliteral := self transferLiteral: literal.
		transferred at: i put: tliteral ].
	^ transferred
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
createNewClassFrom: spec
	| superclass metaclass class instanceBehavior classBehavior ivars |
	superclass := self => spec superclass name.
	metaclass := dest
		sendLocal: #newSubclassOf:
		to: self => #Class
		with: {superclass}.
	class := dest sendLocal: #instanceClass to: metaclass.
	dest sendLocal: #name: to: class with: {(dest newString: spec name)}.
	ivars := self transferLiteral: spec instVarNames.
	dest sendLocal: #instVarNames: to: class with:  { ivars }.
	instanceBehavior := dest sendLocal: #instanceBehavior to: class.
	classBehavior := dest sendLocal: #instanceBehavior to: metaclass.
	behaviors
		at: spec put: instanceBehavior;
		at: spec metaclass put: classBehavior.
	spec methods do: [ :m | self createNewMethod: m in: class ].
	spec metaclass methods
		do: [ :m | self createNewMethod: m in: metaclass ].
	^ class
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
createNewMethod: m in: species

	| smethod size transferred astcodes selector format tliteral md code |
	smethod := SCompiler new compile: m sourceCode.
	smethod classBinding: species.
	size := dest newInteger: smethod size.
	transferred := dest
		               sendLocal: #new:
		               to: self => #CompiledMethod
		               with: { size }.
	mapping at: smethod put: transferred.
	astcodes := dest newByteArray: smethod astcodes.
	selector := dest addSymbol: smethod selector.
	format := dest newInteger: smethod format.
	code := dest newString: smethod source.
	dest
		sendLocal: #astcodes: to: transferred with: { astcodes };
		sendLocal: #classBinding: to: transferred with: { species };
		sendLocal: #selector: to: transferred with: { selector };
		sendLocal: #format: to: transferred with: { format };
		sendLocal: #sourceObject: to: transferred with: { code }.
	smethod withIndexDo: [ :literal :i | 
		tliteral := self transferLiteral: literal.
		transferred at: i put: tliteral ].
	md := dest sendLocal: #methodDictionary to: species.
	dest sendLocal: #at:put: to: md with: { 
			selector.
			transferred }.
	^ transferred
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
createNewModule: spec with: classes
	| behavior class module |
	behavior := behaviors at: spec.
	class := dest behaviorClass: behavior.
	module := dest sendLocal: #new to: class.
	dest sendLocal: #bindKernelExports to: module.
	classes
		do: [ :c | 
			dest
				sendLocal: #addClass: to: module with: {c};
				sendLocal: #module: to: c with: {module} ].
	^ module
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
headerFor: aRingObject
	| behavior |
	behavior := behaviors at: aRingObject spec ifAbsent: nil.
	^ LMRObjectHeader new
		behavior: behavior;
		bytes: aRingObject isBytes
			arrayed: aRingObject spec isVariable
			named: aRingObject spec instSize > 0;
		size: aRingObject size;
		hash: aRingObject headerHash
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
image: aPowertalkRingImage
	| index |
	source := aPowertalkRingImage.
	dest bootstrapper: self.
	index := (source => #Class) allInstVarNames indexOf: 'name'.
	dest classNameIndex: index.
	index := (source => #Class) allInstVarNames indexOf: 'module'.
	dest classModuleIndex: index.
	index := (source => #Metaclass) allInstVarNames indexOf: 'class'.
	dest metaclassInstanceClassIndex: index.
	index := (source => #Species) allInstVarNames
		indexOf: 'instanceVariables'.
	dest speciesIvarsIndex: index.
	index := (source => #Species) allInstVarNames indexOf: 'superclass'.
	dest speciesSuperclassIndex: index.
	index := (source => #Species) allInstVarNames
		indexOf: 'instanceBehavior'.
	dest speciesInstanceBehaviorIndex: index.
	index := (source => #Class) allInstVarNames indexOf: 'namespaces'.
	dest classNamespacesIndex: index.
	index := (source => #Species) allInstVarNames indexOf: 'format'.
	dest speciesFormatIndex: index.
	index := (source => #Module) allInstVarNames indexOf: 'namespace'.
	dest moduleNamespaceIndex: index.
	index := (source => #Behavior) allInstVarNames indexOf: 'methods'.
	dest behaviorMethodDictionaryIndex: index.
	index := (source => #Behavior) allInstVarNames indexOf: 'next'.
	dest behaviorNextIndex: index.
	index := (source => #Behavior) allInstVarNames indexOf: 'class'.
	dest behaviorClassIndex: index.
	index := (source => #MethodDictionary) allInstVarNames
		indexOf: 'table'.
	dest dictionaryTableIndex: index.
	index := (source => #Closure) allInstVarNames indexOf: 'block'.
	dest closureBlockIndex: index.
	index := (source => #CompiledBlock) allInstVarNames indexOf: 'method'.
	dest blockMethodIndex: index.
	index := (source => #CompiledMethod) allInstVarNames
		indexOf: 'format'.
	dest methodFlagsIndex: index.
	index := (source => #CompiledMethod) allInstVarNames
		indexOf: 'astcodes'.
	dest methodAstcodesIndex: index.
	index := (source => #CompiledMethod) allInstVarNames indexOf: 'class'.
	dest methodClassBindingIndex: index.
	index := (source => #CompiledMethod) allInstVarNames
		indexOf: 'optimizedCode'.
	dest
		methodOptimizedCodeIndex: index;
		methodInstSize: (source => #CompiledMethod) allInstVarNames size
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
initialize
	dest := PowertalkLMR new.
	mapping := IdentityDictionary new.
	behaviors := IdentityDictionary new.
	stack := OrderedCollection new.
	closureMethods := OrderedCollection new
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
initializeEmulationOverrides
	| classes |
	classes := source vmPrimitivesSpec allExtensionClasses.
	classes
		do: [ :class | 
			class methods do: [ :m | self override: class name with: m ].
			class metaclass methods
				do: [ :m | self override: class metaclass name with: m ] ].
	self removeBootstrapDictionaryNewOverride
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
initializeRuntime
	| map symbols array method smi block metaclass kernel byteArray string closure behavior lpi lni |
	symbols := Dictionary new.
	#(+ - < > <= >= = == not)
		do: [ :symbol | 
			map := source newSymbol: symbol.
			symbols at: symbol put: (mapping at: map) ].
	array := mapping at: (source classNamed: #Array).
	byteArray := mapping at: (source classNamed: #ByteArray).
	method := mapping at: (source classNamed: #CompiledMethod).
	block := mapping at: (source classNamed: #CompiledBlock).
	closure := mapping at: (source classNamed: #Closure).
	behavior := mapping at: (source classNamed: #Behavior).
	smi := mapping at: (source classNamed: #SmallInteger).
	lpi := mapping at: (source classNamed: #LargePositiveInteger).
	lni := mapping at: (source classNamed: #LargeNegativeInteger).
	string := mapping at: (source classNamed: #String).
	metaclass := mapping at: (source classNamed: #Metaclass).
	kernel := mapping at: source kernel.
	dest
		arrayClass: array;
		byteArrayClass: byteArray;
		methodClass: method;
		blockClass: block;
		closureClass: closure;
		behaviorClass_: behavior;
		smallIntegerClass: smi;
		largePositiveIntegerClass: lpi;
		largeNegativeIntegerClass: lni;
		stringClass: string;
		metaclassClass: metaclass;
		knownSymbols: symbols;
		wordSize: source wordSize;
		initializeInterpreter;
		kernel: kernel.
	self
		prepareClosuresForExecution;
		initializeEmulationOverrides
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
initializeSymbolTable
	| symbol namespaces cvars table mapped |
	symbol := source classNamed: #Symbol.
	namespaces := symbol namespaces.
	cvars := namespaces at: 1.
	table := cvars at: #SymbolTable.
	mapped := mapping at: table.
	dest symbolTable: mapped
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
instantiateMetaobjects
	| ibehavior mspecies mbehavior |
	source classes , source metaclasses
		do: [ :species | 
			ibehavior := species instanceBehavior.
			mspecies := self newMapping: species.
			mbehavior := self newBehaviorMapping: ibehavior.
			behaviors at: species instanceSpec put: mbehavior.
			mapping
				at: species put: mspecies;
				at: ibehavior put: mbehavior ]
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
loadBootstrapModule
	| spec classes moduleSpec bootstrapper |
	spec := PowertalkRingModule lmrBootstrapperSpec.
	classes := spec allClasses.
	classes := classes
		collect: [ :classSpec | self createNewClassFrom: classSpec ].
	moduleSpec := spec at: #BootstrapModule.
	bootstrapper := self createNewModule: moduleSpec with: classes.
	dest sendLocal: #loadRequiredModules to: bootstrapper.
	^bootstrapper
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
loadModule: symbol
	| spec classes moduleSpec module |
	spec := self readModuleSpec: symbol.
	classes := spec allClasses.
	classes := classes
		collect: [ :classSpec | self createNewClassFrom: classSpec ].
	moduleSpec := spec at: symbol , #Module.
	moduleSpec ifNil: [moduleSpec := source specs at: #Module].
	module := self createNewModule: moduleSpec with: classes.
	dest sendLocal: #loadRequiredModules to: module.
	^ module
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
map: aRingObject to: anLMRObject
	mapping at: aRingObject put: anLMRObject
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
newBehaviorMapping: aRingObject
	| header mapped |
	header := self headerFor: aRingObject.
	mapped := LMRBehaviorObject new header: header; runtime: dest.
	stack add: aRingObject -> mapped.
	^ mapped
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
newCallback: aNativeCode bytesFrom: aByteArray
	| code original behavior class |
	code := source newBytesFrom: aByteArray.
	original := code behavior.
	behavior := source newSlots: 'CallbackBehavior'.
	class := original slotNamed: 'class'.
	behavior
		slotNamed: 'class' put: class;
		methods: original methods;
		next: source nil;
		optimizedCode: aNativeCode.
	code behavior: behavior.
	^ code
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
newMapping: aRingObject
	| header mapped |
	aRingObject isImmediate
		ifTrue: [ ^ LMRSmallInteger new value: aRingObject value ].
	header := self headerFor: aRingObject.
	aRingObject isBytes
		ifTrue: [ ^ LMRByteObject new
				header: header;
				bytes: aRingObject bytes ].
	mapped := LMRSlotObject new header: header.
	stack add: aRingObject -> mapped.
	^ mapped
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
override: classname with: rgMethod
	| spec species behavior smethod rmethod lmrmethod selector |
	spec := source specs at: classname.
	species := (source speciesFor: spec).
	behavior := mapping at: species instanceBehavior.
	smethod := (SCompiler forClass: species) compile: rgMethod sourceCode.
	rmethod := source transferMethod: smethod in: species. 
	lmrmethod := self newMapping: rmethod.
	self convertClosure.
	selector := dest symbolFromLocal: rgMethod selector.
	dest override: behavior -> selector with: lmrmethod
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
prepareClosuresForExecution
	| mapped |
	closureMethods
		do: [ :method | mapped := mapping at: method. dest interpreter prepareForExecution: mapped ]
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
readModuleSpec: aSymbol
	| path |
	path := self findModulePath: aSymbol.
	^PowertalkRingModule readSpec: aSymbol at: path parent

	
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
removeBootstrapDictionaryNewOverride
	| spec species behavior selector |
	spec := source specs at: #'Namespace class'.
	species := source speciesFor: spec.
	behavior := mapping at: species instanceBehavior.
	selector := dest symbolFromLocal: #new.
	dest removeOverride: behavior -> selector
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
result
	^dest
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
source: aPowertalkRingImage
	source := aPowertalkRingImage
! !

!RingBasedLMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:06'!
transferLiteral: anObject
	| transferred |
	anObject isInteger
		ifTrue: [ ^ dest newInteger: anObject ].
	anObject class == ByteArray
		ifTrue: [ ^ dest newByteArray: anObject ].
	anObject isSymbol
		ifTrue: [ ^ dest addSymbol: anObject ].
	anObject isString
		ifTrue: [ ^ dest newString: anObject ].
	anObject class == SCompiledBlock
		ifTrue: [ ^self createNewBlock: anObject ].
	anObject class == Array ifTrue: [ 
		transferred := anObject collect: [ :o | self transferLiteral: o ].
		^dest newArray: transferred ].
	anObject isCharacter
		ifTrue: [ ^ dest newCharacter: anObject ].
	self ASSERT: false
! !

!RingBasedLMRBootstrapper methodsFor: 'paths' stamp: 'KenD 2/22/2023 22:59:06'!
findModulePath: moduleName
	| parts path candidates dir |
	parts := '.' split: moduleName.
	path := ('/' join: parts) asFileReference path.
	candidates := self rootDirectory allDirectoriesMatching: parts first.
	candidates do: [:match | 
		dir := match parent / path pathString.
		dir exists ifTrue: [ 	^dir relativeTo: self rootDirectory asAbsolute ]].
	self error: 'module ' , moduleName , ' couldn''t be found'

! !

!RingBasedLMRBootstrapper methodsFor: 'paths' stamp: 'KenD 2/22/2023 22:59:06'!
outputDirectory
	^ self rootDirectory / 'build' 
! !

!RingBasedLMRBootstrapper methodsFor: 'paths' stamp: 'KenD 2/22/2023 22:59:06'!
rootDirectory
	^ './specs/bee-dmr' asFileReference
! !

!RingBasedLMRBootstrapper methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:06'!
fixBehaviors
	| metaspec behaviorspec mclass mmetaclass |
	self
		initializeBehavior: nilObj spec: source => #UndefinedObject;
		initializeBehavior: trueObj spec: source => #True;
		initializeBehavior: falseObj spec: source => #False.
	metaspec := source => #Metaclass.
	behaviorspec := source => #Behavior.
	source classes values
		with: source metaclasses values
		do: [ :class :metaclass |
			mclass := mapping at: class.
			mmetaclass := mapping at: metaclass.
			self
				initializeBehavior: mclass spec: metaclass instanceSpec;
				initializeBehavior: mmetaclass spec: metaspec ].
	behaviors
		do: [ :behavior | self initializeBehavior: behavior spec: behaviorspec ]
! !

!RingBasedLMRBootstrapper methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:06'!
initializeBehavior: anLMRHeapObject spec: anRGBehavior
	| behavior |
	behavior := behaviors at: anRGBehavior.
	anLMRHeapObject behavior: behavior
! !

!RingBasedLMRBootstrapper class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:06'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
asLocalInteger
	^handle asLocalInteger
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
associationMirrorOn: methodDictionaryHandle
	^AssociationMirror on: methodDictionaryHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
behaviorMirrorOn: behaviorHandle
	^BehaviorMirror on: behaviorHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
classMirrorOn: classHandle
	^ClassMirror on: classHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
closureMirrorOn: closureHandle
	^ ClosureMirror on: closureHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
compiledBlockMirrorOn: aCompiledBlockHandle
	^ CompiledBlockMirror on: aCompiledBlockHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
compiledMethodMirrorOn: methodDictionaryHandle
	^CompiledMethodMirror on: methodDictionaryHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
dictionaryMirrorOn: classHandle
	^DictionaryMirror on: classHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
handle
	^handle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
handle: anObjectHandle
	handle := anObjectHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
metaclassMirrorOn: classHandle
	^MetaclassMirror on: classHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
methodDictionaryMirrorOn: methodDictionaryHandle
	^MethodDictionaryMirror on: methodDictionaryHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
objectMirrorOn: objectHandle
	^ObjectMirror on: objectHandle
! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:57'!
speciesMirrorOn: classHandle
	^SpeciesMirror on: classHandle
! !

!Mirror class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:57'!
on: handle
	^self new handle: handle
! !

!ObjectMirror methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:58'!
= anObject
	^self class = anObject class and: [handle = anObject handle]
! !

!ObjectMirror methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:58:58'!
hash
	^ handle hash
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
equals: anotherObject
	^ (anotherObject isKindOf: self class)
		and: [ handle = anotherObject handle ]
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
lookup: aSelector
	^self reflectedBehavior compiledMethodFor: aSelector
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectsBytesObject
	^handle isBytes
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectsInteger
	^handle isInteger
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectsLargeObject
	^handle isLarge
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectsNil
	^handle = handle nilObject
! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:58'!
_gate
	^self
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asAssociationMirror
	^self associationMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asBehaviorMirror
	^self behaviorMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asBlockMirror
	^ self compiledBlockMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asByteArray
	^self bytes
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asClassMirror
	^self classMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asClosureMirror
	^ self closureMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asDictionaryMirror
	^self dictionaryMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asLocalArray
	| size |
	size := self size.
	^(1 to: size) collect: [:i | self slotAt: i]
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asLocalInteger
	^handle asLocalInteger
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asLocalString
	^handle asLocalString
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asMethodMirror
	^self compiledMethodMirrorOn: handle
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asSpeciesMirror
	^(self speciesMirrorOn: handle) reflectsMetaclass
		ifTrue: [self metaclassMirrorOn: handle]
		ifFalse: [self classMirrorOn: handle]
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asStringMirror
	^self
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
asSubject
	^handle mirage
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
bytes
	^handle asLocalBytes
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
dispatch: aMessage from: parentInterpreter
	| method interpreter |
	method := self lookup: aMessage selector.
	method ifNil: [ self ASSERT: false ].
	interpreter := parentInterpreter class
		on: self
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
do: aBlock
	1 to: self size do: [:index | | slot |
		slot := self slotAt: index.
		aBlock value: slot]
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
invoke: method with: arguments
	| interpreter |
	interpreter := SmalltalkInterpreter on: self with: arguments for: method.
	^ interpreter evaluate: method
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
localClassname
	^self reflectedClass localName
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectedBehavior
	| behavior |
	behavior := handle getBehavior.
	^self behaviorMirrorOn: behavior
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectedClass
	^handle getClass
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotAt: index
	| slot |
	slot := handle slotAt: index.
	^self objectMirrorOn: slot
! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotAt: index put: value
	handle slotAt: index put: value _gate handle oid.
	^ value
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
at: index
	| slot |
	slot := self reflectedClass instSize + index.
	^self slotAt: slot
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
getInstVarAt: index
	^self slotAt: index
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
getInstVarNamed: name
	| index |
	index := handle indexOf: name for: self.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
setInstVarAt: index with: value
	^ self slotAt: index put: value
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
slotOf: species named: name
	| index |
	index := handle indexOf: name inStructureOf: species name asSymbol.
	^self slotAt: index
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
structure
	^handle structureOf: self structureType
! !

!ObjectMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:58'!
structureType
	^self subclassResponsibility
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
basicFlags
	^handle basicFlags
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
largeSize
	^handle largeSize
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
localDeepCopy
	self reflectsInteger
		ifTrue: [ ^ self asLocalInteger ].
	^ (1 to: self size)
		collect: [ :i | | slot |
			slot := self slotAt: i.
			slot localDeepCopy ]
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
reflectsMethodDictionary
	^false
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
size
	^handle size - self reflectedClass instSize
! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
slotSize
	^ handle size
! !

!ObjectMirror methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:58'!
contains: anAddress
	^anAddress >= handle oid and: [anAddress < (handle oid + self size)]
! !

!ObjectMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:58'!
localDescription
	| class name |
	self reflectsInteger
		ifTrue: [ ^ 'int ' , self asLocalInteger printString ].
	^ [ class := self reflectedClass.
	name := class localName.
	(name = 'String' or: [ name = 'Symbol' ])
		ifTrue: [ ^ name , ' <' , self asLocalString , '>' ].
	name withArticle]
		on: StorageReadError
		do: [ self printString , '(could not be read)' ]
! !

!ObjectMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:58'!
printOn: aStream
	| description |
	self reflectsInteger
		ifTrue: [ ^ aStream
				nextPutAll: 'SMI (';
				print: self asLocalInteger;
				nextPut: $) ].
	description := [ self reflectedClass localName withArticle ]
		on: Error
		do: [ 'broken class' ].
	aStream
		nextPutAll:
			self class name withArticle , '(' , handle printString , ', '
				, description , ')'
! !

!ObjectMirror methodsFor: 'converting' stamp: 'KenD 2/22/2023 22:58:58'!
mirage
	^handle mirage
! !

!StackFrameMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:24'!
argumentAt: index
	^(handle slotAt: LastArgumentIndex - index + 1) mirror
! !

!StackFrameMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:24'!
method
	| mirror |
	mirror := (handle slotAt: MethodIndex) mirror asMethodMirror.
	^mirror isValid ifTrue: mirror
! !

!StackFrameMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:24'!
receiver
	^(handle slotAt: ReceiverIndex) mirror
! !

!StackFrameMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:24'!
returnAddress
	^handle slotAt: ReturnAddressIndex
! !

!StackFrameMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:24'!
currentIp
	^handle currentIp
! !

!StackFrameMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:24'!
printOn: aStream
	aStream nextPutAll: 'SFMirror(' , String cr , handle printString , ')'
! !

!StackFrameMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:24'!
slotAtTop
	^handle slotAtTop
! !

!ObjectMap methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:58'!
allSlotNames
	^#()
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
arrayedSize
	^self size
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
behavior: aSlotObjectMap
	| class |
	class := aSlotObjectMap slotAt: 1.
	spec := class instanceSpec
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
bodySizeInBytes
	"Return the size of object body(s) in bytes,
	 padded if a byte object"
	^ self subclassResponsibility 
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
classname
	^spec name
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
headerSizeInBytes
	"
		Return the size of object header in bytes, 
		including both small and large part (if any).
	"
	
	^ self isSmall ifTrue: [ 8 ] ifFalse: [ 16 ]

! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
headerSmallSize
	"Return value of 'size' field of small header"
	 | size |	
   size := self size.
   ^ size < 256 ifTrue: [ size ] ifFalse: [ 0 ]
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
size
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	self subclassResponsibility 
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
sizeInBytes
	"Return the size of object in bytes without padding"
	^ self subclassResponsibility 
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotAt: index
	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self subclassResponsibility  
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotAt: index put: value
	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self subclassResponsibility
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotNamed: name
	"Get a named slot with given `name`"

	| index |
	index := self allSlotNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotNamed: name put: value
	"Set a named slot with given `name` to `value`"

	| index |
	index := self allSlotNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index put: value
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
slotsDo: aBlock
	
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
spec
	^ spec
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:58'!
wordSize
	"Return the size in bytes of the word (i.e, a reference to an object)"
	
	^ 8 "For now, 64bit only!!"
! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
initializeAs: anRGBehavior sized: size
	self subclassResponsibility
! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
nilAll: nilObject
	
! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:58'!
nilWith: nilObject
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isBytes
	^ false
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isClosure
	^ false
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isDictionaryMap
	^ false
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isImmediate
	^false
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isNil
	^ spec notNil and: [spec name = #UndefinedObject]
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isPointers
	^false
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
isSmall
	^self size < 256
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
loadIvar: aSymbol
	^nil
! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:58'!
storeIvar: aSymbol with: anObjectMap
	^ nil
! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:58'!
classFor: anRGBehavior
	anRGBehavior name == #SmallInteger ifTrue: [^SmallintObjectMap].
	^anRGBehavior isBytes
		ifTrue: [ ByteObjectMap ]
		ifFalse: [ SlotObjectMap ]
! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:58'!
new: anRGBehavior
	^self new: anRGBehavior size: 0
! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:58'!
new: anRGBehavior size: size
	| class |
	"self assert: (anRGBehavior isVariable or: [ size == 0 ]). isVariable too slow to assert"
	class := self classFor: anRGBehavior.
	^ class new initializeAs: anRGBehavior sized: size
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
associationAt: aSymbol ifAbsent: aBlock
	^ assocs at: aSymbol ifAbsent: aBlock
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
associationAt: aSymbol ifPresent: aBlock
	assocs at: aSymbol ifPresent: [:assoc |  ^ aBlock value: assoc ].
	^ nil
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
associations
	^ assocs values
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
at: aSymbol
	^self
		at: aSymbol
		ifAbsent: [ self error: aSymbol , ' was not found in dictionary' ]
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
at: aSymbol ifAbsent: aBlock
	| assoc |
	assoc := assocs
		at: aSymbol
		ifAbsent: [ ^ aBlock value ].
	^ assoc value
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
at: aSymbol ifPresent: aBlock
	| value |
	value := self at: aSymbol ifAbsent: [ ^ nil ].
	^ aBlock value: value
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
at: aSymbol put: anObject
	| s assoc value |
	assoc := assocs
		at: aSymbol
		ifAbsentPut: [ s := image newSymbol: aSymbol.
			assoc := image newAssociation: s -> image nil ].
	value := image transferLiteralDeep: anObject.
	assoc value: value .
	^ value
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
beConstant
	constant := true
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
image: aPowertalkRingImage
	image := aPowertalkRingImage
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
includesKey: aSymbol
	^assocs includesKey: aSymbol
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
initialize
	assocs := Dictionary new.
	constant := false
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
initializeAs: anRGBehavior
	spec := anRGBehavior
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
isConstant
	^ constant
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
isDictionaryMap
	^ true
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
keys
	| keys |
	keys := assocs values collect: #key.
	^image newArray: keys
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
realSpec
	^realSpec
! !

!BootstrapDictionaryMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:48'!
realSpec: anRGBehavior
	realSpec := anRGBehavior 
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
asString
	| string |
	string := bytes allButLast asString.
	^spec name = #String ifTrue: [ string ] ifFalse: [ string asSymbol ]
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
bytes
	^ bytes
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
contentsString
		spec name == #String
		ifTrue: [ ^bytes allButLast asString storeString ].
		spec name == #Symbol
				ifTrue: [ ^bytes allButLast asString asSymbol storeString ].
		spec name == #ByteArray
			ifTrue: [ ^bytes storeString ].
		^spec name withArticle, ': ', bytes printString
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
headerFlags
	| byte variable small |
	byte := 1.
	variable := 2.
	small := self isSmall ifTrue: [ 16r80 ] ifFalse: [ 0 ].
	^ byte | variable | small
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
headerHash
	^ hash
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
headerHash: anInteger
	hash := anInteger
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
isBytes
	^true
! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:49'!
printOn: aStream
	spec ifNil: [ ^ super printOn: aStream ].
	aStream
		nextPutAll: '<<';
		nextPutAll: self contentsString;
		nextPutAll: '>>'
! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
at: index
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: bytes size).
	^bytes at: index
! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
at: index put: anObjectMap
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"

	| value |
	self assert: (index between: 1 and: bytes size).
	self assert: anObjectMap isImmediate.
	value := anObjectMap value.
	self assert: (value between: 0 and: 255).
	bytes at: index put: value.
	^anObjectMap
! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
bodySizeInBytes
	"Return the size of object body(s) in bytes, padded"
	^ self size alignedTo: self wordSize
! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
fillFrom: anObject
	self assert: anObject size == bytes size.
	bytes replaceFrom: 1 to: bytes size with: anObject startingAt: 1
! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:49'!
size
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ bytes size
! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
initialize
	hash := 0
! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:49'!
initializeAs: anRGBehavior sized: size
	self assert: anRGBehavior notNil.
"	self assert: anRGBehavior isBytes.
	self assert: anRGBehavior isVariable.
"	
	spec := anRGBehavior.
	bytes := ByteArray new: size
! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
new: anRGBehavior size: anInteger

	^ self new
		initializeAs: anRGBehavior sized: anInteger
! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:49'!
new: anRGBehavior valued: bytes
	"self assert: anRGBehavior isBytes."
	^self new initializeAs: anRGBehavior sized: bytes size; fillFrom: bytes
! !

!SymbolMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
asString
	^ symbol
! !

!SymbolMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
contentsString
	^symbol storeString

! !

!SymbolMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
symbol
	^symbol
! !

!SymbolMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:25'!
symbol: aSymbol
	symbol := aSymbol 
! !

!SymbolMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:25'!
new: anRGBehavior symbol: aSymbol
	| bytes |
	bytes := aSymbol copyWith: Character null.
	^ self new
		initializeAs: anRGBehavior sized: bytes size;
		fillFrom: bytes;
		symbol: aSymbol
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
allSlotNames
	^ spec properties
		at: #allSlotNames
		ifAbsentPut: [ self computeAllSlotNames ]
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
arrayedSize
	"
	 Return the size of the arrayed part of this object, that this,
	 the value of size field in object header minus the instSize. 
	"

	^ self size - self instSize
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
asBoolean
	spec name = #True ifTrue: [ ^true ].	spec name = #False ifTrue: [ ^false ].
		self ASSERT: false
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
at: index
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: slots size - self instSize).
	^slots at: self instSize + index
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
at: index put: value
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	self assert: spec isVariable.
	self assert: (index between: 1 and: slots size - self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: self instSize + index put: value
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
basicAt: index
	"Return indexed value at given raw index, starting with 1"

	self assert: (index between: 1 and: slots size).
	^ slots at: index
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
bodySizeInBytes
	^ self sizeInBytes

! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
computeAllSlotNames
	^spec allInstVarNames
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
doesNotUnderstand: aMessage
	| sel ivars |
	sel := aMessage selector.
	ivars := self allSlotNames.
	sel isUnary
		ifTrue: [ (ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel ] ].
	(sel isKeyword and: [ sel numArgs == 1 ])
		ifTrue: [ sel := sel allButLast.
			(ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel put: aMessage arguments first ] ].
	^ super doesNotUnderstand: aMessage
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
instSize
	| c |
	^ spec properties at: #instSize ifAbsentPut: [spec isMeta
		ifTrue: [ c := spec environment at: #Class.
			
			c instSize + spec instSize ]
		ifFalse: [ spec instSize ]]
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
isPointers
	^true
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
loadIvar: aSymbol
	| ivar |
	ivar := self allSlotNames indexOf: aSymbol.
	^ ivar > 0
		ifTrue: [ self slotAt: ivar ]
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
printOn: aStream
	aStream
		nextPutAll: '<<';
		nextPutAll: spec name withArticle;
		nextPutAll: '>>'
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
size
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ slots size
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
sizeInBytes
	^ self size * self wordSize

! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slotAt: index
	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self assert: (index between: 1 and: self instSize).
	^slots at: index
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slotAt: index put: value
	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self assert: (index between: 1 and: self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: index put: value
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slots
	^slots
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slotsDo: aBlock
	slots do: aBlock
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
storeIvar: aSymbol with: anObject
	| ivar |
	ivar := self allSlotNames indexOf: aSymbol.
	^ ivar > 0
		ifTrue: [ self slotAt: ivar put: anObject ]
! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
value
	| message |
	(self allSlotNames includes: #value)
		ifFalse: [ ^ super value ].
	message := Message selector: #value.
	^ self doesNotUnderstand: message
! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
atAllPut: value
	slots atAllPut: value
! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
initializeAs: anRGBehavior sized: size
	self assert: anRGBehavior notNil.
	self assert: anRGBehavior isPointers.
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	spec := anRGBehavior.
	slots := Array new: self instSize + size
! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
headerFlags
	| variable named small |
	variable := spec isVariable ifTrue: [2] ifFalse: [0].
	named := spec instSize == 0 ifTrue: [0] ifFalse: [4].
	small := self isSmall ifTrue: [16r80] ifFalse: [0].
	^ variable | named | small
! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
headerHash
	^hash
! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
headerHash: anInteger
	hash := anInteger
! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
initialize
	hash := 0
! !

!SlotObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2023 22:59:22'!
validate
	super validate.
	slots withIndexDo:[:value :index | self assert: value notNil ]
! !

!SlotObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SlotObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new: anRGBehavior size: size

	^ self new initializeAs: anRGBehavior sized: size
! !

!SlotObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new: anRGBehavior size: size withAll: value
	| obj |
	obj := self new: anRGBehavior size: size.
	^obj atAllPut: value; yourself
	
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
block
	^block
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
block: anSCompiledBlock
	block := anSCompiledBlock
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
executionTree
	^ block optimizedCode
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
home
	block capturesHome ifFalse: [ self error: 'closure has no home' ].
	^block capturesSelf ifTrue: [ self at: 2 ] ifFalse: [ self at: 1 ]
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
isClosure
	^true
! !

!ClosureMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
printOn: aStream
	aStream
		nextPutAll: '<< ['.
	self slots do: [ :slot | aStream print: slot ] separatedBy: [ aStream nextPutAll: ', ' ].
aStream
		nextPutAll: '] >>'
! !

!ClosureMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:50'!
classFor: anRGBehavior
	^ self
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
allInstVarNames
	^self subclassResponsibility
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
allSlotNames
	^ slotNames ifNil: [ self computeAllSlotNames ]
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
instanceSpec
	^instanceSpec
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
instanceSpec: anRGBehavior
	instanceSpec := anRGBehavior
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
storeCvar: aSymbol with: anObject
	| species namespaces |
	species := self. 
	[ namespaces := species namespaces.
	namespaces slotsDo: [ :namespace |
	(namespace includesKey: aSymbol)
		ifTrue: [ ^ namespace at: aSymbol put: anObject ]].
	species := species superclass.
	species isNil 
	] whileFalse.
	^ nil


! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
storeNamed: aSymbol with: anObjectMap
	(self storeCvar: aSymbol with: anObjectMap) ifNotNil: [ :value | ^ value ].
	^ self module namespace
		at: aSymbol
		put: anObjectMap
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
superclass
	^ self slotNamed: #superclass
! !

!SpeciesMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
superclass: aSpeciesMap
	^ self slotNamed: #superclass put: aSpeciesMap
! !

!SpeciesMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:23'!
classFor: anRGBehavior
	^self
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
allInstVarNames
	^ (spec environment at: #Class)allInstVarNames, spec allInstVarNames
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
computeAllSlotNames
	| c |
	c := spec environment at: #Class.
	^slotNames := c allInstVarNames , spec allInstVarNames
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
instanceSide
	^ self
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
name
	^instanceSpec name
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
namespaces
	^ self slotNamed: #namespaces
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
namespaces: array
	^ self slotNamed: #namespaces put: array
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
printOn: aStream
	aStream
		nextPutAll: '<<';
		nextPutAll: self name asString;
		nextPutAll: '>>'
! !

!ClassMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
withAllSuperclasses
	^self superclass isNil ifTrue: [ OrderedCollection with: self ]
		ifFalse: [self superclass withAllSuperclasses
				addFirst: self;
				yourself ]
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
allInstVarNames
	^ (spec environment at: #Metaclass) allInstVarNames
		, spec allInstVarNames
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
class: aClassMap
	self slotNamed: #class put: aClassMap
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
computeAllSlotNames
	| c |
	c := spec environment at: #Metaclass.
	^slotNames := c allInstVarNames
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
createClassAssociationsWith: aVirtualImage
	
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
instanceSide
	^ self slotNamed: #class
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
module
	^ self instanceSide module
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
namespaces
	^ self instanceSide namespaces
! !

!MetaclassMap methodsFor: 'accessing - parallel hierarchy' stamp: 'KenD 2/22/2023 22:58:56'!
printOn: aStream
	aStream
		nextPutAll: '<<';
		nextPutAll: self instanceSide name asString;
		nextPutAll: ' class>>'
! !

!SmallintObjectMap methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:59:22'!
= anObject
	anObject class == self class
		ifFalse: [ ^ false ].
	^ value = anObject value
! !

!SmallintObjectMap methodsFor: 'comparing' stamp: 'KenD 2/22/2023 22:59:22'!
hash
	^ value hash
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
at: index
	self errorNotIndexable
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
at: index put: anObject
	self errorNotIndexable
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
size
	^ 0
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slotAt: index
	self errorNotIndexable
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
slotAt: index put: anObject
	self errorNotIndexable
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
value
	^value
! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:22'!
value: aSmallInteger
	value := aSmallInteger
! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
initializeAs: anRGBehavior sized: size
	self shouldNotImplement
! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:22'!
initializeAs: anRGBehavior valued: anInteger
	self assert: anRGBehavior name == #SmallInteger.
	self assert: anInteger isInteger.
	spec := anRGBehavior.
	value := anInteger
! !

!SmallintObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:22'!
isImmediate
	^ true
! !

!SmallintObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:22'!
printOn: aStream
	aStream
		nextPutAll: '<<';
		nextPutAll: value printString;
		nextPutAll: '>>'
! !

!SmallintObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2023 22:59:22'!
validate
	super validate.
	self assert: value isSmallInteger 
! !

!SmallintObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:22'!
new: anRGBehavior valued: anInteger
	^self new initializeAs: anRGBehavior valued: anInteger
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
=> aSymbol
	^ specs at: aSymbol
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
createMethodDictionary: species sized: anInteger
	| behavior md size dictionary |
	behavior := species instanceBehavior.
	md := self classNamed: #MethodDictionary.
	size := kernel newInteger: anInteger.
	dictionary := runtime sendLocal: #new: to: md with: {size}.
	behavior methods: dictionary.
	^ dictionary
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
fillClasses
	| class meta |
	specs allClasses
		do: [ :def | 
			class := self classFor: def.
			meta := self metaclassFor: def metaclass.
			self
				fillSpecies: meta with: def metaclass;
				fillSpecies: class with: def ]
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
fillSpecies: species with: classDefinition

	| dictionary smethod transferred tags organization category |
	dictionary := self
		              createMethodDictionary: species
		              sized: classDefinition methods size.
	classDefinition methods do: [ :methodDefinition | 
		smethod := runtime compile: methodDefinition.
		transferred := kernel transferMethod: smethod in: species.
		runtime sendLocal: #basicAt:put: to: dictionary with: { 
				transferred selector.
				transferred }.
		tags := methodDefinition tags.
		tags notEmpty ifTrue: [ 
		organization := runtime sendLocal: #organization to: species.
		category := runtime newSymbol: tags anyone.
		runtime sendLocal: #classify:under: to: organization with: { transferred selector. category } ]]
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
fillSymbols
	| table namespaces cvars |
	namespaces := (self classNamed: #Symbol) namespaces.
	cvars := namespaces at: 1.
	table := cvars at: 'SymbolTable'.
	symbols
		do: [ :sym | kernel runtime sendLocal: #add: to: table with: {sym} ]
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
formatOfClass: definition
	| variable pointers  |
	variable := definition isVariable
		ifTrue: [ 16r2000 ]
		ifFalse: [ 0 ].
	pointers := definition isBytes
		ifTrue: [ 0 ]
		ifFalse: [ 16r4000 ].
	^ variable | pointers | definition allInstVarNames size
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
formatOfMetaclass: definition
	| variable pointers size |
	variable := definition isVariable
		ifTrue: [ 16r2000 ]
		ifFalse: [ 0 ].
	pointers := definition isBytes
		ifTrue: [ 0 ]
		ifFalse: [ 16r4000 ].
	size := (self => #Class) allInstVarNames size
		+ definition allInstVarNames size.
	^ variable | pointers | size
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
initialize
	classes := OrderedDictionary new.
	metaclasses := OrderedDictionary new.
	identityMap := IdentityDictionary new.
	symbols := OrderedCollection new
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
initializeBehavior: anObjectMap
	| class |
	class := classes at: anObjectMap spec.
	anObjectMap behavior: class instanceBehavior.

! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
kernel: aPowertalkRingKernelModule
	kernel := aPowertalkRingKernelModule.
	nilObj := kernel nil.
	trueObj := kernel true.
	falseObj := kernel false.
	
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
log: aString
	Transcript
		show: aString;
		cr
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
metaclasses
	^metaclasses
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newArray: anArray
	| array |
	array := self newArraySized: anArray size.
	anArray withIndexDo: [ :obj :i | array at: i put: obj ].
	^ array
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newBytesFrom: aByteObject
	^self newBytes: aByteObject class name contents: aByteObject
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newBytesOf: anRGBehavior sized: anInteger
	| contents |
	contents := ByteArray new: anInteger.
	^ self newBytesOf: anRGBehavior contents: contents
! !

!PowertalkRingModule methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newSlots: classname
	^self newSlots: classname sized: 0
! !

!PowertalkRingModule methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewBytes: classname contents: aByteObject
	^ self basicNewBytesOf: self => classname contents: aByteObject
! !

!PowertalkRingModule methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewBytesOf: anRGBehavior contents: aByteObject
	^ ByteObjectMap new: anRGBehavior valued: aByteObject
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewSlots: classname
	^ self basicNewSlots: classname sized: 0
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewSlots: classname in: spec
	^ self basicNewSlots: classname in: spec sized: 0
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewSlots: classname in: spec sized: size
	| species |
	species := spec at: classname.
	^self basicNewSlotsOf: species sized: size
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewSlots: classname sized: size
	^ self basicNewSlots: classname in: specs sized: size
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
basicNewSlotsOf: anRGBehavior sized: size
	^ SlotObjectMap new: anRGBehavior size: size withAll: nilObj
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
classFor: anRGBehavior
	^classes at: anRGBehavior
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
classes
	^ classes
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
createSpecies: definition
	| class meta ibehavior cbehavior |
	class := ClassMap new: definition metaclass size: 0 withAll: nilObj.
	class instanceSpec: definition.
	meta := MetaclassMap
		new: (self => #Metaclass) metaclass
		size: 0
		withAll: nilObj.
	meta instanceSpec: definition metaclass.
	ibehavior := self basicNewSlots: #Behavior.
	cbehavior := self basicNewSlots: #Behavior.
	ibehavior class: class.
	cbehavior class: meta.
	meta
		class: class;
		instanceBehavior: cbehavior.
	class instanceBehavior: ibehavior.
	classes at: definition put: class.
	metaclasses at: definition metaclass put: meta
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
false
	^ falseObj
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
genesis
	specs allClasses do: [ :def | self createSpecies: def ].
	specs allClasses do: [ :def | self buildSpecies: def ].

! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
metaclassFor: anRGBehavior
	^ metaclasses at: anRGBehavior
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newBytes: classname contents: aByteObject
	^self basicNewBytes: classname contents: aByteObject
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newBytesOf: anRGBehavior contents: aByteObject
^ self basicNewBytesOf: anRGBehavior contents: aByteObject

! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newOf: anRGBehavior sized: anInteger
	^ anRGBehavior isBytes
		ifTrue: [ self newBytesOf: anRGBehavior sized: anInteger ]
		ifFalse: [ self newSlotsOf: anRGBehavior sized: anInteger ]
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newSlots: classname sized: size
	"
	Allocate an object of pointer type (as SlotObjectMap).
	It is niled-out, and 	`size` is the size of indexed part (i.e.,
	shall not include named slots)
	"
^ self basicNewSlots: classname sized: size.

! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newSlotsOf: anRGBehavior sized: size
	"
	Allocate an object of pointer type (as SlotObjectMap).
	It is niled-out, and 	`size` is the size of indexed part (i.e.,
	shall not include named slots)
	"

^ self basicNewSlotsOf: anRGBehavior sized: size

! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
nil
	^ nilObj
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
runtime
	^ runtime
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
speciesFor: anRGBehavior
	^ anRGBehavior isMeta ifTrue: [metaclasses at: anRGBehavior] ifFalse: [ classes at: anRGBehavior ]
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
specs
	^specs
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
specs: anRGEnvironment
	specs := anRGEnvironment.

! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
transferLiteral: anObject
	| class transferred slot |
	class := anObject class.
	(class inheritsFrom: ObjectMap)
		ifTrue: [ ^ anObject ].
	(class inheritsFrom: Integer)
		ifTrue: [ ^ self newInteger: anObject ].
	(class inheritsFrom: Symbol)
		ifTrue: [ ^ self newSymbol: anObject ].
	(class inheritsFrom: String)
		ifTrue: [ ^ self newString: anObject ].
	class = ByteArray
		ifTrue: [ ^ self newBytesFrom: anObject ].
	transferred := self newSlots: anObject class name sized: anObject size.
	anObject
		withIndexDo: [ :elem :i | 
			slot := self transferLiteralDeep: elem.
			transferred at: i put: slot ].
	^ transferred
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
transferLiteralDeep: anObject
	| class transferred slot size ivar |
	class := anObject class.
	anObject isInteger
		ifTrue: [ ^ self newInteger: anObject ].
	anObject == nil
		ifTrue: [ ^ nilObj ].
	anObject == false
		ifTrue: [ ^ falseObj ].
	anObject == true
		ifTrue: [ ^ trueObj ].
	identityMap at: anObject ifPresent: [ :existing | ^ existing ].
	(class == Symbol or: [ class inheritsFrom: Symbol ])
		ifTrue: [ ^ self newSymbol: anObject ].
	anObject isString
		ifTrue: [ ^ self newString: anObject ].
	class = ByteArray
		ifTrue: [ ^ self newBytesFrom: anObject ].
	(class == Float or: [ class inheritsFrom: Float ])
		ifTrue: [ ^ self newFloatFrom: anObject ].
	(class inheritsFrom: ObjectMap)
		ifTrue: [ ^ anObject ].
	class == SCompiledBlock
		ifTrue: [ ^ self transferBlock: anObject ].
	class == Character ifTrue: [ ^self transferCharacter: anObject ].
	size := class isVariable
		ifTrue: [ anObject size ]
		ifFalse: [ 0 ].
	transferred := self newSlots: class name sized: size.
	1 to: class instSize do: [ :i | 
		ivar := anObject instVarAt: i.
		slot := self transferLiteralDeep: ivar.
		transferred slotAt: i put: slot ].
	size > 0
		ifTrue: [ anObject
				withIndexDo: [ :elem :i | 
					slot := self transferLiteralDeep: elem.
					transferred at: i put: slot ] ].
	^ transferred
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
true
	^ trueObj
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
vmPrimitivesSpec
	^vmPrimitivesSpec
! !

!PowertalkRingModule methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
vmPrimitivesSpec: anRGEnvironment
	vmPrimitivesSpec := anRGEnvironment
! !

!PowertalkRingModule methodsFor: 'own services' stamp: 'KenD 2/22/2023 22:59:03'!
buildSpecies: spec
	| sspec sclass sbehavior metasuper  |
	sspec := spec superclass.
	sspec
		ifNil: [ sclass := nilObj.
			sbehavior := nilObj.
			metasuper := classes at: self => #Class ]
		ifNotNil: [ sclass := classes at: sspec.
			sbehavior := sclass instanceBehavior.
			metasuper := metaclasses at: sspec metaclass ].
	self
		initializeClass: spec superclass: sclass superbehavior: sbehavior;
		initializeMetaclass: spec metaclass superclass: metasuper
! !

!PowertalkRingModule methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
classNamed: aString
	^self classFor: self => aString
! !

!PowertalkRingModule methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
generateLMR
	^(RingBasedLMRBootstrapper new image: self) convert
! !

!PowertalkRingModule methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
initializeClass: definition superclass: superclass superbehavior: superbehavior
	| class name flag ivars namespaces subclasses format |
	class := classes at: definition.
	class instanceBehavior next: superbehavior.
	subclasses := definition subclasses
		collect: [ :def | classes at: def ].
	subclasses := kernel newArray: subclasses.
	name := kernel newString: definition name.
	flag := self formatOfClass: definition.
	format := kernel newInteger: flag.
	ivars := kernel newStringArray: definition instVarNames.
	namespaces := kernel createClassNamespaces: definition.
	class
		superclass: superclass;
		format: format;
		instanceVariables: ivars;
		namespaces: namespaces;
		organization: nilObj;
		name: name;
		subclasses: subclasses;
		module: module.
	definition metaclass allInstVarNames
		do: [ :ivar | class slotNamed: ivar put: nilObj ]
! !

!PowertalkRingModule methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
initializeMetaclass: definition superclass: superclass
	| meta ivars flags format superbehavior |
	meta := metaclasses at: definition.
	superbehavior := superclass instanceBehavior.
	meta instanceBehavior next: superbehavior.
	ivars := kernel newStringArray: definition instVarNames.
	flags := kernel formatOfMetaclass: definition.
	format := kernel newInteger: flags.
	meta
		superclass: superclass;
		format: format;
		instanceVariables: ivars;
		organization: nilObj
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
fromSpec
	^ self new specs: self kernelSpec; vmPrimitivesSpec: self vmPrimitivesSpec
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
kernelSpec
	^ KernelSpec ifNil: [ KernelSpec := self readSpec: #Kernel at: '.' ]
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
lmrBootstrapper
	^ self new
		specs: self lmrBootstrapperSpec
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
lmrBootstrapperSpec
	^ LMRBootstrapperSpec
		ifNil: [ LMRBootstrapperSpec := self readSpec: #Bootstrapper at: 'Core' ]
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
readSpec: specName at: path
	| root current repo spec subdir |
	root := '.' asFileReference.
	current := (root / 'specs' / 'current') contents asString trim.
	subdir := path isString ifTrue: [ path ] ifFalse: [ path asPath pathString ].
	repo := TonelRepository new
		directory: root / 'specs' / current / subdir.
		
	spec := repo asRingEnvironmentWith: {('.' split: specName) last}.
	^ spec clean
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
resetSpecs
	KernelSpec := nil.
	VMPrimitivesSpec := nil.
	LMRBootstrapperSpec := nil
! !

!PowertalkRingModule class methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
vmPrimitivesSpec
	^ VMPrimitivesSpec
		ifNil: [ VMPrimitivesSpec := self readSpec: #VM at: 'Kernel' ]
! !

!PowertalkRingModule class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:03'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!PowertalkRingImage methodsFor: 'own services' stamp: 'KenD 2/22/2023 22:59:03'!
bootstrap
	runtime
		sendLocal: #bootstrap to: module;
		removeBootstrapDictionaryOverrides
! !

!PowertalkRingImage methodsFor: 'own services' stamp: 'KenD 2/22/2023 22:59:03'!
bootstrapDictionaries
	^bootstrapDicts
! !

!PowertalkRingImage methodsFor: 'own services' stamp: 'KenD 2/22/2023 22:59:03'!
builder
	^	RingBasedLMRBootstrapper new image: self.
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
createBootstrapNamespace
	| namespace |
	namespace := self newBootstrapDictionaryOf: self => #Namespace.
	module namespace: namespace.
	namespace
		at: #WordSize put: wordSize;
		at: #LastHash put: 1.
	classes do: [ :c | namespace at: c name asSymbol put: c ]
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
createClassNamespaces: spec
	| names cvars array |
	names := spec classVariables.
	names isEmpty
		ifTrue: [ ^ self newArraySized: 0 ].
	cvars := self newBootstrapDictionaryOf: self => #Namespace.
	names do: [ :rgVar | cvars at: rgVar name put: nilObj ].
	array := self newArraySized: 1.
	array at: 1 put: cvars.
	^ array
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
initialize
	super initialize.
	bootstrapDicts := OrderedCollection new.
	kernel := self
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newBootstrapDictionaryOf: anRGBehavior
	"
	Allocate a bootstrap dictionary object. Its contents is managed by the
	mother image, but in the baby smalltalk can do	at: and at:put:, via primitives.
	It is used to replace PoolDictionaries and Namespaces until the baby has been
	initialized and is ready to become a fully working image. At that point, the
	BootstrapDictionaries are converted to the corresponding types and discarded.
	"

	| result |
	result := BootstrapDictionaryMap new
		initializeAs: self => #BootstrapDictionary.
	bootstrapDicts add: result.
	^ result
		realSpec: anRGBehavior;
		image: self
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newClosure: anInteger
	^ ClosureMap new: closureSpec size: anInteger withAll: nilObj
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newFloatFrom: aFloat
	^ self newBytes: 'Float' contents: aFloat pointerDouble
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
newSymbol: aSymbol
	| new |
	identityMap at: aSymbol ifPresent: [ :s | ^ s ].
	new := SymbolMap new: symbolSpec symbol: aSymbol.
	symbols add: new.
	^ identityMap at: aSymbol put: new
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
specs: anRGEnvironment
	super specs: anRGEnvironment.
	closureSpec := self => #Closure.
	arraySpec := self => #Array.
	smiSpec := self => #SmallInteger.
	symbolSpec := self => #Symbol
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
transferBlock: anSCompiledBlock
	| transferred method format |
	identityMap at: anSCompiledBlock
		ifPresent: [ :b | ^ b ].
	transferred := self newSlots: #CompiledBlock.
	identityMap at: anSCompiledBlock put: transferred.
	method := identityMap at: anSCompiledBlock method.
	format := self newInteger: anSCompiledBlock format.
	transferred
		method: method;
		format: format;
		optimizedCode: nilObj.
	^ transferred
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
transferCharacter: aCharacter
	| class bytechars value transferred int |
	identityMap at: aCharacter ifPresent: [ :c | ^ c ].
	class := self classNamed: #Character.
	bytechars := class namespaces slots first at: #ByteCharacters.
	value := aCharacter asInteger.
	transferred := bytechars slots
		at: value + 1
		ifAbsent: [ int := self newInteger: value.
			(self newSlots: 'Character') value: int ].
	identityMap at: aCharacter put: transferred.
	^ transferred
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
wordSize
	^ wordSize
! !

!PowertalkRingImage methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:03'!
wordSize: anInteger
	wordSize := anInteger.
	maxSMI := (1 bitShift: wordSize * 8 - 2) - 1.
	minSMI := maxSMI negated - 1

! !

!PowertalkRingImage methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
genesis
	"
	Create the world (should take less than 6 days). This is named 'genesis' to remind us those who had
	done this (and much more) before us. Namely SELF people. I (JV) would like to use this opportunity and point you to
	
	https://github.com/russellallen/self/blob/2bcf2c4cab23f52bf68ac4f617020e748699a548/vm/src/any/memory/universe.cpp#L79
	"

	nilObj := self basicNewSlots: #UndefinedObject.
	trueObj := self basicNewSlots: #True.
	falseObj := self basicNewSlots: #False.
	module := self basicNewSlots: #KernelModule.
	super genesis.
	self createBootstrapNamespace.
	runtime := PowertalkRingRuntime new.
	runtime image: self
! !

!PowertalkRingImage methodsFor: 'building' stamp: 'KenD 2/22/2023 22:59:03'!
kernel
	^module
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newArraySized: anInteger
^self basicNewSlotsOf: arraySpec sized: anInteger.

! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newAssociation: anAssociation
	| assoc key value |
	assoc := self newSlots: 'Association'.
	key := self transferLiteralDeep: anAssociation key.
	value := self transferLiteralDeep: anAssociation value.
	^ assoc
		key: key;
		value: value; yourself
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newInteger: anInteger
	anInteger > maxSMI
		ifTrue: [ ^ self newLargePositiveInteger: anInteger ].
	anInteger < minSMI
		ifTrue: [ ^ self newLargeNegativeInteger: anInteger ].
	^ SmallintObjectMap new: smiSpec valued: anInteger
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newLargeNegativeInteger: anInteger
	| size bytes byte |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := ByteArray new: size withAll: 16rFF.
	1 to: anInteger bytesCount do: [ :i | 
		byte := anInteger byteAt: i.
		byte > 0
			ifTrue: [ byte := 256 - byte ].
		bytes at: i put: byte ].
	^ self newBytes: #LargeNegativeInteger contents: bytes
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newLargePositiveInteger: anInteger
	| size bytes |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := anInteger asByteArrayOfSize: size.
	^ self newBytes: #LargePositiveInteger contents: bytes reversed
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newString: aString
	| bytes |
	bytes := aString copyWith: Character null.
	^self newBytes: 'String' contents: bytes
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
newStringArray: strings
	| array bytes |
	array := self newSlots: 'Array' sized: strings size.
	strings
		withIndexDo: [ :s :i |
			bytes := self newString: s.
			array at: i put: bytes ].
	^ array
! !

!PowertalkRingImage methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:03'!
transferMethod: anSCompiledMethod in: species

	| size classname transferred astcodes selector format literal tliteral source |
	(identityMap includesKey: anSCompiledMethod) ifTrue: [ 
		self ASSERT: false ].
	size := anSCompiledMethod size.
	classname := anSCompiledMethod isCallback
		             ifTrue: [ 'CallbackMethod' ]
		             ifFalse: [ 'CompiledMethod' ].
	transferred := self newSlots: classname sized: size.
	identityMap at: anSCompiledMethod put: transferred.
	astcodes := self transferLiteralDeep: anSCompiledMethod astcodes.
	selector := self newSymbol: anSCompiledMethod selector.
	format := self newInteger: anSCompiledMethod format.
	source := self newString: anSCompiledMethod source.
	transferred
		astcodes: astcodes;
		class: species;
		selector: selector;
		format: format;
		source: source.
	1 to: size do: [ :i | 
		literal := anSCompiledMethod at: i.
		tliteral := self transferLiteralDeep: literal.
		transferred at: i put: tliteral ].
	^ transferred
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
argumentAt: anInteger
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
argumentAt: anInteger in: environmentIndex
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
arguments
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
captureClosure: anSBlock
	| closure s i type env arg |
	closure := system newClosureFor: anSBlock compiledCode.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: self self ].
			type = Environment
				ifTrue: [ closure at: i put: self environment ].
			type = EnvironmentValue
				ifTrue: [ env := self environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := self argumentAt: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
environment
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
false
	^ system false
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
firstArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
fourthArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
instanceVarAt: index
	^ system instanceVarOf: self self at: index
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
instanceVarAt: index put: value
	^ system instanceVarOf: self self at: index put: value
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
method
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
method: anSCompiledMethod
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
methodArguments
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
nil
	^ system nil
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
receiver
	^self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
secondArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
self
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
stackTemporaryAt: index
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
stackTemporaryAt: index put: value
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingFor: aSymbol
	| symbol |
	symbol := system symbolFrom: aSymbol.
	(self staticBindingForIvar: symbol) ifNotNil: [ :b | ^ b ].
	(self staticBindingForCvar: symbol) ifNotNil: [ :b | ^ b ].
	^ self staticBindingForMvar: symbol
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
system: aPowertalkRuntime
	system := aPowertalkRuntime
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
temporaryAt: index in: environmentIndex
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
temporaryAt: index in: environmentIndex put: value
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
thirdArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:52'!
true
	^ system true
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:52'!
backtrace
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:52'!
classBinding
	^system methodClassBinding: self method
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:52'!
loadAssociationValue: anObject
	^system loadAssociationValue: anObject
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingForNested: name
	| binding module |
	binding := self staticBindingFor: (name at: 1).
	module := binding valueWithin: self.
	^self staticBindingFor: (name at: 2) inModule: module
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:52'!
storeAssociation: association value: anObject
	system storeAssociation: association value: anObject 
! !

!EvaluationContext methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:52'!
printOn: aStream
 self backtrace
				do: [ :frame | 
					frame
						do: [ :elem | elem printOn: aStream ]
						separatedBy: [ aStream nextPutAll: '. ' ].
					aStream cr ]
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingFor: symbol inModule: module
	|  namespace assoc |
	namespace := system moduleNamespace: module.
	assoc := system lookupAssociationFor: symbol in: namespace.
	assoc ifNil: [ self error: 'unbound variable: ' , symbol asString ].
	^ SAssociationBinding new association: assoc
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingForCvar: aSymbol
	| species namespaces namespace nilObj |
	species := system methodClassBinding: self method.
	nilObj := system nil.
	[ namespaces := system speciesNamespaces: species.
	1 to: namespaces size do: [ :i | 
		namespace := namespaces at: i. 
		(system lookupAssociationFor: aSymbol in: namespace)
			ifNotNil: [ :assoc | ^ SAssociationBinding new association: assoc ] ].
	species := system speciesSuperclass: species.
	species = nilObj ] whileFalse.
	^ nil
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingForIvar: aSymbol
	| ivar |
	ivar := system staticBindingForIvar: aSymbol in: self self.
	^ ivar > 0
		ifTrue: [ SInstVarBinding new index: ivar ]
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:52'!
staticBindingForMvar: symbol
	| species module |
	species := system methodClassBinding: self method.
	module := system speciesModule: species.
	^ self staticBindingFor: symbol inModule: module
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
argumentAt: anInteger
	^arguments at: anInteger
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
argumentAt: index in: environmentIndex
	| env | 
	environmentIndex ifNil: [ ^ arguments at: index ].
	env := self environmentFor: environmentIndex.
	^ env at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
arguments
	^arguments
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
arguments: aCollection
	arguments := aCollection
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
beBlock
	isBlock := true
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
environment: anObject
	environment := anObject
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
environmentFor: anInteger
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
homeContext
	| frame searched |
	isBlock
		ifFalse: [ ^ self ].
	frame := parent.
	searched := system closureHome: environment.
	[ frame notNil ]
		whileTrue: [ frame environment == searched
				ifTrue: [ ^ frame ].
			frame := frame parent ].
	self error: 'home context not found'
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
initialize
	isBlock := false
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
initializeForBlock: sblock args: anArray closure: closure
	"When the block is not inlined, closure becomes the environment of the new context.
	But when it is inlined, the environment is the one of the builder, which is already
	set because we copied from the builder frame."


	sblock isInlined
		ifTrue: [ anArray
				with: sblock inlinedArgs
				do: [ :arg :i | temporaries at: i put: arg ] ]
		ifFalse: [ temporaries := Array new: sblock tempCount.
			arguments := anArray.
			environment := closure. ]
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
isBlock
	^isBlock
	
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
isHomeOf: env
	^ environment == env andNot: [ isBlock ]
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
method
	^method
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
methodArguments
	^ arguments
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
parent
	^parent
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
parent: anEvaluationContext
	parent := anEvaluationContext.
	(isBlock not and: [self framesCount > 1000])
		ifTrue: [ self halt ].
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
receiver
	^_self
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
self
	^ _self
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
self: anObject
	_self := anObject
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
stackTemporaryAt: index
	^ temporaries at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
stackTemporaryAt: index put: value
	^temporaries at: index put: value
	
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
temporaryAt: index in: environmentIndex
	| env |
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index ].
	env := self environmentFor: environmentIndex.
	^ env at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
temporaryAt: index in: environmentIndex put: value
	| env |
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index put: value ].
	env := self environmentFor: environmentIndex.
	^ env at: index put: value
! !

!LinkedEvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:58:54'!
backtrace
	| bt next |
	bt := OrderedCollection new.
	next := self.
	[ next notNil and: [ next method notNil ] ]
		whileTrue: [ bt
				add:
					{next method signature.
					next self} , next arguments.
			next := next parent ].
	^ bt
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
environment
	^ environment
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
firstArgument
	^arguments at: 1
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
fourthArgument
	^ arguments at: 4
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
framesCount
	| current result |
	current := self.
	result := 0.
	[ current notNil ]
		whileTrue: [ result := result + 1.
			current := current parent ].
	^ result
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
method: aMethod
	| count |
	method := aMethod.
	count := system methodTempCount: aMethod.
	temporaries := Array new: count
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
secondArgument
	^ arguments at: 2
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
thirdArgument
	^ arguments at: 3
! !

!LinkedEvaluationContext class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:54'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
beBlock
	super beBlock.
	operands := nil
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
dropOperands: anInteger
	anInteger timesRepeat: [ operands removeLast ]
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
hasFinished
	^parent isNil
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
popOperand
	^operands removeLast
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
popOperands: anInteger

	^ anInteger = 0 ifTrue: [#()] ifFalse: [operands removeLast: anInteger]
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
pushOperand: anObject
	
	operands ifNil: [ operands := OrderedCollection new ].
	operands add: anObject
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:53'!
restart
	operands ifNotNil: [operands reset]
! !

!IterativeLinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:53'!
operandAt: anInteger
	^operands at: operands size - anInteger 
! !

!RecursiveLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:05'!
evaluateFor: interpreter
	| sexpressions result |
	nonLocalReturn := [ :value | 
	interpreter context: self homeContext parent.
	^ value ].
	sexpressions := system sexpressionsOf: method.
	result := interpreter visitMethod: sexpressions.
	interpreter context: self parent.
	^ result
! !

!RecursiveLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:05'!
return: anObject
	^self isBlock
		ifTrue: [ nonLocalReturn value: anObject ]
		ifFalse: [ anObject ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
argumentAt: anInteger
	| args |
	args := self isBlock ifTrue: [ system blockArgumentCount: regM ] ifFalse: [ system methodArgumentCount: regM ].
	^stack at: regBP + 1 + (args - anInteger + 1)
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
argumentAt: index in: environmentIndex
	environmentIndex ifNil: [ ^ self argumentAt: index ].
	^self environment: environmentIndex at: index.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
arguments
	| count |
	self halt.
	count := system argumentCountOf: regM.
	^ (count to: 1 by: -1) collect: [ :i | self argumentAt: i ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
buildClosureFrameFor: receiver code: code environment: environment
	| temps |
	temps := system blockTempCount: code.
	self buildFrameFor: receiver code: code environment: environment temps: temps
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
buildFrameFor: receiver code: code environment: environment temps: temps
	regS := receiver.
	regM := code.
	self
		push: pc;
		push: regBP.
	regBP := regSP.
	regBP < 100 ifTrue: [ self error: 'stack overflow' ].
	self
		push: receiver;
		push: code;
		push: regE;
		push: environment.
	regE := environment.
	pc := 0.
	temps timesRepeat: [ self push: self nil ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
buildLaunchFrame
	| launcher code |
	launcher := system newCompiledMethod.
	code := system newArraySized: 0.
	system methodOptimizedCode: launcher put: code.
	self
		buildMethodFrameFor: system nil
		code: launcher
		environment: system nil
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
buildMethodFrameFor: receiver code: code environment: environment
	| temps |
	temps := system methodTempCount: code.
	self
		buildFrameFor: receiver
		code: code
		environment: environment
		temps: temps
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
environment
	^regE
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
environment: environmentIndex at: index
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	| env |
	environmentIndex = -1
		ifTrue: [ ^ self stackTemporaryAt: index ].
	env := environmentIndex = 0
		ifTrue: [ regE ]
		ifFalse: [ regE at: environmentIndex ].
	^ env at: index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
environment: environmentIndex at: index put: value
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	| env |
	environmentIndex = -1
		ifTrue: [ ^ self stackTemporaryAt: index put: value ].
	env := environmentIndex = 0
		ifTrue: [ regE ]
		ifFalse: [ regE at: environmentIndex ].
	^ env at: index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
firstArgument
	^ self argumentAt: 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
fourthArgument
	^ self argumentAt: 4
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
hasFinished
	^ regBP = 0 and: [ regSP = (stack size + 1) ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
incRegPC
	^pc := pc + 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
initialize
	super initialize.
	stack := Array new: 64 * 1024.
	regSP := stack size + 1.
	regBP := 0.
	pc := 0
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
isBlock
	^ system isBlock: regM
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
method
	^ self isBlock
		ifTrue: [ system blockMethod: regM ]
		ifFalse: [ regM ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
method: anSCompiledMethod
	regM := anSCompiledMethod

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
methodArguments
	| count |
	count := system methodArgumentCount: regM.
	^ (count to: 1 by: -1) collect: [ :i | self argumentAt: i ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
operandAt: anInteger
	^ stack at: regSP + anInteger
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
pop
	| result |
	result := stack at: regSP.
	regSP := regSP + 1.
	^result

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
popFrame
	regSP := regBP.
	regE := stack at: regBP - 3.
	regBP := self pop.
	pc := self pop.
		regM := stack at: regBP - 2.
	regS := stack at: regBP - 1.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
popLaunchFrame
	regSP := regBP.
	regE := stack at: regBP - 3.
	regBP := self pop.
	pc := self pop.
	regBP = 0
		ifTrue: [ ^ self ].
	regM := stack at: regBP - 2.
	regS := stack at: regBP - 1.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
popOperand
	^self pop
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
popOperands: anInteger
	| result |
	anInteger = 0
		ifTrue: [ ^ #() ].
	result := Array new: anInteger.
	anInteger to: 1 by: -1 do: [ :i | result at: i put: self pop ].
	^ result
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
printOn: aStream
	| slot |
	regSP to: regBP + 3 do: [ :i | slot := stack at: i. aStream nextPutAll: i hex; nextPutAll: ' -> '; print: slot;cr ].
	aStream nextPutAll: '...'; cr.

super printOn: aStream
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
printStack
	^String
		streamContents: [ :stream | 
			| slot |
			regSP to: stack size do: [ :i | 
				slot := stack at: i.
				stream
					nextPutAll: i hex;
					nextPutAll: ' -> ';
					print: slot;
					cr ] ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
push: anObject
	anObject ifNil: [ self halt ].
	regSP := regSP - 1.
	stack at: regSP put: anObject
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
pushOperand: anObject
	anObject ifNil: [ self halt ].
	regSP := regSP - 1.
	stack at: regSP put: anObject
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
receiver
	^ regS
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
regBP
	^ regBP
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
restart
	| nilObj |
	nilObj := system nil.
	regBP - self tempOffset to: regSP by: -1 do: [ :i | stack at: i put: nilObj ].
	pc := 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
secondArgument
	^ self argumentAt: 2
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
self
	^ regS
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
stackTemporaryAt: index
	^ stack at: regBP - self tempOffset - index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
stackTemporaryAt: index put: value
	^ stack at: regBP - self tempOffset - index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
system: aPowertalkRuntime
	super system: aPowertalkRuntime.
	regE := regS := system nil
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
tempOffset
"should be 2 or 4 if we had methods without environment"
	^4
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
temporaryAt: index in: environmentIndex
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index].
	^ self environment: environmentIndex at: index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
temporaryAt: index in: environmentIndex put: value
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index put: value ].
	^ self environment: environmentIndex at: index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
thirdArgument
	^ self argumentAt: 3
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:24'!
unwind
	| home bp environment |
	home := system closureHome: self environment.
	home == system nil ifTrue: [ self error: 'cannot return because closure has no home' ].
	bp := regBP.
	[ bp !!= 0 ]
		whileTrue: [ environment := stack at: bp - 4.
			environment == home
				ifTrue: [ regBP := bp.
					^ self popFrame ].
			bp := stack at: bp ].
	self error: 'cannot return from this closure'
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:24'!
backtrace
	| result bp code receiver |
	result := OrderedCollection new.
	bp := regBP.
	[ bp !!= 0 ]
		whileTrue: [ code := stack at: bp - 2.
			receiver := stack at: bp - 1.
			result add: {code. receiver}.
			bp := stack at: bp ].
	^ result
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:24'!
dropOperands: anInteger
	regSP := regSP + anInteger
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:24'!
reserveStackSlots: anInteger
	regSP := regSP - anInteger
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
regM
	^ regM
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
regPC
	^pc
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:24'!
regPC: anInteger
	pc := anInteger
! !

!PowertalkEvaluator methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:00'!
booleanFor: aBoolean
	^ aBoolean
		ifTrue: [ trueObj ]
		ifFalse: [ falseObj ]
! !

!PowertalkEvaluator methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:00'!
booleanFrom: anObject
	anObject == falseObj
		ifTrue: [ ^ false ].
	anObject == trueObj
		ifTrue: [ ^ true ].
	self error: 'not a boolean'
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
context
	^ context 
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
context: anEvaluationContext
	context := anEvaluationContext
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
evaluateClosure: receiver
	^ self evaluateClosure: receiver withArgs: #()
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
evaluatePrimitiveHash: receiver
	| hash |
	hash := receiver headerHash.
	hash = 0
		ifTrue: [ hash := self nextHash.
			receiver headerHash: hash ].
	^ runtime newInteger: hash
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
isIdentical: anObject to: anotherObject
	^ anObject == anotherObject
		or: [ anObject isImmediate
				and: [ anotherObject isImmediate
						and: [ anObject value = anotherObject value ] ] ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
lookup: aSymbol startingAt: aBehavior sendSite: anSMessage
	| method symbol |
	method := anSMessage methodFor: aBehavior.
	method
		ifNil: [ undermessages
				at: aSymbol
				ifPresent: [ :block | 
					anSMessage cacheUndermessage: block.
					^ block ].
			symbol := runtime symbolFrom: aSymbol.
			method := runtime lookup: symbol startingAt: aBehavior.
			self ASSERT: method notNil.
			anSMessage
				registerCacheWith: runtime;
				cache: method when: aBehavior ].
	^ method
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveFor: aSymbol
	^primitives at: aSymbol
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
primitivePrimeFor: anInteger
	| result |

	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= anInteger ].
	^ runtime newInteger: result
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
sendLocal: aSymbol to: receiver
	^ self sendLocal: aSymbol to: receiver with: {}
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
stackSize
	^context framesCount
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveBasicFlags
	^ [ :receiver :arguments | runtime newInteger: receiver headerFlags ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveBasicHash
	^ [ :receiver :arguments | runtime newInteger: receiver headerHash ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveBasicHashPut
	^ [ :receiver :arguments | receiver headerHash: arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveBitShiftLeft
	| result |
	^ [ :receiver :arguments | 
	result := receiver value bitShift: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveByteAt
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes at: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveByteAtPut

	^ [ :receiver :arguments | 
	receiver bytes
		at: arguments first value
		put: arguments second value.
	arguments second ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveHalt
	^ [ :receiver :arguments | self halt ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveIdentityEquals
	^ [ :receiver :arguments | runtime booleanFor: (self isIdentical: receiver to: arguments first)]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveIsLarge
	^ [ :receiver :arguments | runtime booleanFor: receiver isSmall not ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveIsSmallInteger
	^ [ :receiver :arguments | runtime booleanFor: receiver isImmediate ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveLargeSize
	^ [ :receiver :arguments | 
	receiver isSmall
		ifTrue: [ self error ].
	runtime newInteger: receiver size ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveLeadingZeroBitCount
	^ [ :receiver :arguments | 
	runtime
		newInteger: (self
		underprimitiveLeadingZeroBitCount: receiver value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveLeadingZeroBitCount: anInteger
	^ anInteger < 0
		ifTrue: [ 0 ]
		ifFalse: [ runtime wordSize * 8 - anInteger highBit ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIBitAnd
	^ [ :receiver :arguments | runtime newInteger: (receiver value bitAnd: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIBitOr
	^ [ :receiver :arguments | runtime newInteger: (receiver value bitOr: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIBitShiftLeft
	^ [ :receiver :arguments | runtime newInteger: receiver value << arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIBitShiftRight
	^ [ :receiver :arguments | 
	runtime
		newInteger: (receiver value >> arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIEquals
	^ [ :receiver :arguments | runtime booleanFor: receiver value = arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIGreaterEqualThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value >= arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIGreaterThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value > arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMILowerEqualThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value <= arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMILowerThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value < arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIMinus
	^ [ :receiver :arguments | runtime newInteger: receiver value - arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIPlus
	^ [ :receiver :arguments | runtime newInteger: receiver value + arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIQuotientTowardZero
	^ [ :receiver :arguments | runtime newInteger: (receiver value quo: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMIRemainderTowardZero
	^ [ :receiver :arguments | runtime newInteger: (receiver value \\ arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSMITimes
	^ [ :receiver :arguments | runtime newInteger: receiver value * arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSmallIntegerByteAt
	| result |
	^ [ :receiver :arguments | 
	result := receiver value byteAt: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveSmallSize
	^ [ :receiver :arguments | 
	receiver isSmall
		ifFalse: [ self error ].
	runtime newInteger: receiver size ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveULongAtOffset
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes unsignedLongAt: arguments second value + 1.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveULongAtOffsetPut
	| value |
	^ [ :receiver :arguments | 
	value := arguments second.
	receiver bytes
		unsignedLongAt: arguments first value + 1
		put: value value.
	value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveUShortAtOffset
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes
		unsignedShortAt: arguments second value + 1.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveUShortAtOffsetPut
	| value |
	^ [ :receiver :arguments | 
	value := arguments second.
	receiver bytes
		unsignedShortAt: arguments first value + 1
		put: value value.
	value ]
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
convertPrimitives
	| original |
	original := primitives.
	primitives := IdentityDictionary new.
	original
		keysAndValuesDo:
			[ :symbol :block | primitives at: (runtime symbolFromLocal: symbol) put: block ]
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
convertUndermessages
	| original |
	original := undermessages.
	undermessages := IdentityDictionary new.
	original keysAndValuesDo: [ :symbol :block | undermessages at: (runtime symbolFromLocal: symbol) put: block ]

! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
initializePrimitives
	primitives := IdentityDictionary new.
	primitives
		at: #Behavior put: self primitiveBehavior;
		at: #SetBehavior put: self primitiveSetBehavior;
		at: #Class put: self primitiveClass;
		at: #UnderHash put: self primitiveUnderHash;
		at: #UnderIsBytes put: self primitiveUnderIsBytes;
		at: #UnderPointersSize put: self primitiveUnderPointersSize;
		at: #UnderSize put: self primitiveUnderSize;
		at: #Size put: self primitiveSize;
		at: #Hash put: self primitiveHash;
		at: #At put: self primitiveAt;
		at: #AtPut put: self primitiveAtPut;
		at: #New put: self primitiveNew;
		at: #NewSized put: self primitiveNewSized;
		at: #NewBytes put: self primitiveNewBytes;
		at: #Equal put: self primitiveEqual;
		at: #SMIPlus put: self primitiveSMIPlus;
		at: #SMIMinus put: self primitiveSMIMinus;
		at: #SMITimes put: self primitiveSMITimes;
		at: #SMIIntDiv put: self primitiveSMIIntDiv;
		at: #SMIIntQuot put: self primitiveSMIIntQuot;
		at: #SMIBitAnd put: self primitiveSMIBitAnd;
		at: #SMIBitOr put: self primitiveSMIBitOr;
		at: #SMIBitXor put: self primitiveSMIBitXor;
		at: #SMIBitShift put: self primitiveSMIBitShift;
		at: #SMIHighBit put: self primitiveSMIHighBit;
		at: #SMIGreaterThan put: self primitiveSMIGreaterThan;
		at: #SMIGreaterEqualThan put: self primitiveSMIGreaterEqualThan;
		at: #SMIEqual put: self primitiveSMIEqual;
		at: #SMINotEqual put: self primitiveSMINotEqual;
		at: #SMISize put: self primitiveSMISize;
		at: #ClosureValue put: self primitiveClosureValue;
		at: #ClosureValueWithArgs put: self primitiveClosureValueWithArgs;
		at: #ClosureArgumentCount put: self primitiveClosureArgumentCount;
		at: #StringReplaceFromToWithStartingAt
			put: self primitiveStringReplaceFromToWithStartingAt;
		at: #FloatNew put: self primitiveFloatNew;
		at: #DictionaryNew put: self primitiveBootstrapDictNew;
		at: #FlushDispatchCaches put: self primitiveFlushDispatchCaches;
		at: #BootstrapDictBeConstant
			put: self primitiveBootstrapDictBeConstant;
		at: #BootstrapDictKeys put: self primitiveBootstrapDictKeys;
		at: #BootstrapDictAt put: self primitiveBootstrapDictAt;
		at: #BootstrapDictAtPut put: self primitiveBootstrapDictAtPut;
		at: #BootstrapLoadModule put: self primitiveBootstrapLoadModule;
		at: #BootstrapFixOverrides put: self primitiveBootstrapFixOverrides;
		at: #PrimeFor put: self primitivePrimeFor
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
initializeUndermessages
	undermessages := IdentityDictionary new.
	undermessages
		at: #_isSmallInteger put: self underprimitiveIsSmallInteger;
		at: #_isLarge put: self underprimitiveIsLarge;
		at: #_smallSize put: self underprimitiveSmallSize;
		at: #_largeSize put: self underprimitiveLargeSize;
		at: #_basicFlags put: self underprimitiveBasicFlags;
		at: #_basicAt: put: self underprimitiveBasicAt;
		at: #_byteAt: put: self underprimitiveByteAt;
		at: #_byteAt:put: put: self underprimitiveByteAtPut;
		at: #_basicHash put: self underprimitiveBasicHash;
		at: #_basicHash: put: self underprimitiveBasicHashPut;
		at: #_smallIntegerByteAt:
			put: self underprimitiveSmallIntegerByteAt;
		at: #_bitShiftLeft: put: self underprimitiveBitShiftLeft;
		at: #_primitiveULongAtOffset: put: self underprimitiveULongAtOffset;
		at: #_primitiveULongAtOffset:put:
			put: self underprimitiveULongAtOffsetPut;
		at: #_uShortAtOffset: put: self underprimitiveUShortAtOffset;
		at: #_uShortAtOffset:put: put: self underprimitiveUShortAtOffsetPut;
		at: #_smiPlus: put: self underprimitiveSMIPlus;
		at: #_smiMinus: put: self underprimitiveSMIMinus;
		at: #_smiTimes: put: self underprimitiveSMITimes;
		at: #_smiLowerThan: put: self underprimitiveSMILowerThan;
		at: #_smiLowerEqualThan: put: self underprimitiveSMILowerEqualThan;
		at: #_smiGreaterThan: put: self underprimitiveSMIGreaterThan;
		at: #_smiGreaterEqualThan:
			put: self underprimitiveSMIGreaterEqualThan;
		at: #_smiEquals: put: self underprimitiveSMIEquals;
		at: #_identityEquals: put: self underprimitiveIdentityEquals;
		at: #_leadingZeroBitCount
			put: self underprimitiveLeadingZeroBitCount;
		at: #_quotientTowardZero:
			put: self underprimitiveSMIQuotientTowardZero;
		at: #_remainderTowardZero:
			put: self underprimitiveSMIRemainderTowardZero;
		at: #_bitShiftLeft: put: self underprimitiveSMIBitShiftLeft;
		at: #_bitShiftRight: put: self underprimitiveSMIBitShiftRight;
		at: #_smiBitAnd: put: self underprimitiveSMIBitAnd;
		at: #_smiBitOr: put: self underprimitiveSMIBitOr;
		at: #_halt put: self underprimitiveHalt
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
runtime
	^runtime

! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
runtime: aPowertalkRuntime
	runtime := aPowertalkRuntime.
	nilObj := runtime nil.
	trueObj := runtime true.
	falseObj := runtime false.
	self
		initializeUndermessages;
		initializePrimitives; convertUndermessages ; convertPrimitives 
! !

!PowertalkEvaluator methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:00'!
evaluateClosure: aPClosure with: anObject
	 ^self evaluateClosure: aPClosure withArgs: { anObject }
! !

!PowertalkEvaluator methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:00'!
evaluateClosure: aPClosure with: anObject with: anotherObject
	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}
! !

!PowertalkEvaluator methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:00'!
evaluateClosure: receiver withArgs: arguments
	^self subclassResponsibility
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:00'!
false
	^ falseObj
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:00'!
initialize

	messageCount := 0
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:00'!
nil
	^nilObj
	
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:00'!
true
	^ trueObj
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveAt
	| receiver index value |
	^ [ receiver := context self.
	index := context firstArgument value.
	value := receiver at: index.
	receiver isBytes
		ifTrue: [ runtime newInteger: value ]
		ifFalse: [ value ] ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveAtPut
	| index |
	^ [ index := context firstArgument value.
	context self at: index put: context secondArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBehavior
	| receiver |
	^ [ receiver := context self.
	receiver isImmediate
		ifTrue: [ self smallintBehavior ]
		ifFalse: [ receiver behavior ] ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapDictAt
	| string |
	^ [ string := context firstArgument asString.
	context self at: string ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapDictAtPut
	| string |
	^ [ string := context firstArgument asString.
	context self at: string put: context secondArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapDictBeConstant
	^ [ context self beConstant ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapDictKeys
	^ [ context self keys ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapDictNew
	^ [ runtime newBootstrapDictionaryOf: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapFixOverrides
	^ [ runtime fixOverrides ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveBootstrapLoadModule
	^ [ runtime loadModule: context firstArgument]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveClass
	^ [ runtime speciesFor: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveClosureArgumentCount
	^ [ runtime newInteger: context self block argumentCount ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveClosureValue
	^ [ self evaluateClosure: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveClosureValueWithArgs
	^ [ self
		evaluateClosure: context self
		withArgs: context methodArguments ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveEqual
	^ [ runtime booleanFor: context self = context firstArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveFloatNew
	^ [ runtime newBytesOf: context self sized: 8 ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveFlushDispatchCaches
	^ [ runtime
		flushDispatchCache: context self
		in: context firstArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveHash
	^ [ runtime newInteger: (runtime hashFor: context self) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveNew
	^ [ runtime newSlotsOf: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveNewBytes
	| size |
	^ [ size := context firstArgument value.
	runtime newBytesOf: context self sized: size ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveNewObjectHeap
	^ [ runtime newObjectHeap ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveNewSized
	| size |
	^ [ size := context firstArgument value.
	runtime newOf: context self sized: size ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitivePrimeFor
	^ [ self primitivePrimeFor: context firstArgument value ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIBitAnd
	^ [ runtime
		newInteger:
			(context self value
				bitAnd: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIBitOr
	^ [ runtime
		newInteger:
			(context self value
				bitOr: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIBitShift
	^ [ runtime
		newInteger:
			(context self value
				bitShift: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIBitXor
	^ [ runtime
		newInteger:
			(context self value
				bitXor: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIEqual
	^ [ runtime
		booleanFor: (
			context self value = 
				context firstArgument value) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIGreaterEqualThan
	^ [ runtime
		booleanFor:
			context self value
				>= (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIGreaterThan
	^ [ runtime
		booleanFor: context self value > (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIHighBit
	^ [ runtime newInteger: context self value highBit ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIIntDiv
	^ [ runtime
		newInteger:
			context self value
				// (runtime integerFrom: context firstArgument ) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIIntQuot
	^ [ runtime
		newInteger:
			context self value
				\\ (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIMinus
	^ [ runtime
		newInteger:
			context self value
				- (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMINotEqual
	^ [ runtime
		booleanFor:
			context self value
				!!= (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMIPlus
	^ [ runtime
		newInteger:
			context self value
				+ (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMISize
	^ [ runtime newInteger: context self value bytesCount ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSMITimes
	^ [ runtime
		newInteger:
			context self value
				* (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSetBehavior
	| receiver |
	^ [ receiver := context self.
	receiver behavior: context firstArgument.
	receiver ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveSize
	^ [ runtime newInteger: (runtime arrayedSizeOf: context self) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveStringReplaceFromToWithStartingAt
	| receiver |
	^ [ receiver := context self.
	receiver bytes
		replaceFrom: context firstArgument value
		to: context secondArgument value
		with: context thirdArgument bytes
		startingAt: context fourthArgument value.
	receiver ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveUnderHash
	^ [ runtime newInteger: context self headerHash ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveUnderIsBytes
	^ [ runtime booleanFor: context self isBytes ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveUnderPointersSize
	^ [ runtime newInteger: context self pointersSize ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 2/22/2023 22:59:00'!
primitiveUnderSize
	^ [ runtime newInteger: context self size ]
! !

!PowertalkEvaluator methodsFor: 'underprimitives' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveBasicAt
	^ [ :receiver :arguments | receiver slots at: arguments first value ]
! !

!PowertalkEvaluator class methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:00'!
undermessages
	^#(_basicAt: #_basicAt:put: _bitShiftLeft: _byteAt: #_byteAt:put: _smallSize _largeSize _isSmallInteger _basicHash _basicHash: _smallIntegerByteAt: _uShortAtOffset: #_uShortAtOffset:put:)
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
evaluate
	^self subclassResponsibility

! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
hasFinished
	^ context hasFinished
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
prepareDispatch: dispatch
	self subclassResponsibility
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
prepareForBlock: sblock
	^self subclassResponsibility	
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
regR: anObject
	regR := anObject
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
underprimitiveRestart
	^ self subclassResponsibility 
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitBlock: anSBlock
	regR := context captureClosure: anSBlock
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitIdentifier: anSIdentifier
	regR := anSIdentifier binding valueWithin: context
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitLiteral: anSLiteral
	regR := runtime literalFor: anSLiteral value
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpAssign: anSOpAssign
	anSOpAssign assignees
		do: [ :identifier | identifier binding assign: regR within: context ]
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpDropToS: anSOpDropToS
	context dropOperands: anSOpDropToS count
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpLoadRfromFrame: anSOpLoadRfromFrame
	regR := context stackTemporaryAt: anSOpLoadRfromFrame index
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpLoadRfromStack: anSOpLoadRfromStack
	regR := context operandAt: anSOpLoadRfromStack index
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpLoadRwithNil: anSOpLoadRwithNil
	regR := nilObj
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpLoadRwithSelf: anSOpLoadRwithSelf
	regR := context self
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpPushR: anSOpPushR
	context pushOperand: regR
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpStoreRintoFrame: anSOpStoreRintoFrame
	context stackTemporaryAt: anSOpStoreRintoFrame index put: regR
! !

!PowertalkIterativeInterpreter methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:00'!
initializeUndermessages
	super initializeUndermessages.
	undermessages 		at: #_restart put: self underprimitiveRestart
	
! !

!PowertalkIterativeInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:00'!
prepareFor: anSCompiledMethod
	self subclassResponsibility
! !

!PowertalkIterativeInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:00'!
prepareForExecution: method
	self subclassResponsibility
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:00'!
evaluateClosure: closure withArgs: arguments
	| frame sblock |
	frame := closure builder.
	sblock := closure executionTree.
	context := frame copy
		beBlock;
		parent: context;
		initializeForBlock: sblock args: arguments closure: closure.
	^ self prepareForBlock: sblock
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
evaluationContextClass
	^self subclassResponsibility
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol literal dummy message dispatch |
	symbol := runtime symbolFromLocal: aSymbol.
	literal := SLiteral new value: nilObj.
	dummy := Array new: anArray size withAll: literal.
	message := SMessage new
		selector: symbol;
		receiver: literal;
		arguments: dummy.
	dispatch := SOpDispatchMessage new message: message.
	regR := receiver.
	context := self evaluationContextClass new system: self.
	self prepareDispatch: dispatch.
	dummy isEmpty
		ifFalse: [ context pushOperand: receiver ].
	anArray do: [ :arg | context pushOperand: arg ].
	self evaluate.
	^ regR
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpDispatchMessage: anSOpDispatchMessage
	| message argcount arguments behavior method size environment |
	message := anSOpDispatchMessage message.
	argcount := message argumentCount.
	arguments := context popOperands: argcount.
	(argcount > 0 andNot: [ message isCascadeMessage ])
		ifTrue: [ context popOperand ].
	message cachedUndermessage
		ifNotNil: [ :block | ^ regR := block value: regR value: arguments ].
	behavior := message receiver isSuper
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: regR ].
	method := self
		lookup: message selector
		startingAt: behavior
		sendSite: message.
	method isBlock
		ifTrue: [ ^ regR := method value: regR value: arguments ].
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	context := self evaluationContextClass new
		self: regR;
		arguments: arguments;
		environment: environment;
		system: runtime; method: method;
		parent: context
		.
	self prepareFor: method
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpNonLocalReturn: anSOpReturn
	context := context homeContext parent
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:00'!
visitOpReturn: anSOpReturn
	context := context parent
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
evaluate
	| operation |
	[ operation := context nextOperation. operation notNil]
		whileTrue: [ 			operation acceptVisitor: self ].
	Transcript print: 'MessageCount: ' , messageCount asString; cr.
	^ regR
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
evaluationContextClass
	^ LinkedLinearEvaluationContext
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
initialize
	super initialize.
	linearizer := SExpressionLinearizer new.

! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
initializePrimitives
	super initializePrimitives.
	linearizer primitives: primitives
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
prepareDispatch: dispatch
	context work:  {dispatch}
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
prepareForBlock: sblock
	| operations |
	operations := sblock optimizedCode.
	context work: operations; restart .
	^ nilObj
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
underprimitiveRestart
	^ [ :receiver :arguments | 
	context
		restart]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpJump: anSOpJump
	context regPC: anSOpJump target + 1
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpJumpFalse: anSOpJumpFalse
	regR == falseObj
		ifTrue: [ context regPC: anSOpJumpFalse target+1 ]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpJumpTrue: anSOpJumpTrue
	regR == trueObj
		ifTrue: [ context regPC: anSOpJumpTrue target +1]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpPopR: anSOpPopR
	regR := context popOperand
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpPrimitive: anSOpPrimtive
	regR := anSOpPrimtive block value
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:02'!
prepareFor: method
	| operations |
	operations := self
		prepareForExecution: method. context
		work: operations
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:02'!
prepareForExecution: anSCompiledMethod
	| operations array |
	operations := runtime sexpressionsOf: anSCompiledMethod.
	operations isCollection
		ifTrue: [ ^ operations ].
	linearizer visitMethod: operations.
	array := linearizer operations asArray.
	runtime methodOptimizedCode: operations put: array.
	^array
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:02'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	linearizer runtime: aPowertalkRuntime
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
dropToS
	context pushOperation: SOpDropToS new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
evaluate
	| operation |
	[ context hasWork ]
		whileTrue: [ operation := context popOperation.
			operation acceptVisitor: self ].
	Transcript print: 'MessageCount: ' , messageCount asString; cr.
	^ regR
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
evaluationContextClass
	^ LinkedTreeEvaluationContext
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
loadRfromStack: anInteger
	| load |
	load := SOpLoadRfromStack new index: anInteger.
		context pushOperation: load
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
loadRwithSelf
		context pushOperation:SOpLoadRwithSelf new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
prepareDispatch: dispatch
	context pushOperation: dispatch
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
prepareForBlock: sblock
	| statements |
	statements := sblock statements.
	(statements isEmpty orNot: [ statements last isReturn ])
		ifTrue: [ context pushOperation: SOpReturn new ].
	statements reverseDo: [ :exp | context pushOperation: exp ].
	^ nilObj
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
push: anSExpression
		context pushOperation: anSExpression
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
pushOpAssign: aCollection
	| op |
	op := SOpAssign new assignees: aCollection.
		context pushOperation: op
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
pushOpReturn
		context pushOperation: SOpReturn new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
pushOpReturn: aBoolean
	| class |
	class := (aBoolean andNot: [ context isBlock ])
		ifTrue: [ SOpReturn ]
		ifFalse: [ SOpNonLocalReturn ].
	context pushOperation: class new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
pushR
		context pushOperation: SOpPushR new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitAssignment: anSAssignment
	self
		pushOpAssign: anSAssignment assignees;		push: anSAssignment expression

! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitCascade: anSCascade
	| dispatch args argsize |
	self dropToS.
	anSCascade messages
		reverseDo: [ :msg | 
			dispatch := SOpDispatchMessage new message: msg.
			self push: dispatch.
			args := msg arguments.
			argsize := args size.
			self loadRfromStack: argsize.
			args
				reverseDo: [ :arg | 
					self
						pushR;
						push: arg ] ].
	self
		pushR;
		push: anSCascade receiver
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitMessage: anSMessage
	| dispatch args argsize |
	messageCount := messageCount + 1.
	dispatch := SOpDispatchMessage new message: anSMessage.
	self push: dispatch.
	args := anSMessage arguments.
	argsize := args size.
	argsize > 0
		ifTrue: [ self loadRfromStack: argsize ].
	args
		reverseDo: [ :arg | 
			self
				pushR;
				push: arg ].
	argsize > 0
		ifTrue: [ self pushR ].
	self push: anSMessage receiver
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitMethod: anSMethod
	| primitive statements |
	primitive := anSMethod pragma.
	primitive
		ifNotNil: [ primitive class == SPragma
				ifTrue: [ primitive := self primitiveFor: anSMethod primitive.
					anSMethod pragma: primitive ].
			self pushOpReturn.
			^ regR := primitive value ].
	statements := anSMethod statements.
	(statements isEmpty orNot: [ statements last isReturn ])
		ifTrue: [ self
				pushOpReturn;
				loadRwithSelf ].
	statements reverseDo: [ :node | self push: node ]
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitOpRestart: anSOpRestart
	| sexpressions |
	sexpressions := runtime sexpressionsOf: context method.
	self push: sexpressions
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:02'!
visitReturn: anSReturn
	self
		pushOpReturn: anSReturn local;
		push: anSReturn expression
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:02'!
prepareFor: method
	| sexpressions |
	sexpressions := self prepareForExecution: method.
	self push: sexpressions
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:02'!
prepareForExecution: anSCompiledMethod
	^runtime sexpressionsOf: anSCompiledMethod.

! !

!PowertalkLinkedTreeInterpreter methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:02'!
underprimitiveRestart
	^ [ :receiver :arguments | 
	| sexpressions |
	sexpressions := runtime sexpressionsOf: context method.
	context
		restart;
		pushOperation: sexpressions ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
evaluate
	| operation |
	[ operation := self nextOperation.
	operation notNil ] whileTrue: [ operation acceptVisitor: self ].
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
evaluateUndermessage: message with: block
	| argcount arguments |
	argcount := message argumentCount.
	arguments := context popOperands: argcount.
	regR := block value: regR value: arguments.
	context reserveStackSlots: argcount
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
initialize
	super initialize.
	context := StackedEvaluationContext new.
	linearizer := SExpressionLinearizer new
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
initializePrimitives
	super initializePrimitives.
	linearizer primitives: primitives
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
nextOperation
 | pc |
pc := context incRegPC.
	pc <= work size
		ifFalse: [ ^ nil ].
	^ work at: pc
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol literal dummy message dispatch prevWork prevPC |
	symbol := runtime symbolFromLocal: aSymbol.
	literal := SLiteral new value: nilObj.
	dummy := Array new: anArray size withAll: nil.
	message := SMessage new
		selector: symbol;
		receiver: literal;
		arguments: dummy.
	dispatch := SOpDispatchMessage new message: message.
	prevWork := work.
	prevPC := context regPC.
	context buildLaunchFrame.
	regR := receiver.
	anArray isEmpty
		ifFalse: [ context pushOperand: receiver ].
	anArray do: [ :arg | context pushOperand: arg ].
	work := {dispatch}.
	context regPC: 0.
	self evaluate.
	context popLaunchFrame.
	work := prevWork.
	context regPC: prevPC.
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
underprimitiveRestart
	^ [ :receiver :arguments | context restart ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpDispatchMessage: anSOpDispatchMessage
	| message behavior method size environment |
	message := anSOpDispatchMessage message.
	message cachedUndermessage
		ifNotNil: [ :block | ^ self evaluateUndermessage: message with: block ].
	behavior := message receiver isSuper
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: regR ].
	method := self
		lookup: message selector
		startingAt: behavior
		sendSite: message.
	method isBlock
		ifTrue: [ ^ self evaluateUndermessage: message with: method ].
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	self prepareFor: method.
	work := runtime methodOptimizedCode: method.
	context
		buildMethodFrameFor: regR
		code: method
		environment: environment
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpJump: anSOpJump
	context regPC: anSOpJump target
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpJumpFalse: anSOpJumpFalse
	regR == falseObj
		ifTrue: [ context regPC: anSOpJumpFalse target ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpJumpTrue: anSOpJumpTrue
	regR == trueObj
		ifTrue: [ context regPC: anSOpJumpTrue target ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpNonLocalReturn: anSOpReturn
	context unwind.
		work := runtime methodOptimizedCode: context regM
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpPopR: anSOpPopR
	regR := context pop
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpPrimitive: anSOpPrimtive
	regR := anSOpPrimtive block value
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:01'!
visitOpReturn: anSOpReturn
	context popFrame.
	work := runtime methodOptimizedCode: context regM
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:01'!
evaluateClosure: closure withArgs: arguments
	| block receiver |
	block := runtime closureBlock: closure.
	work := runtime blockOptimizedCode: block.
	receiver := (runtime blockCapturesSelf: block)
		ifTrue: [ closure at: 1 ]
		ifFalse: [ nilObj ].
	context
		popFrame;
		buildClosureFrameFor: receiver code: block environment: closure.
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:01'!
prepareFor: method
	self prepareForExecution: method

! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:01'!
prepareForExecution: method
	| operations linearized |
	operations := runtime sexpressionsOf: method.
	operations isCollection
		ifTrue: [ ^ self ].
	linearizer visitMethod: operations.
	linearized := linearizer operations asArray.
	runtime methodOptimizedCode: method put: linearized
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:01'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	linearizer
		runtime: aPowertalkRuntime;
		dropsArguments.
	context system: runtime
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
evaluateClosure: receiver whileFalse: arg
	| result |
	[ result := self evaluateClosure: receiver.
	self booleanFrom: result ]
		whileFalse: [ self evaluateClosure: arg ].
	^ receiver
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
evaluateClosure: receiver whileTrue: arg
	| result |
	[ result := self evaluateClosure: receiver.
	self booleanFrom: result ] whileTrue: [ self evaluateClosure: arg ].
	^ receiver
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
hasFinished
	^context isNil
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
initializePrimitives
	super initializePrimitives.
	primitives 
		at: #ClosureWhileTrue put: self primitiveClosureWhileTrue;
		at: #ClosureWhileFalse put: self primitiveClosureWhileFalse
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
primitiveClosureWhileFalse
	^ [ self
		evaluateClosure: context self
		whileFalse: context arguments first ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
primitiveClosureWhileTrue
	^ [ self
		evaluateClosure: context self
		whileTrue: context arguments first ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
send: aSymbol to: receiver with: arguments super: aBoolean
	^self send: aSymbol to: receiver with: arguments super: aBoolean sendSite: SMessage new

! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
send: aSymbol to: receiver with: arguments super: aBoolean sendSite: anSMessage
	| behavior method environment size |
	anSMessage cachedUndermessage
		ifNotNil: [ :block | ^ block value: receiver value: arguments ].
	behavior := aBoolean
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: receiver ].
	method := self
		lookup: aSymbol
		startingAt: behavior
		sendSite: anSMessage.
	method isBlock
		ifTrue: [ ^ method value: receiver value: arguments ].
	self ASSERT: method notNil.
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	context := RecursiveLinkedEvaluationContext new
		self: receiver;
		arguments: arguments;
		environment: environment;
		parent: context;
		method: method;
		system: runtime.
	^ context evaluateFor: self
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol res |
	symbol := runtime symbolFromLocal: aSymbol.
	res := self
		send: symbol
		to: receiver
		with: anArray
		super: false.
	^ res
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitAssignment: anSAssignment
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: context ].
	^ result
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitBlock: anSBlock
	^ context captureClosure: anSBlock
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitCascade: anSCascade
	| recv args  last |
	recv := anSCascade receiver acceptVisitor: self.
	anSCascade messages
		do: [ :msg | 
			args := msg arguments collect: [ :code | code acceptVisitor: self ].
			last := self
				send: msg selector
				to: recv
				with: args
				super: anSCascade receiver isSuper
				sendSite: msg ].
	^ last
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitIdentifier: anSIdentifier
	^ anSIdentifier binding valueWithin: context
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitLiteral: anSLiteral
	^ runtime literalFor: anSLiteral value
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitMessage: anSMessage
	| recv args |
	recv := anSMessage receiver acceptVisitor: self.
	args := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	^ self
		send: anSMessage selector
		to: recv
		with: args
		super: anSMessage receiver isSuper
		sendSite: anSMessage
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitMethod: anSMethod
	| primitive |
	primitive := anSMethod pragma.
	primitive ifNil: [ ^ self evaluateMethodStatements: anSMethod ].
	primitive class == SPragma
		ifTrue: [ primitive := self primitiveFor: anSMethod primitive.
			anSMethod pragma: primitive ].
	^ primitive value
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:02'!
visitReturn: anSReturn
	| value |
	value := anSReturn expression acceptVisitor: self.
	^context return: value
! !

!PowertalkRecursiveInterpreter methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:02'!
evaluateClosure: closure withArgs: arguments
	| frame sblock result |
	frame := closure builder.
	sblock := closure executionTree.
	context := frame copy
		beBlock;
		parent: context;
		initializeForBlock: sblock args: arguments closure: closure.
	result := nilObj.
	sblock statements do: [ :node | result := node acceptVisitor: self ].
	^ result
! !

!PowertalkRecursiveInterpreter methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:02'!
evaluateMethodStatements: anSMethod
	| last result |
	last := nil.
	anSMethod statements
		do: [ :node | 
			last := node.
			result := node acceptVisitor: self ].
	^ (last notNil and: [ last isReturn ])
		ifTrue: [ result ]
		ifFalse: [ context self ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'initializing' stamp: 'KenD 2/22/2023 22:59:02'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	aPowertalkRuntime
		override: #Closure -> #whileTrue: withPrimitive: 'ClosureWhileTrue';
		override: #Closure -> #whileFalse: withPrimitive: 'ClosureWhileFalse'
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
behaviorOf: anObject
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
evaluatePrimitiveHash: receiver
	| hash |
	hash := receiver headerHash.
	hash = 0
		ifTrue: [ hash := self nextHash.
			receiver headerHash: hash ].
	^ self newInteger: hash
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
flushDispatchCache: aSymbol in: class
	| behavior |
	behavior := self speciesInstanceBehavior: class.
	symbolCache at: aSymbol ifPresent: [ :messages | messages do: #flushCache ].
	^ methodCache removeKey: aSymbol -> behavior ifAbsent: nil
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
instanceVarOf: receiver at: anInteger
	^ receiver slotAt: anInteger
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
instanceVarOf: receiver at: anInteger put: value
	^ receiver slotAt: anInteger put: value
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
isClosure: anObjectMap
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
literalFor: anObject
	^anObject
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
localSymbolFrom: anObject
	^ anObject bytes allButLast asString asSymbol
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
lookup: aSymbol startingAt: aBehavior
	^methodCache at: aSymbol -> aBehavior ifAbsentPut: [ self doLookup: aSymbol startingAt: aBehavior ]
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
methodClassBinding: method
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
methodEnvironmentSize: anObject
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newBootstrapDictionaryOf: receiver
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newBytesOf: receiver sized: size
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newClosureFor: compiledBlock
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newEnvironmentSized: anInteger
	^self subclassResponsibility

! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newInteger: anInteger
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newOf: receiver sized: size
	^ self subclassResponsibility

! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newSlotsOf: receiver
^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
registerCache: anSMessage for: symbol
	| messages |
	messages := symbolCache at: symbol ifAbsentPut: [OrderedCollection new].
	messages add: anSMessage 
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
sendLocal: aSymbol to: receiver
	^ self sendLocal: aSymbol to: receiver with: {}
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
sendLocal: aSymbol to: receiver with: anArray
	^interpreter sendLocal: aSymbol to: receiver with: anArray
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
sexpressionsOf: aMethod
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesFor: anObject
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesInstanceBehavior: class
^	self subclassResponsibility 
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
symbolFrom: anObject
	^anObject
! !

!PowertalkRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
booleanFor: aBoolean
	^ aBoolean
		ifTrue: [ trueObj ]
		ifFalse: [ falseObj ]
! !

!PowertalkRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
booleanFrom: anObject
	anObject == falseObj
		ifTrue: [ ^ false ].
	anObject == trueObj
		ifTrue: [ ^ true ].
	self error: 'not a boolean'
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
false
	^ falseObj
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
initialize
	methodCache := Dictionary new.
	symbolCache := Dictionary new.
	overrides := Dictionary new
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
initializeInterpreter
	"interpreter := PowertalkRecursiveInterpreter new runtime: self"

	"interpreter := PowertalkIterativeTreeInterpreter new runtime: self"

	"interpreter := PowertalkLinkedLinearInterpreter new runtime: self"

	interpreter := PowertalkIterativeStackedInterpreter new runtime: self
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
interpreter
	^interpreter
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
nil
	^nilObj
	
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
symbolFromLocal: aSymbol
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
true
	^ trueObj
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
addSymbol: aSymbol
	| string |
	string := self newString: aSymbol asString.
	^ self sendLocal: #asSymbol to: string
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
arrayClass: anLMRObject
	arrayClass := anLMRObject 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
arrayedSizeOf: anLMRObject
	| species ivars |
	anLMRObject isImmediate ifTrue: [ ^0 ].
	species := self speciesFor: anLMRObject.
	ivars := self speciesInstanceSize: species.
	^anLMRObject size - ivars
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorClass: anLMRObject
	^ anLMRObject slotAt: behaviorClassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorClassIndex: anInteger
	behaviorClassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorClass_: anLMRObject
	behaviorClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorMethodDictionary: anLMRObject
	^ anLMRObject slotAt: behaviorMethodDictionaryIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorMethodDictionaryIndex: anInteger
	behaviorMethodDictionaryIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorNext: anLMRObject
	^ anLMRObject slotAt: behaviorNextIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorNextIndex: anInteger
	behaviorNextIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
behaviorOf: anLMRObject
	^anLMRObject isImmediate ifTrue: [ self smallIntegerBehavior ] ifFalse: [anLMRObject behavior]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockArgumentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockArgCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockCapturesHome: block
	| flags |
	flags := block slotAt: methodFlagsIndex.
	^ flags value anyMask: BlockCapturesHome
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockCapturesSelf: block
	| flags |
	flags := block slotAt: methodFlagsIndex.
	^ flags value anyMask: BlockCapturesSelf
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockClass: anLMRObject
	blockClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockEnvironmentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockEnvCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockExecutionTree: anLMRObject
	^ anLMRObject slotAt: methodOptimizedCodeIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockMethod: anLMRObject
	^ anLMRObject slotAt: blockMethodIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockMethodIndex: anInteger
	blockMethodIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockOptimizedCode: anLMRObject

	^ self methodOptimizedCode: anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockOptimizedCode: anLMRObject put: anObject
	^ self methodOptimizedCode: anLMRObject put: anObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
blockTempCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockTempCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
bootstrapper
	^bootstrapper
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
bootstrapper: aBootstrapper
	bootstrapper := aBootstrapper
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
byteArrayClass: anLMRObject
	byteArrayClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
classIvars: anLMRObject
	^ anLMRObject slotAt: speciesIvarsIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
classModule: class
	^ class slotAt: classModuleIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
classModuleIndex: anInteger
	classModuleIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
className: anLMRObject
	^ anLMRObject slotAt: classNameIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
classNameIndex: anInteger
	classNameIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
classNamespacesIndex: anInteger
	classNamespacesIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
closureBlock: closure
	^closure slotAt: closureBlockIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
closureBlockIndex: anInteger
	closureBlockIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
closureClass: anLMRObject
	closureClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
closureHome: closure
	| block |
	block := self closureBlock: closure.
	(self blockCapturesHome: block)
		ifFalse: [ self error: 'closure has no home' ].
	^ (self blockCapturesSelf: block)
		ifTrue: [ closure at: 2 ]
		ifFalse: [ closure at: 1 ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
dictionaryTable: anLMRObject
	^anLMRObject slotAt: dictionaryTableIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
dictionaryTableIndex: anInteger
	dictionaryTableIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
doLookup: aSymbol startingAt: aBehavior
	| behavior m |
	behavior := aBehavior.
	[ m := self methodFor: aSymbol in: behavior.
	m ifNotNil: [ ^m ].
	behavior := self behaviorNext: behavior.
	behavior !!= nilObj ] whileTrue.
	^ nil
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
fixOverrides
	| selector md |
	overrides
		keysAndValuesDo: [ :assoc :method | 
			selector := assoc value.
			md := self behaviorMethodDictionary: assoc key.
			self
				sendLocal: #at:put:
				to: md
				with:
					{selector.
					method} ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
hashFor: anLMRObject
	| shifted hash current |
	anLMRObject isImmediate
		ifTrue: [ ^ anLMRObject value ].
	current := anLMRObject headerHash.
	current !!= 0
		ifTrue: [ ^ current ].
	shifted := lastHash bitShift: -1.
	hash := (lastHash bitAnd: 1) = 0
		ifTrue: [ shifted ]
		ifFalse: [ shifted bitXor: 16rB9C8 ].
	anLMRObject headerHash: hash.
	^ lastHash := hash
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
initialize
	lastHash := 1.
	super initialize
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
integerFrom: anLMRObject
	| behavior class |
	anLMRObject isImmediate
		ifTrue: [ ^ anLMRObject value ].
	behavior := self behaviorOf: anLMRObject.
	class := self behaviorClass: behavior.
	^ class == largePositiveIntegerClass
		ifTrue: [ anLMRObject bytes asLittleEndianPositiveInteger ]
		ifFalse: [ anLMRObject bytes asLittleEndianNegativeInteger ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
isBlock: compiledCode
	^ (self behaviorClass: compiledCode behavior) ==
	blockClass 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
isMetaclass: anLMRObject
	^ (self speciesFor: anLMRObject) == metaclassClass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
kernel
	^kernel
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
kernel: anLMRObject
	kernel := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
knownSymbols: associations
	knownSymbols := Dictionary withAll: associations
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
largeNegativeIntegerClass: anLMRObject
	largeNegativeIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
largePositiveIntegerClass: anLMRObject
	largePositiveIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
loadAssociationValue: association
	^ association slotAt: 2.

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
loadModule: symbol
	^ bootstrapper loadModule: symbol asLocalString
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
lookupAssociationFor: aSymbol in: dictionary
	|  table assoc key |
	table := self dictionaryTable: dictionary.
	2 to: table size do: [ :index | 
		assoc := table slotAt: index.
		assoc == nilObj ifFalse: [key := assoc slotAt: 1. key == aSymbol
			ifTrue: [ ^ assoc] ]].
	^ nil
	
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
metaclassClass: anLMRObject
	metaclassClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
metaclassInstanceClass: anLMRObject
	^ anLMRObject slotAt: metaclassInstanceClassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
metaclassInstanceClassIndex: anInteger
	metaclassInstanceClassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
method: method literalAt: index
	^ method slotAt: methodInstSize + index
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodArgumentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: ArgCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodAstcodes: anLMRObject
	^ anLMRObject slotAt: methodAstcodesIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodAstcodesIndex: anInteger
	methodAstcodesIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodClass: anLMRObject
	methodClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodClassBinding: anLMRObject
	^ anLMRObject slotAt: methodClassBindingIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodClassBindingIndex: anInteger
	methodClassBindingIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodEnvironmentSize: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: EnvCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodFlagsIndex: anInteger
	methodFlagsIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodFor: aSymbol in: behavior
	| md table  |
	overrides at: behavior -> aSymbol ifPresent: [ :m | ^ m ].
	md := self behaviorMethodDictionary: behavior.
	table := self dictionaryTable: md.
	2 to: table size by: 2 do: [ :index | 
		(table slotAt: index) == aSymbol
			ifTrue: [ ^ table slotAt: index + 1 ] ].
	^ nil
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodInstSize: anInteger
	methodInstSize := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodOptimizedCode: anLMRObject
	| slot |
	slot := anLMRObject slotAt: methodOptimizedCodeIndex.
	^ slot == nilObj ifTrue: [ slot ] ifFalse: [ slot code ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodOptimizedCode: anLMRObject put: anObject
	| behavior header code |
	behavior := self speciesInstanceBehavior: arrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: 0;
		hash: 0.

	code := LMRExecutableCode new header: header; code: anObject.
	^ anLMRObject slotAt: methodOptimizedCodeIndex put: code
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodOptimizedCodeIndex: anInteger
	methodOptimizedCodeIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
methodTempCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: TempCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
moduleNamespace: anLMRObject
	^anLMRObject slotAt: moduleNamespaceIndex

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
moduleNamespaceIndex: anInteger

	moduleNamespaceIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newArray: anArray
| result |
result := 	self newArraySized: anArray size.
	anArray withIndexDo: [ :elem :i | result at: i put: elem ].
	^result
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newArraySized: anInteger
	| behavior header |
	behavior := self speciesInstanceBehavior: arrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: anInteger;
		hash: 0.
	^ LMRSlotObject new header: header
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newByteArray: aByteArray
	| behavior header |
	behavior := self speciesInstanceBehavior: byteArrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: aByteArray size;
		hash: 0.
	^ LMRByteObject new header: header; bytes: aByteArray
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newBytes: species size: anInteger
	| behavior header |
	behavior := self speciesInstanceBehavior: species.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: anInteger;
		hash: 0.
	^ LMRByteObject new
		header: header;
		bytes: (ByteArray new: anInteger)
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newBytesOf: species sized: size
	^ self newBytes: species size: size
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newCharacter: aCharacter
	| value |
	value := self newInteger: aCharacter asInteger.
	^self sendLocal: #asCharacter to: value.

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newClosureFor: compiledBlock
	| size closure |
	size := self blockEnvironmentCount: compiledBlock.
	closure := self newSlots: closureClass size:  size.
	closure slotAt: closureBlockIndex put: compiledBlock.
	^ closure
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newCompiledMethod
	| behavior header method |
	behavior := self speciesInstanceBehavior: methodClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: methodInstSize;
		hash: 0.
	method := LMRSlotObject new header: header.
	method slotAt: methodFlagsIndex put: (self newInteger: 0).
	^method
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newEnvironmentSized: anInteger
	^ self newArraySized: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newInteger: anInteger
	anInteger > maxSMI
		ifTrue: [ ^ self newLargePositiveInteger: anInteger ].
	anInteger < minSMI
		ifTrue: [ ^ self newLargeNegativeInteger: anInteger ].
	^ LMRSmallInteger new value: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newLargeNegativeInteger: anInteger
	| size bytes byte result complement |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	complement := anInteger negated - 1.
	bytes := ByteArray new: size withAll: 16rFF.
	1 to: anInteger bytesCount do: [ :i | 
		byte := 255 - (complement byteAt: i).
		bytes at: i put: byte ].
	(bytes at: size) < 128 ifTrue: [ bytes := bytes, #[16rFF 16rFF] ].
	result := self newBytes: largeNegativeIntegerClass size: bytes size.
	^result bytes: bytes

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newLargePositiveInteger: anInteger
	| size bytes result |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := anInteger asByteArrayOfSize: size.
	result := self newBytes: largePositiveIntegerClass size: size.
	^ result bytes: bytes reversed
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newOf: aSpecies sized: anInteger
	^(self speciesIsBytes: aSpecies)
		ifTrue: [ self newBytes: aSpecies size: anInteger ]
		ifFalse: [ self newSlots: aSpecies size: anInteger ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newSlots: class
	^self newSlots: class size: 0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newSlots: class size: anInteger
	| ivars behavior header result |
	ivars := self speciesInstanceSize: class.
	behavior := self speciesInstanceBehavior: class.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: false named: true;
		size: ivars + anInteger;
		hash: 0.
	result := class == behaviorClass
		ifTrue: [ LMRBehaviorObject new runtime: self]
		ifFalse: [ LMRSlotObject new ].
	^ result
		header: header;
		nilSlots: nilObj
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newSlotsOf: class
	^ self newSlots: class size: 0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newSmallInteger: anInteger
	^ LMRSmallInteger new value: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
newString: aString
	| behavior header bytes |
	behavior := self speciesInstanceBehavior: stringClass.
	bytes := aString asByteArray copyWith: 0.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: bytes size;
		hash: 0.
	^ LMRByteObject new
		header: header;
		bytes: bytes
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
nil: n true: t false: f
	nilObj := n.
	trueObj := t.
	falseObj := f
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
override: assoc with: method
	overrides at: assoc put: method
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
print: anLMRObject on: aStream
	| species name |
	species := self behaviorClass: anLMRObject behavior.
	name := self speciesLocalName: species.
	name = 'Symbol'
		ifTrue: [ ^ aStream nextPutAll: '<#' , anLMRObject asLocalString , '>' ].
	name = 'String'
		ifTrue: [ ^ aStream nextPutAll: '<''' , anLMRObject asLocalString , '''>' ].
	name = 'CompiledMethod'
		ifTrue: [ ^ aStream
				nextPutAll: '<';
				print: (self methodClassBinding: anLMRObject);
				nextPutAll: '>>#';
				nextPutAll: (anLMRObject slotAt: 5) asLocalString;
				nextPutAll: '>' ].
	aStream
		nextPut: $<;
		nextPutAll: name withArticle;
		nextPut: $>
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
printBehavior: anLMRBehavior on: aStream
	| species name |
	species := self behaviorClass: anLMRBehavior.
	name := self speciesLocalName: species.
	aStream
		nextPutAll: '<' , name , ' instanceBehavior>'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
removeOverride: assoc
	| species selector |
	species := assoc key.
	selector := assoc value.
	overrides removeKey: species -> selector.
	methodCache removeKey: selector -> species ifAbsent: nil.
	symbolCache
		at: selector
		ifPresent: [ :messages | messages do: #flushCache ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
sexpressionsOf: method
	| expressions astcodes decoder |
	expressions := self methodOptimizedCode: method.
	expressions == nilObj ifFalse: [ ^expressions ].
	astcodes := self methodAstcodes: method.
	decoder := AstcodeDecoder new
		stream: astcodes bytes readStream;
		method: method; builder: self.
	expressions := decoder decodeMethod.
	self methodOptimizedCode: method put: expressions.
	^expressions
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
smallIntegerBehavior
	^self speciesInstanceBehavior: smallIntegerClass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
smallIntegerClass: anLMRObject
	smallIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesFor: anLMRObject
	| behavior |
	behavior := self behaviorOf: anLMRObject.
	^self behaviorClass: behavior.


! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesFormatIndex: anInteger
	speciesFormatIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesInstanceBehavior: anLMRObject
	^anLMRObject slotAt: speciesInstanceBehaviorIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesInstanceBehaviorIndex: anInteger
	speciesInstanceBehaviorIndex := anInteger 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesInstanceClass: anLMRObject
	| metaclass |
	metaclass := self isMetaclass: anLMRObject.
	^ metaclass
		ifTrue: [ self metaclassInstanceClass: anLMRObject ]
		ifFalse: [ anLMRObject ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesInstanceSize: anLMRObject
	^ (anLMRObject slotAt: speciesFormatIndex) value bitAnd: 16r7F.
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesIsBytes: anLMRObject
	^ (anLMRObject slotAt: speciesFormatIndex) value noMask: 16r4000
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesIvarsIndex: anInteger
	speciesIvarsIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesLocalName: species
	| name class |
	(self isMetaclass: species) ifFalse: [
		name :=self className: species.
		^name asLocalString].
	
	class := self metaclassInstanceClass: species. 
	name := self className: class.
	^ name asLocalString, ' class'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesModule: species
	| class |
	(self isMetaclass: species)
		ifFalse: [ ^ self classModule: species ].
	class := self metaclassInstanceClass: species.
	^ self classModule: class
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesNamespaces: anLMRObject
	| class |
	class := self speciesInstanceClass: anLMRObject.
	^class slotAt: classNamespacesIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesSuperclass: anLMRObject
	^ anLMRObject slotAt: speciesSuperclassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
speciesSuperclassIndex: anInteger
	speciesSuperclassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
staticBindingForIvar: aSymbol in: receiver
	| class all slots bytes |
	
	class := self speciesFor: receiver.
	all := Array new: 0.
	[ class !!= nilObj ]
		whileTrue: [ slots := self classIvars: class.
			slots == nilObj
				ifFalse: [ all := slots slots , all ].
			class := self speciesSuperclass: class ].
	bytes := aSymbol bytes.
	all withIndexDo: [ :ivar :index | ivar bytes = bytes ifTrue: [ ^ index ] ].
	^0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
stringClass: anLMRObject
	stringClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
superBehaviorOf: class
	| superclass |
	superclass := self speciesSuperclass: class.
	^ self speciesInstanceBehavior: superclass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
symbolFromLocal: aSymbol
	| bytes table symbol |
	knownSymbols at: aSymbol ifPresent: [ :s | ^s ].
	bytes := aSymbol asByteArray, #[0].
	table := symbolTable slotAt: 2.
	2 to: table size do: [:i | symbol := table slotAt: i. symbol == nilObj ifFalse: [symbol bytes = bytes ifTrue: [ ^symbol ] ] ].
	self error: 'symbol not found'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
symbolTable: anLMRObject
	symbolTable:= anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
wordSize
	^wordSize
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:02'!
wordSize: anInteger
	wordSize := anInteger.
	maxSMI := (1 bitShift: wordSize * 8 - 2) - 1.
	minSMI := maxSMI negated - 1
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 2/22/2023 22:59:02'!
nativizeForLMR
	| script |
	script := 'nativizeForLMR
	lmr := Kernel loadModule: ''Nativization/LMR''. 
	lmr nativizeLoadedModules'.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #nativizeForLMR to: nilObj
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 2/22/2023 22:59:02'!
readKernel
	| script |
	script := 'readKernel
	| reader |
	reader := Kernel loadModule: ''ImageSegment/Reader''. 
	segment := reader read: ''build/Kernel.ims''.
	^segment'.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #readKernel to: nilObj
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 2/22/2023 22:59:02'!
writeKernelAt: anInteger
	| script |
	script := 'writeKernel
	| writer |
	writer := Kernel loadModule: ''ImageSegment/Writer''. 
	writer write: Kernel at: ' , anInteger asString
		, ' to: ''build/Kernel.ims'''.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #writeKernel to: nilObj
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
argumentCountOf: anObjectMap
self halt.
	^ anObjectMap argumentCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
behaviorOf: anObjectMap
	^ anObjectMap spec
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockArgumentCount: block
	^ block argumentCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockExecutionTree: block
	^ block executionTree
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockMethod: anObjectMap
	^ anObjectMap method
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockOptimizedCode: block
	^block optimizedCode
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockOptimizedCode: block put: anObject
	block optimizedCode: anObject
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
blockTempCount: block
	^ block tempCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
closureBlock: aClosureMap
	^aClosureMap block
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
closureHome: anObjectMap
	^ anObjectMap home
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
homeEnvironmentOf: aClosureMap
	^ aClosureMap slotAt: 2
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
integerFrom: anObjectMap
	anObjectMap isImmediate
		ifTrue: [ ^ anObjectMap value ].
		self halt.
	^ anObjectMap spec name == #LargePositiveInteger
		ifTrue: [ anObjectMap bytes asLittleEndianPositiveInteger ]
		ifFalse: [ anObjectMap bytes asLittleEndianNegativeInteger ]
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
isClosure: anObjectMap
	^anObjectMap class = ClosureMap
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
localSymbolFrom: anObjectMap
	^ anObjectMap symbol
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodArgumentCount: method
	^ method argumentCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodClassBinding: method
	^ method classBinding
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodEnvironmentSize: anSCompiledMethod
	^anSCompiledMethod environmentCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodOptimizedCode: anSCompiledMethod
	^ anSCompiledMethod optimizedCode
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodOptimizedCode: method put: anObject
	method optimizedCode: anObject
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
methodTempCount: method
	^ method tempCount
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
newSymbol: aSymbol
	^ image newSymbol: aSymbol
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
override: classname with: rgMethod
	| species selector method override |
	species := image specs at: classname.
	selector := rgMethod selector.
	method := species methodNamed: selector.
	override := method copy sourceCode: rgMethod sourceCode.
	overrides at: species -> selector put: override
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
symbolFrom: anObjectMap
	^ anObjectMap symbol
! !

!PowertalkRingRuntime methodsFor: 'services' stamp: 'KenD 2/22/2023 22:59:04'!
symbolFromLocal: aSymbol
	^ image newSymbol: aSymbol
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
arrayedSizeOf: anObjectMap
	^anObjectMap arrayedSize
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
compile: anRGMethod
	| class |
	class := image speciesFor: anRGMethod parent.
	^ SCompiler new
		forClass: class;
		compile: anRGMethod sourceCode
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
doLookup: aSymbol startingAt: aBehavior
	| behavior m c smethod |
	self ASSERT: aSymbol !!== #error:.
	behavior := aBehavior.
	[ m := self methodFor: aSymbol in: behavior.
	m
		ifNotNil: [ smethod := self compile: m.
			^ self transferMethodLiterals: smethod ].
	behavior := behavior superclass.
	behavior notNil ] whileTrue.
	^ aBehavior isMeta
		ifTrue: [ c := aBehavior environment at: #Class.
			self doLookup: aSymbol startingAt: c ]
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
image
	^image
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
image: aPowertalkImage
	image := aPowertalkImage.
	nilObj := image nil.
	trueObj := image true.
	falseObj := image false.
	self
		initializeEmulationOverrides;
		initializeInterpreter
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
isBlock: anSCompiledMethod
	^anSCompiledMethod isBlock
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
literalFor: anObject
	^ image transferLiteral: anObject
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
loadAssociationValue: association
	^association value
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
lookupAssociationFor: aSymbol in: dictionary
^dictionary
				associationAt: aSymbol
				ifPresent: [ :assoc | assoc]
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
method: anSCompiledMethod literalAt: index
	^anSCompiledMethod at: index
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
methodFor: aSymbol in: anRGBehavior
	overrides at: anRGBehavior->aSymbol ifPresent: [:m | ^m].
	^anRGBehavior methodNamed: aSymbol
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
moduleNamespace: anObjectMap
	^ anObjectMap namespace
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newArraySized: anInteger
	^ image newArraySized: anInteger
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newBootstrapDictionaryOf: aSpeciesMap
	^ image newBootstrapDictionaryOf: aSpeciesMap spec instanceSide
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newBytesOf: aSpeciesMap sized: size
	^ image newOf: aSpeciesMap spec instanceSide sized: size
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newClosureFor: compiledBlock
	| closure |
	closure :=  image newClosure: compiledBlock environmentCount.
	^closure
		block: compiledBlock

! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newCompiledMethod
	^ SCompiledMethod new
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newEnvironmentSized: anInteger
	^ image newArraySized: anInteger
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newInteger: anInteger
	^image newInteger: anInteger
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newOf: aSpeciesMap sized: size
	^ image newOf: aSpeciesMap spec instanceSide sized: size
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
newSlotsOf: aSpeciesMap
	^image newSlotsOf: aSpeciesMap spec instanceSide sized: 0
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
override: assoc withPrimitive: primitive
	| species selector method override count source |
	species := image specs at: assoc key.
	selector := assoc value.
	source := String
		streamContents: [ :s | 
			selector numArgs = 0
				ifTrue: [ s nextPutAll: selector ]
				ifFalse: [ count := 1.
					selector keywords
						do: [ :keyword | 
							s
								nextPutAll: keyword;
								nextPutAll: ' arg';
								nextPutAll: count asString;
								space.
							count := count + 1 ] ].
			s nextPutAll: '<primitive: ' , primitive , '>' ].
	method := species methodNamed: selector.
	override := method copy sourceCode: source.
	overrides at: species -> selector put: override
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
removeBootstrapDictionaryOverrides
self
		removeOverride: #'Namespace class' -> #new

! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
removeOverride: assoc
	| species selector symbol |
	species := image specs at: assoc key.
	selector := assoc value.
	overrides removeKey: species -> selector.
	methodCache removeKey: selector -> species ifAbsent: nil.
	symbol := self symbolFromLocal: selector.
	symbolCache
		at: symbol
		ifPresent: [ :messages | messages do: #flushCache ]
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
sexpressionsOf: anSCompiledMethod
	^ anSCompiledMethod prepareForExecution; optimizedCode
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesFor: anObjectMap
	^ image speciesFor: anObjectMap spec
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesModule: aSpeciesMap
	^ aSpeciesMap module
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesNamespaces: aSpeciesMap
	^ aSpeciesMap namespaces
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
speciesSuperclass: aSpeciesMap
	^ aSpeciesMap superclass
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
staticBindingForIvar: aSymbol in: receiver
	^receiver allSlotNames indexOf: aSymbol.
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
storeAssociation: association value: anObject
	association value: anObject
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
superBehaviorOf: aSpeciesMap
	^ aSpeciesMap superclass instanceSpec
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
transferLiteral: anObject
	^image transferLiteral: anObject
! !

!PowertalkRingRuntime methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:04'!
transferMethodLiterals: method
	| class |
	method withIndexDo: [:literal :i | 
		class := literal class.
		((class inheritsFrom: ObjectMap)
			or: [ class = SCompiledBlock ])
			ifFalse: [ method at: i put: (image transferLiteralDeep: literal) ] ].
	^ method
! !

!PowertalkRingRuntime methodsFor: 'own services' stamp: 'KenD 2/22/2023 22:59:04'!
blockCapturesSelf: block
	^ block capturesSelf 
! !

!PowertalkRingRuntime methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:04'!
initializeEmulationOverrides
	| classes |
	classes := image vmPrimitivesSpec allExtensionClasses.
	classes
		do: [ :class | 
			class methods do: [ :m | self override: class name with: m ].
			class metaclass methods
				do: [ :m | self override: class metaclass name with: m ] ]
! !

!PowertalkRingRuntime class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:04'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:21'!
comment
	^comments notNil ifTrue: [comments anyOne]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:21'!
comments
	^comments
! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:21'!
comments: aCollection
	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:59:21'!
moveCommentsTo: aParseNode
	aParseNode comments: comments.
	comments := nil
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
compileWarning: aString
	compiler notify: aString at: self stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
compiler
	^compiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
end
	^stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
end: aNumber
	stretch end: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
position
	^stretch start
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
position: aNumber
	stretch start: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
prevPosition
	^stretch start - 1
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
stretch
	^stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:21'!
stretch: aStretch
	stretch := aStretch
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
endsExpression
	^self isEnd
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
hasSymbol
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
is: anObject
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isAssignment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isBar
	^(self is: #'|') or: [self is: #'/']
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isBlockNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isComment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isDelimiter
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isEnd
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isIdentifier
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isKeyword
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isNameToken
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isNumberNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isPoolLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:59:21'!
isStringToken
	^false
! !

!SToken methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:21'!
initialize
	super initialize.
	stretch := 1 thru: 0
! !

!SToken methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:59:21'!
isDelimitedIdentifier
	^false
! !

!SToken class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:59:21'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
bindingTypeOf: id
	^ BindingTypes at: id
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeArgument
	^ SArgumentBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeAssignment
	| assignment assignees |
	assignment := SAssignment new.
	
	assignees := self nextExpressionArray.
	assignment expression: self nextExpression.
	assignees do: [ :identifier | assignment assign: identifier ].
	^ assignment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeBlock
	| expression inlined block index |
	expression := SBlock new.
	inlined := self nextBoolean.
	inlined
		ifTrue: [ expression inlinedArgs: self nextArray ]
		ifFalse: [ index := self nextInteger.
			block := self literalAt: index.
			builder ifNotNil: [ builder blockOptimizedCode: block put: expression ].
			expression
				compiledCode: block;
				index: index;
				capturedVariables: self nextArray ].
	expression statements: self nextExpressionArray.
	^ expression
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeCascade
	| cascade receiver messages message count |
	cascade := SCascade new.
	receiver := self nextExpression.
	count := self nextInteger.
	messages := (1 to: count)
		collect: [ :i | 
			message := SCascadeMessage decodeUsing: self.
			message cascade: cascade ].
	^ cascade
		receiver: receiver;
		messages: messages
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeCascadeMessage
	| selector arguments |
	selector := self nextSymbol.
	arguments := self nextExpressionArray.
	^ SCascadeMessage new
		selector: selector;
		arguments: arguments
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeDynamicVar
	^ SDynamicBinding new name: self nextSymbol
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeIdentifier
	| type binding |
	type := self bindingTypeOf: self nextInteger.
	binding := type decodeUsing: self.
	^ SIdentifier new binding: binding
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeLiteral
	| index value |
	index := self nextInteger.
	value := index = 0
		ifTrue: [ self nextLiteralInteger ]
		ifFalse: [ self literalAt: index ].
	^ SLiteral new
		index: index;
		value: value
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeMessage
	| inlined selector receiver arguments |
	inlined := self nextBoolean.
	selector := self nextSymbol.
	receiver := self nextExpression.
	arguments := self nextExpressionArray.
	^ SMessage new
		receiver: receiver;
		selector: selector;
		arguments: arguments;
		inlined: inlined
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeMethod
	| type node next pragma |
	type := stream next.
	type !!= MethodId
		ifTrue: [ self error: 'method astcode expected' ].
	node := SMethod new.
	next := stream peek.
	next = PragmaId
		ifTrue: [ stream next.
			pragma := SPragma new name: self nextSymbolOrNil.
			node pragma: pragma ].
	node
		compiledCode: method;
		statements: self nextExpressionArray.
	^ node
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeNestedDynamicVar
	^ SNestedDynamicBinding new
		name:
			self nextSymbol.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeReturn
	| expression local |
	local := self nextBoolean.
	expression := self nextExpression.
	^ SReturn new
		local: local;
		expression: expression
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
decodeTemporary
	^ STemporaryBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextArray
	| count |
	count := self nextInteger.
	^ stream next: count
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextEnvironment
	| value |
	value := self nextInteger.
	^ value !!= -2
		ifTrue: [ value ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextExpression
	| type |
	type := self nodeTypeOf: stream next.
	^type decodeUsing: self.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextExpressionArray
	| count |
	count := self nextInteger.
	^(1 to: count) collect: [ :arg | self nextExpression ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextSymbol
	| index |
	index := self nextInteger.
	^ self literalAt: index
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nextSymbolOrNil
	| index |
	index := self nextInteger.
	^index !!= 0 ifTrue: [ self literalAt: index]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 2/22/2023 22:58:47'!
nodeTypeOf: id
	^NodeTypes at: id
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
builder: aRuntime
	builder := aRuntime
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
method: aMethod
	method := aMethod
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
stream: aStream
	stream := aStream
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 2/22/2023 22:58:47'!
literalAt: anInteger
	^ builder ifNil: [method at: anInteger] ifNotNil: [builder method: method literalAt: anInteger]
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 2/22/2023 22:58:47'!
nextLiteralInteger
	| value |
	value := self nextInteger.
	^ builder
		ifNil: [ value ]
		ifNotNil: [ builder newInteger: value ]
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:47'!
nextBoolean
	^ stream next = 1
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:47'!
nextInteger
	| value |
	value := stream next.
	value = 16r80
		ifTrue: [ ^ stream int64 ].
	^ value <= 127
		ifTrue: [ value ]
		ifFalse: [ value - 16r100 ]
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:58:47'!
nextUnsignedInteger
	| value |
	value := self nextByte.
	^value < 128
		ifTrue: [value]
		ifFalse: [value - 128 + (self nextUnsignedInteger bitShift: 7)]
! !

!AstcodeDecoder class methodsFor: 'class initialization' stamp: 'KenD 2/22/2023 22:58:47'!
initialize
	NodeTypes := Dictionary new.
	BindingTypes := Dictionary new.
	NodeTypes
		at: AssignmentId put: SAssignment;
		at: BlockId put: SBlock;
		at: CascadeId put: SCascade;
		at: LiteralId put: SLiteral;
		at: IdentifierId put: SIdentifier;
		at: MessageId put: SMessage;
		at: ReturnId put: SReturn.
	BindingTypes
		at: NilId put: SNilBinding;
		at: TrueId put: STrueBinding;
		at: FalseId put: SFalseBinding;
		at: ArgumentId put: SArgumentBinding;
		at: TemporaryId put: STemporaryBinding;
		at: SelfId put: SSelfBinding;
		at: SuperId put: SSuperBinding;
		at: DynamicVarId put: SDynamicBinding;
		at: NestedDynamicVarId put: SNestedDynamicBinding
! !

!AstcodeDecoder class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:47'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!Subject methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:25'!
_gate
	^gate
! !

!Subject methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:59:25'!
_gate: aMirageGate
	gate := aMirageGate
! !

!Subject methodsFor: 'system' stamp: 'KenD 2/22/2023 22:59:25'!
doesNotUnderstand: aMessage
	| send |
	send := MessageSend message: aMessage to: self.
			^ gate dispatch: send
! !

!Subject methodsFor: 'inspector extensions' stamp: 'KenD 2/22/2023 22:59:25'!
gtDisplayString
	^self printString
! !

!Subject methodsFor: 'inspector extensions' stamp: 'KenD 2/22/2023 22:59:25'!
isSelfEvaluating
	^false
! !

!Subject methodsFor: 'inspector extensions' stamp: 'KenD 2/22/2023 22:59:25'!
shouldBePrintedAsLiteral
	^false
! !

!Subject methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:25'!
isKindOf: aClass
	"Answer whether the class, aClass, is a superclass or class of the receiver.
	The current implemementation allows for a Trait to be used as argument"

	^ self class == aClass or: [ self class inheritsFrom: aClass ]
! !

!Subject methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:25'!
perform: aSymbol withArguments: anArray
	| message |
	message := Message
		selector: #perform:withArguments:
		arguments: (Array with: aSymbol with: anArray).
	^ self doesNotUnderstand: message
! !

!Subject methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:25'!
printOn: aStream
	aStream nextPutAll: '{'; print: gate; nextPutAll: '}'

! !

!Subject methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:25'!
printString
	^String streamContents: [ :s | self printOn: s ]
! !

!Subject methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:25'!
printString2
	| message |
	message := MessageSend
		receiver: self
		selector: #printString
		arguments: #().
	^ self doesNotUnderstand: message
! !

!Subject class methodsFor: 'initialization' stamp: 'KenD 2/22/2023 22:59:25'!
initialize
	Counts := IdentityDictionary new
! !

!ArgumentEnvironment methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:46'!
environmentType
	^LocalArgument
! !

!AssociationMirror methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:46'!
key
	^self getInstVarNamed: #key
! !

!AssociationMirror methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:46'!
value
	^self getInstVarNamed: #value
! !

!AssociationMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:46'!
structureType
	^#Association
! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
at: i
	self ASSERT: false
! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
classBinding
	| class |
	class := self getInstVarNamed: #class.
	^class asSpeciesMirror
! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
instanceClass
	| behavior class |
	behavior := self.
	10
		timesRepeat: [ class := behavior classBinding.
			class reflectsNil
				ifFalse: [ ^ class ].
			behavior := self next.
			behavior reflectsNil 
				ifTrue: [ self error: 'behavior does not have a class' ] ].
	self error: 'could not find the class corresponding to this behavior'
! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
methodDictionary
	| slot |
	slot := handle slotAt: 1.
	^self methodDictionaryMirrorOn: slot
! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
next
	| slot |
	slot := handle slotAt: 2.
	^self behaviorMirrorOn: slot
! !

!BehaviorMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:47'!
compiledMethodFor: aSymbol
	| method next |
	method := self methodDictionary compiledMethodFor: aSymbol.
	method ifNotNil: [^method].
	next := self next.
	^next reflectsNil ifFalse: [next compiledMethodFor: aSymbol]
! !

!BehaviorMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:47'!
structureType
	^#Behavior
! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
classVariables
	| classVariables |
	classVariables := self getInstVarNamed: #classVariables.
	classVariables reflectsNil ifTrue: [^Dictionary new].
	^classVariables
! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
instanceClass
	^self
! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
localName
	^self name asLocalString
! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
name
	| name |
	name := self getInstVarNamed: #name.
	^name asStringMirror
! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
subclasses
	| subclasses |
	subclasses := self getInstVarNamed: #subclasses.
	^subclasses reflectsNil ifTrue: [Array new] ifFalse: [subclasses]
! !

!ClassMirror methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:50'!
localEquivalent
	^handle runtime objectModel at: self localName asSymbol
! !

!ClassMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:50'!
structureType
	^#Class
! !

!ClosureMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
block
	| block |
	block := self getInstVarNamed: #block.
	^ block asBlockMirror
! !

!ClosureMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:50'!
structureType
	^ #Closure
! !

!CompiledBlockMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:50'!
structureType
	^ #CompiledBlock
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
argumentCount
	^self flags asLocalInteger bitAnd: ArgCount
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
astcodes
	^self getInstVarNamed: #astcodes.
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
classBinding
	| class |
	class := self getInstVarNamed: #class.
	^class asSpeciesMirror
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
compiler
	^self ASSERT: false
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
decodedAstcodes
	| astcodes |
	astcodes := self astcodes localDeepCopy.
	^ AstcodeDecoder new
		stream: astcodes readStream;
		method: self;
		decodeMethod
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
flags
	^self getInstVarNamed: #flags
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
isExpression
	^false
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
nativeCodeBytes
	^self optimizedCode slotAt: 1
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
optimizedCode
	^self getInstVarNamed: #optimizedCode
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
readSourceFrom: encodedPosition
	self ASSERT: false
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
selector
	| selector |
	selector := self getInstVarNamed: #selector.
	^selector asStringMirror
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
source
	^self sourceCode
! !

!CompiledMethodMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:51'!
sourceCode
	| source |
	source := self getInstVarNamed: #source.
	source reflectsNil ifTrue: [^nil].
	source reflectsInteger ifFalse: [^source asString].
	^self readSourceFrom: source
! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
at: index
	^ self slotAt: self fixedInstSize + index
! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
size
	^ handle size - self fixedInstSize
! !

!CompiledMethodMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
currentVersion
	^self classBinding compiledMethodFor: self selector asLocalString asSymbol
! !

!CompiledMethodMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
isValid
	[^self reflectedClass localEquivalent inheritsFrom: CompiledMethod]
		on: Error
		do: [^false]
! !

!CompiledMethodMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:51'!
timestamp
	^nil
! !

!CompiledMethodMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
fixedInstSize
	^ self reflectedClass instSize
! !

!CompiledMethodMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
structureType
	^#CompiledMethod
! !

!CompiledMethodMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:51'!
fullName
	^self classBinding localName , '>>#' , self selector asLocalString
! !

!CompiledMethodMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:51'!
printOn: aStream
	| signature |
	signature := ([ self fullName ]
						on: StorageReadError
						do: [ handle printString ]).
	aStream
		nextPutAll:
			'a CMMirror ('
			; nextPutAll: signature; nextPut: $)
! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
at: i
	^self contents at: i
! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
contents
	^self getInstVarNamed: #table
! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:51'!
contentsSize
	^self contents size
! !

!DictionaryMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
at: key using: transform
	self do: [:k :value | (transform value: k) = key ifTrue: [^value]].
	^nil
! !

!DictionaryMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:51'!
structureType
	^#Dictionary
! !

!DictionaryMirror methodsFor: 'enumerating' stamp: 'KenD 2/22/2023 22:58:51'!
do: aBlock
	1 to: self contentsSize do: [:i | | current |
		current := self at: i.
		current reflectsNil ifFalse: [| mirror |
			mirror := current asAssociationMirror.
			aBlock value: mirror key value: mirror value]]
! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:56'!
at: i
	^self contents at: i
! !

!MethodDictionaryMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:58:56'!
compiledMethodFor: aSymbol
	| selector |
	selector := aSymbol asString.
	self do: [:sym :method | sym asLocalString = selector ifTrue: [^method]].
	^nil
! !

!MethodDictionaryMirror methodsFor: 'as yet unclassified' stamp: 'KenD 2/22/2023 22:58:56'!
contents
	^self getInstVarNamed: #table
! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:56'!
contentsSize
	^self contents size
! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:56'!
do: aBlock
	1 to: self contentsSize by: 2 do: [:i | | current |
		current := self at: i.
		current reflectsNil ifFalse: [| method |
			method := self at: i + 1.
			aBlock value: current value: method asMethodMirror]]
! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:56'!
reflectsMethodDictionary
	^true
! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:56'!
structureType
	^#MethodDictionary
! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:56'!
tally
	^self getInstVarNamed: #tally
! !

!MethodDictionaryMirror methodsFor: 'printing' stamp: 'KenD 2/22/2023 22:58:56'!
printOn: aStream
	aStream nextPutAll: 'a MDMirror (' ; nextPutAll: handle printString ; nextPut: $)
! !

!SpeciesMirror methodsFor: 'behavior protocol' stamp: 'KenD 2/22/2023 22:59:23'!
allInstVarNames
	^(self withAllSuperclasses reversed gather: [:class | class instVarNames]) asArray
	

! !

!SpeciesMirror methodsFor: 'behavior protocol' stamp: 'KenD 2/22/2023 22:59:23'!
indexOfSlot: name
	| instVars |
	instVars := self allInstVarNames.
	^instVars indexOf: name ifAbsent: 0
! !

!SpeciesMirror methodsFor: 'behavior protocol' stamp: 'KenD 2/22/2023 22:59:23'!
instSize
	"optimize: 
	self isPointers
		ifTrue: [	(self getInstVarNamed: #format) asLocalInteger & InstSize ]
		ifFalse: [ 0 ]"

	| vars s parents |
	vars := self getInstVarNamed: #instanceVariables.
	s := self superclass.
	parents := s reflectsNil
		ifTrue: [ 0 ]
		ifFalse: [ s instSize ].
	^ parents + vars slotSize
! !

!SpeciesMirror methodsFor: 'behavior protocol' stamp: 'KenD 2/22/2023 22:59:23'!
instVarNames
	| instVars |
	instVars := self getInstVarNamed: #instanceVariables.
	instVars reflectsNil ifTrue: [^#()].
	^instVars reflectsBytesObject
		ifTrue: [instVars asLocalString substrings]
		ifFalse: [instVars asLocalArray collect: #asLocalString]
! !

!SpeciesMirror methodsFor: 'behavior protocol' stamp: 'KenD 2/22/2023 22:59:23'!
isPointers
	^ (self getInstVarNamed: #format) asLocalInteger anyMask: self pointersFlag
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
allSuperclasses
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:s | superclasses add: s].
	^superclasses
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
allSuperclassesDo: aBlock
	| superclass |
	superclass := self superclass.
	superclass reflectsNil ifTrue: [^self].
	aBlock value: superclass.
	superclass allSuperclassesDo: aBlock	

! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
instBehavior
	| name |
	name := self getInstVarNamed: #instanceBehavior.
	^name asBehaviorMirror
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
localName
	^self subclassResponsibility 
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
printOn: aStream
	| name | 
	super printOn: aStream.
	name := [self localName] on: Error do: ['Broken'].
	aStream nextPutAll: '[' , name , ']'
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
project
	^nil
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
structureType
	^#Species
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
superclass
	| name |
	name := self getInstVarNamed: #superclass.
	^name asSpeciesMirror
! !

!SpeciesMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:59:23'!
withAllSuperclasses
	^ OrderedCollection new
		add: self;
		addAll: self allSuperclasses; yourself
! !

!SpeciesMirror methodsFor: 'nativizing' stamp: 'KenD 2/22/2023 22:59:23'!
compiledMethodFor: selector
	^self instBehavior compiledMethodFor: selector
! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:59:23'!
reflectsMetaclass
	| metasize |
	metasize := 6.
	^handle size = metasize
! !

!MetaclassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:56'!
classVariables
	^self instanceClass classVariables
! !

!MetaclassMirror methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:56'!
subclasses
	| instance |
	instance := self instanceClass.
	^instance reflectsNil
		ifTrue: [#()]
		ifFalse: [instance subclasses collect: [:class | class class]]
! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:56'!
instanceClass
	| class |
	class := self getInstVarNamed: #class.
	^class asClassMirror
! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:56'!
localEquivalent
	^(handle runtime objectModel at: self instanceClass localName asSymbol) metaclass
! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 2/22/2023 22:58:56'!
localName
	^self instanceClass localName , ' class'
! !

!MetaclassMirror methodsFor: 'private' stamp: 'KenD 2/22/2023 22:58:56'!
structureType
	^#Metaclass
! !

!LinkedLinearEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
initialize
	super initialize.
pc := 1
! !

!LinkedLinearEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
restart
	super restart.
	pc := 1
! !

!LinkedLinearEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
work: aCollection
	work := aCollection
! !

!LinkedLinearEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
nextOperation
	| op |
	pc <= work size ifFalse: [^nil].
	op := work at: pc.
	pc := pc + 1.
	^ op
! !

!LinkedLinearEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
regPC: anInteger
	pc := anInteger
! !

!LinkedLinearEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
stackTemporaryAt: index
	| size |
	size := temporaries size.
	^index > size
		ifTrue: [ operands at: index - size ]
		ifFalse: [ temporaries at: index ]
! !

!LinkedLinearEvaluationContext methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:54'!
stackTemporaryAt: index put: value
	| size |
	size := temporaries size.
	^ index > size
		ifTrue: [ operands at: index - size put: value ]
		ifFalse: [ temporaries at: index put: value ]
! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
beBlock
	super beBlock.
	work := OrderedCollection new: 5.

! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
hasWork
	^work notEmpty
! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
initialize
	super initialize.
	work := OrderedCollection new: 5
! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
popOperation
	^ work removeLast
! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
pushOperation: anSExpression
	work add: anSExpression
! !

!LinkedTreeEvaluationContext methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:54'!
restart
	super restart.
		work reset.

! !

!LinkedTreeEvaluationContext class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:54'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
compiledBlockIndexOf: aBlockNode
	| index |
	index := method
		findFirst: [:literal | literal isBlock
			and: [literal id == aBlockNode index]].
	^index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeArgument: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: ArgumentId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeClosureElements: aBlockNode
	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^Array streamContents: [:s |
		scope capturesSelf ifTrue: [ s nextPut: Self ].
		scope capturedEnvironments do: [:e | | index |
			e == parent ifTrue: [s nextPut: Environment] ifFalse: [
				index := aBlockNode environmentIndexOf: e.
				self ASSERT: index notNil.
				s nextPut: EnvironmentValue; nextPut: index]].
		scope capturedArguments do: [:a | | binding |
			binding := aBlockNode parent scope resolve: a name.
			s 	nextPut: binding environmentType; nextPut: binding index]]
	
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeDynamicVar: name
	stream nextPut: DynamicVarId.
	self nextSymbolPut: name
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeFalse
	stream nextPut: FalseId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeLoadRvisitingReceiver
	stream nextPut: LoadRvisitingReceiverId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeNestedDynamicVar: name
	stream nextPut: NestedDynamicVarId.
	self nextLiteralPut: name 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeNil
	stream nextPut: NilId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodePopR
	stream nextPut: PopRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodePushR
	stream nextPut: PushRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeSelf
	stream nextPut: SelfId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeSuper
	stream nextPut: SuperId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeTemporary: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: TemporaryId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodeTrue
	stream nextPut: TrueId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
encodedEnvironment: aLocalEnvironment
	aLocalEnvironment isStack
		ifTrue: [ ^ aLocalEnvironment isInlinedArgument
				ifTrue: [ -1 ]
				ifFalse: [ -2 ] ].
	aLocalEnvironment isCurrent
		ifTrue: [ ^ 0 ].
	^ aLocalEnvironment index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextBigIntegerPut: anInteger
	stream
		nextPut: 16r80;
		int64: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextBooleanPut: aBoolean
	stream nextPut: aBoolean asBit

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextIntegerPut: anInteger
	| value |
	(anInteger > 127 or: [ anInteger < -127 ])
		ifTrue: [ ^ self nextBigIntegerPut: anInteger ].
	value := anInteger >= 0
		ifTrue: [ anInteger ]
		ifFalse: [ anInteger + 16r100 ].
	stream nextPut: value
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextLiteralPut: anObject
	| index |
	index := method
		indexOf: anObject
		ifAbsent: [ self ASSERT: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextPut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextPutAll: aCollection
	stream nextPut: aCollection size; nextPutAll: aCollection
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextSymbolPut: aSymbol
	| index |
	index := method
		indexOf: aSymbol asSymbol
		ifAbsent: [ self ASSERT: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
nextTypePut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitAssignment: anAssignmentNode
	| assignees |
	self nextTypePut: AssignmentId.
	assignees := anAssignmentNode assignees.
	self nextIntegerPut: assignees size.
	assignees do: [ :node | node acceptVisitor: self ].
	anAssignmentNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitBlock: aBlockNode
	| args inlined |
	self nextTypePut: BlockId.
	inlined := aBlockNode isInlined.
	self nextBooleanPut: inlined.
	inlined
		ifTrue: [ args := aBlockNode arguments collect: [ :id | id binding index ].
			self nextPutAll: args asArray ]
		ifFalse: [ | index captured |
			index := self compiledBlockIndexOf: aBlockNode.
			self nextPut: index.
			captured := self encodeClosureElements: aBlockNode.
			self nextPutAll: captured ].
	self visitScript: aBlockNode
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifTrue: [self visitLiteral: aBraceNode asLiteralNode]
		ifFalse: [self visitCascade: aBraceNode asMessageNode]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitCascade: aCascadeNode
	| messages |
	self nextTypePut: CascadeId.
	aCascadeNode receiver acceptVisitor: self.
	messages := aCascadeNode messages.
	self nextIntegerPut: messages size.
	messages do: [ :node | self visitCascadeMessage: node ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitCascadeMessage: aCascadeMessageNode
	| arguments |
	self nextSymbolPut: aCascadeMessageNode selector symbol.
	arguments := aCascadeMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitIdentifier: anIdentifierNode
	self nextTypePut: IdentifierId.
	anIdentifierNode binding encodeUsing: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitLiteral: aLiteralNode
	| index |
	index := method indexOf: aLiteralNode value.
	self
		nextTypePut: LiteralId;
		nextIntegerPut: index.
	index = 0
		ifTrue: [ self nextIntegerPut: aLiteralNode value ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitMessage: aMessageNode
	| arguments |
	self
		nextTypePut: MessageId;
		nextBooleanPut: aMessageNode isInlined;
		nextSymbolPut: aMessageNode selector symbol.
	aMessageNode receiver acceptVisitor: self.
	arguments := aMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitMethod: aMethodNode
	| pragma |
	self nextTypePut: MethodId.
	pragma := aMethodNode pragma.
	pragma isUsed
		ifTrue: [ self nextTypePut: PragmaId.
			pragma name
				ifNotNil: [ self nextSymbolPut: pragma name ]
				ifNil: [ self nextPut: 0 ] ].
	self visitScript: aMethodNode.
	^ stream contents 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitParseNode: aParseNode
	^self ASSERT: false
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitReturn: aReturnNode
	self
		nextTypePut: ReturnId;
		nextBooleanPut: script realScript isMethod.
	
		aReturnNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/22/2023 22:58:47'!
visitScript: aScriptNode
	| prev statements |
	prev := script.
	script := aScriptNode.
	statements := aScriptNode statements.
	self nextIntegerPut: statements size.
	statements do: [ :node | node acceptVisitor: self ].
	script := prev
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
initialize
	stream := #[] writeStream
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 2/22/2023 22:58:47'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!AstcodeEncoder class methodsFor: 'instance creation' stamp: 'KenD 2/22/2023 22:58:47'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!Object methodsFor: '*Powerlang-Core-OCompiler' stamp: 'KenD 2/22/2023 22:58:57'!
isInstruction
	^false
! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:58:53'!
thru: anInteger
	^Stretch from: self thru: anInteger
! !

!ByteArray methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:58:49'!
asLittleEndianNegativeInteger
	| integer |
	integer := LargeNegativeInteger new: self size.
	self withIndexDo: [ :value :i | integer at: i put: 255 - value ].
	^ integer - 1
! !

!ByteArray methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:58:49'!
asLittleEndianPositiveInteger
	| integer |
	integer := LargePositiveInteger new: self size.
	self withIndexDo: [ :value :i | integer at: i put: value ].
	^ integer normalize
	

! !

!RGBehaviorStrategyUser methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
allSharedPoolsUsing: globals
	"
	in a pure, spec-based compilation, trying to access 
	state (a shared pool) is considered an error
	"

	^ Dictionary new
! !

!RGBehaviorStrategyUser methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
isSpecies
	^self isBehavior
! !

!RGClassVariable methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
association
	^ self propertyNamed: #association
! !

!RGClassVariable methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
association: arg1
	^ self propertyNamed: #association put: arg1
! !

!RGEnvironment methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
allClasses
	| classes |
	classes := OrderedCollection new.
	self
		behaviorsDo: [ :class | 
			class isMeta
				ifFalse: [ classes add: class ] ].
	classes sort: [ :a :b | a name < b name ].
	^ classes
		select: [ :c | 
			c isRingResolved
				and: [ c metaclass isRingResolved and: [ c superclass isRingResolved ] ] ]
! !

!RGEnvironment methodsFor: '*Powerlang-Core' stamp: 'KenD 2/22/2023 22:59:05'!
allExtensionClasses
	| classes |
	classes := OrderedCollection new.
	self
		behaviorsDo: [ :class | 
			class isMeta
				ifFalse: [ classes add: class ] ].
	classes sort: [ :a :b | a name < b name ].
	^ classes
		select:
			[ :c | c isRingResolved andNot: [ c superclass isRingResolved ] ]
! !
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
AstBindingTypes initialize!
AstNodeTypes initialize!
AstcodeDecoder initialize!
Subject initialize!
PowerLangPackage postPackageInstall!
