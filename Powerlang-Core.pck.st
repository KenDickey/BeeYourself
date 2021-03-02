'From Cuis 5.0 [latest update: #4530] on 2 March 2021 at 1:39:12 pm'!
'Description Powerlang Core code to manage Cuis hosted Bee runtime code'!
!provides: 'Powerlang-Core' 1 23!
!requires: 'BeeCompatibility' 1 0 nil!
!requires: 'Ring2' 1 1 nil!
!requires: 'BeePParser' 1 17 nil!
SystemOrganization addCategory: 'Powerlang-Core'!


!classDefinition: #AstBindingTypes category: 'Powerlang-Core'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId ClassVarId ConstantPoolId EnsureAisSmallIntegerId EnsureRisSmallIntegerId FalseId GlobalClassId GlobalValueId InstVarId LoadAvisitingArgumentId LoadAwithArgumentId LoadAwithClassVarId LoadAwithConstPoolId LoadAwithFalseId LoadAwithGlobalId LoadAwithInstVarId LoadAwithLiteralId LoadAwithNilId LoadAwithPoolVarId LoadAwithSelfId LoadAwithTemporaryId LoadAwithTrueId LoadRvisitingReceiverId LoadRwithArgumentId LoadRwithClassVarId LoadRwithConstPoolId LoadRwithFalseId LoadRwithGlobalId LoadRwithInstVarId LoadRwithLiteralId LoadRwithNilId LoadRwithPoolVarId LoadRwithSelfId LoadRwithTemporaryId LoadRwithTrueId NilId PoolVarId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core'!
AstBindingTypes class
	instanceVariableNames: ''!

!classDefinition: #AstNodeTypes category: 'Powerlang-Core'!
PSharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AstNodeTypes class' category: 'Powerlang-Core'!
AstNodeTypes class
	instanceVariableNames: ''!

!classDefinition: #ClosureElementTypes category: 'Powerlang-Core'!
PSharedPool subclass: #ClosureElementTypes
	instanceVariableNames: ''
	classVariableNames: 'Environment EnvironmentValue LocalArgument Self'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ClosureElementTypes class' category: 'Powerlang-Core'!
ClosureElementTypes class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockFormatMasks category: 'Powerlang-Core'!
PSharedPool subclass: #CompiledBlockFormatMasks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CompiledBlockFormatMasks class' category: 'Powerlang-Core'!
CompiledBlockFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodFormatMasks category: 'Powerlang-Core'!
PSharedPool subclass: #CompiledMethodFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CompiledMethodFormatMasks class' category: 'Powerlang-Core'!
CompiledMethodFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderMasks category: 'Powerlang-Core'!
PSharedPool subclass: #ObjectHeaderMasks
	instanceVariableNames: ''
	classVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectHeaderMasks class' category: 'Powerlang-Core'!
ObjectHeaderMasks class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderOffsets category: 'Powerlang-Core'!
PSharedPool subclass: #ObjectHeaderOffsets
	instanceVariableNames: ''
	classVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectHeaderOffsets class' category: 'Powerlang-Core'!
ObjectHeaderOffsets class
	instanceVariableNames: ''!

!classDefinition: #OperandTypeFlags category: 'Powerlang-Core'!
PSharedPool subclass: #OperandTypeFlags
	instanceVariableNames: ''
	classVariableNames: 'ConstantType ImmediateType MemoryType RegisterGP RegisterGroupMask RegisterSIMD RegisterSegment RegisterSpecific RegisterType'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OperandTypeFlags class' category: 'Powerlang-Core'!
OperandTypeFlags class
	instanceVariableNames: ''!

!classDefinition: #Prefixes category: 'Powerlang-Core'!
PSharedPool subclass: #Prefixes
	instanceVariableNames: ''
	classVariableNames: 'AddressSize_Override LOCK OperandSize_Override REP REPE REPNE REPNZ REPZ REX REX_R REX_W'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Prefixes class' category: 'Powerlang-Core'!
Prefixes class
	instanceVariableNames: ''!

!classDefinition: #Registers category: 'Powerlang-Core'!
PSharedPool subclass: #Registers
	instanceVariableNames: ''
	classVariableNames: 'AH AL AX BH BL BP BPL BX CH CL CS CX DH DI DIL DL DS DX EAX EBP EBX ECX EDI EDX ES ESI ESP FS GS MMX0 MMX1 MMX2 MMX3 MMX4 MMX5 MMX6 MMX7 R10 R10B R10D R10W R11 R11B R11D R11W R12 R12B R12D R12W R13 R13B R13D R13W R14 R14B R14D R14W R15 R15B R15D R15W R8 R8B R8D R8W R9 R9B R9D R9W RAX RBP RBX RCX RDI RDX RIP RSI RSP SI SIL SP SPL SS XMM0 XMM1 XMM10 XMM11 XMM12 XMM13 XMM14 XMM15 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 XMM9 YMM0 YMM1 YMM10 YMM11 YMM12 YMM13 YMM14 YMM15 YMM2 YMM3 YMM4 YMM5 YMM6 YMM7 YMM8 YMM9'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Registers class' category: 'Powerlang-Core'!
Registers class
	instanceVariableNames: ''!

!classDefinition: #SExpressionTypes category: 'Powerlang-Core'!
PSharedPool subclass: #SExpressionTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SExpressionTypes class' category: 'Powerlang-Core'!
SExpressionTypes class
	instanceVariableNames: ''!

!classDefinition: #SendSiteFlags category: 'Powerlang-Core'!
PSharedPool subclass: #SendSiteFlags
	instanceVariableNames: ''
	classVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SendSiteFlags class' category: 'Powerlang-Core'!
SendSiteFlags class
	instanceVariableNames: ''!

!classDefinition: #SpeciesFormatMasks category: 'Powerlang-Core'!
PSharedPool subclass: #SpeciesFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'InstSize IsPointers'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SpeciesFormatMasks class' category: 'Powerlang-Core'!
SpeciesFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #AssemblerGrammar category: 'Powerlang-Core'!
PPCompositeParser subclass: #AssemblerGrammar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AssemblerGrammar class' category: 'Powerlang-Core'!
AssemblerGrammar class
	instanceVariableNames: ''!

!classDefinition: #AssemblerParser category: 'Powerlang-Core'!
AssemblerGrammar subclass: #AssemblerParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AssemblerParser class' category: 'Powerlang-Core'!
AssemblerParser class
	instanceVariableNames: ''!

!classDefinition: #ABI category: 'Powerlang-Core'!
Object subclass: #ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core'!
!classDefinition: 'ABI class' category: 'Powerlang-Core'!
ABI class
	instanceVariableNames: ''!

!classDefinition: #X64ABI category: 'Powerlang-Core'!
ABI subclass: #X64ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'X64ABI class' category: 'Powerlang-Core'!
X64ABI class
	instanceVariableNames: ''!

!classDefinition: #SysVX64ABI category: 'Powerlang-Core'!
X64ABI subclass: #SysVX64ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SysVX64ABI class' category: 'Powerlang-Core'!
SysVX64ABI class
	instanceVariableNames: ''!

!classDefinition: #X86ABI category: 'Powerlang-Core'!
ABI subclass: #X86ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'X86ABI class' category: 'Powerlang-Core'!
X86ABI class
	instanceVariableNames: ''!

!classDefinition: #Assembler64 category: 'Powerlang-Core'!
Object subclass: #Assembler64
	instanceVariableNames: 'instruction operands1 operands2 operands3 pointer immediate encoder wordSize memory labels'
	classVariableNames: 'IndexedLabels'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core'!
!classDefinition: 'Assembler64 class' category: 'Powerlang-Core'!
Assembler64 class
	instanceVariableNames: ''!

!classDefinition: #Assembly category: 'Powerlang-Core'!
Object subclass: #Assembly
	instanceVariableNames: 'labels instructions source parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Assembly class' category: 'Powerlang-Core'!
Assembly class
	instanceVariableNames: ''!

!classDefinition: #AstcodeDecoder category: 'Powerlang-Core'!
Object subclass: #AstcodeDecoder
	instanceVariableNames: 'method stream nodeTypes bindingTypes'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'AstcodeDecoder class' category: 'Powerlang-Core'!
AstcodeDecoder class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageNativizer category: 'Powerlang-Core'!
Object subclass: #BinaryMessageNativizer
	instanceVariableNames: 'message assembler nativizer done failed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BinaryMessageNativizer class' category: 'Powerlang-Core'!
BinaryMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageOptimizer category: 'Powerlang-Core'!
Object subclass: #BinaryMessageOptimizer
	instanceVariableNames: 'emitter message selector receiver argument'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'BinaryMessageOptimizer class' category: 'Powerlang-Core'!
BinaryMessageOptimizer class
	instanceVariableNames: ''!

!classDefinition: #Binding category: 'Powerlang-Core'!
Object subclass: #Binding
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Binding class' category: 'Powerlang-Core'!
Binding class
	instanceVariableNames: ''!

!classDefinition: #AssociationBinding category: 'Powerlang-Core'!
Binding subclass: #AssociationBinding
	instanceVariableNames: 'association'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AssociationBinding class' category: 'Powerlang-Core'!
AssociationBinding class
	instanceVariableNames: ''!

!classDefinition: #ClassVarBinding category: 'Powerlang-Core'!
AssociationBinding subclass: #ClassVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ClassVarBinding class' category: 'Powerlang-Core'!
ClassVarBinding class
	instanceVariableNames: ''!

!classDefinition: #GlobalBinding category: 'Powerlang-Core'!
AssociationBinding subclass: #GlobalBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'GlobalBinding class' category: 'Powerlang-Core'!
GlobalBinding class
	instanceVariableNames: ''!

!classDefinition: #ClassBinding category: 'Powerlang-Core'!
GlobalBinding subclass: #ClassBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ClassBinding class' category: 'Powerlang-Core'!
ClassBinding class
	instanceVariableNames: ''!

!classDefinition: #PoolVarBinding category: 'Powerlang-Core'!
AssociationBinding subclass: #PoolVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'PoolVarBinding class' category: 'Powerlang-Core'!
PoolVarBinding class
	instanceVariableNames: ''!

!classDefinition: #ConstantPoolBinding category: 'Powerlang-Core'!
PoolVarBinding subclass: #ConstantPoolBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ConstantPoolBinding class' category: 'Powerlang-Core'!
ConstantPoolBinding class
	instanceVariableNames: ''!

!classDefinition: #LiteralBinding category: 'Powerlang-Core'!
Binding subclass: #LiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'LiteralBinding class' category: 'Powerlang-Core'!
LiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalBinding category: 'Powerlang-Core'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'LocalBinding class' category: 'Powerlang-Core'!
LocalBinding class
	instanceVariableNames: ''!

!classDefinition: #ArgumentBinding category: 'Powerlang-Core'!
LocalBinding subclass: #ArgumentBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ArgumentBinding class' category: 'Powerlang-Core'!
ArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #SelfBinding category: 'Powerlang-Core'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SelfBinding class' category: 'Powerlang-Core'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #Bridge category: 'Powerlang-Core'!
Object subclass: #Bridge
	instanceVariableNames: 'cache objects runtime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Bridge class' category: 'Powerlang-Core'!
Bridge class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkBridge category: 'Powerlang-Core'!
Bridge subclass: #SmalltalkBridge
	instanceVariableNames: 'nilObj trueObj falseObj'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SmalltalkBridge class' category: 'Powerlang-Core'!
SmalltalkBridge class
	instanceVariableNames: 'falseObj'!

!classDefinition: #BootstrappedPstBridge category: 'Powerlang-Core'!
SmalltalkBridge subclass: #BootstrappedPstBridge
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BootstrappedPstBridge class' category: 'Powerlang-Core'!
BootstrappedPstBridge class
	instanceVariableNames: ''!

!classDefinition: #Gate category: 'Powerlang-Core'!
Object subclass: #Gate
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Gate class' category: 'Powerlang-Core'!
Gate class
	instanceVariableNames: ''!

!classDefinition: #DirectGate category: 'Powerlang-Core'!
Gate subclass: #DirectGate
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'DirectGate class' category: 'Powerlang-Core'!
DirectGate class
	instanceVariableNames: ''!

!classDefinition: #MirageGate category: 'Powerlang-Core'!
Gate subclass: #MirageGate
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'MirageGate class' category: 'Powerlang-Core'!
MirageGate class
	instanceVariableNames: ''!

!classDefinition: #ISAOperand category: 'Powerlang-Core'!
Object subclass: #ISAOperand
	instanceVariableNames: 'length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ISAOperand class' category: 'Powerlang-Core'!
ISAOperand class
	instanceVariableNames: ''!

!classDefinition: #ISAOperandType category: 'Powerlang-Core'!
Object subclass: #ISAOperandType
	instanceVariableNames: 'type length memoryLength flags'
	classVariableNames: 'Types'
	poolDictionaries: 'private Registers'
	category: 'Powerlang-Core'!
!classDefinition: 'ISAOperandType class' category: 'Powerlang-Core'!
ISAOperandType class
	instanceVariableNames: ''!

!classDefinition: #ImageSegmentWriter category: 'Powerlang-Core'!
Object subclass: #ImageSegmentWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ImageSegmentWriter class' category: 'Powerlang-Core'!
ImageSegmentWriter class
	instanceVariableNames: ''!

!classDefinition: #InstructionPrefix category: 'Powerlang-Core'!
Object subclass: #InstructionPrefix
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: 'Prefixes'
	category: 'Powerlang-Core'!
!classDefinition: 'InstructionPrefix class' category: 'Powerlang-Core'!
InstructionPrefix class
	instanceVariableNames: ''!

!classDefinition: #SegmentPrefix category: 'Powerlang-Core'!
InstructionPrefix subclass: #SegmentPrefix
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SegmentPrefix class' category: 'Powerlang-Core'!
SegmentPrefix class
	instanceVariableNames: ''!

!classDefinition: #LocalEnvironment category: 'Powerlang-Core'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'LocalEnvironment class' category: 'Powerlang-Core'!
LocalEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArrayEnvironment category: 'Powerlang-Core'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ArrayEnvironment class' category: 'Powerlang-Core'!
ArrayEnvironment class
	instanceVariableNames: ''!

!classDefinition: #StackEnvironment category: 'Powerlang-Core'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StackEnvironment class' category: 'Powerlang-Core'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArgumentEnvironment category: 'Powerlang-Core'!
StackEnvironment subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ArgumentEnvironment class' category: 'Powerlang-Core'!
ArgumentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #LocalHandle category: 'Powerlang-Core'!
Object subclass: #LocalHandle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'LocalHandle class' category: 'Powerlang-Core'!
LocalHandle class
	instanceVariableNames: ''!

!classDefinition: #LookupNativizer category: 'Powerlang-Core'!
Object subclass: #LookupNativizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'LookupNativizer class' category: 'Powerlang-Core'!
LookupNativizer class
	instanceVariableNames: ''!

!classDefinition: #MessageLinker category: 'Powerlang-Core'!
Object subclass: #MessageLinker
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'MessageLinker class' category: 'Powerlang-Core'!
MessageLinker class
	instanceVariableNames: ''!

!classDefinition: #CompositeMessageLinker category: 'Powerlang-Core'!
MessageLinker subclass: #CompositeMessageLinker
	instanceVariableNames: 'candidates'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CompositeMessageLinker class' category: 'Powerlang-Core'!
CompositeMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #Mirror category: 'Powerlang-Core'!
Object subclass: #Mirror
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Mirror class' category: 'Powerlang-Core'!
Mirror class
	instanceVariableNames: ''!

!classDefinition: #ObjectMirror category: 'Powerlang-Core'!
Mirror subclass: #ObjectMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectMirror class' category: 'Powerlang-Core'!
ObjectMirror class
	instanceVariableNames: ''!

!classDefinition: #AssociationMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #AssociationMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'AssociationMirror class' category: 'Powerlang-Core'!
AssociationMirror class
	instanceVariableNames: ''!

!classDefinition: #BehaviorMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #BehaviorMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BehaviorMirror class' category: 'Powerlang-Core'!
BehaviorMirror class
	instanceVariableNames: ''!

!classDefinition: #ClosureMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #ClosureMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ClosureMirror class' category: 'Powerlang-Core'!
ClosureMirror class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #CompiledBlockMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledBlockFormatMasks'
	category: 'Powerlang-Core'!
!classDefinition: 'CompiledBlockMirror class' category: 'Powerlang-Core'!
CompiledBlockMirror class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #CompiledMethodMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledMethodFormatMasks'
	category: 'Powerlang-Core'!
!classDefinition: 'CompiledMethodMirror class' category: 'Powerlang-Core'!
CompiledMethodMirror class
	instanceVariableNames: ''!

!classDefinition: #DictionaryMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #DictionaryMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'DictionaryMirror class' category: 'Powerlang-Core'!
DictionaryMirror class
	instanceVariableNames: ''!

!classDefinition: #SpeciesMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #SpeciesMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'SpeciesFormatMasks'
	category: 'Powerlang-Core'!
!classDefinition: 'SpeciesMirror class' category: 'Powerlang-Core'!
SpeciesMirror class
	instanceVariableNames: ''!

!classDefinition: #ClassMirror category: 'Powerlang-Core'!
SpeciesMirror subclass: #ClassMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ClassMirror class' category: 'Powerlang-Core'!
ClassMirror class
	instanceVariableNames: ''!

!classDefinition: #OOperand category: 'Powerlang-Core'!
Object subclass: #OOperand
	instanceVariableNames: 'instruction name nextUse'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OOperand class' category: 'Powerlang-Core'!
OOperand class
	instanceVariableNames: ''!

!classDefinition: #ObjectFormat category: 'Powerlang-Core'!
Object subclass: #ObjectFormat
	instanceVariableNames: 'runtime storage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectFormat class' category: 'Powerlang-Core'!
ObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #BootstrapObjectFormat category: 'Powerlang-Core'!
ObjectFormat subclass: #BootstrapObjectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BootstrapObjectFormat class' category: 'Powerlang-Core'!
BootstrapObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #DmrObjectFormat category: 'Powerlang-Core'!
ObjectFormat subclass: #DmrObjectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ObjectHeaderMasks ObjectHeaderOffsets'
	category: 'Powerlang-Core'!
!classDefinition: 'DmrObjectFormat class' category: 'Powerlang-Core'!
DmrObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #ObjectMap category: 'Powerlang-Core'!
Object subclass: #ObjectMap
	instanceVariableNames: 'behavior spec'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectMap class' category: 'Powerlang-Core'!
ObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ByteObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #ByteObjectMap
	instanceVariableNames: 'bytes hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ByteObjectMap class' category: 'Powerlang-Core'!
ByteObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ShapeMap category: 'Powerlang-Core'!
ObjectMap subclass: #ShapeMap
	instanceVariableNames: 'shapes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ShapeMap class' category: 'Powerlang-Core'!
ShapeMap class
	instanceVariableNames: ''!

!classDefinition: #SlotObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #SlotObjectMap
	instanceVariableNames: 'slots hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SlotObjectMap class' category: 'Powerlang-Core'!
SlotObjectMap class
	instanceVariableNames: ''!

!classDefinition: #SmallintObjectMap category: 'Powerlang-Core'!
ObjectMap subclass: #SmallintObjectMap
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SmallintObjectMap class' category: 'Powerlang-Core'!
SmallintObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ObjectShape category: 'Powerlang-Core'!
Object subclass: #ObjectShape
	instanceVariableNames: 'name fields'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ObjectShape class' category: 'Powerlang-Core'!
ObjectShape class
	instanceVariableNames: ''!

!classDefinition: #Opcode category: 'Powerlang-Core'!
Object subclass: #Opcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Opcode class' category: 'Powerlang-Core'!
Opcode class
	instanceVariableNames: ''!

!classDefinition: #SBinding category: 'Powerlang-Core'!
Object subclass: #SBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SBinding class' category: 'Powerlang-Core'!
SBinding class
	instanceVariableNames: ''!

!classDefinition: #SExpression category: 'Powerlang-Core'!
Object subclass: #SExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SExpression class' category: 'Powerlang-Core'!
SExpression class
	instanceVariableNames: ''!

!classDefinition: #SIdenitifier category: 'Powerlang-Core'!
SExpression subclass: #SIdenitifier
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SIdenitifier class' category: 'Powerlang-Core'!
SIdenitifier class
	instanceVariableNames: ''!

!classDefinition: #SLiteralVar category: 'Powerlang-Core'!
SExpression subclass: #SLiteralVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteralVar class' category: 'Powerlang-Core'!
SLiteralVar class
	instanceVariableNames: ''!

!classDefinition: #SExpressionInterpreter category: 'Powerlang-Core'!
Object subclass: #SExpressionInterpreter
	instanceVariableNames: 'receiver arguments temporaries returned returnValue method parent gateBuilder blockAstcodes environment'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'SExpressionInterpreter class' category: 'Powerlang-Core'!
SExpressionInterpreter class
	instanceVariableNames: ''!

!classDefinition: #SExpressionNativizer category: 'Powerlang-Core'!
Object subclass: #SExpressionNativizer
	instanceVariableNames: 'environment assembler method remainingBlocks safepointCheck mainCode stackCount fallbacks activeScript'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'SExpressionNativizer class' category: 'Powerlang-Core'!
SExpressionNativizer class
	instanceVariableNames: ''!

!classDefinition: #SParseTreeVisitor category: 'Powerlang-Core'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SParseTreeVisitor class' category: 'Powerlang-Core'!
SParseTreeVisitor class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'Powerlang-Core'!
SParseTreeVisitor subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'Powerlang-Core'!
!classDefinition: 'AstcodeEncoder class' category: 'Powerlang-Core'!
AstcodeEncoder class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkScanner category: 'Powerlang-Core'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSmalltalkScanner class' category: 'Powerlang-Core'!
SSmalltalkScanner class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'Powerlang-Core'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SToken class' category: 'Powerlang-Core'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'Powerlang-Core'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SEndToken class' category: 'Powerlang-Core'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'Powerlang-Core'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SParseNode class' category: 'Powerlang-Core'!
SParseNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'Powerlang-Core'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SIdentifierNode class' category: 'Powerlang-Core'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SLiteralNode category: 'Powerlang-Core'!
SParseNode subclass: #SLiteralNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteralNode class' category: 'Powerlang-Core'!
SLiteralNode class
	instanceVariableNames: ''!

!classDefinition: #SScriptNode category: 'Powerlang-Core'!
SParseNode subclass: #SScriptNode
	instanceVariableNames: 'statements arguments temporaries children scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SScriptNode class' category: 'Powerlang-Core'!
SScriptNode class
	instanceVariableNames: ''!

!classDefinition: #SSelectorNode category: 'Powerlang-Core'!
SParseNode subclass: #SSelectorNode
	instanceVariableNames: 'symbol keywords'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSelectorNode class' category: 'Powerlang-Core'!
SSelectorNode class
	instanceVariableNames: ''!

!classDefinition: #SSymbolicToken category: 'Powerlang-Core'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSymbolicToken class' category: 'Powerlang-Core'!
SSymbolicToken class
	instanceVariableNames: ''!

!classDefinition: #SDelimiterToken category: 'Powerlang-Core'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SDelimiterToken class' category: 'Powerlang-Core'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SStringToken category: 'Powerlang-Core'!
SSymbolicToken subclass: #SStringToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SStringToken class' category: 'Powerlang-Core'!
SStringToken class
	instanceVariableNames: ''!

!classDefinition: #ScriptScope category: 'Powerlang-Core'!
Object subclass: #ScriptScope
	instanceVariableNames: 'script arguments temporaries stackSize envSize captureSelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ScriptScope class' category: 'Powerlang-Core'!
ScriptScope class
	instanceVariableNames: ''!

!classDefinition: #BlockScope category: 'Powerlang-Core'!
ScriptScope subclass: #BlockScope
	instanceVariableNames: 'environments captured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BlockScope class' category: 'Powerlang-Core'!
BlockScope class
	instanceVariableNames: ''!

!classDefinition: #SendSite category: 'Powerlang-Core'!
Object subclass: #SendSite
	instanceVariableNames: 'instructions selector cache tally format'
	classVariableNames: ''
	poolDictionaries: 'SendSiteFlags'
	category: 'Powerlang-Core'!
!classDefinition: 'SendSite class' category: 'Powerlang-Core'!
SendSite class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkBootstrapper category: 'Powerlang-Core'!
Object subclass: #SmalltalkBootstrapper
	instanceVariableNames: 'builder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SmalltalkBootstrapper class' category: 'Powerlang-Core'!
SmalltalkBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #DMRBootstrapper category: 'Powerlang-Core'!
SmalltalkBootstrapper subclass: #DMRBootstrapper
	instanceVariableNames: 'nativizer image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'DMRBootstrapper class' category: 'Powerlang-Core'!
DMRBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #Storage category: 'Powerlang-Core'!
Object subclass: #Storage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Storage class' category: 'Powerlang-Core'!
Storage class
	instanceVariableNames: ''!

!classDefinition: #BootstrapStorage category: 'Powerlang-Core'!
Storage subclass: #BootstrapStorage
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'BootstrapStorage class' category: 'Powerlang-Core'!
BootstrapStorage class
	instanceVariableNames: ''!

!classDefinition: #ByteArrayAdapter category: 'Powerlang-Core'!
Storage subclass: #ByteArrayAdapter
	instanceVariableNames: 'bytes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'ByteArrayAdapter class' category: 'Powerlang-Core'!
ByteArrayAdapter class
	instanceVariableNames: ''!

!classDefinition: #StorageReadError category: 'Powerlang-Core'!
Object subclass: #StorageReadError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StorageReadError class' category: 'Powerlang-Core'!
StorageReadError class
	instanceVariableNames: ''!


!OperandTypeFlags commentStamp: '<historical>' prior: 0!
WARNING: x86 specific!

!AssemblerGrammar commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!AssemblerParser commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!ABI commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!X64ABI commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!X86ABI commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!Assembler64 commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!Bridge commentStamp: '<historical>' prior: 0!
I am the one in charge of 'discovering' well known objects in
the remote image, giving my clients handles to them. For example,
the Smalltalk bridge allows to get a handle to the remote Smalltalk
object. Subclasses of SmalltalkBridge implement this functionality,
as it is runtime specific.!

!Gate commentStamp: '<historical>' prior: 0!
I am a proxy to a remote object given by my `handle`. My main goal is
to abstract semantics with which messages sent to me will be executed.
My subclasses implement those different semantics: 
 - DirectGate executes locally, doing lookup within the remote behavior
   of object.
 - MirageGate executes locally, doing lookup within a local specification
   of the behavior of the remote object.
!

!ISAOperand commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISAOperandType commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!InstructionPrefix commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!SegmentPrefix commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!OOperand commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.
!

!ShapeMap commentStamp: '<historical>' prior: 0!
I represent the shape of objects as used by mirrors. Mirrors
access instance variables by name, asking the runtime the for
the offsets of the instVars.!

!SExpression commentStamp: '<historical>' prior: 0!
I am a Smalltalk expression, the minimal unit of Smalltalk semantics, expressed as a tree.
!

!Storage commentStamp: '<historical>' prior: 0!
?? Subclass Error ??!

