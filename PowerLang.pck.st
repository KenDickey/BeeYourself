'From Cuis 6.0 [latest update: #5663] on 25 February 2023 at 12:16:43 am'!
'Description Port of Bee bootstrap code from https://github.com/powerlang to Cuis.

Original code Copyright LICENCES/Acuerna'!
!provides: 'PowerLang' 1 1!
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

!classDefinition: #LocalBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'LocalBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding class
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

!classDefinition: #LocalEnvironment category: 'Powerlang-Core-SCompiler'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'LocalEnvironment class' category: 'Powerlang-Core-SCompiler'!
LocalEnvironment class
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

!classDefinition: #LMRObjectHeader category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #LMRObjectHeader
	instanceVariableNames: 'behavior flags size hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRObjectHeader class' category: 'Powerlang-Core-Execution-LMR'!
LMRObjectHeader class
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

!classDefinition: #PowertalkEvaluator category: 'Powerlang-Core-Execution'!
Object subclass: #PowertalkEvaluator
	instanceVariableNames: 'runtime falseObj trueObj nilObj context undermessages primitives messageCount'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkEvaluator class' category: 'Powerlang-Core-Execution'!
PowertalkEvaluator class
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

!classDefinition: #PowertalkRingRuntime category: 'Powerlang-Core-Execution-Ring'!
PowertalkRuntime subclass: #PowertalkRingRuntime
	instanceVariableNames: 'image sexpressionsCache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'PowertalkRingRuntime class' category: 'Powerlang-Core-Execution-Ring'!
PowertalkRingRuntime class
	instanceVariableNames: ''!

!classDefinition: #BootstrappedPstBridge category: 'Powerlang-Core-Metaphysics'!
ProtoObject subclass: #BootstrappedPstBridge
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'BootstrappedPstBridge class' category: 'Powerlang-Core-Metaphysics'!
BootstrappedPstBridge class
	instanceVariableNames: ''!

!classDefinition: #Subject category: 'Powerlang-Core-Metaphysics'!
ProtoObject subclass: #Subject
	instanceVariableNames: 'gate'
	classVariableNames: 'Counts'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Subject class' category: 'Powerlang-Core-Metaphysics'!
Subject class
	instanceVariableNames: 'Counts'!

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

!classDefinition: #ClassMap category: 'Powerlang-Core-Execution-Ring'!
ProtoObject subclass: #ClassMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ClassMap class' category: 'Powerlang-Core-Execution-Ring'!
ClassMap class
	instanceVariableNames: ''!

!classDefinition: #ClosureMap category: 'Powerlang-Core-Execution-Ring'!
ProtoObject subclass: #ClosureMap
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-Ring'!
!classDefinition: 'ClosureMap class' category: 'Powerlang-Core-Execution-Ring'!
ClosureMap class
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

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 2/22/2023 22:58:55'!
isInlinedArgument
	^false
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
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
Subject initialize!
PowerLangPackage postPackageInstall!