!StorageReadError commentStamp: '<historical>' prior: 0!
?? Subclass Error ??!

!Assembler64 methodsFor: 'printing' stamp: 'KenD 2/24/2021 16:13:13'!
printOn: aStream 

	aStream print: self class; cr; cr;
		nextPutAll: memory bytes disassembledAmd64! !

!Binding methodsFor: 'printing' stamp: 'KenD 2/24/2021 11:15:28'!
printOn: aStream 

	aStream nextPutAll: name; nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:14:36'!
name 

	^name! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:55:52'!
environment 

	^environment index! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:25:02'!
name 

	^'self'! !

!MirageGate methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:01:12'!
printOn: aStream 

	aStream nextPutAll: 'mirage gate on: ' , handle printString! !

!InstructionPrefix methodsFor: 'printing' stamp: 'KenD 2/27/2021 13:15:20'!
printOn: aStream 

	(name includes: Character space)
		ifTrue: [
			aStream
				nextPut: ${;
				nextPutAll: name;
				nextPut: $}]
		ifFalse: [aStream nextPutAll: name]! !

!InstructionPrefix methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:14:47'!
name 

	^name! !

!ObjectMirror methodsFor: 'printing' stamp: 'KenD 2/27/2021 09:10:14'!
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
				, description , ')'! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:48:13'!
methodDictionary 
	| slot |
	slot := handle slotAt: 1.
	^self methodDictionaryMirrorOn: slot! !

!CompiledMethodMirror methodsFor: 'printing' stamp: 'KenD 3/2/2021 12:36:32'!
printOn: aStream 
	| signature |
	signature := ([ self fullName ]
						on: StorageReadError
						do: [ handle printString ]).
	aStream
		nextPutAll:
			'a CMMirror ('
			; nextPutAll: signature; nextPut: $)! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:33:14'!
allInstVarNames 

	^(self withAllSuperclasses reversed 
		gather: [:class | class instVarNames]) asArray! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:34:21'!
allSuperclasses 
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:s | superclasses add: s].
	^superclasses! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:38:58'!
superclass 
	| name |
	name := self getInstVarNamed: #superclass.
	^name asSpeciesMirror! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:39:22'!
withAllSuperclasses 

	^ OrderedCollection new
		add: self;
		addAll: self allSuperclasses; yourself! !

!SpeciesMirror methodsFor: 'iterating' stamp: 'KenD 3/1/2021 16:34:37'!
allSuperclassesDo: aBlock 
	| superclass |
	superclass := self superclass.
	superclass reflectsNil ifTrue: [^self].
	aBlock value: superclass.
	superclass allSuperclassesDo: aBlock	! !

!SpeciesMirror methodsFor: 'nativizing' stamp: 'KenD 3/1/2021 16:35:55'!
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
	^ parents + vars slotSize! !

!SpeciesMirror methodsFor: 'nativizing' stamp: 'KenD 3/1/2021 16:36:16'!
instVarNames 
	| instVars |
	instVars := self getInstVarNamed: #instanceVariables.
	instVars reflectsNil ifTrue: [^#()].
	^instVars reflectsBytesObject
		ifTrue: [instVars asLocalString substrings]
		ifFalse: [instVars asLocalArray collect: #asLocalString]
! !

!SpeciesMirror methodsFor: 'printing' stamp: 'KenD 3/1/2021 16:37:49'!
printOn: aStream 
	| name | 
	super printOn: aStream.
	name := [self localName] on: Error do: ['Broken'].
	aStream nextPutAll: '[' , name , ']'! !

!SpeciesMirror methodsFor: 'testing' stamp: 'KenD 3/1/2021 16:36:42'!
isPointers 
	^ (self getInstVarNamed: #format) asLocalInteger 
		anyMask: self pointersFlag! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:45:00'!
name 
	| name |
	name := self getInstVarNamed: #name.
	^name asStringMirror! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:45:21'!
subclasses 
	| subclasses |
	subclasses := self getInstVarNamed: #subclasses.
	^subclasses reflectsNil ifTrue: [Array new] ifFalse: [subclasses]! !

!OOperand methodsFor: 'printing' stamp: 'KenD 2/24/2021 14:10:49'!
printOn: aStream 
	aStream
		nextPutAll: '[op #' 
			, name printString , 
			'@' 
			, instruction printString
			, ']'! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:08:35'!
definition 

	^instruction atOperand: name! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:09:33'!
name 

	^name! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:45'!
isBytes 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:00'!
isPointers 

	^ false! !

!ByteObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 14:12:25'!
printOn: aStream 

	spec ifNil: [ ^ super printOn: aStream ].
	aStream
		nextPutAll: '<<';
		nextPutAll: self contentsString;
		nextPutAll: '>>'! !

!ByteObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 14:11:57'!
isBytes 

	^true! !

!SlotObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:51:15'!
printOn: aStream 

	aStream
		nextPutAll: '<<';
		nextPutAll: spec name withArticle;
		nextPutAll: '>>'! !

!SlotObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:50:51'!
isPointers 

	^true! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:45:22'!
allInstVarNames 

	| c |
	^ spec properties
		at: #allInstVarNames
		ifAbsentPut: [ spec isMeta
				ifTrue: [ c := spec environment at: #Class.
					c allInstVarNames , spec allInstVarNames ]
				ifFalse: [ spec allInstVarNames ] ]! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:50:36'!
instSize 

	| c |
	^ spec properties at: #instSize ifAbsentPut: [spec isMeta
		ifTrue: [ c := spec environment at: #Class.
			
			c instSize + spec instSize ]
		ifFalse: [ spec instSize ]]! !

!SmallintObjectMap methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:58:39'!
printOn: aStream 

	aStream
		nextPutAll: '<<';
		nextPutAll: value printString;
		nextPutAll: '>>'! !

!ObjectShape methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:24:29'!
printOn: aStream 

	aStream nextPutAll: 'Shape of '; nextPutAll: name! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:24:03'!
name 

	^name! !

!SBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:20:09'!
name 

	^self printString! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:29'!
printOn: aStream 

	self printOn: aStream indent: 0! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:20:16'!
isVariable 

	^true! !

!SIdenitifier methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:17:50'!
binding 

	^binding! !

!SExpressionInterpreter methodsFor: 'printing' stamp: 'KenD 2/27/2021 16:04:01'!
printOn: aStream 
	aStream
		nextPutAll: self class name withArticle;
		cr;
		print: method classBinding;
		nextPutAll: '>>';
		print: method selector;
		cr.
	aStream
		nextPutAll: 'rcvr -> ';
		print: receiver _gate handle;
		cr.
	arguments
		withIndexDo: [ :a :i | 
			aStream
				nextPutAll: 'arg ';
				print: i;
				nextPutAll: ' -> ';
				print: a _gate;
				cr ].
	aStream nextPutAll: method source! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:05'!
comment 

	^comments notNil ifTrue: [comments anyOne]! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:24:21'!
binding 

	^binding! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:28:51'!
name 

	^name! !

!SmalltalkBootstrapper methodsFor: 'services' stamp: 'KenD 3/2/2021 13:03:02'!
compile: anRGMethod 

	^builder compile: anRGMethod! !

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 14:51:53'!
initialize 
	NilId := 1.
	TrueId := 2.
	FalseId := 3.
	ArgumentId := 4.
	TemporaryId := 5.
	SelfId := 6.
	SuperId := 7.
	InstVarId := 8.
	ClassVarId := 9.
	GlobalValueId := 10.
	GlobalClassId := 11.
	PoolVarId := 12.
	ConstantPoolId := 13.
	LoadRwithSelfId := 20.
	LoadAwithSelfId := 21.
	LoadRwithInstVarId := 22.
	LoadAwithInstVarId := 23.
	LoadRvisitingReceiverId := 24.
	LoadAvisitingArgumentId := 25.
	LoadRwithLiteralId := 26.
	LoadAwithLiteralId := 27.
	EnsureRisSmallIntegerId := 28.
	EnsureAisSmallIntegerId := 29.
	LoadRwithArgumentId := 30.
	LoadAwithArgumentId := 31.
	LoadRwithTemporaryId := 32.
	LoadAwithTemporaryId := 33.
	LoadRwithNilId := 34.
	LoadAwithNilId := 35.
	LoadRwithFalseId := 36.
	LoadAwithFalseId := 37.
	LoadRwithTrueId := 38.
	LoadAwithTrueId := 39.
	LoadRwithGlobalId := 40.
	LoadAwithGlobalId := 41.
	LoadRwithClassVarId := 42.
	LoadAwithClassVarId := 43.
	LoadRwithPoolVarId := 44.
	LoadAwithPoolVarId := 45.
	LoadRwithConstPoolId := 46.
	LoadAwithConstPoolId := 47.
	PushRid := 48.
	PopRid := 49! !

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 15:01:35'!
initialize 

	MethodId := 1.
	BlockId := 2.
	IdentifierId := 3.
	LiteralId := 4.
	MessageId := 5.
	CascadeId := 6.
	BraceId := 7.
	AssignmentId := 8.
	ReturnId := 9.
	PragmaId := 10! !

!ClosureElementTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 15:07:20'!
initialize 

	Self := 0.
	LocalArgument := 1.
	Environment := 2.
	EnvironmentValue := 3! !

!ObjectHeaderMasks class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 09:22:14'!
initialize 
	"Bit Flags"
	IsBytes      := 16r01.
	IsArrayed := 16r02.
	IsNamed   := 16r04.
	IsSmall     := 16r80! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:18:28'!
behaviorOffset

	^BehaviorOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:18:43'!
flagsOffset

	^FlagsOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:02'!
hashOffset

	^HashOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:13'!
largeSizeOffset

	^LargeSizeOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:29'!
sizeOffset

	^SizeOffset! !

!ObjectHeaderOffsets class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 09:17:52'!
initialize 
	"Offsets in Bytes"
	BehaviorOffset := -4.
	FlagsOffset := -5.
	SizeOffset := -6.
	HashOffset := -8.
	LargeSizeOffset := -16! !

!OperandTypeFlags class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 14:02:21'!
initialize
	MemoryType _ 4.
	RegisterGroupMask _ 3840.
	ConstantType _ 2.
	RegisterSIMD _ 256.
	ImmediateType _ 1.
	RegisterGP _ 0.
	RegisterType _ 8.
	RegisterSegment _ 512.
	RegisterSpecific _ 768.! !

!Prefixes class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 13:09:35'!
initialize 

	LOCK := LegacyPrefix basicNew
		instVarAt: 1 put: 'LOCK';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 240;
		yourself.
	REPNZ := LegacyPrefix basicNew
		instVarAt: 1 put: 'REPNE';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 242;
		yourself.
	REX := REXPrefix basicNew
		instVarAt: 1 put: 'REX';
		yourself.
	REPNE := LegacyPrefix basicNew
		instVarAt: 1 put: 'REPNE';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 242;
		yourself.
	REPE := LegacyPrefix basicNew
		instVarAt: 1 put: 'REP';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 243;
		yourself.
	AddressSize_Override := LegacyPrefix basicNew
		instVarAt: 1 put: 'AddressSize_Override';
		instVarAt: 2 put: 4;
		instVarAt: 3 put: 103;
		yourself.
	REX_W := REXPrefix basicNew
		instVarAt: 1 put: 'REX.W';
		yourself.
	REPZ := LegacyPrefix basicNew
		instVarAt: 1 put: 'REP';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 243;
		yourself.
	REX_R := REXPrefix basicNew
		instVarAt: 1 put: 'REX.R';
		yourself.
	OperandSize_Override := LegacyPrefix basicNew
		instVarAt: 1 put: 'OperandSize_Override';
		instVarAt: 2 put: 3;
		instVarAt: 3 put: 102;
		yourself.
	REP := LegacyPrefix basicNew
		instVarAt: 1 put: 'REP';
		instVarAt: 2 put: 1;
		instVarAt: 3 put: 243;
		yourself! !

!Registers class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 13:30:29'!
initialize 
	"Nothing to be done here, the initialization is done 
	  in Register class >> initializeRegisters."
! !

!SExpressionTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 15:04:29'!
initialize 

	MethodId := 1.
	BlockId := 2.
	IdentifierId := 3.
	LiteralId := 4.
	MessageId :=5.
	CascadeId := 6.
	BraceId := 7.
	AssignmentId := 8.
	ReturnId := 9! !

!SendSiteFlags class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 13:29:35'!
initialize 
	"Bitflags"
	IsStaticSend    := 16r01.
	IsSuperSend    := 16r02.
	IsPolymorphic := 16r04.
	HasBeenReset := 16r08
		! !

!SpeciesFormatMasks class methodsFor: 'class initialization' stamp: 'KenD 3/1/2021 09:15:29'!
initialize
	"BitMasks should be in ObjectHeaderMasks ??"
	"flagsMask -> 16r000000FF"
	InstSize    := 16rFF000000.
	IsPointers := 16r00000002 "ObjectHeaderMasks isArrayed"
! !

!AssemblerGrammar methodsFor: 'private' stamp: 'KenD 2/25/2021 12:29:43'!
comma 

	^$, asParser trim! !

!AssemblerGrammar methodsFor: 'private' stamp: 'KenD 2/25/2021 12:31:12'!
imm 

	^self immH / self immD! !

!AssemblerGrammar methodsFor: 'private' stamp: 'KenD 2/25/2021 12:31:24'!
immD 

	^self sign , self decimal! !

!AssemblerGrammar methodsFor: 'private' stamp: 'KenD 2/25/2021 12:31:34'!
immH 

	^self hex! !

!AssemblerGrammar methodsFor: 'private' stamp: 'KenD 2/25/2021 12:36:11'!
separator 

	^#blank asParser star flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:32:32'!
abelName 

	^($@ asParser , #word asParser plus) flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:29:20'!
base 

	^self reg! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:30:20'!
constant 

	^self hex / self decimal! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:30:33'!
decimal 

	^#digit asParser plus flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:30:44'!
displacement 

	^self operator , self constant! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:30:58'!
hex 

	^'0x' asParser , #hex asParser plus! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:36:38'!
ib1 

	^self displacement / self constant! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:31:49'!
index 

	^self sum , self reg! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:31:59'!
instruction 

	^self prefix optional , self mnemonic trim , self operands! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:32:20'!
label 

	^(self labelName , $: asParser) flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:32:47'!
memory 

	^self memorySize optional , $[ asParser trim
		, (self segment , ':' asParser) optional
		, self sib
		, $] asParser trim! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:33:13'!
memorySize 

	^'qword' asParser / 'dword' asParser / 'word' asParser / 'bword' asParser
		/ 'byte' asParser
		/ 'xmmword' asParser
		/ 'ymmword' asParser
		/ 'zmmword' asParser
		, 'ptr' asParser trim optional! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:33:30'!
mnemonic 

	^(#letter asParser , (#letter asParser / #digit asParser) star) flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:33:43'!
mul 

	^$* asParser trim flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:33:54'!
operand 

	^self memory / self reg / self imm / self labelName! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:34:08'!
operands 

	^(self operands3 / self operands2 / self operands1) optional! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:34:20'!
operands1 

	^self operand! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:34:29'!
operands2 

	^self operand , self comma , self operand! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:34:40'!
operands3 

	^self operand , self comma , self operand , self comma , self operand! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:34:54'!
operator 

	^($+ asParser / $- asParser) trim
! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:35:07'!
prefix 

	^PPChoiceParser
		withAll: (#(	'lock' 'repne' 'repnz' 'repe' 'repz'  'rep')
			collect: [:name | name asParser trim])! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:35:27'!
reg 

	^ (PPChoiceParser
		withAll:
			((Registers asArray sort: [ :a :b | a name size > b name size ])
				collect: [ :r | r name asParser ])) flatten! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:35:50'!
scale 

	^self mul , ($1 asParser / $2 asParser / $4 asParser / $8 asParser)! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:35:59'!
segment 

	^'cs' asParser / 'ds' asParser / 'ss' asParser / 'es' asParser
		/ 'fs' asParser
		/ 'gs' asParser! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:36:23'!
sib 

	^self sib1 / self sib3 / self sib2! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:36:49'!
sib2 

	^self base , self index optional , self scale optional
		, self displacement optional! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:39:25'!
sib3 

	^self reg , self scale , self displacement! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:39:39'!
sign 

	^($+ asParser / $- asParser) trim optional! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:39:51'!
start 

	^self label / self instruction
		, (#blank asParser plus flatten , (self label / self instruction)) star! !

!AssemblerGrammar methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:40:01'!
sum 

	^$+ asParser trim flatten! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:41:30'!
bitLengthOf: anInteger 

	(anInteger between: -16r80 and: 16r7F) ifTrue: [^8].
	(anInteger between: -16r8000 and: 16r7FFF) ifTrue: [^16].
	(anInteger between: -16r80000000 and: 16r7FFFFFFF) ifTrue: [^32].
	(anInteger between: -16r8000000000000000 and: 16r7FFFFFFFFFFFFFFF)
		ifTrue: [^64].
	(anInteger
		between: -16r80000000000000000000000000000000
		and: 16r7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
		ifTrue: [^128].
	^nil! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:42:03'!
decimal 

	^super decimal ==> [:node | node asInteger]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:42:13'!
displacement 

	^super displacement
		==> [:nodes | nodes first = $-
			ifTrue: [nodes second negated]
			ifFalse: [nodes second]]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:42:28'!
hex 

	^super hex
		==> [:nodes | Integer readFrom: nodes second readStream radix: 16]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:42:45'!
immD 

	^super immD ==> [:nodes | | sign value |
		sign := nodes first = $- ifTrue: [-1] ifFalse: [1].
		value := nodes second * sign.
		ISAImmediate new value: value]
! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:43:01'!
immH 

	^super immH ==> [:value | | s len |
		len := self bitLengthOf: value.
		s := self signInteger: value.
		s < 0 ifTrue: [len := len // 2].
		ISAImmediate new value: s; length: len]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:43:16'!
index 

	^super index ==> [:nodes | nodes second]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:43:29'!
instruction 

	^super instruction ==> [:nodes | 
		ISAInstruction new
			prefix: nodes first;
			mnemonic: nodes second;
			operands: (nodes third ifNil: #())]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:43:58'!
memory 

	^super memory ==> [:nodes | | memory |
		memory := nodes fourth.
		nodes third ifNotNil: [:seg | memory segment: seg first].
		nodes first ifNotNil: [:len | memory length: len].
		memory]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:44:13'!
memorySize 

	^super memorySize ==> [:nodes | | c index |
		index := 'bwdqxyz' indexOf: nodes first first.
		#(8 16 32 64 128 256 512) at: index]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:44:38'!
operands 

	^super operands ==> [:nodes | | reg |
		nodes notNil ifTrue: [
			reg := nodes
				detect: [:op | op isInteger not
					and: [op isString not]
					and: [op isRegister]]
				ifNone: nil.
			reg notNil ifTrue: [
				nodes
					select: [:op | op isInteger not
						and: [op isMemory]
						and: [op length isNil]]
					thenDo: [:op | op length: reg length]]].
		nodes]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:44:55'!
operands1 

	^super operands1 ==> [:node | {node}]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:45:04'!
operands2 

	^super operands2 ==> [:nodes | {nodes first. nodes third}]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:45:14'!
operands3 

	^super operands3 ==> [:nodes | {nodes first. nodes third. nodes fifth}]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:46:17'!
parseInstruction: aString 

	| array |
	array := self parse: aString.
	^array anyOne! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:46:36'!
prefix 

	^super prefix ==> [:name | InstructionPrefix prefixes at: name asUppercase]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:46:53'!
reg 

	^super reg ==> [:nodes | Register named: nodes]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:47:04'!
scale 

	^super scale ==> [:nodes | nodes second digitValue]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:47:14'!
segment 

	^super segment ==> [:nodes | Register named: nodes]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:47:26'!
sib1 

	^super sib1 ==> [:node | MemoryOperand new displacement: node]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:47:40'!
sib2 

	^super sib2 ==> [:nodes | 
		MemoryOperand new
			base: nodes first;
			index: nodes second;
			scale: nodes third;
			displacement: nodes fourth]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:47:50'!
sib3 

	^super sib3 ==> [:nodes | 
		MemoryOperand new
			index: nodes first;
			scale: nodes second;
			displacement: nodes third]! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:48:04'!
signInteger: anInteger 

	anInteger < 0 ifTrue: [^anInteger].
	anInteger < 16r80 ifTrue: [^anInteger].
	anInteger < 16r100 ifTrue: [^anInteger - 16r100].
	anInteger < 16r8000 ifTrue: [^anInteger].
	anInteger < 16r10000 ifTrue: [^anInteger - 16r10000].
	anInteger < 16r80000000 ifTrue: [^anInteger].
	anInteger < 16r100000000 ifTrue: [^anInteger - 16r100000000].
	anInteger < 16r8000000000000000 ifTrue: [^anInteger].
	anInteger < 16r10000000000000000
		ifTrue: [^anInteger - 16r10000000000000000].
	^anInteger! !

!AssemblerParser methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:48:20'!
start 

	^super start ==> [:nodes | | tail |
		tail := nodes second collect: [:a | a second].
		Array with: nodes first withAll: tail]! !

!AssemblerParser methodsFor: 'private' stamp: 'KenD 2/25/2021 12:41:44'!
comma 

	^super comma ==> [:nodes | ]! !

!ABI methodsFor: 'testing' stamp: 'KenD 2/24/2021 14:40:26'!
is32bits 

	^TargetOSPlatform targetWordSizeInBits= 32! !

!ABI methodsFor: 'testing' stamp: 'KenD 2/24/2021 14:40:38'!
is64bits 

	^TargetOSPlatform targetWordSizeInBits= 64! !

!ABI class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 14:39:04'!
forCurrent 

	^self currentClass new! !

!ABI class methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:38:33'!
currentClass 
	| platform |
	platform := TargetOSPlatform current.
	platform isWin64 ifTrue: [ ^WinX64ABI ].
	platform isUnix64 ifTrue: [ ^SysVX64ABI ].
	self assert: false.! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:43:57'!
bits 

	^64! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:44:29'!
regA 

	^RDX! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:44:45'!
regE 

	^RDI! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:45:09'!
regFP 

	^RBP! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:45:25'!
regG 

	^R15! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:46:42'!
regR 

	^RAX! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:47:00'!
regS 

	^RSI! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:47:10'!
regSP

	^RSP! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:47:26'!
regT

	^RCX! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:47:58'!
wordSize 

	^8 "Bytes"! !

!X64ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:47:53'!
wordSizeShift 

	^3! !

!SysVX64ABI methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 15:36:10'!
emitEntrypoint: anFFIDescriptor with: anAssembler 

	anAssembler saveCallerFrame;
			pushG;
		pushNil;
		pushTrue;
		pushFalse;
		pushM.
	self storeArgumentsInStack: anFFIDescriptor with: anAssembler.! !

!SysVX64ABI methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 15:36:36'!
popRetaddrAndArgs: anFFIDescriptor with: anAssembler 

	anAssembler
		popA;
		popA;
		popA! !

!SysVX64ABI methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 15:36:51'!
restoreContext: anFFIDescriptor with: anAssembler 

	self popRetaddrAndArgs: anFFIDescriptor with: anAssembler.
	anAssembler
		popM;
		popFalse;
		popTrue;
		popNil;
		popG;
		popFP;
		return! !

!SysVX64ABI methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 15:37:10'!
storeArgumentsInStack: anFFIDescriptor with: anAssembler 

	anAssembler pushS;
		loadRwithArgPointer;
		convertRtoSmallInteger;
		pushR! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:38:55'!
bits 

	^32! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:39:30'!
regA 
	^EDX! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:39:43'!
regE
	^EDI! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:39:57'!
regFP
	^EBP! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:40:07'!
regR
	^EAX! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:40:20'!
regS
	^ESI! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:40:28'!
regSP
	^ESP! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:40:42'!
regT
	^ECX! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:40:56'!
wordSize 

	^4 "Bytes"! !

!X86ABI methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:41:08'!
wordSizeShift 

	^2! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:48:02'!
addressLength 

	^wordSize * 8! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:48:16'!
addressSize 

	^wordSize! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:55:49'!
bytes 

	^memory bytes! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:57:25'!
clearIntegerBit: op1 

	self and: op1 with: -2! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 15:57:34'!
codeSize 

	^memory codeSize! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:13:31'!
push: op1 

	self assemble: 'push' with: op1! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:14:58'!
renameByteRegisterIfNeeded: register preserving: preserved during: aBlock 

	self
		renameByteRegisterIfNeeded: register
		preserving: preserved
		preserving: nil
		during: aBlock! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:15:18'!
renameByteRegisterIfNeeded: register
preserving: preserved1
preserving: preserved2
during: aBlock 
	| final |
	(self addressSize !!= 4 or: [register byte isLongModeOld8BitRegister not])
		ifTrue: [aBlock value: register]
		ifFalse: [
			final := self renameRegisterPreserving: preserved1 preserving: preserved2.
			self exchange: register e with: final.
			aBlock value: final.
			self exchange: final with: register e]! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:15:43'!
renameRegisterPreserving: preserved1 preserving: preserved2 
	preserved1 == self regR
		ifTrue: [preserved2 == self regA
			ifTrue: [^self regT]
			ifFalse: [^self regA]].
	preserved2 == self regR
		ifTrue: [preserved1 == self regA
			ifTrue: [^self regT]
			ifFalse: [^self regA]].
	^self regR! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:17:15'!
rotateLeft: op1 count: count 

	self assert: count < 32.
	self assemble: 'rol' with: op1 with: count
! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:17:30'!
rotateRight: op1 count: count 

	self assert: count < 32.
	self assemble: 'ror' with: op1 with: count! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:17:43'!
setIntegerBit: op1 

	self assemble: 'or' with: op1 with: 1! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:18:08'!
shiftLeft: op1 by: count 

	self assert: count < 32.
	self assemble: 'sal' with: op1 with: count
! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:18:26'!
shiftRight: op1 by: op2 

	self assert: (op2 isInteger not or: [op2 < op1 length]).
	self assemble: 'sar' with: op1 with: op2! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:23:19'!
stream 

	^memory stream! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:24:01'!
wordSize: anInteger 

	wordSize := anInteger.
	encoder wordSize: anInteger! !

!Assembler64 methodsFor: 'accessing' stamp: 'KenD 2/24/2021 16:24:14'!
wordSizeShift 

	^wordSize = 8 ifTrue: [3] ifFalse: [2]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 15:48:44'!
alignTo: aNumber 
	| current count |
	current := memory position.
	count := (current alignedTo: aNumber) - current.
	self nop: count! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 15:53:58'!
assembly 

	^memory bytes! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:00'!
nop 

	self assemble: 'nop'! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:13'!
nop2 

	memory nextPutAll: #[16r66 16r90]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:25'!
nop3 

	memory nextPutAll: #[16r0F 16r1F 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:38'!
nop4 

	memory nextPutAll: #[16r0F 16r1F 16r40 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:49'!
nop5 

	memory nextPutAll: #[16r0F 16r1F 16r44 16r00 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:10:59'!
nop6 

	memory nextPutAll: #[16r66 16r0F 16r1F 16r44 16r00 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:11:08'!
nop7 

	memory nextPutAll: #[16r0F 16r1F 16r80 16r00 16r00 16r00 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:11:19'!
nop8 

	memory nextPutAll: #[16r0F 16r1F 16r84 16r00 16r00 16r00 16r00 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:11:30'!
nop9 

	memory nextPutAll: #[16r66 16r0F 16r1F 16r84 16r00 16r00 16r00 16r00 16r00]! !

!Assembler64 methodsFor: 'alignment' stamp: 'KenD 2/24/2021 16:11:54'!
nop: count 
	"
	ShellDLL current openWebPage: 'http://www.felixcloutier.com/x86/NOP.html'
	"
	| r |
	r := count.
	r >= 9 ifTrue: [
		r // 9 timesRepeat: [self nop9].
		r := r \\ 9].
	r = 8 ifTrue: [^self nop8].
	r = 7 ifTrue: [^self nop7].
	r = 6 ifTrue: [^self nop6].
	r = 5 ifTrue: [^self nop5].
	r = 4 ifTrue: [^self nop4].
	r = 3 ifTrue: [^self nop3].
	r = 2 ifTrue: [^self nop2].
	^self nop! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:50:10'!
assemble 

	encoder reset; writeEncodingOn: memory! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:50:22'!
assemble: mnemonic 

	instruction mnemonic: mnemonic; operands: #().
	self assemble! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:50:35'!
assemble: mnemonic with: op 
	| op1 |
	op1 := op isInteger ifTrue: [immediate value: op] ifFalse: [op].
	operands1 at: 1 put: op1.
	instruction mnemonic: mnemonic; operands: operands1.
	self assemble! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:50:49'!
assemble: mnemonic with: op1 with: op2 
	| op |
	op := op2 isInteger ifTrue: [immediate value: op2] ifFalse: [op2].
	operands2
		at: 1 put: op1;
		at: 2 put: op.
	instruction mnemonic: mnemonic; operands: operands2.
	self assemble! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:51:04'!
assemble: mnemonic
with: op1
with: op2
with: op3 
	| op |
	op := op3 isInteger ifTrue: [immediate value: op3] ifFalse: [op3].
	operands3
		at: 1 put: op1;
		at: 2 put: op2;
		at: 3 put: op.
	instruction mnemonic: mnemonic; operands: operands3.
	self assemble! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:51:17'!
assemble: mnemonic with: op1 withImm64: op2 
	| v |
	v := self regV.
	self
		assemble: 'mov' with: v with: op2;
		assemble: mnemonic with: op1 with: v! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:51:57'!
assemble: mnemonic with: op1 withImm: imm 

	immediate value: imm.
	(immediate length <= 32 or: [mnemonic = 'mov' and: [op1 class == Register]])
		ifTrue: [self assemble: mnemonic with: op1 with: immediate]
		ifFalse: [self assemble: mnemonic with: op1 withImm64: immediate]! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:52:18'!
assemble: mnemonic withImm64: op1 
	| v |
	v := self regV.
	self
		assemble: 'mov' with: v with: op1;
		assemble: mnemonic with: v! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:52:29'!
assemble: mnemonic withImm: imm 

	immediate value: imm.
	immediate length <= 32
		ifTrue: [self assemble: mnemonic with: immediate]
		ifFalse: [self assemble: mnemonic withImm64: immediate]! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:52:40'!
assemble: mnemonic withReg: reg index: index 

	pointer
		reset;
		length: self addressLength;
		base: reg;
		displacement: index - 1 * wordSize.
	self assemble: mnemonic with: pointer! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:52:55'!
assemble: mnemonic
withReg: dst
withReg: src
index: index 

	pointer
		reset;
		length: self addressLength;
		base: src;
		displacement: index - 1 * wordSize.
	self assemble: mnemonic with: dst with: pointer! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:53:07'!
assembleAddress: mem 
	| address |
	address := mem isInteger ifTrue: [mem] ifFalse: [
		memory addAbsoluteFixup: mem.
		0].
	wordSize = 8
		ifTrue: [memory nextULargePut: address]
		ifFalse: [memory nextULongPut: address]! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:53:21'!
assembleByte: byte 

	memory nextBytePut: byte! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:53:32'!
assembleBytes: aByteArray 

	memory nextBytesPut: aByteArray! !

!Assembler64 methodsFor: 'basic' stamp: 'KenD 2/24/2021 15:53:46'!
assembleBytes: aByteArray count: integer 

	1 to: integer do: [:i | memory nextPut: (aByteArray byteAt: i)]! !

!Assembler64 methodsFor: 'calls' stamp: 'KenD 2/24/2021 15:56:58'!
callIndirectReg: reg 

	pointer reset; length: reg length; base: reg.
	self assemble: 'call' with: pointer! !

!Assembler64 methodsFor: 'calls' stamp: 'KenD 2/24/2021 15:57:13'!
callTo: label 
	
	self jump: 'call' to: label size: 4! !

!Assembler64 methodsFor: 'calls' stamp: 'KenD 2/24/2021 16:12:09'!
offsetOfIndex: index 

	^index - 1 * wordSize! !

!Assembler64 methodsFor: 'calls' stamp: 'KenD 2/24/2021 16:16:32'!
return 

	self assemble: 'ret'! !

!Assembler64 methodsFor: 'calls' stamp: 'KenD 2/24/2021 16:16:44'!
return: anInteger 

	anInteger = 0
		ifTrue: [self assemble: 'ret']
		ifFalse: [self assemble: 'ret' with: anInteger * self addressSize]! !

!Assembler64 methodsFor: 'debugging' stamp: 'KenD 2/24/2021 15:55:39'!
breakpoint 

	self assemble: 'int' with: 3! !

!Assembler64 methodsFor: 'initialization' stamp: 'KenD 2/24/2021 15:59:44'!
initialize 

	super initialize.
	instruction := ISAInstruction new.
	operands1 := Array new: 1.
	operands2 := Array new: 2.
	operands3 := Array new: 3.
	immediate := ISAImmediate new.
	pointer := MemoryOperand new.
	encoder := instruction encoder.
	labels := Dictionary new: 100.
	memory := RelocatableBuffer new! !

!Assembler64 methodsFor: 'initialization' stamp: 'KenD 2/24/2021 16:15:58'!
reset 
	labels := Dictionary new: 100.
	memory reset! !

!Assembler64 methodsFor: 'integers' stamp: 'KenD 2/24/2021 15:58:37'!
convertToNativeInteger: reg 

	self assemble: 'sar' with: reg with: 1! !

!Assembler64 methodsFor: 'integers' stamp: 'KenD 2/24/2021 15:58:48'!
convertToSmallInteger: reg 

	self
		assemble: 'sal' with: reg with: 1;
		assemble: 'inc' with: reg! !

!Assembler64 methodsFor: 'integers' stamp: 'KenD 2/24/2021 16:04:16'!
lastEmittedPointer 
	| patch |
	patch := self currentAddress.
	^patch - wordSize! !

!Assembler64 methodsFor: 'integers' stamp: 'KenD 2/24/2021 16:04:53'!
leadingRzeroCount 
	"
	lzcnt is a special x64 extension: it puts the REX
	prefix after the first opcode byte. Our x64 
	encoder doesn't support that, so we fix the
	bytes by hand
	"
	| pos |
	pos := self currentAddress.
	self assemble: 'lzcnt' with: self regR with: self regR.
	memory
		writeByte: 16rF3 at: pos;
		writeByte: 16r48 at: pos + 1! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:00:45'!
jumpIfBelowOrEqualTo: label 

	self nearJump: 'jbe' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:00:57'!
jumpIfEqualTo: label 

	self nearJump: 'jz' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:01:15'!
jumpIfGreaterOrEqualSignedTo: label 

	self nearJump: 'jge' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:01:27'!
jumpIfGreaterSignedTo: label 

	self nearJump: 'jg' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:01:38'!
jumpIfLessOrEqualSignedTo: label 

	self nearJump: 'jle' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:01:52'!
jumpIfLessSignedTo: label 

	self nearJump: 'jl' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:02:02'!
jumpIfNotCarryTo: label 

	self nearJump: 'jnc' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:02:14'!
jumpIfNotEqualTo: label 

	self nearJump: 'jnz' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:02:24'!
jumpIfNotOverflowTo: label 

	self nearJump: 'jno' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:02:44'!
jumpIfNotZeroTo: label 

	self jumpIfNotEqualTo: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:02:56'!
jumpIfOverflowTo: label 

	self nearJump: 'jo' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:03:09'!
jumpIfSignTo: label 

	self nearJump: 'js' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:03:20'!
jumpIfZeroTo: label 

	self jumpIfEqualTo: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:03:38'!
jumpOver: aBlock 
	| label |
	label := self newLabel.
	self jumpTo: label.
	aBlock value.
	self @ label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:03:55'!
jumpTo: label 

	self nearJump: 'jmp' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:04:06'!
jumpToReg: reg 

	self assemble: 'jmp' with: reg! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:05:46'!
load: reg withImmediate: imm 

	self assemble: 'mov' with: reg with: imm! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:18:58'!
shortJumpIfCarryTo: label 

	self shortJump: 'jc' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:19:09'!
shortJumpIfEqualTo: label 

	self shortJump: 'jz' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:19:21'!
shortJumpIfLessOrEqualSignedTo: label 

	self shortJump: 'jle' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:19:33'!
shortJumpIfLessSignedTo: label 

	self shortJump: 'jl' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:19:45'!
shortJumpIfNotCarryTo: label 

	self shortJump: 'jnc' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:19:57'!
shortJumpIfNotEqualTo: label 

	self shortJump: 'jnz' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:20:09'!
shortJumpIfNotOverflowTo: label 

	self shortJump: 'jno' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:20:22'!
shortJumpIfNotZeroTo: label 

	self shortJumpIfNotEqualTo: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:20:33'!
shortJumpIfOverflowTo: label 

	self shortJump: 'jo' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:20:43'!
shortJumpIfSignTo: label 

	self shortJump: 'js' to: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:20:53'!
shortJumpIfZeroTo: label 

	self shortJumpIfEqualTo: label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:21:04'!
shortJumpOver: aBlock 
	| label |
	label := self newLabel.
	self shortJumpTo: label.
	aBlock value.
	self @ label! !

!Assembler64 methodsFor: 'jumps' stamp: 'KenD 2/24/2021 16:21:17'!
shortJumpTo: label 

	self shortJump: 'jmp' to: label! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 15:46:34'!
@ label 

	self addLabel: label! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 15:47:16'!
addLabel: aString 

	self addLabel: aString to: self currentAddress! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 15:47:34'!
addLabel: label to: location 
	labels at: label put: location! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 15:59:03'!
currentAddress 

	^memory currentAddress! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 16:08:40'!
newLabel 
	| label next |
	next := labels size + 1.
	IndexedLabels size < next ifTrue: [self class growIndexedLabelsTo: next].
	label := IndexedLabels at: next.
	self addLabel: label to: nil.
	^label! !

!Assembler64 methodsFor: 'labels' stamp: 'KenD 2/24/2021 16:16:14'!
resolveLabel: aString 

	^labels at: aString ifAbsent: [self addressOfExternal: aString]! !

!Assembler64 methodsFor: 'relocation' stamp: 'KenD 2/24/2021 15:49:40'!
applyFixups 

	memory applyFixupsWith: self! !

!Assembler64 methodsFor: 'relocation' stamp: 'KenD 2/24/2021 15:54:48'!
baseAddress 

	^memory baseAddress! !

!Assembler64 methodsFor: 'relocation' stamp: 'KenD 2/24/2021 16:14:39'!
relocateTo: address 
	| delta |
	delta := address - self baseAddress.
	labels
		keysAndValuesDo: [:label :location | labels
			at: label
			put: location + delta].
	memory relocateTo: address with: self! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 15:47:00'!
add: op1 to: op2 

	self assemble: 'add' with: op2 with: op1! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 15:49:02'!
and: op1 with: op2 

	self assemble: 'and' with: op1 with: op2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 15:49:12'!
and: op1 withImm: op2 

	self assemble: 'and' with: op1 withImm: op2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 15:58:17'!
compare: op1 with: op2 

	self assemble: 'cmp' with: op1 with: op2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 15:59:17'!
exchange: op1 with: op2 

	self assemble: 'xchg' with: op1 with: op2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 16:06:45'!
move: reg2 to: reg1 

	self assert: (reg2 class = Register and: [reg1 class = Register]).
	self assemble: 'mov' with: reg1 with: reg2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 16:12:31'!
or: op1 with: op2 
	
	self assemble: 'or' with: op1 with: op2! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 16:23:34'!
subtract: op1 from: op2 

	self assemble: 'sub' with: op2 with: op1! !

!Assembler64 methodsFor: 'services' stamp: 'KenD 2/24/2021 16:23:44'!
testIntegerBit: op1 
	| op |
	op := op1 byte.
	(self addressSize = 4 and: [op isLongModeOld8BitRegister])
		ifTrue: [op := op1].
	self assemble: 'test' with: op with: 1! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 15:54:32'!
at: position putPointer: value 
	| original |
	original := memory position.
	[
		memory position: position.
		wordSize = 8
			ifTrue: [memory nextULargePut: value]
			ifFalse: [memory nextULongPut: value]]
		ensure: [memory position: original]! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:05:12'!
load: reg1 from: reg2 atIndex: index 

	| offset |
	offset := reg1 offsetOfIndex: index.
	pointer
		reset;
		length: reg1 length;
		base: reg2;
		displacement: offset.
	self assemble: 'mov' with: reg1 with: pointer! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:05:29'!
load: reg1 from: reg2 atIndexAt: reg3 
	pointer
		reset;
		length: reg1 length;
		base: reg2;
		index: reg3;
		scale: reg1 sizeInBytes;
		displacement: 0 - reg1 sizeInBytes.
	self assemble: 'mov' with: reg1 with: pointer! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:06:00'!
loadZeroExtendByte: reg1 from: reg2 atIndex: index 

	self loadZeroExtendByte: reg1 from: reg2 atOffset: index - 1! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:06:13'!
loadZeroExtendByte: reg1 from: reg2 atIndexAt: reg3 

	pointer
		reset;
		length: 8;
		base: reg2;
		index: reg3;
		displacement: -1.
	self assemble: 'movzx' with: reg1 with: pointer! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:06:26'!
loadZeroExtendByte: reg1 from: reg2 atOffset: offset 

	pointer
		reset;
		length: 8;
		base: reg2;
		displacement: offset.
	self assemble: 'movzx' with: reg1 with: pointer! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:13:46'!
putPointer: oop at: position 
	| original |
	original := memory position.
	[
		memory position: position.
		wordSize = 8
			ifTrue: [memory nextULargePut: oop]
			ifFalse: [memory nextULongPut: oop]]
		ensure: [memory position: original]! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:21:32'!
store: reg1 in: reg2 index: index 
	| offset |
	offset := reg1 offsetOfIndex: index.
	pointer
		reset;
		length: reg1 length;
		base: reg2;
		displacement: offset.
	self assemble: 'mov' with: pointer with: reg1! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:22:22'!
store: op1 in: reg2 indexAt: reg3 

	pointer
		reset;
		length: op1 length;
		base: reg2;
		index: reg3;
		scale: op1 sizeInBytes;
		displacement: 0 - op1 sizeInBytes.
	self assemble: 'mov' with: pointer with: op1! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:22:33'!
storeByte: value in: reg2 index: index 

	self storeByte: value in: reg2 offset: index - 1! !

!Assembler64 methodsFor: 'storing' stamp: 'KenD 2/24/2021 16:22:45'!
storeByte: byte in: reg2 offset: offset 

	pointer
		reset;
		length: 8;
		base: reg2;
		displacement: offset.
	self assemble: 'mov' with: pointer with: byte! !

!Assembler64 methodsFor: 'private' stamp: 'KenD 2/24/2021 15:55:16'!
bitLengthOf: anInteger 

	(anInteger between: -16r80 and: 16r7F) ifTrue: [^8].
	(anInteger between: -16r8000 and: 16r7FFF) ifTrue: [^16].
	(anInteger between: -16r80000000 and: 16r7FFFFFFF) ifTrue: [^32].
	(anInteger between: -16r8000000000000000 and: 16r7FFFFFFFFFFFFFFF)
		ifTrue: [^64].
	(anInteger
		between: -16r80000000000000000000000000000000
		and: 16r7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
		ifTrue: [^128].
	^nil! !

!Assembler64 methodsFor: 'private' stamp: 'KenD 2/24/2021 16:12:45'!
pop: op1 

	self assemble: 'pop' with: op1! !

!Assembler64 methodsFor: 'private' stamp: 'KenD 2/24/2021 16:14:14'!
regV 
	^R11! !

!Assembler64 methodsFor: 'private - jumps' stamp: 'KenD 2/24/2021 16:00:23'!
jump: mnemonic to: label size: n 
	| placeholder end |
	placeholder := 1 bitShift: n - 1 * 8.
	self assemble: mnemonic with: placeholder.
	end := memory position.
	memory
		skip: -1;
		nextPut: 0;
		skip: n negated;
		addRelativeFixup: label size: n;
		position: end! !

!Assembler64 methodsFor: 'private - jumps' stamp: 'KenD 2/24/2021 16:07:28'!
nativeCode 

	^ NativeCode new code: memory bytes! !

!Assembler64 methodsFor: 'private - jumps' stamp: 'KenD 2/24/2021 16:07:47'!
nearJump: mnemonic to: label 

	self jump: mnemonic to: label size: 4! !

!Assembler64 methodsFor: 'private - jumps' stamp: 'KenD 2/24/2021 16:18:40'!
shortJump: mnemonic to: label 

	self jump: mnemonic to: label size: 1! !

!Assembler64 class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 15:45:27'!
growIndexedLabelsTo: anInteger 
	| new |
	new := (IndexedLabels size + 1 to: anInteger)
		collect: [:i | ('@' , i asString) asSymbol].
	IndexedLabels := IndexedLabels , new! !

!Assembler64 class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 15:45:38'!
initialize 
	self initializeIndexedLabels! !

!Assembler64 class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 15:45:53'!
initializeIndexedLabels 

	IndexedLabels := #().
	self growIndexedLabelsTo: 100! !

!Assembler64 class methodsFor: 'class initialization' stamp: 'KenD 2/24/2021 15:46:02'!
new 

	^super new initialize! !

!Assembly methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:21:22'!
parser: anAssemblerParser 

	parser := anAssemblerParser! !

!Assembly methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:21:34'!
source: aString 

	source := aString! !

!Assembly methodsFor: 'parsing' stamp: 'KenD 2/24/2021 11:20:57'!
parse 
	| everything |
	everything := parser parse: source.
	everything do: [:token | 
		token isString
			ifTrue: [labels at: token allButLast put: instructions size]
			ifFalse: [instructions add: token]]! !

!Assembly methodsFor: 'initialization' stamp: 'KenD 2/24/2021 11:20:02'!
initialize 

	super initialize.
	labels := Dictionary new.
	instructions := OrderedCollection new.
	parser := AssemblerParser new! !

!Assembly class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 11:18:38'!
new 

	^super new initialize! !

!Assembly class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 11:19:17'!
on: aString 

	^self new source: aString! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:30:04'!
bindingTypeOf: id 
	
	^bindingTypes at: id! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:07'!
literalAt: anInteger 

	^method at: anInteger! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:20'!
method: aCompiledMethod 

	method := aCompiledMethod! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:43'!
next 

	^stream next! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:54'!
nextInteger 

	^stream next! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:42:05'!
nodeTypeOf: id 

	^nodeTypes at: id! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:42:17'!
stream: aStream 

	stream := aStream! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:30:18'!
decodeArgument 

	^SArgumentBinding new
		index: self nextInteger;
		environment: self nextInteger! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:30:41'!
decodeAssignment 
	| assignment codes |
	assignment := SAssignment new.
	codes := stream upToEnd collect: [:elem | self decodeNode: elem].
	assignment expression: codes last.
	1 to: codes size - 1 do: [:i | | identifier |
		identifier := codes at: i.
		assignment assign: identifier].
	^assignment! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:31:24'!
decodeBlock 
	| expression next block index |
	expression := SBlock new.
	next := stream peek.
	next !!= 0
		ifTrue: [ index := stream next. block := method at: index.
			expression
				compiledCode: block;
				index: index;
				capturedVariables: stream next ]
		ifFalse: [ stream next.
			expression inlinedArgs: stream next ].
	expression statements: self decodeStatements.
	^ expression! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:31:52'!
decodeCascade 
	| receiver messages prev |
	receiver := self decodeNode: stream next.
	prev := stream.
	messages := stream upToEnd collect: [:elem | 
		stream := elem readStream.
		SCascadeMessage decodeUsing: self].
	stream := prev.
	^SCascade new receiver: receiver; messages: messages! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:32:14'!
decodeCascadeMessage 
	| index selector arguments |
	index := stream next.
	selector := index = 0 ifTrue: [stream next] ifFalse: [method at: index].
	arguments := stream upToEnd collect: [:node | self decodeNode: node].
	^SCascadeMessage new selector: selector; arguments: arguments! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:32:30'!
decodeClassBinding 
	| index assoc |
		index := self nextInteger.

	assoc := method at: index.
	^ SClassBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:32:45'!
decodeClassVar 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SClassVarBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:33:08'!
decodeConstantPoolVar 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SConstantPoolBinding new
		index: index;
		association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:33:31'!
decodeGlobalBinding 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SGlobalBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:33:47'!
decodeIdentifier 
	| type binding |
	type := self bindingTypeOf: self nextInteger.
	binding := type decodeUsing: self.
	^ SIdentifier new binding: binding! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:35:05'!
decodeInlineNodes: anArray
	| prev result type decoded |
	anArray ifNil: [ ^ #() ].
	prev _ stream.
	result _ OrderedCollection new.
	stream _ anArray readStream.
	[ stream atEnd ] whileFalse: [
		type _ self nodeTypeOf: stream next.
		decoded _ type decodeUsing: self.
		result add: decoded ].
	stream _ prev.
	^ result! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:35:26'!
decodeInstVar 

	^SInstVarBinding new index: self nextInteger! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:35:42'!
decodeLiteral 
	| index value |
	index := self nextInteger.
	value := index = 0
		ifTrue: [ stream next ]
		ifFalse: [ method at: index ].
	^ SLiteral new index: index; value: value! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:36:10'!
decodeMessage 
	| index selector receiver arguments opcodes |
	index := stream next.
	selector := index = 0
		ifTrue: [ stream next ]
		ifFalse: [ method at: index ].
	receiver := self decodeNode: stream next.
	arguments := self decodeNodes: stream next.
	stream atEnd
		ifFalse: [ opcodes := stream peek = 0
				ifTrue: [ stream next.
					#inlined ]
				ifFalse: [ self decodeInlineNodes: stream next ] ].
	^ SMessage new
		receiver: receiver;
		selector: selector;
		arguments: arguments;
		opcodes: opcodes! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:36:41'!
decodeMethod 
	| type node next pragma |
	type := stream next.
	type !!= MethodId
		ifTrue: [ self error: 'method astcode expected' ].
	node := SMethod new.
	next := stream peek.
	(next = PragmaId)
		ifTrue:
			[ stream next.
			pragma := SPragma new
				name: stream next.
			node pragma: pragma ].
		 node
			compiledCode: method;
		statements: self decodeStatements.
	^ node! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:06'!
decodeNode: anArray 
	| prev type result |
	prev := stream.
	stream := anArray readStream.
	type := self nodeTypeOf: stream next.
	result := type decodeUsing: self.
	stream := prev.
	^result
! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:21'!
decodeNodes: anArray 
	anArray ifNil: [^#(  )].
	^anArray collect: [:arg | self decodeNode: arg  ]! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:34'!
decodePoolVar 
	| index assoc |
	index := self nextInteger.

	assoc := method at: index.
	^ SPoolVarBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:54'!
decodeReturn 
	| expression local |
	local := stream next.
	expression := self decodeNode: stream next.
	^SReturn new local: local; expression: expression! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:38:15'!
decodeStatement: anArray 

	^self decodeNode: anArray! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:38:29'!
decodeStatements 

	^stream upToEnd collect: [:statement | self decodeStatement: statement]! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:38:43'!
decodeTemporary 

	^STemporaryBinding new
		index: self nextInteger;
		environment: self nextInteger! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 2/24/2021 11:39:27'!
initialize 
	nodeTypes := Dictionary new: 40.
	bindingTypes := Dictionary new: 20.
	nodeTypes
		at: AssignmentId put: SAssignment;
		at: BlockId put: SBlock;
		at: CascadeId put: SCascade;
		at: LiteralId put: SLiteral;
		at: IdentifierId put: SIdentifier;
		at: MessageId put: SMessage;
		at: ReturnId put: SReturn;
		at: LoadRwithSelfId put: LoadRwithSelf;
		at: LoadAwithSelfId put: LoadAwithSelf;
		at: LoadRwithNilId put: LoadRwithNil;
		at: LoadAwithNilId put: LoadAwithNil;
		at: LoadRwithFalseId put: LoadRwithFalse;
		at: LoadAwithFalseId put: LoadAwithFalse;
		at: LoadRwithTrueId put: LoadRwithTrue;
		at: LoadAwithTrueId put: LoadAwithTrue;
		at: LoadRwithArgumentId put: LoadRwithArgument;
		at: LoadAwithArgumentId put: LoadAwithArgument;
		at: LoadRwithTemporaryId put: LoadRwithTemporary;
		at: LoadAwithTemporaryId put: LoadAwithTemporary;
		at: LoadRwithInstVarId put: LoadRwithInstVar;
		at: LoadAwithInstVarId put: LoadAwithInstVar;
		at: LoadAwithGlobalId put: LoadAwithGlobal;
		at: LoadAwithClassVarId put: LoadAwithClassVar;
		at: LoadAwithPoolVarId put: LoadAwithPoolVar;
		at: LoadAwithConstPoolId put: LoadAwithConstPoolVar;
		at: LoadRvisitingReceiverId put: LoadRvisitingReceiver;
		at: LoadAvisitingArgumentId put: LoadAvisitingArgument;
		"		at: LoadRwithLiteralId put: LoadRwithLiteral;"
			at: LoadAwithLiteralId put: LoadAwithLiteral;
		at: EnsureRisSmallIntegerId put: EnsureRSmallInteger;
		at: EnsureAisSmallIntegerId put: EnsureASmallInteger;
		at: PushRid put: PushRopcode;
		at: PopRid put: PopRopcode.
	bindingTypes
		at: NilId put: SNilBinding;
		at: TrueId put: STrueBinding;
		at: FalseId put: SFalseBinding;
		at: ArgumentId put: SArgumentBinding;
		at: TemporaryId put: STemporaryBinding;
		at: SelfId put: SSelfBinding;
		at: SuperId put: SSuperBinding;
		at: InstVarId put: SInstVarBinding;
		at: ClassVarId put: SClassVarBinding;
		at: GlobalValueId put: SGlobalBinding;
		at: GlobalClassId put: SClassBinding;
		at: PoolVarId put: SPoolVarBinding;
		at: ConstantPoolId put: SConstantPoolBinding! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:33:37'!
inlineBitAnd 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		andRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #bitAnd:.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:34:06'!
inlineBitAnd: selector 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		andRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: selector.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:34:21'!
inlineBitOr: selector 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		orRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: selector.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:34:47'!
inlineBitXor 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		xorRwithA;
		ensureRintegerBit;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #bitXor:.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:35:20'!
inlineEquals 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfEqualTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #=.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:35:47'!
inlineGreaterEqualThan 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfGreaterOrEqualSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:36:06'!
inlineGreaterThan 
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfGreaterSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:36:37'!
inlineIdentityEquals 

	done := assembler newLabel.
	self loadOperands.
	assembler loadTwithR; loadRwithTrue;
		compareTwithA;
		jumpIfEqualTo: done; loadRwithFalse; @ done! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:37:02'!
inlineLessEqualThan 
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfLessOrEqualSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:37:54'!
inlineLessThan 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfLessSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:38:41'!
inlineMessage 
	| selector s |
	s := message selector.
	selector := s isSymbol
		ifTrue: [ s ]
		ifFalse: [ nativizer method at: s ].
	selector = #==
		ifTrue: [ ^ self inlineIdentityEquals ].
	selector = #=
		ifTrue: [ ^ self inlineEquals ].
	selector = #+
		ifTrue: [ ^ self inlinePlus ].
	selector = #<
		ifTrue: [ ^ self inlineLessThan ].
	selector = #<=
		ifTrue: [ ^ self inlineLessEqualThan ].
	selector = #>=
		ifTrue: [ ^ self inlineGreaterEqualThan ].
	selector = #>
		ifTrue: [ ^ self inlineGreaterThan ].
	selector = #-
		ifTrue: [ ^ self inlineMinus ].
	selector = #*
		ifTrue: [ ^ self inlineMultiply ].
	selector = #//
		ifTrue: [ ^ self inlineQuotient ].
	selector = #\\
		ifTrue: [ ^ self inlineRemainder ].
	selector = #|
		ifTrue: [ ^ self inlineBitOr: #| ].
	selector = #&
		ifTrue: [ ^ self inlineBitAnd: #& ].
	"	selector = #'>>' ifTrue: [^self inlineBitShiftLeft: #>>].
	selector = #'<<' ifTrue: [^self inlineBitShiftRight: #<<]."
	selector = #bitOr:
		ifTrue: [ ^ self inlineBitOr: #bitOr: ].
	selector = #bitAnd:
		ifTrue: [ ^ self inlineBitAnd: #bitAnd: ].
	selector = #bitXor:
		ifTrue: [ ^ self inlineBitXor ].
	"	selector = #bitShift: ifTrue: [^self inlineBitShift]."
	self assert: false! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:39:05'!
inlineMinus 
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		subAfromR;
		jumpIfOverflowTo: overflow;
		ensureRintegerBit;
		@ done.
	nativizer addFallback: [
		assembler
			@ overflow;
			addAtoR;
			@ failed;
			pushA.
		nativizer emitSend: #'-'.
		assembler jumpTo: done] ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:39:35'!
inlineMultiply 
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		pushA;
		convertAtoNativeInteger;
		loadTwithR;
		clearRintegerBit;
		multiplyRbyA;
		popA;
		jumpIfOverflowTo: overflow;
		ensureRintegerBit;
		@ done.
	nativizer
		addFallback: [ assembler
				@ overflow;
				loadRwithT;
				@ failed;
				pushA.
			nativizer emitSend: #*.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:39:57'!
inlinePlus 
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		clearRintegerBit;
		addAtoR;
		jumpIfOverflowTo: overflow;
		@ done.
	nativizer addFallback: [
		assembler
			@ overflow;
			subAfromR;
			ensureRintegerBit;
			@ failed;
			pushA.
		nativizer emitSend: #'+'.
		assembler jumpTo: done] ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:40:33'!
inlineQuotient 
	| |
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	assembler
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: failed.
	nativizer saveContextSwitchPoint.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		divideRbyT;
		convertRtoSmallInteger;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #//.
			assembler jumpTo: done ]! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:40:56'!
inlineRemainder 

	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	assembler
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: failed.
	nativizer saveContextSwitchPoint.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		divideRbyT;
		loadRwithA;
		convertRtoSmallInteger;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #//.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:41:21'!
loadAwithArgument: index in: environment 
	
	nativizer loadAwithArgument: index in: environment ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:41:32'!
loadAwithTemporary: index in: environment 

	nativizer loadAwithTemporary: index in: environment ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:41:44'!
loadOperands 

	message opcodes
		do: [:hintcode | hintcode nativizeUsing: assembler for: self] ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:42:16'!
loadRvisitingArgument 

	message arguments first acceptVisitor: nativizer! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:42:28'!
loadRvisitingReceiver 

	message receiver acceptVisitor: nativizer ! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:42:40'!
loadRwithTemporary: index env: environment 

	nativizer temporaryAt: index in: environment! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:44:08'!
popR 

	^ nativizer popR! !

!BinaryMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:44:19'!
pushR 

	^nativizer pushR! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:32:13'!
argumentAt: index in: environment 

	nativizer argumentAt: index in: environment ! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:32:33'!
assembler: anAssembler 

	assembler := anAssembler ! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:32:51'!
failLabel
	^failed ! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:42:54'!
message: aMessageAstcode 

	message := aMessageAstcode ! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:43:15'!
method 

	^nativizer method ! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:43:41'!
methodLiteralAt: index 

	^nativizer methodLiteralAt: index! !

!BinaryMessageNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:43:53'!
nativizer: anAstcodeNativizer 

	nativizer := anAstcodeNativizer ! !

!BinaryMessageOptimizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:51:15'!
emitter: anAstcodeEmitter 

	emitter := anAstcodeEmitter ! !

!BinaryMessageOptimizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 12:53:25'!
message: aMessageNode 

	message := aMessageNode.
	selector := aMessageNode selector value.
	receiver := aMessageNode receiver.
	argument := aMessageNode arguments first ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:50:49'!
emitOpcodes 

	(selector == #'==' or: [selector == #'!!==']) ifTrue: [^self loadOperands].
	
	(#(= + - !!= < > <= >= | & << >> * / // \\ bitOr: bitAnd: bitXor: bitShift:)
		includes: selector)
		ifTrue: [^self loadSmallIntegerOperands].
		
	self assert: false ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:51:28'!
ensureAisSmallInteger 

	emitter nextPut: EnsureAisSmallIntegerId ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:51:39'!
ensureRisSmallInteger 

	emitter nextPut: EnsureRisSmallIntegerId ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:51:49'!
genericLoadArgument 

	emitter nextPut: LoadAvisitingArgumentId ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:51:59'!
genericLoadReceiver 

	emitter nextPut: LoadRvisitingReceiverId ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:52:36'!
loadOperands 
	| strict push |
	strict := message needsStrictEvaluationOrder.
	strict
		ifTrue: [
			emitter encodeLoadRvisitingReceiver.
			push := self hasImmediateArgument not.
			push ifTrue: [emitter encodePushR].
			self loadArgument.
			push ifTrue: [emitter encodePopR]]
		ifFalse: [
			self loadArgument.
			emitter encodeLoadRvisitingReceiver] ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:53:08'!
loadSmallIntegerOperands 

	self loadOperands.
	self receiverIsSmallInteger ifFalse: [self ensureRisSmallInteger].
	self argumentIsSmallInteger ifFalse: [self ensureAisSmallInteger] ! !

!BinaryMessageOptimizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 12:52:23'!
oadArgument 

	self hasImmediateArgument
		ifTrue: [argument emitLoadAusing: emitter]
		ifFalse: [self genericLoadArgument] ! !

!BinaryMessageOptimizer methodsFor: 'testing' stamp: 'KenD 2/27/2021 12:50:06'!
argumentIsSmallInteger 

	^argument isLiteral and: [argument value isSmallInteger] ! !

!BinaryMessageOptimizer methodsFor: 'testing' stamp: 'KenD 2/27/2021 12:50:27'!
argumentOverwritesR 

	argument isLiteral ifTrue: [^false].
	argument isVariable ifTrue: [^false].
	^true ! !

!BinaryMessageOptimizer methodsFor: 'testing' stamp: 'KenD 2/27/2021 12:52:13'!
hasImmediateArgument 

	^argument isLiteral or: [argument isIdentifier] ! !

!BinaryMessageOptimizer methodsFor: 'testing' stamp: 'KenD 2/27/2021 12:53:42'!
receiverIsSmallInteger 

	^receiver isLiteral and: [receiver value isSmallInteger] ! !

!BinaryMessageOptimizer class methodsFor: 'testing' stamp: 'KenD 2/27/2021 12:49:41'!
optimizesMessage: selector 

	^ #(== = < <= >= > + - * // \\ | & bitOr: bitAnd: bitXor:)
		includes: selector! !

!BinaryMessageOptimizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 12:49:06'!
on: aMessageNode using: anAstcodeEmitter 

	^self new emitter: anAstcodeEmitter; message: aMessageNode ! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:07:26'!
declaration 

	^self! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:14:18'!
literal

	^nil! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:14:52'!
name: aString 

	name := aString! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:06:52'!
canBeAssigned 

	^true! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:11:20'!
isArgument 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:11:30'!
isClassBinding 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:11:38'!
isClassVariable 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:11:52'!
isConstantBinding 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:13'!
isGlobal 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:20'!
isInStack 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:28'!
isInstVar 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:38'!
isLiteral 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:51'!
isLocal 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:12:59'!
isPoolVariableBinding 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:13:07'!
isSelf 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:13:43'!
isSelfOrSuper 

	^self isSelf or: [self isSuper]! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:13:23'!
isSuper 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:13:33'!
isTemporary 

	^false! !

!Binding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:13:56'!
isUnresolved 

	^false! !

!Binding methodsFor: 'actions' stamp: 'KenD 2/24/2021 11:05:41'!
beReferencedFrom: aScriptNode

	self notYetImplemented ! !

!Binding methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 11:09:17'!
encodeUsing: anAstcodeEncoder 

	self assert: false! !

!AssociationBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:24:17'!
usesSymbols 

	^false! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:24:30'!
association 

	^association! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:24:41'!
association: anAssociation 

	association := anAssociation.
	name := anAssociation key! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:25:02'!
literal 

	^association! !

!AssociationBinding class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 11:23:29'!
on: anAssociation 

	^self new association: anAssociation! !

!ClassVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:25:20'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithClassVar: association! !

!ClassVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:25:32'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeClassVar: association! !

!ClassVarBinding methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:25:44'!
isClassVariable 

	^true! !

!GlobalBinding methodsFor: 'testing' stamp: 'KenD 2/28/2021 13:43:12'!
isGlobal 

	^true! !

!GlobalBinding methodsFor: 'codeGeneration' stamp: 'KenD 2/28/2021 13:39:02'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithGlobal: association! !

!GlobalBinding methodsFor: 'codeGeneration' stamp: 'KenD 2/28/2021 13:42:54'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeGlobalVar: association! !

!GlobalBinding class methodsFor: 'testing' stamp: 'KenD 2/28/2021 13:37:51'!
usesSymbols 

	^true! !

!GlobalBinding class methodsFor: 'instance creation' stamp: 'KenD 2/28/2021 13:37:20'!
on: anAssociation 
	| v class |
	v := anAssociation value.
	class := (v isSpecies or: [ v class == SlotObjectMap and: [v spec isMeta]])
		ifTrue: [ ClassBinding ]
		ifFalse: [ GlobalBinding ].
	^ class new association: anAssociation! !

!ClassBinding methodsFor: 'testing' stamp: 'KenD 2/28/2021 13:44:11'!
isClassBinding 

	^true! !

!ClassBinding methodsFor: 'codeGeneration' stamp: 'KenD 2/28/2021 13:44:25'!
encodeUsing: anAstcodeEncoder 

	anAstcodeEncoder encodeClassBinding: association! !

!PoolVarBinding methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:44:07'!
isPoolVariableBinding 

	^true! !

!PoolVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:43:39'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithPoolVar: association! !

!PoolVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:43:50'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodePoolVar: self literal! !

!ConstantPoolBinding methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:45:49'!
literal 

	^association value! !

!ConstantPoolBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:45:10'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithConstPoolVar: association value! !

!ConstantPoolBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:45:20'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodePoolConst: self literal! !

!ConstantPoolBinding methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:44:51'!
canBeAssigned 

	^false! !

!ConstantPoolBinding methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:45:32'!
isConstantBinding 

	^true! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:53:29'!
isLiteral

	^true! !

!LocalBinding methodsFor: 'actions' stamp: 'KenD 2/25/2021 12:55:22'!
beInArray 

	environment := ArrayEnvironment new! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:57:13'!
isInStack 

	^environment isStack! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:57:32'!
isLocal 

	^true! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:57:03'!
sInArray 

	^self isInStack not! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:55:35'!
declaration 

	^declaration! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:55:43'!
declaration: anIdentifierNode 

	declaration := anIdentifierNode! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:56:04'!
environmentIndex 

	^environment index! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:56:17'!
environmentIndex: anInteger 

	environment index: anInteger! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:56:27'!
environmentObject 

	^environment! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:56:38'!
index

	^index! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:56:47'!
index: aNumber 

	index := aNumber! !

!ArgumentBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:00:20'!
description 

	^'argument ' , name! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/25/2021 12:59:46'!
beInlined 

	environment := InlinedArgEnvironment new! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 2/25/2021 13:01:28'!
encodeUsing: anAstcodeEncoder 

	anAstcodeEncoder encodeArgument: index env: environment! !

!ArgumentBinding methodsFor: 'initialization' stamp: 'KenD 2/25/2021 13:02:17'!
initialize 

	super initialize.
	environment := ArgumentEnvironment new! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:00:00'!
canBeAssigned 

	^false! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:01:53'!
index: aNumber 

	index := aNumber! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:02:34'!
isArgument 

	^true! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:02:55'!
isInlined 

	^environment isInlinedArgument! !

!ArgumentBinding methodsFor: 'private' stamp: 'KenD 2/25/2021 13:01:12'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithArg: index env: environment! !

!SelfBinding methodsFor: 'actions' stamp: 'KenD 2/27/2021 13:23:18'!
beReferencedFrom: aScriptNode 

	aScriptNode useSelf! !

!SelfBinding methodsFor: 'emitCode' stamp: 'KenD 2/27/2021 13:24:08'!
emitLoadAusing: anSExpressionNativizer 

	anSExpressionNativizer encodeLoadAwithSelf! !

!SelfBinding methodsFor: 'emitCode' stamp: 'KenD 2/27/2021 13:24:20'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeSelf! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:23:33'!
canBeAssigned 

	^false! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:24:34'!
isSelf 

	^true! !

!Bridge methodsFor: 'initialization' stamp: 'KenD 2/28/2021 13:04:31'!
initialize 

	cache := IdentityDictionary new.
	objects := Dictionary new! !

!Bridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:03:48'!
globalNamed: aSymbol 

	^objects at: aSymbol ifAbsentPut: [self findGlobalNamed: aSymbol]! !

!Bridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:04:02'!
globalNamed: aSymbol ifAbsent: aBlock 

	^objects at: aSymbol ifAbsent: aBlock! !

!Bridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:04:46'!
mirrorOn: address 

	^(runtime handleOn: address) mirror! !

!Bridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:04:59'!
name: object as: name 

	^objects at: name put: object! !

!Bridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:05:12'!
runtime: aRuntime 

	runtime := aRuntime! !

!Bridge class methodsFor: 'instance creation' stamp: 'KenD 2/28/2021 13:03:11'!
new 

	^self basicNew initialize! !

!SmalltalkBridge methodsFor: 'private' stamp: 'KenD 2/28/2021 13:16:36'!
setFalseObj: aFalse

	falseObj := aFalse! !

!SmalltalkBridge methodsFor: 'private' stamp: 'KenD 2/28/2021 13:15:47'!
setNilObj: aNil

	nilObj := aNil! !

!SmalltalkBridge methodsFor: 'private' stamp: 'KenD 2/28/2021 13:16:14'!
setTrueObj: aTrue

	trueObj := aTrue! !

!SmalltalkBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:07:33'!
false 

	^falseObj! !

!SmalltalkBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:07:28'!
findRootObjects 

	self subclassResponsibility
! !

!SmalltalkBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:07:44'!
nil 

	^nilObj! !

!SmalltalkBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:07:56'!
smalltalk 

	^self
		globalNamed: #Smalltalk
		ifAbsent: [self update; globalNamed: #Smalltalk]! !

!SmalltalkBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:08:09'!
true 

	^trueObj! !

!SmalltalkBridge methodsFor: 'initialization' stamp: 'KenD 2/28/2021 13:08:51'!
update 

	self findRootObjects! !

!SmalltalkBridge class methodsFor: 'instance creation' stamp: 'KenD 2/28/2021 13:06:56'!
new 

	^self basicNew initialize! !

!BootstrappedPstBridge methodsFor: 'initialization' stamp: 'KenD 2/28/2021 13:20:12'!
findRootObjects 

	super setNilObj: (ObjectHandle 
						on: bootstrapper nilObject 
						within: runtime).
	super setTrueObj: (ObjectHandle 
						on: bootstrapper trueObject 
						within: runtime).
	super setFalseObj: (ObjectHandle 
						on: bootstrapper falseObject 
						within: runtime)! !

!BootstrappedPstBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:09:50'!
bootstrapper: aSmalltalkBootstrapper 

	bootstrapper := aSmalltalkBootstrapper! !

!BootstrappedPstBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:10:07'!
findNilObject 

	^ nilObj := ObjectHandle
		on: runtime storage nilObject
		within: runtime! !

!BootstrappedPstBridge methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:21:20'!
updateGlobals 

	bootstrapper globals 
		keysAndValuesDo: [:name :obj | objects at: name put: obj ]! !

!Gate methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:51:59'!
isLocal 

	^handle isLocal! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:50:33'!
asLocalCollection 

	^handle asLocalCollection! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:50:45'!
asLocalString 

	^handle asLocalString! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:50:56'!
dispatch: aMessage 

	^self dispatch: aMessage from: nil! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:51:19'!
handle 

	^handle! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:51:27'!
handle: anObjectHandle 

	handle := anObjectHandle! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:51:40'!
handleOn: objectHandle 

	^handle handleOn: objectHandle! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:52:18'!
maneuvererOn: objectHandle 

	^DirectGate subjectOn: objectHandle! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:52:33'!
mirageOn: objectHandle 

	^MirageGate subjectOn: objectHandle! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:52:45'!
mirror 

	^handle mirror! !

!Gate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:52:55'!
subject 

	^Subject new _gate: self! !

!Gate class methodsFor: 'instance creation' stamp: 'KenD 3/2/2021 12:49:58'!
on: handle 

	^self new handle: handle! !

!Gate class methodsFor: 'instance creation' stamp: 'KenD 3/2/2021 12:50:08'!
subjectOn: handle 

	^(self on: handle) subject! !

!DirectGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 12:54:54'!
dispatch: aMessage from: parentInterpreter 
	| receiver method interpreter |
	receiver := aMessage receiver.
	method := handle runtime lookup: aMessage selector on: receiver.
	method ifNil: [ self assert: false ].
	interpreter := SmalltalkInterpreter
		on: receiver
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method! !

!DirectGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 12:55:24'!
dispatchSuper: aMessage from: parentInterpreter 
	| receiver method interpreter |
	receiver := aMessage receiver.
	method := handle runtime
		lookupSuper: aMessage selector
		on: receiver
		from: parentInterpreter method classBinding superclass name.
	method ifNil: [ self assert: false ].
	interpreter := SmalltalkInterpreter
		on: receiver
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method! !

!DirectGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:55:42'!
getInstVarNamed: name 
	| index |
	index := handle mirror reflectedClass indexOfSlot: name.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index! !

!DirectGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:55:55'!
slotAt: index 
	| slot |
	slot := handle slotAt: index.
	^self maneuvererOn: slot! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:58:46'!
classBinding 

	^class! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:00:30'!
getInstVarNamed: name 
	| index |
	index := class indexOfSlot: name.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:00:42'!
handle: anObjectHandle 

	super handle: anObjectHandle.
	class := handle isLocal
		ifTrue: [ handle oid class ]
		ifFalse: [ handle mirror reflectedClass localEquivalent ]! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:00:57'!
lookup: selector 

	^class methodNamed: selector! !

!MirageGate methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:01:24'!
slotAt: index 
	| slot |
	slot := handle slotAt: index.
	^self mirageOn: slot! !

!MirageGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 12:58:59'!
dispatch: aMessage 

	^self dispatch: aMessage from: nil
! !

!MirageGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 12:59:11'!
dispatch: aMessage from: parentInterpreter 
	| receiver |
	receiver := aMessage receiver.
	^receiver _gate isLocal
		ifTrue: [ self dispatchLocal: aMessage from: parentInterpreter ]
		ifFalse: [ self dispatchRemote: aMessage from: parentInterpreter ]! !

!MirageGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 12:59:29'!
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
	^ hresult mirage! !

!MirageGate methodsFor: 'dispatch' stamp: 'KenD 3/2/2021 13:00:14'!
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
		evaluate: method! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:37:48'!
isDirectMemoryReference 

	^false! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:37:58'!
isImmediate 

	^false! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:38:08'!
isMemory 

	^false! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:38:17'!
isTemplate 

	^false! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:55:01'!
needsExtraBit 

	^false! !

!ISAOperand methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:56:08'!
prefers: anOperandType to: anotherOperandType 

	^false! !

!ISAOperand methodsFor: 'services' stamp: 'KenD 2/24/2021 13:57:12'!
template 

	^self! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:35:38'!
baseExtension 

	^0! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:37:28'!
indexExtension 

	^0! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:38:30'!
length 

	^length! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:38:41'!
length: anInteger 

	length := anInteger! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:54:48'!
memoryLength 

	^length! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:55:27'!
offsetOfIndex: index 

	length = 64 ifTrue: [^index - 1 bitShift: 3].
	length = 32 ifTrue: [^index - 1 bitShift: 2].
	length =  8 ifTrue: [^index - 1].
	self error: 'invalid operand'! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:55:40'!
operand1 

	^self! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:55:50'!
operand2 

	^self! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:56:25'!
regExtension 

	^0! !

!ISAOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:56:45'!
sizeInBytes 

	^length // 8! !

!ISAOperand methodsFor: 'operators' stamp: 'KenD 2/24/2021 13:37:09'!
, anISAOperand 

	^{self. anISAOperand}! !

!ISAOperand class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 13:35:08'!
new 

	^super new initialize! !

!InstructionPrefix methodsFor: 'writing' stamp: 'KenD 2/27/2021 13:16:29'!
writeOn: anInstruction 

	self subclassResponsibility! !

!InstructionPrefix methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:14:56'!
name: aString 

	name := aString! !

!InstructionPrefix methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:13:58'!
isLegacy 

	^false! !

!InstructionPrefix methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:14:06'!
isRex 

	^false! !

!InstructionPrefix methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:14:14'!
isSegment 

	^false! !

!InstructionPrefix methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:14:23'!
isVex 

	^false! !

!InstructionPrefix class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 13:11:03'!
initializePrefixes 

	self == InstructionPrefix
		ifTrue: [ self allSubclasses do: #initializePrefixes ].
	self compileAll.
	self class compileAll! !

!InstructionPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:06:47'!
classFor: aString 

	(aString beginsWith: 'REX') ifTrue: [^REXPrefix].
	(aString beginsWith: 'VEX') ifTrue: [^VEXPrefix].
	^LegacyPrefix! !

!InstructionPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:10:28'!
fromString: aString 
	| reader prefixes rex |
	reader := aString readStream.
	prefixes := Prefixes
		select: [:p | reader peekForAll: p value hex]
		in: OrderedCollection new.
	(reader peek: 'REX' size) = 'REX' ifTrue: [
		rex := REXPrefix fromStream: reader.
		prefixes add: rex].
	(reader peek: 'VEX' size) = 'VEX' ifTrue: [
		rex := VEXPrefix fromStream: reader.
		prefixes add: rex].
	^prefixes! !

!InstructionPrefix class methodsFor: 'services' stamp: 'KenD 2/27/2021 13:11:56'!
peekFrom: aStream 

	(aStream peekFor: LOCK value) ifTrue: [^LOCK].
	(aStream peekFor: REPNE value) ifTrue: [^REPNE].
	(aStream peekFor: REP value) ifTrue: [^REP].
	(aStream peekFor: OperandSize_Override value)
		ifTrue: [^OperandSize_Override].
	(aStream peekFor: AddressSize_Override value)
		ifTrue: [^AddressSize_Override].
	^nil! !

!InstructionPrefix class methodsFor: 'services' stamp: 'KenD 2/27/2021 13:13:36'!
prefixes 

	^Prefixes! !

!SegmentPrefix methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:21:26'!
value

	^value! !

!SegmentPrefix methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:21:36'!
value: aInteger 

	value := aInteger! !

!SegmentPrefix methodsFor: 'services' stamp: 'KenD 2/27/2021 13:21:00'!
register 

	^Register named: name allButLast! !

!SegmentPrefix methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:20:34'!
isSegment 

	^true! !

!SegmentPrefix methodsFor: 'writing' stamp: 'KenD 2/27/2021 13:22:01'!
writeOn: instruction 

	instruction writeSegmentPrefix: value! !

!SegmentPrefix class methodsFor: 'services' stamp: 'KenD 2/27/2021 13:20:11'!
peekFrom: aStream 

	(aStream peekFor: 16r2E) ifTrue: [^self cs].
	(aStream peekFor: 16r3E) ifTrue: [^self ds].
	(aStream peekFor: 16r26) ifTrue: [^self es].
	(aStream peekFor: 16r64) ifTrue: [^self fs].
	(aStream peekFor: 16r65) ifTrue: [^self gs].
	^nil! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:18:19'!
cs 

	^self new name: 'cs:'; value: 16r2E! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:18:33'!
ds 

	^self new name: 'ds:'; value: 16r3E! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:18:43'!
es 

	^self new name: 'es:'; value: 16r26! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:18:54'!
fs 

	^self new name: 'fs:'; value: 16r64! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:19:02'!
gs 

	^self new name: 'gs:'; value: 16r65! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:19:17'!
named: aString 
	| string char |
	aString size < 2 ifTrue: [^nil].
	string := aString asLowercase.
	(string at: 2) = $s ifFalse: [^nil].
	char := string at: 1.
	char = $c ifTrue: [^self cs].
	char = $s ifTrue: [^self ss].
	char = $d ifTrue: [^self ds].
	char = $e ifTrue: [^self es].
	char = $f ifTrue: [^self fs].
	char = $g ifTrue: [^self gs].
	^nil! !

!SegmentPrefix class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 13:19:40'!
ss 

	^self new name: 'ss:'; value: 16r36! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:58:34'!
isInlinedArgument 

	^false! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:11:43'!
isCurrent 

	^index isNil! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:11:52'!
isIndirect 

	^self isCurrent not! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:12:05'!
isStack 

	^false! !

!ArrayEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:11:07'!
environmentType 

	^EnvironmentValue! !

!ArrayEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:11:19'!
index 

	^index! !

!ArrayEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:11:26'!
index: anInteger 

	index := anInteger! !

!StackEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:06:37'!
isStack 

	^true! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:06:18'!
index 

	^nil! !

!ArgumentEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:07:51'!
environmentType 

	^LocalArgument! !

!MessageLinker methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:39:52'!
filter: anObject 

	filter := anObject.
	filter isCollection ifTrue: [filter := filter asIdentitySet]! !

!MessageLinker methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:39:33'!
canInline: aSymbol 

	filter ifNil: [ ^true ].
	filter == aSymbol ifTrue: [ ^true ].
	^(filter includes: aSymbol)! !

!CompositeMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:41:49'!
emitSend: selector using: anAssembler 
	| linker |
	linker := self dispatchLinkerFor: selector.
	linker emitSend: selector using: anAssembler! !

!CompositeMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:42:07'!
emitSendSuper: selector from: aClass using: anAssembler 
	| linker |
	linker := self dispatchLinkerFor: selector.
	linker emitSendSuper: selector from: aClass using: anAssembler! !

!CompositeMessageLinker methodsFor: 'initialization' stamp: 'KenD 3/2/2021 12:42:27'!
initialize 

	candidates := OrderedCollection new! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 3/2/2021 12:41:08'!
add: aMessageLinker 

	candidates add: aMessageLinker! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 3/2/2021 12:41:19'!
dispatchLinkerFor: selector 

	^candidates
		detect: [:linker | linker canInline: selector]
		ifNone: [self error: 'cannot dispatch ', selector storeString]! !

!Mirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:21:23'!
handle 

	^handle! !

!Mirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:21:32'!
handle: anObjectHandle 

	handle := anObjectHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:19:10'!
asLocalInteger 

	^handle asLocalInteger! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:19:20'!
associationMirrorOn: methodDictionaryHandle 

	^AssociationMirror on: methodDictionaryHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:19:33'!
behaviorMirrorOn: behaviorHandle 

	^BehaviorMirror on: behaviorHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:19:47'!
classMirrorOn: classHandle 

	^ClassMirror on: classHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:19:58'!
closureMirrorOn: closureHandle 

	^ ClosureMirror on: closureHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:20:15'!
compiledBlockMirrorOn: aCompiledBlockHandle 

	^ CompiledBlockMirror on: aCompiledBlockHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:20:27'!
compiledMethodMirrorOn: methodDictionaryHandle 

	^CompiledMethodMirror on: methodDictionaryHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:20:39'!
dictionaryMirrorOn: classHandle 

	^DictionaryMirror on: classHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:21:44'!
metaclassMirrorOn: classHandle 

	^MetaclassMirror on: classHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:21:57'!
methodDictionaryMirrorOn: methodDictionaryHandle 

	^MethodDictionaryMirror on: methodDictionaryHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:22:17'!
objectMirrorOn: objectHandle 

	^ObjectMirror on: objectHandle! !

!Mirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:22:31'!
speciesMirrorOn: classHandle 

	^SpeciesMirror on: classHandle! !

!Mirror class methodsFor: 'instance creation' stamp: 'KenD 2/25/2021 13:18:36'!
on: handle 

	^self new handle: handle! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 14:25:55'!
at: index 
	| slot |
	slot := self reflectedClass instSize + index.
	^self slotAt: slot! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 14:26:45'!
bytes 

	^handle asLocalBytes! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 14:28:32'!
getInstVarAt: index 

	^self slotAt: index! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 14:28:44'!
getInstVarNamed: name 
	| index |
	index := handle indexOf: name for: self.
	index = 0 ifTrue: [self error: 'instance variable not found'].
	^self slotAt: index! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 14:29:01'!
hash 

	^ handle hash! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:08:10'!
localDeepCopy 

	self reflectsInteger
		ifTrue: [ ^ self asLocalInteger ].
	^ (1 to: self size)
		collect: [ :i | | slot |
			slot := self slotAt: i.
			slot localDeepCopy ]! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:09:02'!
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
		do: [ self printString , '(could not be read)' ]! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:12:06'!
setInstVarAt: index with: value 

	^ self slotAt: index put: value! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:12:22'!
size 

	^handle size - self reflectedClass instSize! !

!ObjectMirror methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:14:01'!
slotSize 

	^ handle size! !

!ObjectMirror methodsFor: 'comparing' stamp: 'KenD 2/25/2021 13:50:51'!
= anObject 
	^self class = anObject class and: [handle = anObject handle]! !

!ObjectMirror methodsFor: 'comparing' stamp: 'KenD 2/25/2021 14:28:09'!
equals: anotherObject 

	^ (anotherObject isKindOf: self class)
		and: [ handle = anotherObject handle ]! !

!ObjectMirror methodsFor: 'converting' stamp: 'KenD 2/27/2021 09:09:53'!
mirage 

	^handle mirage! !

!ObjectMirror methodsFor: 'enumerating' stamp: 'KenD 2/25/2021 14:27:52'!
do: aBlock 
	1 to: self size do: [:index | | slot |
		slot := self slotAt: index.
		aBlock value: slot]! !

!ObjectMirror methodsFor: 'evaluating' stamp: 'KenD 2/27/2021 09:06:56'!
invoke: method with: arguments 
	| interpreter |
	interpreter := SmalltalkInterpreter on: self with: arguments for: method.
	^ interpreter evaluate: method! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 13:51:50'!
asAssociationMirror 

	^self associationMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:23:08'!
asBehaviorMirror 

	^self behaviorMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:23:21'!
asBlockMirror 

	^ self compiledBlockMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:23:41'!
asByteArray 

	^self bytes! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:23:56'!
asClassMirror 

	^self classMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:24:07'!
asClosureMirror 

	^ self closureMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:24:21'!
asDictionaryMirror 

	^self dictionaryMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:24:32'!
asLocalArray 
	| size |
	size := self size.
	^(1 to: size) collect: [:i | self slotAt: i]! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:24:42'!
asLocalInteger 

	^handle asLocalInteger! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:24:51'!
asLocalString 

	^handle asLocalString! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:25:03'!
asMethodMirror 

	^self compiledMethodMirrorOn: handle! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:25:15'!
asSpeciesMirror 
	^(self speciesMirrorOn: handle) reflectsMetaclass
		ifTrue: [self metaclassMirrorOn: handle]
		ifFalse: [self classMirrorOn: handle]! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:25:26'!
asStringMirror 

	^self! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:25:35'!
asSubject 

	^handle mirage! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/25/2021 14:27:21'!
dispatch: aMessage from: parentInterpreter 
	| method interpreter |
	method := self lookup: aMessage selector.
	method ifNil: [ self assert: false ].
	interpreter := parentInterpreter class
		on: self
		with: aMessage arguments
		for: method.
	^ interpreter
		parent: parentInterpreter;
		evaluate: method! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:07:38'!
localClassname 

	^self reflectedClass localName! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:10:29'!
reflectedBehavior 
	| behavior |
	behavior := handle getBehavior.
	^self behaviorMirrorOn: behavior! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:10:39'!
reflectedClass 

	^handle getClass! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:12:35'!
slotAt: index 

	| slot |
	slot := handle slotAt: index.
	^self objectMirrorOn: slot! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:13:11'!
slotAt: index put: value 

	handle slotAt: index put: value _gate handle oid.
	^ value! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:13:46'!
slotOf: species named: name 
	| index |
	index := handle indexOf: name inStructureOf: species name asSymbol.
	^self slotAt: index! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:14:22'!
structure 

	^handle structureOf: self structureType! !

!ObjectMirror methodsFor: 'meta accessing' stamp: 'KenD 2/27/2021 09:14:35'!
structureType 

	^self subclassResponsibility! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/27/2021 09:09:24'!
lookup: aSelector 

	^self reflectedBehavior compiledMethodFor: aSelector! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/27/2021 09:10:54'!
reflectsInteger 

	^handle isInteger! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/27/2021 09:11:08'!
reflectsLargeObject 

	^handle isLarge! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/27/2021 09:11:44'!
reflectsNil 

	^handle = handle nilObject! !

!ObjectMirror methodsFor: 'nativizing' stamp: 'KenD 2/25/2021 13:51:24'!
_gate 

	^self! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/25/2021 14:26:29'!
basicFlags 

	^handle basicFlags! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/27/2021 09:11:20'!
eflectsMethodDictionary 

	^false! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/27/2021 09:07:22'!
largeSize 

	^handle largeSize! !

!ObjectMirror methodsFor: 'testing' stamp: 'KenD 2/25/2021 14:27:00'!
ontains: anAddress 

	^anAddress >= handle oid and: [anAddress < (handle oid + self size)]! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:08'!
key 

	^self getInstVarNamed: #key! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:24'!
structureType 

	^#Association! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:34'!
value 

	^self getInstVarNamed: #value! !

!BehaviorMirror methodsFor: 'nativizing' stamp: 'KenD 2/25/2021 13:46:39'!
compiledMethodFor: aSymbol 
	| method next |
	method := self methodDictionary compiledMethodFor: aSymbol.
	method ifNotNil: [^method].
	next := self next.
	^next reflectsNil ifFalse: [next compiledMethodFor: aSymbol]! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:45:50'!
at: i 

	self assert: false! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:46:05'!
classBinding 
	| class |
	class := self getInstVarNamed: #class.
	^class asSpeciesMirror! !

!BehaviorMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:47:02'!
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
	self error: 'could not find the class corresponding to this behavior'! !

!ClosureMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:27:13'!
block 
	| block |
	block := self getInstVarNamed: #block.
	^ block asBlockMirror! !

!ClosureMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:27:22'!
structureType 

	^ #Closure! !

!CompiledBlockMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:29:09'!
structureType 

	^ #CompiledBlock! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:31:58'!
argumentCount 

	^self flags asLocalInteger bitAnd: ArgCount! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:32:13'!
astcodes 

	^self getInstVarNamed: #astcodes! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:32:46'!
at: index 
	^ self slotAt: self fixedInstSize + index
! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:32:59'!
classBinding 
	| class |
	class := self getInstVarNamed: #class.
	^class asSpeciesMirror! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:33:49'!
compiler 

	^self assert: false! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:33:33'!
currentVersion 
	^self classBinding compiledMethodFor: self selector asLocalString asSymbol! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:34:29'!
decodedAstcodes 
	| astcodes |
	astcodes := self astcodes localDeepCopy.
	^ AstcodeDecoder new
		stream: astcodes readStream;
		method: self;
		decodeMethod! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:34:40'!
fixedInstSize 

	^ self reflectedClass instSize! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:34:59'!
flags 

	^self getInstVarNamed: #flags! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:35:11'!
fullName 

	^self classBinding localName , '>>#' , self selector asLocalString! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:35:57'!
nativeCode 

	^self getInstVarNamed: #nativeCode! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:36:07'!
nativeCodeBytes 

	^self nativeCode slotAt: 1
! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:37:03'!
readSourceFrom: encodedPosition 

	self assert: false! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:37:16'!
selector 
	| selector |
	selector := self getInstVarNamed: #selector.
	^selector asStringMirror! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:37:26'!
size 

	^ handle size - self fixedInstSize! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:37:38'!
source 

	^self sourceCode! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:37:49'!
sourceCode 
	| source |
	source := self getInstVarNamed: #source.
	source reflectsNil ifTrue: [^nil].
	source reflectsInteger ifFalse: [^source asString].
	^self readSourceFrom: source! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:38:00'!
structureType 

	^#CompiledMethod! !

!CompiledMethodMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:38:10'!
timestamp 

	^nil! !

!CompiledMethodMirror methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:35:25'!
isExpression 

	^false! !

!CompiledMethodMirror methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:35:42'!
isValid 
	[^self reflectedClass localEquivalent inheritsFrom: CompiledMethod]
		on: Error
		do: [^false]! !

!DictionaryMirror methodsFor: 'enumerating' stamp: 'KenD 3/2/2021 12:48:14'!
do: aBlock 

	1 to: self contentsSize do: [:i | | current |
		current := self at: i.
		current reflectsNil ifFalse: [| mirror |
			mirror := current asAssociationMirror.
			aBlock value: mirror key value: mirror value]]! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:46:48'!
at: i 

	^self contents at: i! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:47:33'!
at: key using: transform 

	self do: [:k :value | (transform value: k) = key ifTrue: [^value]].
	^nil! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:47:43'!
contents 

	^self getInstVarNamed: #table! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:47:52'!
contentsSize 

	^self contents size! !

!DictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/2/2021 12:48:33'!
structureType 

	^#Dictionary! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:35:01'!
compiledMethodFor: selector 

	^self instBehavior compiledMethodFor: selector! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:35:16'!
indexOfSlot: name 
	| instVars |
	instVars := self allInstVarNames.
	^instVars indexOf: name ifAbsent: 0! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:37:05'!
localName 

	^self subclassResponsibility 
! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:38:16'!
project 

	^nil! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:38:34'!
reflectsMetaclass 
	| metasize |
	metasize := 6.
	^handle size = metasize! !

!SpeciesMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:38:44'!
structureType 

	^#Species! !

!SpeciesMirror methodsFor: 'nativizing' stamp: 'KenD 3/1/2021 16:35:38'!
instBehavior 
	| name |
	name := self getInstVarNamed: #instanceBehavior.
	^name asBehaviorMirror! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:44:05'!
classVariables 
	| classVariables |
	classVariables := self getInstVarNamed: #classVariables.
	classVariables reflectsNil ifTrue: [^Dictionary new].
	^classVariables! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:44:21'!
instanceClass 

	^self! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:44:36'!
localEquivalent 

	^handle runtime objectModel at: self localName asSymbol! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:44:50'!
localName 

	^self name asLocalString! !

!ClassMirror methodsFor: 'accessing' stamp: 'KenD 3/1/2021 16:45:10'!
structureType 

	^#Class! !

!OOperand methodsFor: 'converting' stamp: 'KenD 2/24/2021 14:08:23'!
asOperand 

	self halt! !

!OOperand methodsFor: 'enumerating' stamp: 'KenD 2/24/2021 14:12:24'!
usesDo: aBlock 

	aBlock value: self.
	nextUse ifNotNil: [nextUse usesDo: aBlock]! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:07:54'!
addUse: anOperand 

	self deny: self == anOperand.
	nextUse ifNil: [nextUse := anOperand] ifNotNil: [nextUse addUse: anOperand]! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:06:43'!
at: anInstruction named: operandName 

	^self new instruction: anInstruction; name: operandName! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:08:54'!
disolveReplacingWith: otherInstruction 

	self definition removeUse: instruction.
	instruction atOperand: name put: otherInstruction.
	otherInstruction addUse: instruction at: name! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:09:12'!
instruction 

	^instruction! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:09:41'!
name: operandName 
	name := operandName! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:09:52'!
nextUse 

	^nextUse! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:09:25'!
nstruction: anInstruction 

	instruction := anInstruction! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:11:03'!
removeUse: anInstruction 

	nextUse instruction == anInstruction
		ifTrue: [nextUse := nextUse nextUse]
		ifFalse: [nextUse removeUse: anInstruction]! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:11:14'!
removeUse: anInstruction at: aName 

	(nextUse instruction == anInstruction and: [nextUse name = aName])
		ifTrue: [nextUse := nextUse nextUse]
		ifFalse: [nextUse removeUse: anInstruction at: aName]! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:11:26'!
replaceAllUsesWith: otherInstruction 

	self replaceUseWith: otherInstruction.
	nextUse ifNotNil: [nextUse replaceAllUsesWith: otherInstruction]! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:11:42'!
replaceUseWith: otherInstruction 

	self deny: otherInstruction class == OOperand.
	instruction atOperand: name put: otherInstruction! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:11:55'!
user 

	^instruction! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:06:59'!
valued: anInstruction 
	^self new value: anInstruction! !

!OOperand methodsFor: 'accessing' stamp: 'KenD 2/24/2021 14:07:17'!
valued: anInstruction in: containingInstruction 
	^self new value: anInstruction; instruction: containingInstruction! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:13'!
bytesOf: oid 
	| size |
	size := self sizeOf: oid.
	^self bytesOf: oid count: size! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:30'!
bytesOf: oid count: size 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:42'!
runtime 

	^ runtime! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:50'!
runtime: aRuntime 

	runtime := aRuntime! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:59'!
sizeOf: oid 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:08'!
storage 

	^ storage! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:17'!
storage: anObject 

	storage := anObject! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:31'!
stringOf: oid 
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size - 1! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:42'!
stringOf: oid count: size 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:55'!
symbolOf: oid 
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size! !

!ObjectFormat class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 09:23:44'!
on: storage 

	^self new storage: storage! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:56:09'!
arrayedSizeOf: oid 

	^ oid arrayedSize! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:56:17'!
arrayedSlotOf: oid at: index 

	^ oid at: index! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:56:30'!
arrayedSlotOf: oid at: index put: anotherOid 

	^ oid at: index put: anotherOid! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:56:39'!
behaviorOf: oid 

	^oid behavior! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:56:50'!
bytesOf: oid count: size 

	^oid bytes copyFrom: 1 to: size! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:57:04'!
classOf: anObjectHandle 
	| oid behavior handle class |
	oid := anObjectHandle oid.
	(self isInteger: oid) ifTrue: [ 
		class := storage classNamed: 'SmallInteger'.
		^(anObjectHandle runtime handleOn: class) mirror asClassMirror].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^handle mirror asBehaviorMirror instanceClass! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:57:55'!
integerOf: oid 

	self assert: oid isImmediate.
	^ oid value! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:58:56'!
labelFor: oid 
	| c |
	(self isInteger: oid) 
		ifTrue: [ ^'SMI 0x', (self integerOf: oid) printString ].
	(storage nameOf: oid) ifNotNil: [:name | ^name].
	c := self classOf: (runtime handleOn: oid).
	^c localName! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:59:22'!
newInteger: anInteger 

	^storage newSmallInteger: anInteger! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:00:13'!
sizeOf: oid 

	^oid size! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:00:31'!
slotOf: oid at: index 

	^ oid slotAt: index! !

!BootstrapObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:00:42'!
stringOf: oid count: size 

	^(oid bytes copyFrom: 1 to: size) asString! !

!BootstrapObjectFormat methodsFor: 'printing' stamp: 'KenD 2/28/2021 12:59:55'!
print: oid on: aStream 
	| label |
	label := self labelFor: oid.
	aStream
		nextPut: $@;
		nextPutAll: label;
		nextPutAll: ' [size: 0x';
		nextPutAll: (self sizeOf: oid) printStringHex;
		nextPut: $]! !

!BootstrapObjectFormat methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:58:07'!
isBytes: oid 

	^oid isBytes! !

!BootstrapObjectFormat methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:58:40'!
isInteger: oid 

	^oid isImmediate! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:33:26'!
behaviorOf: oid 

	^ storage uint32of: oid atOffset: BehaviorOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:33:48'!
bytesOf: oid count: size 
	
	^ storage bytesAt: oid sized: size! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:01'!
classOf: anObjectHandle 
	| oid class behavior handle |
	oid := anObjectHandle oid.
	oid odd ifTrue: [ class := storage classNamed: 'SmallInteger'.
			^ (anObjectHandle runtime handleOn: class) mirror asClassMirror ].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^ handle mirror asBehaviorMirror instanceClass! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:16'!
flagsOf: anObject 
	^ storage uint8of: anObject atOffset: FlagsOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:27'!
integerOf: oid 
	| shifted complement |
	self assert: oid odd.
	shifted := oid bitShift: -1. 
	complement := 1 bitShift: storage wordSize * 8 - 1.
	^ oid >= complement
		ifTrue: [ shifted - complement ]
		ifFalse: [ shifted ]! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:11'!
sizeOf: oid 

	^ (self isSmall: oid)
		ifTrue: [ self smallSizeOf: oid ]
		ifFalse: [ self largeSizeOf: oid ]! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:26'!
slotOf: base at: index 

	^ storage uint64atOffset: base + (8 * (index - 1))! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:42'!
smallSizeOf: oid 

	^ storage uint8of: oid atOffset: SizeOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:54'!
stringOf: oid count: anInteger 

	^storage stringAt: oid sized: anInteger! !

!DmrObjectFormat methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:37:05'!
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
		nextPut: $]
! !

!DmrObjectFormat methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:37:40'!
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
		nextPut: $)! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:01'!
isArrayed: anObject 

	^ (self flagsOf: anObject) anyMask: IsArrayed! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:16'!
isBytes: anObject 

	^ ((self flagsOf: anObject) anyMask: IsBytes)! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:25'!
isInteger: oid 

	^oid odd! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:34'!
isLarge: anObject 

	^(self isSmall: anObject) not! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:46'!
isNamed: anObject 

	^ (self flagsOf: anObject) anyMask: IsNamed! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:59'!
isSmall: oid 

	^ (self flagsOf: oid) anyMask: IsSmall! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:36:09'!
labelFor: oid 

	^oid hex! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:36:19'!
largeSizeOf: oid 

	^ storage uint32of: oid atOffset: LargeSizeOffset! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:52'!
isImmediate 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:14'!
isSmall 

	^self size < 256! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:31:21'!
initializeAs: anRGBehavior sized: size 

	self subclassResponsibility! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:33'!
nilAll: nilObject! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:41'!
nilWith: nilObject ! !

!ObjectMap methodsFor: 'iterating' stamp: 'KenD 2/22/2021 13:35:51'!
slotsDo: aBlock

	self notYetImplemented ! !

!ObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 13:38:23'!
validate 
	
	self assert: behavior notNil! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:28:54'!
arrayedSize 

	^self size! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:11'!
at: index 

	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:24'!
at: index put: value 

	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:36'!
behavior 

	^behavior! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:49'!
behavior: anObjectMap 

	behavior := anObjectMap! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:03'!
bodySizeInBytes 

	"Return the size of object body(s) in bytes,
	 padded if a byte object"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:14'!
classname 

	^spec name! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:30'!
headerSizeInBytes 
	"
		Return the size of object header in bytes, 
		including both small and large part (if any).
	"
	
	^ self isSmall ifTrue: [ 8 ] ifFalse: [ 16 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:31:00'!
headerSmallSize 

	"Return value of 'size' field of small header"
	 | size |	
 	size := self size.
  	^ size < 256 ifTrue: [ size ] ifFalse: [ 0 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:29'!
size 

	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:43'!
sizeInBytes 

	"Return the size of object in bytes without padding"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:03'!
slotAt: index 

	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:26'!
slotAt: index put: value 

	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self subclassResponsibility! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:47'!
slotNamed: name 

	"Get a named slot with given `name`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:35:02'!
slotNamed: name put: value 

	"Set a named slot with given `name` to `value`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index put: value! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:35'!
spec 

	^ spec! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:51'!
wordSize 

	"Return the size in bytes of the word (i.e, a reference to an object)"
	
	^ 8 "For now, 64bit only!!"! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:26:08'!
classFor: anRGBehavior 

	anRGBehavior name == #SmallInteger ifTrue: [^SmallintObjectMap].
	^anRGBehavior isBytes
		ifTrue: [ ByteObjectMap ]
		ifFalse: [ SlotObjectMap ]! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:00'!
new: anRGBehavior 
	
	^self new: anRGBehavior size: 0! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:19'!
new: anRGBehavior size: size 

	| class |
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	class := self classFor: anRGBehavior.
	^ class new initializeAs: anRGBehavior sized: size! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 14:11:26'!
initialize 

	hash := 0! !

!ByteObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 14:11:38'!
initializeAs: anRGBehavior sized: size 

	self assert: anRGBehavior notNil.
"	self assert: anRGBehavior isBytes.
	self assert: anRGBehavior isVariable.
"	
	spec := anRGBehavior.
	bytes := ByteArray new: size! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:08:32'!
at: index 
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: bytes size).
	^bytes at: index! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:08:47'!
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
	^anObjectMap! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:09:13'!
bodySizeInBytes 
	"Return the size of object body(s) in bytes, padded"
	
	^ self size alignedTo: self wordSize! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:09:26'!
bytes 

	^ bytes! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:11'!
contentsString 

	spec name == #String
		ifTrue: [ ^bytes allButLast asString storeString ].
	spec name == #Symbol
		ifTrue: [ ^bytes allButLast asString asSymbol storeString ].
	spec name == #ByteArray
		ifTrue: [ ^bytes storeString ].
	^spec name withArticle, ': ', bytes printString! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:27'!
fillFrom: anObject 

	self assert: anObject size == bytes size.
	bytes replaceFrom: 1 to: bytes size with: anObject startingAt: 1! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:38'!
headerFlags 

	| byte variable small |
	byte := 1.
	variable := 2.
	small := self isSmall ifTrue: [ 16r80 ] ifFalse: [ 0 ].
	^ byte | variable | small! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:10:57'!
headerHash 

	^ hash! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:11:08'!
headerHash: anInteger 

	hash := anInteger! !

!ByteObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:12:42'!
size 
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ bytes size! !

!ByteObjectMap methodsFor: 'converting' stamp: 'KenD 2/22/2021 14:08:13'!
asString 

	^ bytes allButLast asString! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 14:05:48'!
new: anRGBehavior size: anInteger 

	^ self new
		initializeAs: anRGBehavior sized: anInteger! !

!ByteObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 14:06:08'!
new: anRGBehavior valued: bytes 
	"self assert: anRGBehavior isBytes."
	
	^self new initializeAs: anRGBehavior sized: bytes size; fillFrom: bytes! !

!ShapeMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:17:08'!
initialize 

	shapes := Dictionary new! !

!ShapeMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:18:41'!
at: type 

	^shapes at: type! !

!ShapeMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:18:06'!
indexInCurrentOf: varname at: type 

	| species slot |
	species := Smalltalk at: type asSymbol.
	slot := species slotNamed: varname.
	slot isNil
		ifTrue: [ self error: 'inst var ' , varname , ' not found' ].
	^ slot index! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:16:44'!
add: structure 

	shapes at: structure name put: structure! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:17:47'!
indexOf: varname at: type 

	| shape |
	shape := shapes at: type ifAbsent: [
		^self indexInCurrentOf: varname at: type].
	^shape indexOf: varname! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 2/22/2021 13:17:29'!
load: aClassDefinition 

	| shape |
	shape := ObjectShape new loadFrom: aClassDefinition.
	self add: shape! !

!ShapeMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:16:01'!
new 

	^self basicNew initialize! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:50:04'!
initialize 

	hash := 0! !

!SlotObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:50:18'!
initializeAs: anRGBehavior sized: size 

	self assert: anRGBehavior notNil.
	self assert: anRGBehavior isPointers.
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	spec := anRGBehavior.
	slots := Array new: self instSize + size! !

!SlotObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 13:53:24'!
validate 

	super validate.
	slots withIndexDo:[:value :index | self assert: value notNil ]! !

!SlotObjectMap methodsFor: 'iterating' stamp: 'KenD 2/22/2021 13:52:58'!
slotsDo: aBlock 

	slots do: aBlock! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:45:45'!
arrayedSize 

	"
	 Return the size of the arrayed part of this object, that this,
	 the value of size field in object header minus the instSize. 
	"

	^ self size - self instSize! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:22'!
asBoolean 
	spec name = #True ifTrue: [ ^true ].	spec name = #False ifTrue: [ ^false ].
	self assert: false! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:40'!
at: index 
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self assert: (index between: 1 and: slots size - self instSize).
	^slots at: self instSize + index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:46:52'!
at: index put: value 
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	self assert: spec isVariable.
	self assert: (index between: 1 and: slots size - self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: self instSize + index put: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:07'!
atAllPut: value 

	slots atAllPut: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:18'!
basicAt: index 
	"Return indexed value at given raw index, starting with 1"

	self assert: (index between: 1 and: slots size).
	^ slots at: index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:47:32'!
bodySizeInBytes 
	
	^ self sizeInBytes! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:48:52'!
doesNotUnderstand: aMessage 
	"Assume setter or accessor and try to do the right thing"
	| sel ivars |
	sel := aMessage selector.
	ivars := self allInstVarNames.
	sel isUnary
		ifTrue: [ (ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel ] ].
	(sel isKeyword and: [ sel numArgs == 1 ])
		ifTrue: [ sel := sel allButLast.
			(ivars includes: sel)
				ifTrue: [ ^ self slotNamed: sel put: aMessage arguments first ] ].
	^ super doesNotUnderstand: aMessage! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:20'!
headerFlags 

	| variable named small |
	variable := spec isVariable ifTrue: [2] ifFalse: [0].
	named := spec instSize == 0 ifTrue: [0] ifFalse: [4].
	small := self isSmall ifTrue: [16r80] ifFalse: [0].
	^ variable | named | small! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:31'!
headerHash 

	^hash! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:49:43'!
headerHash: anInteger 

	hash := anInteger! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:51:28'!
size 
	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	^ slots size! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:51:56'!
sizeInBytes 

	^ self size * self wordSize! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:09'!
slotAt: index 
	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self assert: (index between: 1 and: self instSize).
	^slots at: index! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:24'!
slotAt: index put: value 
	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self assert: (index between: 1 and: self instSize).
	self assert: (value isKindOf: ObjectMap).
	^slots at: index put: value! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:52:35'!
slots 

	^slots! !

!SlotObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:54:19'!
value 

	| message |
	(self allInstVarNames includes: #value) ifFalse: [ ^super value ].
	message := Message selector: #value.
	^ self doesNotUnderstand: message! !

!SlotObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:44:48'!
new: anRGBehavior size: size withAll: value 

	| obj |
	obj := self new: anRGBehavior size: size.
	^obj atAllPut: value; yourself! !

!SmallintObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:58:25'!
isImmediate 

	^ true! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:57:39'!
initializeAs: anRGBehavior sized: size 

	self shouldNotImplement! !

!SmallintObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:57:49'!
initializeAs: anRGBehavior valued: anInteger 

	self assert: anRGBehavior name == #SmallInteger.
	self assert: anInteger isInteger.
	spec := anRGBehavior.
	value := anInteger! !

!SmallintObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 14:02:57'!
validate 

	super validate.
"	self assert: value isSmallInteger "
	self assert: value class == SmallInteger! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:56:49'!
at: index 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:57:06'!
at: index put: anObject 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:57:21'!
hash 

	^ value hash! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:21'!
size 
	"I have zero object slots"
	^ 0! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:32'!
slotAt: index 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:59:42'!
slotAt: index put: anObject 

	self errorNotIndexable! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:00:55'!
value 

	^value! !

!SmallintObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 14:01:10'!
value: aSmallInteger 

	value := aSmallInteger! !

!SmallintObjectMap methodsFor: 'comparing' stamp: 'KenD 2/22/2021 13:56:26'!
= anObject 

	anObject class == self class
		ifFalse: [ ^ false ].
	^value == anObject value! !

!SmallintObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:55:55'!
new: anRGBehavior valued: anInteger 

	^self new initializeAs: anRGBehavior valued: anInteger! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:18'!
initialize 

	fields := Dictionary new! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:52'!
loadFrom: aClassDefinition 

	name := aClassDefinition name asSymbol.
	aClassDefinition allInstVarNames
		withIndexDo: [:ivarName :i | self indexOf: ivarName be: i]! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:45'!
indexOf: ivarName 
	
	^fields at: ivarName asString! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:57'!
indexOf: ivarName be: i 

	fields at: ivarName put: i! !

!ObjectShape class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:21:32'!
new 

	^self basicNew initialize! !

!Opcode methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 14:04:47'!
nativizeUsing: anAssembler for: messageNativizer

	self nativizeUsing: anAssembler! !

!SBinding methodsFor: 'decoding' stamp: 'KenD 2/24/2021 13:17:44'!
decodeUsing: anAstcodeDecoder 

	^self subclassResponsibility! !

!SBinding methodsFor: 'evaluating' stamp: 'KenD 2/24/2021 13:18:28'!
assign: value within: evaluator 

	^self subclassResponsibility! !

!SBinding methodsFor: 'evaluating' stamp: 'KenD 2/24/2021 13:20:38'!
valueWithin: evaluator 

	^self subclassResponsibility! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:18:48'!
isArgument 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:18:56'!
isAssociation 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:03'!
isClassBinding 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:09'!
isClassVar 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:18'!
isInstVar 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:26'!
isLiteral 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:34'!
isPoolVar 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:40'!
isSelf 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:48'!
isSuper 

	^false! !

!SBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:19:56'!
isTemporary 

	^false! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:44'!
printOn: aStream indent: anInteger 

	super printOn: aStream! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:04:54'!
isAssignment 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:01'!
isCascade 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:10'!
isCascadeMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:16'!
isIdentifier 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:23'!
isInstVar 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:32'!
isLiteral 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:39'!
isMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:48'!
isMethod 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:55'!
isReturn 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:06:02'!
isSuper 

	^false! !

!SExpression methodsFor: 'visiting' stamp: 'KenD 2/22/2021 13:04:25'!
acceptVisitor: visitor 

	^self subclassResponsibility! !

!SIdenitifier methodsFor: 'visiting' stamp: 'KenD 2/23/2021 14:16:50'!
acceptVisitor: visitor 

	^visitor visitIdentifier: self! !

!SIdenitifier methodsFor: 'printing' stamp: 'KenD 2/23/2021 14:20:31'!
printOn: aStream indent: anInteger 

	aStream
		tab: anInteger;
		nextPutAll: '{IdentifierId. ';
		print: binding;
		nextPutAll: '}'! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:19'!
isArgument 

	^binding isArgument! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:33'!
isAssociation 

	^binding isAssociation! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:18:48'!
isIdentifier 

	^true! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:02'!
isInstVar 

	^binding isInstVar! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:12'!
isLiteral 

	^binding isLiteral! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:32'!
isSelf 
	
	^binding isSelf! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:43'!
isSelfOrSuper 

	^binding isSelf or: [binding isSuper]! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:19:53'!
isSuper 

	^binding isSuper! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:20:07'!
isTemporary 

	^binding isTemporary! !

!SIdenitifier methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:18:01'!
binding: aBinding 

	binding := aBinding! !

!SIdenitifier methodsFor: 'as yet unclassified' stamp: 'KenD 2/23/2021 14:17:16'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeIdentifier! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:28'!
index 

	^index! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:39'!
index: anInteger 

	index := anInteger! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:44'!
isitReturn: anSReturn 

	returnValue := anSReturn expression acceptVisitor: self.
	returned := true.
	^returnValue! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:17'!
visitArgument: anSIdentifier 

	^arguments at: anSIdentifier binding index! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:32'!
visitAssignment: anSAssignment 
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: self ].
	^result! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:48'!
visitBlock: anSBlock 
	| closure handle |
	closure := anSBlock isInlined
		           ifTrue: [ SCompiledBlock new newClosure home: self ]
		           ifFalse: [ self captureClosure: anSBlock ].
	blockAstcodes at: closure block put: anSBlock.
	self halt.
	"	handle := LocalHandle on: closure within: localRuntime."
	^ handle mirage! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:09:24'!
visitIdentifier: anSIdentifier 

	^anSIdentifier binding valueWithin: self! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:09:37'!
visitMessage: anSMessage 
	| msgReceiver msgArguments selector message |
	msgReceiver := anSMessage receiver acceptVisitor: self.
	msgArguments := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	selector := anSMessage selector.
	message := MessageSend
		receiver: msgReceiver
		selector: selector
		arguments: msgArguments.
	 (self isSpecial: selector)
		ifTrue: [ ^self dispatchSpecial: message ].
	anSMessage receiver isSuper ifTrue: [^self dispatchSuper: message to: msgReceiver].
	^self dispatch: message to: msgReceiver! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:10'!
visitMethod: anSMethod 
	| primitive value |
	primitive := anSMethod primitive.
	primitive ifNotNil: [ ^ self visitPrimitive: primitive ].
	environment := Array new: method environmentCount.
	value := self visitScript: anSMethod.
	^returned ifTrue: [ value ] ifFalse: [ receiver ]! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:57'!
visitScript: anSScript 
	| result |
	anSScript statements do: [:node | 
		result := node acceptVisitor: self.
		returned ifTrue: [^returnValue]
	].
	^result! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:11:12'!
visitTemporary: anSIdentifier 

	^temporaries at: anSIdentifier binding index! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:00:53'!
instVarAt: anInteger 

	^receiver _gate slotAt: anInteger! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:01:18'!
instVarAt: index put: aValue 

	^ receiver _gate handle slotAt: index put: aValue _gate handle oid! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:01:43'!
method 

	^method! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:03'!
method: aCompiledMethod 

	method := aCompiledMethod.
	temporaries := Array new: aCompiledMethod tempCount! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:25'!
mirageOnBoolean: aBoolean 
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := aBoolean ifTrue: [runtime true] ifFalse: [runtime false].
	^ handle mirage
! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:37'!
mirageOnInteger: anInteger 
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := runtime integerHandle: anInteger.
	^ handle mirage! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:52'!
mirageOnObject: anObject 

	anObject isSmallInteger ifTrue: [ ^ self mirageOnInteger: anObject ].
	self assert: false! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:03:16'!
parent 

	^parent! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:03:26'!
parent: anInterpreter 

	parent := anInterpreter! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:04:16'!
receiver 

	^receiver! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:04:26'!
receiver: anObject 

	receiver := anObject.
	returnValue := anObject! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:07:11'!
temporaryAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^ temporaries at: index ].
	env := self environmentFor: anInteger.
	^ env at: index! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:07:46'!
temporaryAt: index in: anInteger put: aValue 
	| env |
	anInteger ifNil: [ ^ temporaries	at:index put: aValue ].
	env := self environmentFor: anInteger.
	^ env at: index put: aValue! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:56:58'!
argumentAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^arguments at: index ].
	env := self environmentFor: anInteger.
	^env at: index.! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:57:13'!
arguments: aCollection 

	arguments := aCollection! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:57:30'!
captureClosure: anSBlock 
	| closure s i type env arg |
	closure := anSBlock compiledCode newClosure home: self.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: receiver ].
			type = Environment
				ifTrue: [ closure at: i put: environment].
			type = EnvironmentValue
				ifTrue: [ env := environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := arguments at: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:12'!
dispatch: message to: msgReceiver 

	^ self subclassResponsibility! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:23'!
dispatchSpecial: message 

		^self subclassResponsibility ! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:36'!
environmentFor: anInteger 
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:57'!
evaluate: anSCompiledMethod 

	method := anSCompiledMethod.
	^ self visitMethod: anSCompiledMethod sexpressions! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:13'!
evaluateClosure: aPClosure 

	^self evaluateClosure: aPClosure withArgs: {}! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:25'!
evaluateClosure: aPClosure with: anObject 

	 ^self evaluateClosure: aPClosure withArgs: { anObject }! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:37'!
evaluateClosure: aPClosure with: anObject with: anotherObject 

	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:58'!
evaluateClosure: aPClosure withArgs: anArray 
	| oldArgs oldTemps oldEnv block sblock result |
	block := aPClosure block.
	sblock := blockAstcodes at: block.
	sblock isInlined ifTrue: [
			 anArray with: sblock inlinedArgs do: [:arg :i | temporaries at: i put: arg].
			^ self visitScript: sblock ].
	oldArgs := arguments.
	oldTemps := temporaries.
	oldEnv := environment.
	arguments := anArray.
	temporaries := Array new: block tempCount.
	environment := aPClosure.
	result := self visitScript: sblock.
	environment := oldEnv.
	temporaries := oldTemps.
	arguments := oldArgs.
	^ result! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:04:48'!
subjectOn: anObjectHandle 

	^ anObjectHandle maneuverer! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:19'!
subjectOnBoolean: aBoolean in: aRuntime 
	| t f |
	^ aBoolean
		ifTrue: [ t := aRuntime true. 
			(t oid = true) ifTrue: [ t mirage] ifFalse: [ t maneuverer  ] 
		]
		ifFalse: [ f := aRuntime false. 
			(f oid = false) ifTrue: [ f mirage ] ifFalse: [ f maneuverer]
		] ! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:42'!
subjectOnObject: anObjectHandle 

	^ anObjectHandle maneuverer! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:54'!
subjectOnObjectOk: anObjectHandle 

	^ self maneuvererOn: anObjectHandle! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:32'!
ubjectOnInteger: anInteger in: aRuntime 

	^ (aRuntime integerHandle: anInteger) maneuverer! !

!SExpressionInterpreter methodsFor: 'initialization' stamp: 'KenD 2/27/2021 16:00:30'!
initialize 

	returned := false.
	blockAstcodes := IdentityDictionary new! !

!SExpressionInterpreter methodsFor: 'testing' stamp: 'KenD 2/27/2021 16:01:33'!
isSpecial: aSelectorMirror 

	^ self subclassResponsibility ! !

!SExpressionInterpreter class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 15:56:13'!
new 

	^self basicNew initialize! !

!SExpressionInterpreter class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 15:56:31'!
on: receiverMirror with: arguments for: method 

	^self new
		receiver: receiverMirror;
		arguments: arguments;
		method: method! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:28:00'!
addFallback: aBlock 

	fallbacks add: aBlock! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:28:12'!
argumentAt: index in: envIndex 

	envIndex ifNil: [ ^ self argumentInStackAt: index ].
	envIndex < 0
		ifTrue: [ self argumentInlinedAt: index ]
		ifFalse: [ self argumentInEnvironmentAt: index ]! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:28:31'!
argumentCount 

	^activeScript argumentCount! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:29:31'!
argumentInlinedAt: index 

	self temporaryInStackAt: index! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:39:49'!
environment: aNativizationEnvironment 

	environment := aNativizationEnvironment.
	assembler wordSize: environment wordSize! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:47:00'!
method 

	^method! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:47:09'!
methodLiteralAt: anInteger 

	^ method at: anInteger! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:47:20'!
methodLiteralFrom: anInteger 

	^ method at: anInteger! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:47:33'!
nativeCode 

	^mainCode! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:54:55'!
temporaryAt: index in: envIndex 

	envIndex 
		ifNil: [ self temporaryInStackAt: index ]
		ifNotNil: [ self temporaryInEnvironment: envIndex at: index ]! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:55:35'!
temporaryAt: index in: envIndex put: dummy 

	envIndex 
		ifNil: [self temporaryInStackAtPut: index ] 
		ifNotNil: [ self temporaryInEnvironment: envIndex atPut: index]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:28:42'!
argumentInEnvironmentAt: index 

	assembler loadRwithEindex: index + SClosure instSize! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:29:04'!
argumentInStackAt: index 
	| args end |
	args := self argumentCount.
	method hasFrame ifTrue: [ 
		end := 3 + args.
	assembler loadRwithFPindex: end - index ] ifFalse: [ 
		end := 2 + args.
		assembler  loadRwithSPindex: end - index
	 ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:29:42'!
associationValueAt: anInteger 
	| literal |
	literal := self methodLiteralAt: anInteger.
	assembler
		loadRwithLiteral: literal;
		loadRwithRindex: 2! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:30:05'!
associationValueAt: anInteger put: dummy 
	| literal |
	literal := self methodLiteralAt: anInteger.
	assembler
		loadAwithLiteral: literal;
		storeRinAindex: 2;
		pushA.
	self emitWriteBarrier ! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:30:25'!
captureClosure: anSBlock 
	| slot variables |
	self instantiateClosure: anSBlock.
	slot := 3.
	variables := anSBlock capturedVariables readStream.
	[ variables atEnd ]
		whileFalse: [ self captureVariable: variables index: slot.
			slot := slot + 1 ].
	anSBlock capturesHome
		ifTrue: [ self emitSend: #saveHomeFrame ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:32:04'!
captureVariable: stream index: anInteger 
	| type pos |
	type := stream next.
	type = nil ifTrue: [^self].
	type = Self ifTrue: [^assembler storeSinRindex: anInteger].
	type = Environment ifTrue: [^assembler storeEinRindex: anInteger].
	pos := stream next.
	type = LocalArgument ifTrue: [
		assembler
			loadTwithFPindex: pos + 2;
			storeTinRindex: anInteger].
	type = EnvironmentValue
		ifTrue: [assembler loadTwithEindex: pos; storeTinRindex: anInteger]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:32:52'!
constPoolValueAt: anInteger 
	| literal |
	literal := self methodLiteralAt: anInteger.
	assembler loadRwithLiteral: literal! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:33:07'!
dropTos 

	assembler dropTos: 1.
	^stackCount := stackCount - 1! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:33:33'!
emitBlockPrologue: anSBlock 

	assembler saveCallerFrame.
	self
		loadBlockSelf: anSBlock compiledCode;
		loadBlockNativeCode;
		pushNativeCode;
		pushEnvironments;
		initializeTemporaries: anSBlock tempCount! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:33:49'!
emitCallbackEpilogue 

	assembler restoreCallerFrame.
	environment abi
		restoreContext: method descriptor with: assembler! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:34:59'!
emitCallbackPrologue 
	| retaddr |
	environment abi emitEntrypoint: method descriptor with: assembler.
	retaddr := 0.
	assembler
		pushImmediate: retaddr;
		xorFPwithFP;
		loadLongMwithIPoffset: 0 
				- assembler currentAddress 
				+ ImageSegmentWriter behaviorOffset;
		loadMwithMindex: SCallbackMethod behaviorNativeCodeSlot;
		loadGwithLiteral: environment globals;
		loadNilWithLiteral: nil;
		loadTrueWithLiteral: true;
		loadFalseWithLiteral: false;
		loadEwithNil;
		loadRwithMindex: (NativeCode indexOfSlot: 'compiledCode');
		loadRwithRindex: (SCallbackMethod indexOfSlot: 'receiver')! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:35:14'!
emitEpilogue 

	method hasBlocks
		ifTrue: [ assembler restoreCallerEnvironment ].
	method isCallback
		ifTrue: [ ^ self emitCallbackEpilogue ].
	method isFrameless
		ifFalse: [ assembler restoreCallerFrame ].
	assembler
		restoreCallerSelf;
		restoreCallerM;
		return! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:35:31'!
emitFFICall 

	self loadObject: method.
	assembler pushR; pushS.
	self emitSend: #_ffiCall:.
	assembler
		restoreCallerFrame;
		restoreCallerSelf;
		restoreCallerM;
		return! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:35:43'!
emitFallbacks 

	fallbacks do: [:block | block value]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:35:55'!
emitFramedMethodPrologue 

	assembler
		saveCallerFrame;
		pushR;
		initializeS.
	method isCalloutMethod
		ifTrue: [ self emitFFICall ]
		ifFalse: [ self
				pushNativeCode;
				initializeMethodEnvironment;
				initializeMethodTemporaries;
				emitSafepointCheck ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:36:12'!
emitFramelessMethodPrologue 

	method capturesSelf
		ifTrue: [ assembler initializeS ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:36:25'!
emitMethodPrologue 

	method isCallback
		ifTrue: [ ^self
				emitCallbackPrologue;
				emitFramedMethodPrologue ].
	method isFrameless
		ifTrue: [ self emitFramelessMethodPrologue ]
		ifFalse: [ self emitFramedMethodPrologue ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:37:14'!
emitSafepointCheck 
	"?? NO-OP or notYetImplemented?? "
	
! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:37:25'!
emitSend: selector 
 	| linker |
	linker := environment messageLinker.
	method isDebuggable
		ifTrue: [ linker emitSendDebuggable: selector using: assembler ]
		ifFalse: [ linker emitSend: selector using: assembler ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:39:07'!
emitSend: selector super: aBoolean
	| linker |
	linker _ environment messageLinker.
	method isDebuggable
		ifTrue: [
			aBoolean
				ifTrue: [
					linker
						emitSendSuperDebuggable: selector
						from: method classBinding
						using: assembler ]
				ifFalse: [
					linker
						emitSendDebuggable: selector
						using: assembler ]]
		ifFalse: [
			aBoolean
				ifTrue: [
					linker
						emitSendSuper: selector
						from: method classBinding
						using: assembler ]
				ifFalse: [
					linker
						emitSend: selector
						using: assembler ]].! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:39:19'!
emitWriteBarrier 

	assembler
		loadAwithGlobal: #WriteBarrier;
		callIndirectA;
		discardArguments: 1! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:40:05'!
falseLiteral 

	assembler loadRwithFalse! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:40:42'!
initializeMethodEnvironment 
	method hasBlocks
		ifFalse: [ ^ self ].
	assembler pushE.
	method hasEnvironment
		ifTrue: [ assembler
				pushSmallInteger: method environmentCount;
				loadRwithM.
			self emitSend: #newEnvironment:.
			assembler
				loadEwithR;
				pushE ]
		ifFalse: [ assembler pushNil ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:41:43'!
instanceVarAt: index 

	assembler loadRwithSindex: index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:42:28'!
instanceVarAt: index put: value 

	assembler storeRinSindex: index; pushS.
	self emitWriteBarrier! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:42:46'!
instantiateClosure: anSBlock 

	self loadLiteralAt: anSBlock index; emitSend: #newClosure! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:43:00'!
loadAwithArgument: index in: envIndex 

	envIndex
		ifNil: [ ^ self loadAwithArgumentInStackAt: index ]. envIndex < 0
		ifTrue: [ self loadAwithArgumentInlinedAt: index ]
		ifFalse: [ self loadAwithArgumentInEnvironment: envIndex at: index ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:43:14'!
loadAwithArgumentInEnvironment: envIndex at: index 
	| offset |
	envIndex = 0
		ifTrue: [ assembler loadAwithEindex: index + SClosure instSize ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			assembler
				loadAwithEindex: envIndex + SClosure instSize;
				loadAwithAindex: index + offset ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:43:47'!
loadAwithArgumentInStackAt: index 
	| end |
	end := 3 + self argumentCount.
	assembler loadAwithFPindex: end - index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:43:57'!
loadAwithArgumentInlinedAt: index 

	self loadAwithTemporaryInStackAt: index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:44:18'!
loadAwithStack: anInteger 

	assembler loadAwithFPindex: 1 - anInteger! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:44:29'!
loadAwithTemporary: index in: envIndex 

	envIndex
		ifNil: [ self loadAwithTemporaryInStackAt: index ]
		ifNotNil: [ 
		self loadAwithTemporaryInEnvironment: envIndex at: index ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:45:02'!
loadAwithTemporaryInEnvironment: envIndex at: index 
	| offset |
	envIndex = 0
		ifTrue: [offset := activeScript offsetOfCurrentEnvironment. 
			     assembler loadAwithEindex: index + offset ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			assembler
				loadAwithEindex: envIndex + SClosure instSize;
				loadAwithAindex: index + offset ]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:45:23'!
loadAwithTemporaryInStackAt: index 
	| start |
	start := self pushesEnvironments
			         ifTrue: [ -3 ]
			         ifFalse: [ -1 ].
	^ assembler loadAwithFPindex: start - index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:45:37'!
loadBlockNativeCode 
	| block nativeCode |
	block := SClosure indexOfSlot: 'block'.
	nativeCode := SCompiledBlock indexOfSlot: 'nativeCode'.
	assembler
		loadMwithRindex: block;
		loadMwithMindex: nativeCode! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:45:50'!
loadBlockSelf: aCompiledBlock 
	| offset | 
	aCompiledBlock capturesSelf
		ifTrue: [ offset := aCompiledBlock capturesHome
				ifTrue: [ 1 ]
				ifFalse: [ 0 ].
			assembler loadSwithRindex: SClosure instSize + 1 + offset ]
		ifFalse: [ assembler loadSwithNil ].
	assembler pushS! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:46:05'!
loadLiteralAt: anInteger 
	| literal |
	literal := self methodLiteralAt: anInteger.
	assembler loadRwithLiteral: literal! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:46:17'!
loadObject: anObject 

	assembler 	 loadRwithLiteral:  anObject! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:46:28'!
loadRwithStack: anInteger 

	assembler loadRwithFPindex: 1 - anInteger! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:46:37'!
loadTwithStack: anInteger 

	assembler loadTwithFPindex: 1 - anInteger! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:47:50'!
nativize 

	method sexpressions acceptVisitor: self.
	[remainingBlocks isEmpty]
		whileFalse: [self nativizeBlock: remainingBlocks removeFirst]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:48:03'!
nativize: aCompiledMethod 

	self
		resetFor: aCompiledMethod;
		nativize.
	^ aCompiledMethod nativeCode: mainCode! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:48:19'!
nativizeBlock: anSBlock 
	| statements |
	self resetForBlock: anSBlock.
	activeScript := anSBlock.
	self emitBlockPrologue: anSBlock.
	statements := anSBlock statements.
	statements do: [:s | s acceptVisitor: self].
	self saveContextSwitchPoint.
	(statements isEmpty orNot: [statements last isReturn])
		ifTrue: [self emitEpilogue].
	self emitFallbacks.
	anSBlock compiledCode nativeCode: assembler applyFixups nativeCode! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:48:39'!
nilLiteral 

	assembler loadRwithNil! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:48:53'!
popR 

	assembler popR.
	stackCount := stackCount - 1! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:49:03'!
pushEnvironments 

	assembler pushE; loadEwithR; pushE! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:49:14'!
pushNativeCode

	assembler pushM! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:49:24'!
pushR 

	assembler pushR.
	^stackCount := stackCount + 1! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:52:35'!
receiver 

	assembler loadRwithS! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:53:45'!
saveContextSwitchPoint 

	method isDebuggable
		ifFalse: [ ^ self ].
	assembler
		pushA;
		pushT;
		pushR.
	environment messageLinker emitSend: #signalStep using: assembler.
	assembler
		popR;
		popT;
		popA! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:54:04'!
saveMethodCode 

	mainCode := assembler
		            applyFixups;
		            nativeCode! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:54:14'!
sendMustBeBoolean 

	self emitSend: #mustBeBoolean! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:54:23'!
storeRInStack: index 

	assembler storeRinFPindex: 1 - index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:55:59'!
temporaryInEnvironment: envIndex at: index 
	| offset |
	envIndex = 0
		ifTrue: [offset := activeScript offsetOfCurrentEnvironment. 
				assembler loadRwithEindex: index + offset ]
		ifFalse: [ 
			offset := activeScript offsetOfEnvironment: envIndex.
			assembler
				loadRwithEindex: envIndex + SClosure instSize ;
				loadRwithRindex: index + offset]! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:56:28'!
temporaryInEnvironment: envIndex atPut: index 
	| offset |
	envIndex = 0
		ifTrue: [ offset := activeScript offsetOfCurrentEnvironment.
			assembler
				storeRinEindex: index + offset;
				pushE ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			assembler
				loadTwithEindex: envIndex + SClosure instSize ;
				storeRinTindex: index + offset;
				pushT ].
	self emitWriteBarrier! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:56:52'!
temporaryInStackAt: index 
	| start |
	start := self pushesEnvironments
			         ifTrue: [ -3 ]
			         ifFalse: [ -1 ].
	^ assembler loadRwithFPindex: start - index .! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:57:36'!
temporaryInStackAtPut: index 
	| start |
	start := (self pushesEnvironments)
		         ifTrue: [ -3 ]
		         ifFalse: [ -1 ].
	assembler storeRinFPindex: start - index! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:57:46'!
trueLiteral 

	assembler loadRwithTrue! !

!SExpressionNativizer methodsFor: 'codeGeneration' stamp: 'KenD 2/27/2021 16:57:57'!
visitAssignment: anSAssignment 

	anSAssignment expression acceptVisitor: self.
	anSAssignment assignees do: [ :a | 
		a binding assign: nil within: self ]! !

!SExpressionNativizer methodsFor: 'initialization' stamp: 'KenD 2/27/2021 16:40:21'!
initialize 

	super initialize.
	assembler := TemplateAssembler64 new! !

!SExpressionNativizer methodsFor: 'initialization' stamp: 'KenD 2/27/2021 16:41:11'!
initializeMethodTemporaries

	self initializeTemporaries: method tempCount! !

!SExpressionNativizer methodsFor: 'initialization' stamp: 'KenD 2/27/2021 16:41:24'!
initializeTemporaries: count 

	count = 0
		ifTrue: [ ^ self ].
	count <= 6
		ifTrue: [ count timesRepeat: [ assembler pushNil ] ]
		ifFalse: [ assembler
				loop: [ assembler pushNil ] times: count ]! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 2/27/2021 16:53:13'!
resetFor: aCompiledMethod 
	| fixed |
	method := aCompiledMethod.
	fallbacks := OrderedCollection new.
	remainingBlocks := OrderedCollection new.
	fixed := aCompiledMethod hasBlocks ifTrue: [4] ifFalse: [2].
	stackCount := aCompiledMethod tempCount + fixed.
	assembler reset! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 2/27/2021 16:53:27'!
resetForBlock: anSBlock 

	fallbacks := OrderedCollection new.
	stackCount := anSBlock tempCount + 4.
	assembler reset! !

!SExpressionNativizer methodsFor: 'testing' stamp: 'KenD 2/27/2021 16:52:21'!
pushesEnvironments

	^method hasBlocks! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:58:27'!
visitBlock: anSBlock 
	anSBlock isInlined
		ifTrue: [ ^ anSBlock statements do: [ :s | s acceptVisitor: self ] ].
	remainingBlocks add: anSBlock.
	self captureClosure: anSBlock ! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:59:12'!
visitCascade: anSCascade 
	| receiver index |
	receiver := anSCascade receiver.
	receiver acceptVisitor: self.
	index := self pushR.
	anSCascade messages
		do: [ :m | 
			self 
				visitCascadeMessage: m 
				receiver: index 
				super: receiver isSuper ].
	self dropTos! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:59:28'!
visitCascadeMessage: anSCascadeMessage receiver: index super: aBoolean 
	| arguments |
	arguments := anSCascadeMessage arguments.
	arguments
		do: [ :node | 
			node acceptVisitor: self.
			self pushR ].
	self
		loadRwithStack: index;
		emitSend: anSCascadeMessage selector super: aBoolean.
	stackCount := stackCount - arguments size! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:59:43'!
visitIdentifier: anSIdentifier 

	anSIdentifier binding valueWithin: self! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:59:55'!
visitInlinedMessage: anSMessage 
	| nativizer |
	nativizer := InlinedMessageNativizer new
		message: anSMessage;
		assembler: assembler;
		nativizer: self.
	nativizer inlineMessage! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 17:00:07'!
visitLiteral: anSLiteral 
	| value |
	value := anSLiteral value.
	value isSmallInteger
		ifTrue: [ assembler loadRwithSmallInteger: value ]
		ifFalse: [ self loadLiteralAt: anSLiteral index ]! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 17:00:23'!
visitMessage: anSMessage 
	| arguments index |
	anSMessage isInlined
		ifTrue: [ ^ self visitInlinedMessage: anSMessage ].
	anSMessage isOptimized
		ifTrue: [ ^ self visitOptimizedMessage: anSMessage ].
	anSMessage receiver acceptVisitor: self.
	arguments := anSMessage arguments.
	arguments isEmpty
		ifFalse: [ index := self pushR.
			arguments
				do: [ :node | 
					node acceptVisitor: self.
					self pushR ].
			self loadRwithStack: index ].
	self emitSend: anSMessage selector super: anSMessage receiver isSuper.
	stackCount := stackCount - arguments size.
	arguments isEmpty
		ifFalse: [ self dropTos ]! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 17:00:38'!
visitMethod: anSMethod 
	| statements returned |
	activeScript := anSMethod.
	self emitMethodPrologue.
	statements := anSMethod statements.
	statements do: [ :s | s acceptVisitor: self ].
	(statements notEmpty andNot: [ statements last isReturn ])
		ifTrue: [ assembler loadRwithS ].
	returned := statements notEmpty and: [ 	
	statements last isReturn].
	returned ifFalse: [ self emitEpilogue ].
	self
		emitFallbacks;
		saveMethodCode! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 17:00:53'!
visitOptimizedMessage: anSMessage 
	| nativizer |
	nativizer := BinaryMessageNativizer new
		message: anSMessage;
		assembler: assembler;
		nativizer: self.
	nativizer inlineMessage! !

!SExpressionNativizer methodsFor: 'visiting' stamp: 'KenD 2/27/2021 17:01:39'!
visitReturn: anSReturn 

	anSReturn expression acceptVisitor: self.
	anSReturn local 
		ifTrue: [ self emitEpilogue ] 
		ifFalse: [ assembler
  			         pushR;
     			        loadRwithE.
        self emitSend: #_return: ] ! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:15:13'!
assemblyFor: anSCompiledMethod 

	^ NativizationEnvironment forTesting newExpressionNativizer nativize:
		  anSCompiledMethod! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:15:35'!
assemblyForBlock 

	^self assemblyForSource: 'foo [1] value'! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:15:49'!
assemblyForIfTrue 

	^self assemblyForSource: 'foo x ifTrue: [1]' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:16:04'!
assemblyForMessage 

	^self assemblyForSource: 'foo self bar'! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:23:01'!
assemblyForMessageCascade 

	^self assemblyForSource: 'foo self bar; baz'! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:23:24'!
assemblyForMethod: aCompiledMethod 

	^self
		assemblyForSource: aCompiledMethod sourceCode
		in: aCompiledMethod classBinding value.! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:23:37'!
assemblyForPoint_1_plus_y 

	^self assemblyForSource: 'foo 1 + y' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:23:48'!
assemblyForPoint_ret_x_eq_1 

	^ self assemblyForSource: 'foo ^x = 1' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:23:59'!
assemblyForPoint_x 

	^ self assemblyForMethod: Point >> #x! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:24:12'!
assemblyForPoint_x_eq_1 

	^self assemblyForSource: 'foo x = 1' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:24:22'!
assemblyForPoint_x_eq_eq_1 

	^self assemblyForSource: 'foo x == 1' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:24:36'!
assemblyForPoint_x_plus_1 

	^self assemblyForSource: 'foo x + 1' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:24:48'!
assemblyForPoint_x_plus_y 

	^self assemblyForSource: 'foo x + y' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:25:04'!
assemblyForSource: aString 

	^self assemblyForSource: aString in: UndefinedObject! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:25:17'!
assemblyForSource: aString in: aSpecies 
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self assemblyFor: method! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:25:40'!
assemblyForSourceOrig: aString 

	^self assemblyForSourceOrig: aString in: UndefinedObject! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:26:07'!
assemblyForSourceOrig: aString in: aSpecies 
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self assemblyOrigFor: method! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:26:18'!
assemblyForWhileTrue 
	
	^self assemblyForSource: 'foo [x := x + 1. true] whileTrue' in: Point! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:26:28'!
assemblyOrigFor: aCompiledMethod 

	^ NativizationEnvironment forTesting nativize:
		  aCompiledMethod! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:26:41'!
methodBasicAdd 
	| source |
	source := 'basicAdd: anObject
	end = contents size ifTrue: [self makeRoomBehind].
	end := end + 1.
	contents at: end put: anObject.
	^anObject'.
	^self methodForSource: source in: OrderedCollection! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:26:55'!
methodForSource: aString 

	^self methodForSource: aString in: UndefinedObject! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:27:06'!
methodForSource: aString in: aSpecies 
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self nativize: method! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:27:20'!
methodWithBlock 

	^self methodForSource: 'foo [1] value'! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 16:27:36'!
nativize: aCompiledMethod 

	^ NativizationEnvironment forTesting newExpressionNativizer
		nativize: aCompiledMethod! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:57:44'!
visit: aParseNode 

	^aParseNode notNil ifTrue: [aParseNode acceptVisitor: self] ! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:57:56'!
visitAssignment: anAssignmentNode 

	^self visitParseNode: anAssignmentNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:10'!
visitBlock: aBlockNode 

	^self visitParseNode: aBlockNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:23'!
visitBraceNode: aBraceNode 

	^self visitParseNode: aBraceNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:34'!
visitCascade: aCascadeNode 

	^self visitParseNode: aCascadeNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:58:54'!
visitCascadeMessage: aCascadeMessageNode 

	^self visitMessage: aCascadeMessageNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 15:54:18'!
visitForeignNode: anForeignNode 

	^self visitLiteral: anForeignNode ! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:29'!
visitIdentifier: anIdentifierNode 

	^self visitParseNode: anIdentifierNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:45'!
visitLiteral: aLiteralNode 

	^self visitParseNode: aLiteralNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:59:58'!
visitMessage: aMessageNode 

	^self visitParseNode: aMessageNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:09'!
visitMethod: aMethodNode 

	^self visitParseNode: aMethodNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:21'!
visitNumberNode: aNumberNode 

	^self visitLiteral: aNumberNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:33'!
visitParseNode: aParseNode 

	^self subclassResponsibility! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:42'!
visitPragma: aPragmaNode 

	^self visitParseNode: aPragmaNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:00:53'!
visitReturn: aReturnNode 

	^self visitParseNode: aReturnNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:03'!
visitSelector: aSelectorNode 

	^self visitParseNode: aSelectorNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:16'!
visitString: aStringNode 

	^self visitLiteral: aStringNode! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:01:30'!
visitSymbolicPragma: aPragmaNode 

	^self visitPragma: aPragmaNode! !

!SParseTreeVisitor class methodsFor: 'instance creation' stamp: 'KenD 2/21/2021 13:57:12'!
new 

	^super new initialize! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:39:18'!
method: aCompiledMethod 

	method := aCompiledMethod! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:29:05'!
encodeArgument: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: ArgumentId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:30:00'!
encodeClassBinding: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: GlobalClassId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:30:25'!
encodeClassVar: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: ClassVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:31:09'!
encodeClosureElements: aBlockNode 
	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^Array streamContents: [:s |
		scope capturesSelf ifTrue: [ s nextPut: Self ].
		scope capturedEnvironments do: [:e | | index |
			e == parent ifTrue: [s nextPut: Environment] ifFalse: [
				index := aBlockNode environmentIndexOf: e.
				self assert: index notNil.
				s nextPut: EnvironmentValue; nextPut: index]].
		scope capturedArguments do: [:a | | binding |
			binding := aBlockNode parent scope resolve: a name.
			s 	nextPut: binding environmentType; nextPut: binding index]]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:31:31'!
encodeFalse 

	stream nextPut: FalseId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:31:49'!
encodeGlobalVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: GlobalValueId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:03'!
encodeInlinedMessage: aMessageNode 

	self nextTypePut: 0! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:18'!
encodeInstVar: index 

	stream nextPut: InstVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:31'!
encodeLoadAwithArg: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: LoadAwithArgumentId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:50'!
encodeLoadAwithClassVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithClassVarId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:10'!
encodeLoadAwithConstPoolVar: value 
	| index |
	index := method indexOf: value ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithConstPoolId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:39'!
encodeLoadAwithGlobal: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithGlobalId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:53'!
encodeLoadAwithInstVar: anInteger 

	stream nextPut: LoadAwithInstVarId; nextPut: anInteger! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:04'!
encodeLoadAwithLiteral: value 
	| index |
	index := method indexOf: value.
	stream nextPut: LoadAwithLiteralId; nextPut: index.
	index = 0 ifTrue: [stream nextPut: value]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:14'!
encodeLoadAwithNil 

	stream nextPut: LoadAwithNilId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:30'!
encodeLoadAwithPoolVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithPoolVarId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:42'!
encodeLoadAwithSelf 

	stream nextPut: LoadAwithSelfId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:57'!
encodeLoadAwithTemp: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: LoadAwithTemporaryId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:35:11'!
encodeLoadRvisitingReceiver 

	stream nextPut: LoadRvisitingReceiverId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:35:20'!
encodeNil 

	stream nextPut: NilId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:35:37'!
encodeOptimizedBinary: aMessageNode 
	| optimizer |
	optimizer := BinaryMessageOptimizer on: aMessageNode using: self.
	self nestedEncode: [optimizer emitOpcodes]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:00'!
encodeOptimizedMessage: aMessageNode 
	| selector |
	selector := aMessageNode selector.
	aMessageNode isInlined ifTrue: [^self encodeInlinedMessage: aMessageNode].
	(BinaryMessageOptimizer optimizesMessage: selector value) ifFalse: [^self].
	aMessageNode arguments size = 1
		ifTrue: [^self encodeOptimizedBinary: aMessageNode]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:12'!
encodePoolConst: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: ConstantPoolId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:32'!
encodePoolVar: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: PoolVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:48'!
encodePopR 

	stream nextPut: PopRid! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:37:00'!
encodePushR 

	stream nextPut: PushRid! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:37:13'!
encodeSelf 

	stream nextPut: SelfId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:37:35'!
encodeSuper 
	
	stream nextPut: SuperId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:37:55'!
encodeTemporary: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: TemporaryId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:38:04'!
encodeTrue 

	stream nextPut: TrueId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:38:15'!
encodedEnvironment: aLocalEnvironment 

	aLocalEnvironment isStack
		ifTrue: [ ^ aLocalEnvironment isInlinedArgument ifTrue: [-1] ifFalse: [nil] ].
	aLocalEnvironment isCurrent
		ifTrue: [ ^ 0 ].
	^ aLocalEnvironment index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:39:50'!
nestedEncode: aBlock 
	| prev nested |
	prev := stream.
	nested := Array streamContents: [:s | 
		stream := s.
		aBlock value.
		stream contents].
	stream := prev.
	stream nextPut: nested
! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:40:44'!
nextPut: anInteger 

	stream nextPut: anInteger! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:40:55'!
nextTypePut: anInteger 

	stream nextPut: anInteger! !

!AstcodeEncoder methodsFor: 'initialization' stamp: 'KenD 2/25/2021 13:38:34'!
initialize 

	stream := #() writeStream! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:28:41'!
compiledBlockIndexOf: aBlockNode 

	| index |
	index := method
		findFirst: [:literal | literal isBlock
			and: [literal id == aBlockNode index]].
	^index! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:41:14'!
visitAssignment: anAssignmentNode 
	self nextTypePut: AssignmentId.
	anAssignmentNode assignees
		do: [:node | self nestedEncode: [node acceptVisitor: self]].
	self nestedEncode: [anAssignmentNode expression acceptVisitor: self]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:41:31'!
visitBlock: aBlockNode 
	| args |
	self nextTypePut: BlockId.
	aBlockNode isInlined
		ifTrue: [ stream nextPut: 0. args := aBlockNode arguments collect: [:id | id binding index]. 
			stream nextPut: args asArray ]
		ifFalse: [ | index captured |
			index := self compiledBlockIndexOf: aBlockNode.
			self nextPut: index.
			captured := self encodeClosureElements: aBlockNode.
			stream nextPut: captured ].
	self visitScript: aBlockNode! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:41:50'!
visitBraceNode: aBraceNode 

	aBraceNode isLiteral
		ifTrue: [self visitLiteral: aBraceNode asLiteralNode]
		ifFalse: [self visitCascade: aBraceNode asMessageNode]! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:42:07'!
visitCascade: aCascadeNode 

	self
		nextTypePut: CascadeId;
		nestedEncode: [aCascadeNode receiver acceptVisitor: self].
	aCascadeNode messages
		do: [:node | self nestedEncode: [self visitCascadeMessage: node]]! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:42:21'!
visitCascadeMessage: aCascadeMessageNode 
	| symbol selector |
	symbol := aCascadeMessageNode selector symbol.
	selector := method indexOf: symbol.
	self nextPut: selector.
	selector = 0 ifTrue: [self nextPut: symbol].
	aCascadeMessageNode arguments do: [:arg | 
		self nestedEncode: [arg acceptVisitor: self]]! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:42:43'!
visitIdentifier: anIdentifierNode 

	self nextTypePut: IdentifierId.
	anIdentifierNode binding encodeUsing: self! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:43:01'!
visitLiteral: aLiteralNode 
	| index |
	index := method indexOf: aLiteralNode value.
	self nextTypePut: LiteralId; nextPut: index.
	index = 0 ifTrue: [self nextPut: aLiteralNode value]! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:43:38'!
visitMessage: aMessageNode 
	| symbol selector |
	symbol := aMessageNode selector symbol.
	selector := method indexOf: symbol.
	self
		nextTypePut: MessageId;
		nextPut: selector.
	selector = 0
		ifTrue: [ self nextPut: symbol ].
	self nestedEncode: [ aMessageNode receiver acceptVisitor: self ].
	self
		nestedEncode: [ aMessageNode arguments 
					do: [ :arg | self nestedEncode: [arg acceptVisitor: self] ] ].
	self encodeOptimizedMessage: aMessageNode! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:43:55'!
visitMethod: aMethodNode 
	| pragma |
	self nextTypePut: MethodId.
	pragma := aMethodNode pragma.
	pragma isUsed ifTrue: [ self nextTypePut: PragmaId; nextPut: pragma name ].
	self visitScript: aMethodNode.
	^stream contents! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:44:15'!
visitParseNode: aParseNode 
	^self assert: false! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:44:32'!
visitReturn: aReturnNode 

	self
		nextTypePut: ReturnId;
		nextPut: script realScript isMethod;
		nestedEncode: [aReturnNode expression acceptVisitor: self]! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 2/25/2021 13:44:43'!
visitScript: aScriptNode 
	| prev |
	prev := script.
	script := aScriptNode.
	aScriptNode statements
		do: [:node | self nestedEncode: [node acceptVisitor: self]].
	script := prev! !

!SToken methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:24:19'!
isDelimitedIdentifier 

	^false! !

!SToken methodsFor: 'initialization' stamp: 'KenD 2/21/2021 13:26:35'!
initialize 

	super initialize.
	stretch := 1 thru: 0! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:01'!
endsExpression 

	^self isEnd! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:14'!
hasSymbol 

	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:44'!
is: anObject 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:21:55'!
isAssignment 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:07'!
isBar 

	^(self is: #'|') or: [self is: #'/']! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:17'!
isBlockNode 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:22:28'!
isComment 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:24:56'!
isDelimiter 

	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:24:49'!
isEnd 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:09'!
isIdentifier 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:20'!
isLiteral 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:29'!
isNameToken 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:38'!
isNumberNode 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:25:52'!
isPoolLiteral 

	^false! !

!SToken methodsFor: 'testing' stamp: 'KenD 2/21/2021 13:26:57'!
sStringToken 

	^false! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:18:29'!
compileWarning: aString 

	compiler notify: aString at: self stretch! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:18:41'!
compiler 

	^compiler! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:14'!
compiler: aSmalltalkCompiler 

	compiler := aSmalltalkCompiler! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:25'!
end 

	^stretch end! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:20:35'!
end: aNumber 

	stretch end: aNumber! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:27:49'!
position 

	^stretch start! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:02'!
position: aNumber 

	stretch start: aNumber! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:13'!
prevPosition 

	^stretch start - 1! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:27'!
source 
	^compiler sourceCode copyFrom: stretch start to: stretch end! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:38'!
stretch 

	^stretch! !

!SToken methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:28:50'!
stretch: aStretch 

	stretch := aStretch! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:45'!
comments 

	^comments! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:56'!
comments: aCollection 

	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]! !

!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:27:32'!
moveCommentsTo: aParseNode 

	aParseNode comments: comments.
	comments := nil! !

!SEndToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:05:41'!
value: aString 

	''! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:04:42'!
position: aNumber 

	super position: aNumber - 1! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:05:00'!
prevPosition 

	^stretch start! !

!SEndToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:04:14'!
isEnd
	^true! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:52:09'!
moveCommentsFrom: aParseNode 

	aParseNode moveCommentsTo: self! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:12'!
ast 

	^compiler ast! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:34'!
hasAssign 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:49:48'!
isAssign 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:00'!
isBraceNode 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:11'!
isCascade 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:22'!
isCascadeMessage 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:30'!
isEvaluable 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:39'!
isImmediate 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:45'!
isMessageNode 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:52'!
isMethod 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:50:59'!
isMethodArgument 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:05'!
isMethodTemporary 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:14'!
isReturn 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:28'!
isSelector 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:34'!
isSelf 

	^false! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 2/21/2021 13:51:45'!
isSuper 

	^false! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:48:44'!
allNodesDo: aBlock 

	self nodesDo: aBlock includingDeclarations: true! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:52:43'!
nodeWithLiteral: anObject 

	^self nodesDetect: [:n | (n isLiteral or: [n isSelector]) 
					and: [n value = anObject]] 
		ifAbsent: nil
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:53:52'!
nodesDetect: aBlock ifAbsent: absentBlock 

	self  nodesDo: [:node | (aBlock value: node) ifTrue: [ ^node ] ] 
		includingDeclarations: false.
	^absentBlock value! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:54:05'!
nodesDo: aBlock 

	self nodesDo: aBlock includingDeclarations: false! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 2/21/2021 13:54:21'!
nodesDo: aBlock includingDeclarations: aBoolean 

	aBlock evaluateWith: self! !

!SParseNode methodsFor: 'visiting' stamp: 'KenD 2/21/2021 13:48:13'!
acceptVisitor: visitor 

	^visitor visitParseNode: self! !

!SIdentifierNode methodsFor: 'evaluating' stamp: 'KenD 2/23/2021 14:29:21'!
name: aString 

	name := aString reduced! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 2/23/2021 14:23:55'!
beAssigned 

	| immutable |
	binding canBeAssigned ifTrue: [^self].
	immutable := binding isClassBinding
		ifTrue: ['class']
		ifFalse: [compiler activeScope describe: binding name].
	self compileError: 'cannot assign to ' , immutable! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 2/23/2021 14:29:35'!
resolveAssigning: aBoolean 
	| scope |
	scope := compiler activeScope.
	binding := scope resolve: name.
	binding isUnresolved ifFalse: [^binding].
	(scope hasMultipleBindingsFor: name)
		ifTrue: [self compileError: 'variable belongs in multiple pools'].
	compiler undeclaredErrorAt: self stretch assignment: aBoolean.
	^binding := scope resolve: name! !

!SIdentifierNode methodsFor: 'emitCode' stamp: 'KenD 2/23/2021 14:26:14'!
emitLoadAusing: anAstcodeEncoder 

	binding emitLoadAusing: anAstcodeEncoder! !

!SIdentifierNode methodsFor: 'initialization' stamp: 'KenD 2/23/2021 14:26:31'!
nitialize 

	super initialize.
	binding := UnresolvedBinding default! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:24:42'!
checkLowercase 
	| char |
	char := name first.
	(char isLetter and: [char isUppercase]) ifFalse: [^self].
	self compileWarning: name storeString , ' should start with lowercase'! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:26:53'!
isEvaluable 

	^self isIdentifierLiteral! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:06'!
isIdentifier 

	^true! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:15'!
isIdentifierLiteral 

	binding isUnresolved ifFalse: [^binding isLiteral].
	^self ast ifNil: [false] ifNotNil: [:ast | | b |
		b := ast scope resolve: name.
		b isLiteral]! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:40'!
isImmediate 

	^true! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:27:54'!
isMethodArgument 
	| ast |
	binding isArgument ifFalse: [^false].
	ast := self ast ifNil: [^false].
	^ast arguments includes: self declaration! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:13'!
isMethodTemporary 

	^self ast temporaries includes: self declaration! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:22'!
isSelf 

	^binding isSelf! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:28:33'!
sSuper 

	^binding isSuper! !

!SIdentifierNode methodsFor: 'visiting' stamp: 'KenD 2/23/2021 14:23:40'!
acceptVisitor: visitor 

	^visitor visitIdentifier: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:06'!
declaration 

	^binding declaration! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:20'!
defineArgumentIn: aScriptScope 

	binding := aScriptScope defineArgument: name.
	binding declaration: self! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 2/23/2021 14:25:37'!
defineTemporaryIn: scope 

	binding := scope defineTemporary: name.
	binding declaration: self! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:41'!
hasSymbol 

	^value isSymbol! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:28'!
isEvaluable 

	^true! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:19'!
isImmediate 

	^true! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:00:00'!
isLiteral 

	^true! !

!SLiteralNode methodsFor: 'accessing' stamp: 'KenD 2/22/2021 12:59:23'!
value 

	^value! !

!SLiteralNode methodsFor: 'accessing' stamp: 'KenD 2/22/2021 12:59:34'!
value: anObject 

	value := anObject! !

!SLiteralNode methodsFor: 'emitCode' stamp: 'KenD 2/22/2021 13:02:25'!
emitLoadAusing: anSExpressionNativizer 

	anSExpressionNativizer encodeLoadAwithLiteral: value! !

!SLiteralNode methodsFor: 'private' stamp: 'KenD 2/22/2021 13:01:22'!
beSymbol 

	value := value asSymbol! !

!SLiteralNode methodsFor: 'visiting' stamp: 'KenD 2/22/2021 12:55:31'!
acceptVisitor: visitor 
	
	^visitor visitLiteral: self! !

!SScriptNode methodsFor: 'private' stamp: 'KenD 2/24/2021 11:51:26'!
useSelf 

	scope captureSelf! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:45:04'!
addChild: aBlockNode 

	children add: aBlockNode! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:45:49'!
addStatements: anOrderedCollection 

	statements addAll: anOrderedCollection! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:45:58'!
arguments 

	^arguments! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:46:07'!
arguments: aCollection 

	arguments := aCollection! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:46:47'!
children 

	^children! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:46:57'!
environmentSize 

	^scope environmentSize! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:49:02'!
realScript 

	self subclassResponsibility! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:49:34'!
scope 

	^scope! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:50:27'!
statements 

	^statements! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:50:40'!
temporaries 

	^temporaries! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:50:55'!
temporaries: aCollection 

	temporaries := aCollection! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 2/24/2021 11:46:36'!
bindLocals 

	arguments do: [:arg | arg defineArgumentIn: scope].
	temporaries do: [:temp | temp checkLowercase; defineTemporaryIn: scope].
	children do: [:block | block bindLocals]! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 2/24/2021 11:48:42'!
positionLocals 

	scope positionLocals.
	children do: [:b | b positionLocals]! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 2/24/2021 11:49:21'!
reference: aBinding 

	aBinding beReferencedFrom: self! !

!SScriptNode methodsFor: 'enumerating' stamp: 'KenD 2/24/2021 11:48:26'!
nodesDo: aBlock includingDeclarations: aBoolean 

	super nodesDo: aBlock includingDeclarations: aBoolean.
	aBoolean ifTrue: [
		arguments do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean].
		temporaries do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean]].
	statements do: [:s | s nodesDo: aBlock includingDeclarations: aBoolean]! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 2/24/2021 11:47:49'!
initialize 

	super initialize.
	statements := OrderedCollection new.
	arguments := #().
	temporaries := #().
	children := OrderedCollection new! !

!SScriptNode methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:47:31'!
hasAssign 

	statements do: [:s | s hasAssign ifTrue: [^true]].
	^false! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:13:10'!
hasSymbol 

	^symbol isSymbol! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:13:26'!
isBinary 

	^symbol isBinary! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 2/24/2021 13:13:43'!
isSelector

	^true! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 2/24/2021 13:15:26'!
value 

	^symbol! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:12:24'!
addKeyword: aSelectorNode 

	keywords isNil ifTrue: [keywords := OrderedCollection new: 1].
	keywords add: aSelectorNode! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:12:52'!
end 

	stretch end ifNotNil: [:e | ^e].
	^keywords notNil ifTrue: [keywords last end]! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:14:23'!
keywords 

	^keywords isNil ifTrue: [{self}] ifFalse: [keywords]! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:14:17'!
positions 

	^self keywords collect: [:node | node position]! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:14:36'!
symbol 

	^symbol! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:14:47'!
symbol: aString 

	symbol := aString asSymbol! !

!SSelectorNode methodsFor: 'visiting' stamp: 'KenD 2/24/2021 13:12:01'!
acceptVisitor: visitor 

	^visitor visitSelector: self! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:05'!
value 

	^value! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:25'!
value: anObject 

	value := anObject! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:12:43'!
is: anObject 

	^value == anObject! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:07'!
endsExpression 

	^value = $. or: [value = $]] or: [value = $)] or: [value = $}]! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:17'!
isAssignment 

	^self is: #':='! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:08:30'!
isDelimiter 

	^true! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:07:46'!
beCharacter 

	value := value isCharacter ifTrue: [value] ifFalse: [value first]! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 2/20/2021 16:08:46'!
value: aString 

	super value: aString asSymbol! !

!SDelimiterToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:07:09'!
asSelectorNode 

	^compiler selectorNode symbol: value asString; stretch: stretch! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:10:39'!
hasSymbol 

	^value isSymbol! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:10:52'!
isBinary 

	^value isSymbol! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:04'!
isDelimitedIdentifier 

	^value first = ${! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:18'!
isKeyword 

	^value last = $:! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:32'!
isNameToken 

	^(self isKeyword or: [self isBinary]) not! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:11:43'!
isStringToken 

	^true! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:10:03'!
asIdentifierNode 

	^compiler identifierNode
		name: value;
		stretch: stretch;
		comments: comments! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 2/20/2021 16:10:21'!
asSelectorNode 

	^compiler selectorNode symbol: value; stretch: stretch! !

!ScriptScope methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:03:15'!
script: aScriptNode 

	script := aScriptNode! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 12:57:31'!
defineArgument: identifier 
	| binding |
	(self resolves: identifier) ifTrue: [self redefinitionError: identifier].
	binding := ArgumentBinding new name: identifier.
	arguments define: identifier as: binding.
	^binding! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 12:58:03'!
defineTemporary: identifier 
	| binding |
	(temporaries defines: identifier)
		ifTrue: [self redefinitionError: identifier].
	binding := TemporaryBinding new name: identifier.
	temporaries define: identifier as: binding.
	^binding! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 12:58:20'!
defines: aString 

	^(temporaries defines: aString) or: [arguments defines: aString]! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 13:00:33'!
localBindings 

	^arguments values , temporaries values! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 13:02:23'!
resolveLocal: aString 

	(temporaries at: aString) ifNotNil: [:binding | ^binding].
	^arguments at: aString! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 2/27/2021 13:02:40'!
resolves: aString 

	^(self resolve: aString) isUnresolved not! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/27/2021 12:57:03'!
capturesSelf 

	^ captureSelf! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/27/2021 12:58:36'!
describe: identifier 
	| binding type |
	binding := self resolve: identifier.
	type := self class name asLowercase allButLast: 'scope' size.
	^binding description , ' of ' , type! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/27/2021 12:59:13'!
environmentSize 

	^envSize! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/27/2021 13:02:54'!
scopeOf: aString 
	| s |
	s := self scriptDefining: aString.
	^s notNil ifTrue: [s scope]! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 2/27/2021 13:03:29'!
stackSize 

	^stackSize! !

!ScriptScope methodsFor: 'initialization' stamp: 'KenD 2/27/2021 13:00:10'!
initialize 

	super initialize.
	arguments := StaticBinder new.
	temporaries := StaticBinder new.
	stackSize := envSize := 0.
		captureSelf := false.! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 12:59:39'!
growEnvironment 

	^envSize := envSize + 1! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 12:59:50'!
growStack 

	^stackSize := stackSize + 1! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:00:48'!
positionDefinedArguments 

	arguments withIndexDo: [:binding :index | binding index: index]! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:00:59'!
positionDefinedLocals 

	self positionDefinedTemporariesIn: self; positionDefinedArguments! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:01:15'!
positionDefinedTemporariesIn: aScriptScope 

	temporaries do: [:binding | | position |
		position := binding isInStack
			ifTrue: [aScriptScope growStack]
			ifFalse: [aScriptScope growEnvironment].
		binding index: position]! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:01:30'!
positionLocals 

	self positionDefinedLocals! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:01:41'!
realScope 

	^script realScript scope! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 2/27/2021 13:01:59'!
redefinitionError: name 
	| scope description |
	scope := self scopeOf: name.
	description := scope describe: name.
	script compiler
		warning: name , ' already declared as ' , description
		at: script stretch! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 12:56:01'!
new 

	^super new initialize! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 12:56:15'!
on: aScriptNode 

	^self new script: aScriptNode! !

!BlockScope methodsFor: 'initialization' stamp: 'KenD 2/28/2021 12:47:45'!
initialize 

	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:43:27'!
capturedArguments 

	^captured select: [:b | b isArgument]! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:43:41'!
capturedEnvironmentIndexOf: aScriptNode 
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self assert: index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:45:06'!
capturesSelf 

	^captureSelf! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:45:57'!
environmentIndexOf: aScriptNode 
	"
	temporal compatibility
	"
	(aScriptNode isKindOf: SScriptNode)
		ifFalse: [ self assert: false. ^nil ].
	^self capturedEnvironmentIndexOf: aScriptNode! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:46:17'!
environmentSizeUpToCapturedArguments 

	^self environmentSizeUpToEnvironments + self capturedArguments size! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:46:29'!
environmentSizeUpToEnvironments 
	| receiver |
	receiver := self capturesSelf ifTrue: [ 1 ] ifFalse: [ 0 ].
	^receiver + environments size! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:46:47'!
environments 
	"
	compatibility, removes the home environment
	"
	| first |
	environments isEmpty ifTrue: [^#()].
	first := environments first.
	^first isMethod ifTrue: [environments allButFirst] ifFalse: [environments]! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:47:21'!
home 
	| first |
	environments isEmpty ifTrue: [^nil].
	first := environments first.
	^first isMethod ifTrue: [first]! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:47:59'!
localBindings 

	^super localBindings , captured values! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:48:26'!
parent 

	^script parent scope! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:53:17'!
scriptDefining: aString 

	(self defines: aString) ifTrue: [^script].
	^self parent scriptDefining: aString! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:41:40'!
captureArgument: anArgumentBinding 
	| name |
	name := anArgumentBinding name.
	^captured at: name ifAbsentPut: [| transferred copy |
		transferred := self parent transferLocal: name.
		copy := self copyLocal: transferred.
		(anArgumentBinding isInlined and: [copy !!= anArgumentBinding])
			ifTrue: [anArgumentBinding beInArray].
		copy declaration: transferred declaration]! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:42:19'!
captureEnvironment: aScriptNode 

	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:42:37'!
captureLocal: aLocalBinding 

	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:42:52'!
captureSelf 

	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:43:07'!
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
		copy declaration: transferred declaration]! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:44:16'!
capturedEnvironments 

	^environments! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:51:56'!
resolve: aString 

	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 2/28/2021 12:53:01'!
resolveLocal: aString 

	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString! !

!BlockScope methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:44:37'!
capturesHome 

	^self home notNil! !

!BlockScope methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:47:01'!
hasMultipleBindingsFor: aString 
	"
	temporal compatibility
	"
	^self parent hasMultipleBindingsFor: aString! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:48:57'!
positionCapturedArgument: anArgumentBinding 

	anArgumentBinding index: self growEnvironment! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:49:09'!
positionCapturedLocals 

	script isInlined ifTrue: [^self].
	envSize := self environmentSizeUpToEnvironments.
	captured do: [:binding | 
		binding isArgument
			ifTrue: [self positionCapturedArgument: binding]
			ifFalse: [self positionCapturedTemporary: binding]]! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:49:30'!
positionCapturedTemporary: aTemporaryBinding 
	| outest index declaration |
	outest := self scriptDefining: aTemporaryBinding name.
	index := self capturedEnvironmentIndexOf: outest realScript.
	aTemporaryBinding environmentIndex: index.
	declaration := outest scope resolve: aTemporaryBinding name.
	self assert: declaration index isInteger.
	aTemporaryBinding index: declaration index! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:50:56'!
positionDefinedArgumentsIn: aScriptScope 

	arguments do: [:binding | | index |
		index := binding isInArray
			ifTrue: [aScriptScope growEnvironment]
			ifFalse: [aScriptScope growStack].
		binding index: index]! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:51:14'!
positionLocals 

	self positionCapturedLocals.
	super positionLocals! !

!BlockScope methodsFor: 'positioning' stamp: 'KenD 2/28/2021 12:53:34'!
transferLocal: name 
	| binding copy |
	(self resolveLocal: name) ifNotNil: [:b | ^b].
	binding := self parent transferLocal: name.
	copy := self copyLocal: binding.
	captured at: name put: copy.
	^copy! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/28/2021 12:45:42'!
copyLocal: binding 

	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/28/2021 12:51:31'!
realParent 

	^script realParent scope! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:32:12'!
instructions: aByteArray 

	instructions := aByteArray! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:32:41'!
invoke: anSCompiledMethod using: invokeInstructions 

	instructions := invokeInstructions.
	selector := anSCompiledMethod selector.
	cache := anSCompiledMethod! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:33:21'!
lookup: aSymbol using: lookupInstructions 

	instructions := lookupInstructions.
	selector := aSymbol! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:33:55'!
selector 

	^selector! !

!SendSite methodsFor: 'converting' stamp: 'KenD 2/27/2021 13:31:44'!
beSuperSend 

	format := format bitOr: IsSuperSend! !

!SendSite methodsFor: 'initialization' stamp: 'KenD 2/27/2021 13:32:00'!
initialize 

	tally := 0.
	format := 0! !

!SendSite methodsFor: 'testing' stamp: 'KenD 2/27/2021 13:33:01'!
isSuperSend 

	^(format bitAnd: IsSuperSend) == IsSuperSend! !

!SendSite methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 13:34:18'!
selector: aSymbol 

	selector := aSymbol! !

!SmalltalkBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:02:37'!
builder: anImageSegmentBuilder 

	builder := anImageSegmentBuilder! !

!SmalltalkBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:03:13'!
spec 

	^builder image kernel! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:04:44'!
initializeInlinedMethods 
	| compiled |
	compiled := self inlinedMethods
		collect: [ :method | builder methods at: method ].
	nativizer inlinedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:05:08'!
initializeInvokedMethods 
	| compiled |
	compiled := self invokedMethods
		collect: [ :method | builder methods at: method ].
	nativizer invokedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:05:26'!
initializeKernelModule 
	| runtime smethod transferred array module |
	module := builder module.
	runtime := {(image => #Kernel >> #entry:argv:)}
		collect: [ :def | 
			smethod := builder methods at: def.
			transferred := image surrogateFor: smethod.
			transferred nativeCode machineCode ].
	array := image newArray: builder classes values.
	module
		name: (image newString: 'Kernel');
		version: (image newString: '0.1.0');
		exports: array;
		hash: image nil;
		loadAction: builder createLoadAction;
		runtime: (image newArray: runtime)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:06:32'!
initializeNativizer 

	nativizer := NativizationEnvironment new.
	self
		initializeNativizerGlobals;
		initializeInlinedMethods;
		initializeInvokedMethods;
		initializeOptimizedMethods;
		nativizeInvoke;
		nativizeWriteBarrier;
		nativizeLookup;
		transferNativizerGlobals;
		setupMessageLinkers! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:06:55'!
initializeNativizerGlobals 
	| smi items |
	smi := image classNamed: #SmallInteger.
	nativizer globalNamed: #SmallIntegerBehavior put: smi behavior.
	items := {(#Lookup -> (NativeCode new code: 'Lookup Placeholder')).
	(#LookupSuper -> (NativeCode new code: 'LookupSuper Placeholder')).
	(#DebuggableLookup
		-> (NativeCode new code: 'DebuggableLookup placeholder')).
	(#DebuggableLookupSuper
		-> (NativeCode new code: 'DebuggableLookupSuper placeholder')).
	(#Invoke -> (NativeCode new code: 'Invoke placeholder')).
	(#Safepoint -> (NativeCode new code: 'SafepointCheck placeholder')).
	(#WriteBarrier -> (NativeCode new code: 'Write Barrier placeholder'))}
		asDictionary.
	items
		keysAndValuesDo: [ :key :placeholder | nativizer globalNamed: key put: placeholder ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:07:33'!
initializeOptimizedMethods 
	| compiled |
	compiled := self optimizedMethods
		collect: [ :method | builder methods at: method ].
	nativizer optimizedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:08:08'!
initializeSendSite 

	self 
		initializeSendSiteMIC: nativizer monomorphicCache
		PIC: nativizer polymorphicCache! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:08:33'!
initializeSendSiteMIC: micStub PIC: picStub 
	| class lkup invk mic pic |
	class := image classNamed: #SendSite.
	lkup := nativizer globalNamed: #Lookup.
	lkup := image surrogateFor: lkup.
	invk := nativizer globalNamed: #Invoke.
	invk := image surrogateFor: invk.
	mic := image newBytesFrom: micStub.
	pic := image newBytesFrom: picStub.
	builder runtime
		send: #allocateInitialCachesUsing: to: class with: {lkup};
		send: #initializeInvoke: to: class with: {invk};
		send: #monomorphicCache: to: class with: {mic};
		send: #polymorphicCache: to: class with: {pic}! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:11:14'!
inlinedMethods 
	| map |
	map := 
	{(#ProtoObject
		->
		#(#objectAtValid: #objectAtValid:put: #behavior #class   
		  #primitiveAt: #_cachedLookup: #_cachedLookup:in:)).
	(#Object
		-> 
		#(#byteAtValid: #byteAtValid:put: #basicObjectIndexOf: #at:put:)).
	(#Species
		->
		#(#instSize #_instancesAreArrayed #_instancesHavePointers 
		    #memory #instanceBehavior #primitiveNew #primitiveNew:)).
	(#CompiledMethod
		->
		#(#prepareForExecution #isNativized #nativeCode 
		   #blockCount #literalIndexFrom:)).
	(#CompiledBlock 
	 	-> 
		#(#argumentCount #blockNumber #blockCode #method)).
	(#NativeCode -> #(#code)).
	(#GCSpace -> #(#commitedLimit #nextFree #nextFree:)).
	(#CharacterArray -> #(#characterAtValid:))}.

	^ builder undermethods , (builder methodSubset: map)
	! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:21'!
invokedMethods 
	| map |
	map := 
	{(#ProtoObject
		-> #(behavior class primitiveAt: #initializeExtended:contentSize:)).
	(#Object 
		-> #(#_replaceFrom:to:with:)).
	(#Species
		->
		#(#allocate:size: instanceBehavior _instancesAreArrayed 
		_instancesHavePointers #nil:slotsOf: memory primitiveNewBytes: 
		primitiveNewPointers: #zero:bytesOf:))}.

	^ builder undermethods , (builder methodSubset: map)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:37'!
mapNativizerGlobal: name to: transferred 
	| placeholder |
	placeholder := nativizer globalNamed: name.
	image
		map: placeholder to: transferred;
		map: placeholder code to: transferred machineCode.
	builder export: transferred as: name! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:51'!
nativize 

	self
		initializeNativizer;
		initializeSendSite;
		nativizeRemainingMethods! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:23:05'!
nativizeInvoke 
	| invoke |
	invoke := builder compile: builder => #SendSite >> #_invokeOn:.
	nativizer nativizeOptimizing: invoke.
	self transfer: invoke in: #ProtoObject asNativizerGlobal: #Invoke! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:23:20'!
nativizeLookup 
	| n transferred species lookup lookupSuper |
	n := LookupNativizer new
		bootstrapper: self;
		nativizeMethods.
	lookup := n methodFor: #_dispatchOn:.
	lookupSuper := n methodFor: #_dispatchOn:startingAt:.
	n methods
		do: [ :m | 
			species := image speciesFor: image => m classBinding name.
			transferred := builder transferMethod: m in: species.
			image map: m to: transferred ];
		do: [ :m | 
			transferred := image surrogateFor: m.
			self transferNativeCode: m nativeCode of: transferred ].
	transferred := (image surrogateFor: lookup) nativeCode.
	self mapNativizerGlobal: #Lookup to: transferred.
	transferred := (image surrogateFor: lookupSuper) nativeCode.
	self mapNativizerGlobal: #LookupSuper to: transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:24:59'!
nativizeRemainingMethods 

	builder classSpecs
		do: [ :def | 
			self
				trace: 'nativizing ' , def name , '...';
				nativizeRemainingMethodsIn: def;
				nativizeRemainingMethodsIn: def metaclass ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:25:17'!
nativizeRemainingMethodsIn: species 

	builder methods
		do: [ :smethod | 
			smethod nativeCode
				ifNil: [ "self haltIf: smethod selector == #foo."
					nativizer nativize: smethod.
					self transferNativeCodeOfMethod: smethod ] ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:25:37'!
nativizeWriteBarrier 
	| map inlined dispatcher barrier |
	map := {('Memory class' -> #(current)).
	(#Memory -> #(isYoung: isYoungSafe: remember:)).
	(#CriticalArray -> #(unsafeAdd: #unsafeAt:put:)).
	(#Magnitude -> #(#between:and:))}.
	inlined := builder methodSubset: map.
	inlined addAll: builder undermethods.
	inlined := inlined collect: [ :m | builder compile: m ].
	barrier := builder
		compile: builder => #ProtoObject >> #holdRefererIfNeeded:.
	dispatcher := LookupLinker new initializeFrom: nativizer.
	NativizationEnvironment new
		globals: nativizer globals;
		inlinedMethods: inlined;
		messageLinker: dispatcher;
		completeInitialization;
		nativizeOptimizing: barrier.
	self
		transfer: barrier
		in: #ProtoObject
		asNativizerGlobal: #WriteBarrier! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:28:22'!
optimizedMethods 
	| map |
	map := 
	{(#ProtoObject
		->
		#(behavior class primitiveAt: #primitiveAt:put: 
		  #initializeExtended:contentSize:)).
	(#Object
		->
		#(at: #at:put: basicByteAt: #basicByteAt:put: byteAtValid: 
		  #byteAtValid:put: basicObjectAt: #basicObjectAt:put: 
		  #replaceBytesForwardFrom:to:with:startingAt:)).
	(#SendSite
		->
		#(_dispatchOn: #_dispatchOn:startingAt: 
		  _dispatchDebuggableOn: #_dispatchDebuggableOn:startingAt:)).
	(#Species
		->
		#(#allocate:size: primitiveNew primitiveNew: instSize
		   primitiveNewBytes: primitiveNewPointers:)).
	(#'Float class' 
		-> #(new)).
	(#CompiledBlock 
		-> #(argumentCount arity blockCode method)).
	(#Closure 
		-> #(value value: #value:value:)).
	(#CompiledMethod 
		-> #(blockCount isNativized)).
	(#String 
		-> #(at: #at:put: byteAt: #byteAt:put:)).
	(#GCSpace
		-> 
		#(lockedAllocateIfPossible: lockedAllocateUnsafe: shallowCopy:)).
	(#Memory 
		-> #(shallowCopy:))}.

	^ builder undermethods , (builder methodSubset: map)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:28:45'!
setupMessageLinkers 
	| invoker dispatcher |
	invoker := InvokeLinker new
		invoker: nativizer invokeStub;
		addMethods: nativizer invokedMethods.
	dispatcher := LookupLinker new initializeFrom: nativizer.
	nativizer
		addLinker: invoker;
		addLinker: dispatcher;
		completeInitialization! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:29:13'!
transfer: anSMethod in: classname asNativizerGlobal: name 
	| species transferred |
	species := image classNamed: classname.
	transferred := builder transferMethod: anSMethod in: species.
	transferred := self
		transferNativeCode: anSMethod nativeCode
		of: transferred.
	self mapNativizerGlobal: name to: transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:29:36'!
transferNativeCode: aNativeCode of: compiledCode 
	| size transferred code slot callback |
	size := aNativeCode size.
	transferred := image newSlots: 'NativeCode' sized: size.
	callback := compiledCode classname = #CallbackMethod.
	code := callback
		ifTrue: [ builder newCallback: transferred bytesFrom: aNativeCode code ]
		ifFalse: [ image newBytesFrom: aNativeCode code ].
	transferred
		machineCode: code;
		compiledCode: compiledCode.
	compiledCode nativeCode: transferred.
	aNativeCode
		withIndexDo: [ :elem :i | 
			slot := image transferLiteralDeep: elem.
			transferred at: i put: slot ].
	^ transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:30:08'!
transferNativeCodeOfMethod: anSCompiledMethod 
	| transferred remaining literal block position |
	transferred := image surrogateFor: anSCompiledMethod.
	self transferNativeCode: anSCompiledMethod nativeCode of: transferred.
	remaining := anSCompiledMethod blockCount.
	position := 1.
	[ remaining > 0 ]
		whileTrue: [ literal := anSCompiledMethod at: position.
			literal isBlock
				ifTrue: [ block := transferred at: position.
					self transferNativeCode: literal nativeCode of: block.
					remaining := remaining - 1 ].
			position := position + 1 ].
	^ transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:30:22'!
transferNativizerGlobals 

	image transferLiteralDeep: nativizer globals! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:04:20'!
image: aVirtualSmalltalkImage 

	image := aVirtualSmalltalkImage! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:26:05'!
nativizer 

	^nativizer! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:30:37'!
undermethods 

	^builder undermethods! !

!Storage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:23:30'!
arrayedSlotOf: base at: index put: value 

	^ self subclassResponsibility! !

!Storage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:23:45'!
new: oid 

	^self subclassResponsibility! !

!Storage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:23:56'!
slotOf: base at: index 

	^ self subclassResponsibility! !

!Storage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:24:06'!
slotOf: base at: index put: value 

	^self subclassResponsibility! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:26:51'!
arrayedSlotOf: oid at: index put: anotherOid 
	"fixme: this message should be sent to ObjectFormat"
	^ oid at: index put: anotherOid! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:27:01'!
bootstrapper: aSmalltalkBootstrapper 

	bootstrapper := aSmalltalkBootstrapper! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:27:14'!
new: oid 
	| meta base behavior |
	meta := oid spec.
	self assert: meta isMeta.
	base := meta baseClass.
	behavior := bootstrapper instanceBehaviorOfSpec: base.
	^ (ObjectMap new: base) behavior: behavior; atAllPut: bootstrapper nilObject! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:27:39'!
new: oid sized: anInteger 
	| meta base behavior |
	meta := oid spec.
	self assert: meta isMeta.
	base := meta baseClass.
	behavior := bootstrapper instanceBehaviorOfSpec: base.
	^ (ObjectMap new: base size: anInteger)
		behavior: behavior;
		atAllPut: bootstrapper nilObject! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:28:09'!
newClosure: anObjectHandle 
	| size |
	size := anObjectHandle target size.
	^ bootstrapper new: #Closure sized: size! !

!BootstrapStorage methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:28:23'!
slotOf: anObjectMap at: index put: value 

	index <= anObjectMap size
		ifTrue: [ anObjectMap slotAt: index put: value ]
		ifFalse: [ anObjectMap at: index put: value ].
	^ value! !

!BootstrapStorage class methodsFor: 'instance creation' stamp: 'KenD 2/28/2021 13:26:24'!
on: aSmalltalkBootstrapper 

	^ self new bootstrapper: aSmalltalkBootstrapper! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:29:35'!
bytes: aByteArray 

	bytes := aByteArray! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:29:52'!
bytesAt: base sized: size 

	^ bytes copyFrom: base + 1 to: base + size! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:30:05'!
slotOf: base at: index 

	^ self uint64atOffset: base + (8 * (index - 1))! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:30:18'!
slotOf: base at: index put: value 

	^ self uint64atOffset: base + ((index - 1) * 8) put: value! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:30:35'!
stringAt: base sized: size 

	^ (self bytesAt: base sized: size) asString! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:30:46'!
uint16atOffset: anInteger 

	^ bytes unsignedShortAt: anInteger + 1! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:30:57'!
uint16atOffset: anInteger put: value 

	^ bytes unsignedShortAt: anInteger + 1 put: value! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:31:07'!
uint16of: base atOffset: offset 

	^ self uint16atOffset: base + offset! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:31:18'!
uint32atOffset: anInteger 

	^ bytes unsignedLongAt: anInteger + 1! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:31:29'!
uint32atOffset: anInteger put: value 

	^ bytes unsignedLongAt: anInteger + 1 put: value! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:31:40'!
uint32of: base atOffset: offset 

	^ self uint32atOffset: base + offset! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:31:59'!
uint64atOffset: anInteger 

	^ bytes unsignedLongLongAt: anInteger + 1! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:32:10'!
uint64atOffset: anInteger put: value 

	^ bytes unsignedLongLongAt: anInteger + 1 put: value! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:32:21'!
uint8atOffset: anInteger 

	^ bytes unsignedByteAt: anInteger + 1! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:32:34'!
uint8atOffset: anInteger put: value 

	^ bytes unsignedByteAt: anInteger + 1 put: value! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:32:45'!
uint8of: base atOffset: offset 

	^ self uint8atOffset: base + offset! !

!ByteArrayAdapter methodsFor: 'accessing' stamp: 'KenD 2/28/2021 13:33:02'!
wordSize 

	^8! !

!ByteArrayAdapter class methodsFor: 'instance creation' stamp: 'KenD 2/28/2021 13:29:15'!
on: aByteArray 

	^self new bytes: aByteArray! !
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
OperandTypeFlags initialize!
Prefixes initialize!
Registers initialize!
SExpressionTypes initialize!
SendSiteFlags initialize!
SpeciesFormatMasks initialize!
Assembler64 initialize!
