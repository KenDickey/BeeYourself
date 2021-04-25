'From Cuis 5.0 [latest update: #4570] on 25 April 2021 at 11:37:40 am'!
'Description '!
!provides: 'PowerLang' 1 1!
!requires: 'BeeCompatibility' 1 2 nil!
!requires: 'PetitParser' 1 14 nil!
!requires: 'Ring2' 1 1 nil!
!requires: 'BeePParser' 1 17 nil!
SystemOrganization addCategory: 'Powerlang-Core'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-Intel'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-JIT'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-Parser'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-Tools'!
SystemOrganization addCategory: 'Powerlang-Core-Building'!
SystemOrganization addCategory: 'Powerlang-Core-Emulation'!
SystemOrganization addCategory: 'Powerlang-Core-Metaphysics'!
SystemOrganization addCategory: 'Powerlang-Core-Mirrors'!
SystemOrganization addCategory: 'Powerlang-Core-Nativization'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Bindings'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SystemOrganization addCategory: 'Powerlang-Core-SExpressions'!


!classDefinition: #CharacterConstants category: 'Powerlang-Core'!
PSharedPool subclass: #CharacterConstants
	instanceVariableNames: ''
	classVariableNames: 'Cr Lf Space Tab'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CharacterConstants class' category: 'Powerlang-Core'!
CharacterConstants class
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

!classDefinition: #OperandTypeFlags category: 'Powerlang-Core-Assembler-Intel'!
PSharedPool subclass: #OperandTypeFlags
	instanceVariableNames: ''
	classVariableNames: 'ConstantType ImmediateType MemoryType RegisterGP RegisterGroupMask RegisterSIMD RegisterSegment RegisterSpecific RegisterType'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'OperandTypeFlags class' category: 'Powerlang-Core-Assembler-Intel'!
OperandTypeFlags class
	instanceVariableNames: ''!

!classDefinition: #Prefixes category: 'Powerlang-Core-Assembler-Intel'!
PSharedPool subclass: #Prefixes
	instanceVariableNames: ''
	classVariableNames: 'AddressSize_Override LOCK OperandSize_Override REP REPE REPNE REPNZ REPZ REX REX_R REX_W'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'Prefixes class' category: 'Powerlang-Core-Assembler-Intel'!
Prefixes class
	instanceVariableNames: ''!

!classDefinition: #Registers category: 'Powerlang-Core-Assembler-Intel'!
PSharedPool subclass: #Registers
	instanceVariableNames: ''
	classVariableNames: 'AH AL AX BH BL BP BPL BX CH CL CS CX DH DI DIL DL DS DX EAX EBP EBX ECX EDI EDX ES ESI ESP FS GS MMX0 MMX1 MMX2 MMX3 MMX4 MMX5 MMX6 MMX7 R10 R10B R10D R10W R11 R11B R11D R11W R12 R12B R12D R12W R13 R13B R13D R13W R14 R14B R14D R14W R15 R15B R15D R15W R8 R8B R8D R8W R9 R9B R9D R9W RAX RBP RBX RCX RDI RDX RIP RSI RSP SI SIL SP SPL SS XMM0 XMM1 XMM10 XMM11 XMM12 XMM13 XMM14 XMM15 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 XMM9 YMM0 YMM1 YMM10 YMM11 YMM12 YMM13 YMM14 YMM15 YMM2 YMM3 YMM4 YMM5 YMM6 YMM7 YMM8 YMM9 al cl dl'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'Registers class' category: 'Powerlang-Core-Assembler-Intel'!
Registers class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderMasks category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderMasks
	instanceVariableNames: ''
	classVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderMasks class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderMasks class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderOffsets category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderOffsets
	instanceVariableNames: ''
	classVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderOffsets class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderOffsets class
	instanceVariableNames: ''!

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
	instanceVariableNames: ''!

!classDefinition: #FrameOffsets category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #FrameOffsets
	instanceVariableNames: ''
	classVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'FrameOffsets class' category: 'Powerlang-Core-Mirrors'!
FrameOffsets class
	instanceVariableNames: ''!

!classDefinition: #InlineMessageLinkerFlags category: 'Powerlang-Core-Nativization'!
PSharedPool subclass: #InlineMessageLinkerFlags
	instanceVariableNames: ''
	classVariableNames: '_ExtendedSize _Flags _Hash _Reserved _SmallSize'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinkerFlags class' category: 'Powerlang-Core-Nativization'!
InlineMessageLinkerFlags class
	instanceVariableNames: ''!

!classDefinition: #SendSiteFlags category: 'Powerlang-Core-Nativization'!
PSharedPool subclass: #SendSiteFlags
	instanceVariableNames: ''
	classVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSiteFlags class' category: 'Powerlang-Core-Nativization'!
SendSiteFlags class
	instanceVariableNames: ''!

!classDefinition: #SCompiledMethodFlags category: 'Powerlang-Core-SCompiler'!
PSharedPool subclass: #SCompiledMethodFlags
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledMethodFlags class' category: 'Powerlang-Core-SCompiler'!
SCompiledMethodFlags class
	instanceVariableNames: ''!

!classDefinition: #AstBindingTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId ClassVarId ConstantPoolId EnsureAisSmallIntegerId EnsureRisSmallIntegerId FalseId GlobalClassId GlobalValueId InstVarId LoadAvisitingArgumentId LoadAwithArgumentId LoadAwithClassVarId LoadAwithConstPoolId LoadAwithFalseId LoadAwithGlobalId LoadAwithInstVarId LoadAwithLiteralId LoadAwithNilId LoadAwithPoolVarId LoadAwithSelfId LoadAwithTemporaryId LoadAwithTrueId LoadRvisitingReceiverId LoadRwithArgumentId LoadRwithClassVarId LoadRwithConstPoolId LoadRwithFalseId LoadRwithGlobalId LoadRwithInstVarId LoadRwithLiteralId LoadRwithNilId LoadRwithPoolVarId LoadRwithSelfId LoadRwithTemporaryId LoadRwithTrueId NilId PoolVarId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core-SExpressions'!
AstBindingTypes class
	instanceVariableNames: ''!

!classDefinition: #AstNodeTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstNodeTypes class' category: 'Powerlang-Core-SExpressions'!
AstNodeTypes class
	instanceVariableNames: ''!

!classDefinition: #ClosureElementTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #ClosureElementTypes
	instanceVariableNames: ''
	classVariableNames: 'Environment EnvironmentValue LocalArgument Self'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'ClosureElementTypes class' category: 'Powerlang-Core-SExpressions'!
ClosureElementTypes class
	instanceVariableNames: ''!

!classDefinition: #SExpressionTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #SExpressionTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpressionTypes class' category: 'Powerlang-Core-SExpressions'!
SExpressionTypes class
	instanceVariableNames: ''!

!classDefinition: #SCompiledBlockFlags category: 'Powerlang-Core-SCompiler'!
SharedPool subclass: #SCompiledBlockFlags
	instanceVariableNames: ''
	classVariableNames: 'ArgCount CapturesHome CapturesSelf EnvCount Id TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledBlockFlags class' category: 'Powerlang-Core-SCompiler'!
SCompiledBlockFlags class
	instanceVariableNames: ''!

!classDefinition: #NativeCode category: 'Powerlang-Core-Nativization'!
Array variableSubclass: #NativeCode
	instanceVariableNames: 'machineCode compiledCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativeCode class' category: 'Powerlang-Core-Nativization'!
NativeCode class
	instanceVariableNames: ''!

!classDefinition: #SCompiledMethod category: 'Powerlang-Core-SCompiler'!
Array variableSubclass: #SCompiledMethod
	instanceVariableNames: 'format nativeCode astcodes class selector source'
	classVariableNames: ''
	poolDictionaries: 'SCompiledMethodFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledMethod class' category: 'Powerlang-Core-SCompiler'!
SCompiledMethod class
	instanceVariableNames: ''!

!classDefinition: #SCallbackMethod category: 'Powerlang-Core-SCompiler'!
SCompiledMethod variableSubclass: #SCallbackMethod
	instanceVariableNames: 'receiver descriptor'
	classVariableNames: ''
	poolDictionaries: 'SCompiledMethodFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCallbackMethod class' category: 'Powerlang-Core-SCompiler'!
SCallbackMethod class
	instanceVariableNames: ''!

!classDefinition: #SCalloutMethod category: 'Powerlang-Core-SCompiler'!
SCompiledMethod variableSubclass: #SCalloutMethod
	instanceVariableNames: 'descriptor symbol address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCalloutMethod class' category: 'Powerlang-Core-SCompiler'!
SCalloutMethod class
	instanceVariableNames: ''!

!classDefinition: #SClosure category: 'Powerlang-Core-SExpressions'!
Array variableSubclass: #SClosure
	instanceVariableNames: 'block home'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SClosure class' category: 'Powerlang-Core-SExpressions'!
SClosure class
	instanceVariableNames: ''!

!classDefinition: #SFFIDescriptor category: 'Powerlang-Core-SCompiler'!
ByteArray variableByteSubclass: #SFFIDescriptor
	instanceVariableNames: ''
	classVariableNames: 'FFICallingConventions FFITypes'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SFFIDescriptor class' category: 'Powerlang-Core-SCompiler'!
SFFIDescriptor class
	instanceVariableNames: ''!

!classDefinition: #StorageReadError category: 'Powerlang-Core'!
Error subclass: #StorageReadError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StorageReadError class' category: 'Powerlang-Core'!
StorageReadError class
	instanceVariableNames: ''!

!classDefinition: #SCompilationError category: 'Powerlang-Core-SCompiler'!
Error subclass: #SCompilationError
	instanceVariableNames: 'compiler resumable retryable stretch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompilationError class' category: 'Powerlang-Core-SCompiler'!
SCompilationError class
	instanceVariableNames: ''!

!classDefinition: #SUndeclaredIdentifierError category: 'Powerlang-Core'!
SCompilationError subclass: #SUndeclaredIdentifierError
	instanceVariableNames: 'identifier assigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SUndeclaredIdentifierError class' category: 'Powerlang-Core'!
SUndeclaredIdentifierError class
	instanceVariableNames: ''!

!classDefinition: #SInvalidPragmaError category: 'Powerlang-Core-SCompiler'!
SCompilationError subclass: #SInvalidPragmaError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SInvalidPragmaError class' category: 'Powerlang-Core-SCompiler'!
SInvalidPragmaError class
	instanceVariableNames: ''!

!classDefinition: #AssemblerGrammar category: 'Powerlang-Core-Assembler-Parser'!
PPCompositeParser subclass: #AssemblerGrammar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Parser'!
!classDefinition: 'AssemblerGrammar class' category: 'Powerlang-Core-Assembler-Parser'!
AssemblerGrammar class
	instanceVariableNames: ''!

!classDefinition: #AssemblerParser category: 'Powerlang-Core-Assembler-Parser'!
AssemblerGrammar subclass: #AssemblerParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Parser'!
!classDefinition: 'AssemblerParser class' category: 'Powerlang-Core-Assembler-Parser'!
AssemblerParser class
	instanceVariableNames: ''!

!classDefinition: #NumberParser2 category: 'Powerlang-Core'!
Object subclass: #NumberParser2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'NumberParser2 class' category: 'Powerlang-Core'!
NumberParser2 class
	instanceVariableNames: ''!

!classDefinition: #OBeginInstruction category: 'Powerlang-Core'!
Object subclass: #OBeginInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OBeginInstruction class' category: 'Powerlang-Core'!
OBeginInstruction class
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

!classDefinition: #OValue category: 'Powerlang-Core'!
Object subclass: #OValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OValue class' category: 'Powerlang-Core'!
OValue class
	instanceVariableNames: ''!

!classDefinition: #OInstruction category: 'Powerlang-Core'!
OValue subclass: #OInstruction
	instanceVariableNames: 'prev next firstUse'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OInstruction class' category: 'Powerlang-Core'!
OInstruction class
	instanceVariableNames: ''!

!classDefinition: #OJump category: 'Powerlang-Core'!
OInstruction subclass: #OJump
	instanceVariableNames: 'target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OJump class' category: 'Powerlang-Core'!
OJump class
	instanceVariableNames: ''!

!classDefinition: #OJumpConditional category: 'Powerlang-Core'!
OInstruction subclass: #OJumpConditional
	instanceVariableNames: 'variable target implicitTarget'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OJumpConditional class' category: 'Powerlang-Core'!
OJumpConditional class
	instanceVariableNames: ''!

!classDefinition: #OptimizingNativizer category: 'Powerlang-Core'!
Object subclass: #OptimizingNativizer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'OptimizingNativizer class' category: 'Powerlang-Core'!
OptimizingNativizer class
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

!classDefinition: #SSemanticVisitor category: 'Powerlang-Core'!
SParseTreeVisitor subclass: #SSemanticVisitor
	instanceVariableNames: 'inliner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSemanticVisitor class' category: 'Powerlang-Core'!
SSemanticVisitor class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'Powerlang-Core-SExpressions'!
SParseTreeVisitor subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeEncoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeEncoder class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkCompiler category: 'Powerlang-Core'!
Object subclass: #SSmalltalkCompiler
	instanceVariableNames: 'frontend source ast result headless blocks leaf activeScript'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSmalltalkCompiler class' category: 'Powerlang-Core'!
SSmalltalkCompiler class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkParser category: 'Powerlang-Core'!
Object subclass: #SSmalltalkParser
	instanceVariableNames: 'compiler scanner token next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSmalltalkParser class' category: 'Powerlang-Core'!
SSmalltalkParser class
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

!classDefinition: #SSymbolicToken category: 'Powerlang-Core'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSymbolicToken class' category: 'Powerlang-Core'!
SSymbolicToken class
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

!classDefinition: #SDelimiterToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SDelimiterToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SEndToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SParseNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode class
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

!classDefinition: #SStringNode category: 'Powerlang-Core'!
SLiteralNode subclass: #SStringNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SStringNode class' category: 'Powerlang-Core'!
SStringNode class
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

!classDefinition: #SAssignmentNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SAssignmentNode
	instanceVariableNames: 'assignees expression operators'
	classVariableNames: 'Token'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SAssignmentNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SAssignmentNode class
	instanceVariableNames: ''!

!classDefinition: #SBraceNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SBraceNode
	instanceVariableNames: 'elements message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBraceNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SBraceNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCascadeNode
	instanceVariableNames: 'receiver messages optimized'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCascadeNode class
	instanceVariableNames: ''!

!classDefinition: #SCommentNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCommentNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCommentNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCommentNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SIdentifierNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SMessageNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SMessageNode
	instanceVariableNames: 'selector receiver arguments inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SMessageNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessageNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SMessageNode subclass: #SCascadeMessageNode
	instanceVariableNames: 'cascade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeMessageNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCascadeMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SScriptNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SScriptNode
	instanceVariableNames: 'statements arguments temporaries children scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SScriptNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SScriptNode class
	instanceVariableNames: ''!

!classDefinition: #SBlockNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SScriptNode subclass: #SBlockNode
	instanceVariableNames: 'inlined index parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBlockNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SBlockNode class
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

!classDefinition: #DMRBootstrapper category: 'Powerlang-Core-Building'!
SmalltalkBootstrapper subclass: #DMRBootstrapper
	instanceVariableNames: 'nativizer image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'DMRBootstrapper class' category: 'Powerlang-Core-Building'!
DMRBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #StackFrameCursor category: 'Powerlang-Core'!
Object subclass: #StackFrameCursor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StackFrameCursor class' category: 'Powerlang-Core'!
StackFrameCursor class
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

!classDefinition: #TonelRepository category: 'Powerlang-Core'!
Object subclass: #TonelRepository
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'TonelRepository class' category: 'Powerlang-Core'!
TonelRepository class
	instanceVariableNames: ''!

!classDefinition: #VirtualSpecies category: 'Powerlang-Core'!
Object subclass: #VirtualSpecies
	instanceVariableNames: 'spec superclass map'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'VirtualSpecies class' category: 'Powerlang-Core'!
VirtualSpecies class
	instanceVariableNames: ''!

!classDefinition: #VirtualClass category: 'Powerlang-Core'!
VirtualSpecies subclass: #VirtualClass
	instanceVariableNames: 'cvars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'VirtualClass class' category: 'Powerlang-Core'!
VirtualClass class
	instanceVariableNames: ''!

!classDefinition: #VirtualMetaclass category: 'Powerlang-Core'!
VirtualSpecies subclass: #VirtualMetaclass
	instanceVariableNames: 'class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'VirtualMetaclass class' category: 'Powerlang-Core'!
VirtualMetaclass class
	instanceVariableNames: ''!

!classDefinition: #ABI category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'ABI class' category: 'Powerlang-Core-Assembler-Intel'!
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

!classDefinition: #ISAInstruction category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #ISAInstruction
	instanceVariableNames: 'prefix mnemonic operands template'
	classVariableNames: ''
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'ISAInstruction class' category: 'Powerlang-Core-Assembler-Intel'!
ISAInstruction class
	instanceVariableNames: ''!

!classDefinition: #ISAOperand category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #ISAOperand
	instanceVariableNames: 'length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'ISAOperand class' category: 'Powerlang-Core-Assembler-Intel'!
ISAOperand class
	instanceVariableNames: ''!

!classDefinition: #ISAImmediate category: 'Powerlang-Core-Assembler-Intel'!
ISAOperand subclass: #ISAImmediate
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'ISAImmediate class' category: 'Powerlang-Core-Assembler-Intel'!
ISAImmediate class
	instanceVariableNames: ''!

!classDefinition: #MemoryOperand category: 'Powerlang-Core-Assembler-Intel'!
ISAOperand subclass: #MemoryOperand
	instanceVariableNames: 'base index scale displacement segment'
	classVariableNames: ''
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'MemoryOperand class' category: 'Powerlang-Core-Assembler-Intel'!
MemoryOperand class
	instanceVariableNames: ''!

!classDefinition: #Register category: 'Powerlang-Core-Assembler-Intel'!
ISAOperand subclass: #Register
	instanceVariableNames: 'name index family flags'
	classVariableNames: ''
	poolDictionaries: 'OperandTypeFlags Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'Register class' category: 'Powerlang-Core-Assembler-Intel'!
Register class
	instanceVariableNames: ''!

!classDefinition: #ISAOperandType category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #ISAOperandType
	instanceVariableNames: 'type length memoryLength flags'
	classVariableNames: 'Types'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'ISAOperandType class' category: 'Powerlang-Core-Assembler-Intel'!
ISAOperandType class
	instanceVariableNames: ''!

!classDefinition: #InstructionEncoder category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #InstructionEncoder
	instanceVariableNames: 'instruction spec stream prefixes rex vex opcode modrm sib displacement immediate immediate2 wordSize'
	classVariableNames: 'Cache'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'InstructionEncoder class' category: 'Powerlang-Core-Assembler-Intel'!
InstructionEncoder class
	instanceVariableNames: ''!

!classDefinition: #InstructionPrefix category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #InstructionPrefix
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: 'Prefixes'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'InstructionPrefix class' category: 'Powerlang-Core-Assembler-Intel'!
InstructionPrefix class
	instanceVariableNames: ''!

!classDefinition: #LegacyPrefix category: 'Powerlang-Core-Assembler-Intel'!
InstructionPrefix subclass: #LegacyPrefix
	instanceVariableNames: 'group value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'LegacyPrefix class' category: 'Powerlang-Core-Assembler-Intel'!
LegacyPrefix class
	instanceVariableNames: ''!

!classDefinition: #REXPrefix category: 'Powerlang-Core-Assembler-Intel'!
InstructionPrefix subclass: #REXPrefix
	instanceVariableNames: 'group value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'REXPrefix class' category: 'Powerlang-Core-Assembler-Intel'!
REXPrefix class
	instanceVariableNames: ''!

!classDefinition: #SegmentPrefix category: 'Powerlang-Core-Assembler-Intel'!
InstructionPrefix subclass: #SegmentPrefix
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'SegmentPrefix class' category: 'Powerlang-Core-Assembler-Intel'!
SegmentPrefix class
	instanceVariableNames: ''!

!classDefinition: #InstructionSpec category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #InstructionSpec
	instanceVariableNames: 'opcode primary extension instruction opEncoding properties implicitRead implicitWrite implicitUndef useful protected mode compat features atnt preferred description prefixes mnemonic operands'
	classVariableNames: 'Specs'
	poolDictionaries: 'CharacterConstants'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'InstructionSpec class' category: 'Powerlang-Core-Assembler-Intel'!
InstructionSpec class
	instanceVariableNames: ''!

!classDefinition: #OperandEncoding category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #OperandEncoding
	instanceVariableNames: 'name selectors descriptions immediate modrm'
	classVariableNames: 'Encodings'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'OperandEncoding class' category: 'Powerlang-Core-Assembler-Intel'!
OperandEncoding class
	instanceVariableNames: ''!

!classDefinition: #Assembler64 category: 'Powerlang-Core-Assembler-JIT'!
Object subclass: #Assembler64
	instanceVariableNames: 'instruction operands1 operands2 operands3 pointer immediate encoder wordSize memory labels'
	classVariableNames: 'IndexedLabels'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'Assembler64 class' category: 'Powerlang-Core-Assembler-JIT'!
Assembler64 class
	instanceVariableNames: ''!

!classDefinition: #JITAssembler64 category: 'Powerlang-Core-Assembler-JIT'!
Assembler64 subclass: #JITAssembler64
	instanceVariableNames: 'literals'
	classVariableNames: 'ExternalFunctions'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'JITAssembler64 class' category: 'Powerlang-Core-Assembler-JIT'!
JITAssembler64 class
	instanceVariableNames: ''!

!classDefinition: #NameOfSubclass category: 'Powerlang-Core-Assembler-JIT'!
Object subclass: #NameOfSubclass
	instanceVariableNames: 'stream address fixups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'NameOfSubclass class' category: 'Powerlang-Core-Assembler-JIT'!
NameOfSubclass class
	instanceVariableNames: ''!

!classDefinition: #NativeCodeReference category: 'Powerlang-Core-Assembler-JIT'!
Object subclass: #NativeCodeReference
	instanceVariableNames: 'source sourceOffset target absolute'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'NativeCodeReference class' category: 'Powerlang-Core-Assembler-JIT'!
NativeCodeReference class
	instanceVariableNames: ''!

!classDefinition: #RelocatableBuffer category: 'Powerlang-Core-Assembler-JIT'!
Object subclass: #RelocatableBuffer
	instanceVariableNames: 'stream address fixups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'RelocatableBuffer class' category: 'Powerlang-Core-Assembler-JIT'!
RelocatableBuffer class
	instanceVariableNames: ''!

!classDefinition: #RelocationFixup category: 'Powerlang-Core-Assembler-JIT'!
Object subclass: #RelocationFixup
	instanceVariableNames: 'source target relative size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-JIT'!
!classDefinition: 'RelocationFixup class' category: 'Powerlang-Core-Assembler-JIT'!
RelocationFixup class
	instanceVariableNames: ''!

!classDefinition: #Assembly category: 'Powerlang-Core-Assembler-Parser'!
Object subclass: #Assembly
	instanceVariableNames: 'labels instructions source parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Parser'!
!classDefinition: 'Assembly class' category: 'Powerlang-Core-Assembler-Parser'!
Assembly class
	instanceVariableNames: ''!

!classDefinition: #ISAInstructionPartReader category: 'Powerlang-Core-Assembler-Tools'!
Object subclass: #ISAInstructionPartReader
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISAInstructionPartReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionPartReader class
	instanceVariableNames: ''!

!classDefinition: #ISAModRMReader category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionPartReader subclass: #ISAModRMReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISAModRMReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISAModRMReader class
	instanceVariableNames: ''!

!classDefinition: #ISAOpcodeReader category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionPartReader subclass: #ISAOpcodeReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISAOpcodeReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISAOpcodeReader class
	instanceVariableNames: ''!

!classDefinition: #ISAPrefixReader category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionPartReader subclass: #ISAPrefixReader
	instanceVariableNames: 'legacy rex vex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISAPrefixReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISAPrefixReader class
	instanceVariableNames: ''!

!classDefinition: #ISASibReader category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionPartReader subclass: #ISASibReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISASibReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISASibReader class
	instanceVariableNames: ''!

!classDefinition: #ISAInstructionReader category: 'Powerlang-Core-Assembler-Tools'!
Object subclass: #ISAInstructionReader
	instanceVariableNames: 'prefixes opcode modrm sib displacement immediate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ISAInstructionReader class' category: 'Powerlang-Core-Assembler-Tools'!
ISAInstructionReader class
	instanceVariableNames: ''!

!classDefinition: #OctalStructure category: 'Powerlang-Core-Assembler-Tools'!
Object subclass: #OctalStructure
	instanceVariableNames: 'byte'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'OctalStructure class' category: 'Powerlang-Core-Assembler-Tools'!
OctalStructure class
	instanceVariableNames: ''!

!classDefinition: #ModRM category: 'Powerlang-Core-Assembler-Tools'!
OctalStructure subclass: #ModRM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'ModRM class' category: 'Powerlang-Core-Assembler-Tools'!
ModRM class
	instanceVariableNames: ''!

!classDefinition: #SIB category: 'Powerlang-Core-Assembler-Tools'!
OctalStructure subclass: #SIB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Tools'!
!classDefinition: 'SIB class' category: 'Powerlang-Core-Assembler-Tools'!
SIB class
	instanceVariableNames: ''!

!classDefinition: #ImageSegmentBuilder category: 'Powerlang-Core-Building'!
Object subclass: #ImageSegmentBuilder
	instanceVariableNames: 'index classes methods globals runtime image module objects temporaries'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'ImageSegmentBuilder class' category: 'Powerlang-Core-Building'!
ImageSegmentBuilder class
	instanceVariableNames: ''!

!classDefinition: #KernelSegmentBuilder category: 'Powerlang-Core-Building'!
ImageSegmentBuilder subclass: #KernelSegmentBuilder
	instanceVariableNames: 'smalltalk hash symbols'
	classVariableNames: 'KernelSpec'
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'KernelSegmentBuilder class' category: 'Powerlang-Core-Building'!
KernelSegmentBuilder class
	instanceVariableNames: ''!

!classDefinition: #LibrarySegmentBuilder category: 'Powerlang-Core-Building'!
ImageSegmentBuilder subclass: #LibrarySegmentBuilder
	instanceVariableNames: 'kernelBuilder requiredSpecs imports spec'
	classVariableNames: 'KernelSpec'
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'LibrarySegmentBuilder class' category: 'Powerlang-Core-Building'!
LibrarySegmentBuilder class
	instanceVariableNames: ''!

!classDefinition: #ImageSegmentWriter category: 'Powerlang-Core-Building'!
Object subclass: #ImageSegmentWriter
	instanceVariableNames: 'stream objects space nextHash offsets size base module wordSize roots index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'ImageSegmentWriter class' category: 'Powerlang-Core-Building'!
ImageSegmentWriter class
	instanceVariableNames: ''!

!classDefinition: #LookupNativizer category: 'Powerlang-Core-Building'!
Object subclass: #LookupNativizer
	instanceVariableNames: 'bootstrapper methods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'LookupNativizer class' category: 'Powerlang-Core-Building'!
LookupNativizer class
	instanceVariableNames: ''!

!classDefinition: #ObjectMap category: 'Powerlang-Core-Building'!
Object subclass: #ObjectMap
	instanceVariableNames: 'behavior spec'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'ObjectMap class' category: 'Powerlang-Core-Building'!
ObjectMap class
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

!classDefinition: #ByteObjectMap category: 'Powerlang-Core-Building'!
ObjectMap subclass: #ByteObjectMap
	instanceVariableNames: 'bytes hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'ByteObjectMap class' category: 'Powerlang-Core-Building'!
ByteObjectMap class
	instanceVariableNames: ''!

!classDefinition: #ShapeMap category: 'Powerlang-Core-Metaphysics'!
ObjectMap subclass: #ShapeMap
	instanceVariableNames: 'shapes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ShapeMap class' category: 'Powerlang-Core-Metaphysics'!
ShapeMap class
	instanceVariableNames: ''!

!classDefinition: #MethodEvaluator category: 'Powerlang-Core-Emulation'!
Object subclass: #MethodEvaluator
	instanceVariableNames: 'parent method receiver arguments temporaries environment returnValue closures blockAstcodes system returning isBlock'
	classVariableNames: 'Undermessages'
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Emulation'!
!classDefinition: 'MethodEvaluator class' category: 'Powerlang-Core-Emulation'!
MethodEvaluator class
	instanceVariableNames: ''!

!classDefinition: #VirtualSmalltalkImage category: 'Powerlang-Core-Emulation'!
Object subclass: #VirtualSmalltalkImage
	instanceVariableNames: 'nilObj falseObj trueObj wordSize minSMI maxSMI classes metaclasses kernel identityMap'
	classVariableNames: 'KernelSpec'
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Emulation'!
!classDefinition: 'VirtualSmalltalkImage class' category: 'Powerlang-Core-Emulation'!
VirtualSmalltalkImage class
	instanceVariableNames: ''!

!classDefinition: #VirtualSmalltalkRuntime category: 'Powerlang-Core-Emulation'!
Object subclass: #VirtualSmalltalkRuntime
	instanceVariableNames: 'image frames methodCache symbolCache smallintBehavior lastHash overrides globals virtualSpecies'
	classVariableNames: 'Undermessages'
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Emulation'!
!classDefinition: 'VirtualSmalltalkRuntime class' category: 'Powerlang-Core-Emulation'!
VirtualSmalltalkRuntime class
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
	instanceVariableNames: 'falseObj'!

!classDefinition: #BootstrappedPstBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #BootstrappedPstBridge
	instanceVariableNames: 'bootstrapper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'BootstrappedPstBridge class' category: 'Powerlang-Core-Metaphysics'!
BootstrappedPstBridge class
	instanceVariableNames: ''!

!classDefinition: #CuisBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #CuisBridge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'CuisBridge class' category: 'Powerlang-Core-Metaphysics'!
CuisBridge class
	instanceVariableNames: ''!

!classDefinition: #CuisStBridge category: 'Powerlang-Core-Metaphysics'!
SmalltalkBridge subclass: #CuisStBridge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'CuisStBridge class' category: 'Powerlang-Core-Metaphysics'!
CuisStBridge class
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

!classDefinition: #PstFrameHandle category: 'Powerlang-Core'!
Handle subclass: #PstFrameHandle
	instanceVariableNames: 'frame'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'PstFrameHandle class' category: 'Powerlang-Core'!
PstFrameHandle class
	instanceVariableNames: ''!

!classDefinition: #CuisStFrameHandle category: 'Powerlang-Core-Metaphysics'!
Handle subclass: #CuisStFrameHandle
	instanceVariableNames: 'frame'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'CuisStFrameHandle class' category: 'Powerlang-Core-Metaphysics'!
CuisStFrameHandle class
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

!classDefinition: #MethodLookup category: 'Powerlang-Core-Metaphysics'!
Object subclass: #MethodLookup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'MethodLookup class' category: 'Powerlang-Core-Metaphysics'!
MethodLookup class
	instanceVariableNames: ''!

!classDefinition: #CuisLookup category: 'Powerlang-Core-Metaphysics'!
MethodLookup subclass: #CuisLookup
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'CuisLookup class' category: 'Powerlang-Core-Metaphysics'!
CuisLookup class
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

!classDefinition: #CuisObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #CuisObjectFormat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'CuisObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
CuisObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #DmrObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #DmrObjectFormat
	instanceVariableNames: ''
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

!classDefinition: #SExpressionInterpreter category: 'Powerlang-Core-Metaphysics'!
Object subclass: #SExpressionInterpreter
	instanceVariableNames: 'receiver arguments temporaries returned returnValue method parent gateBuilder blockAstcodes environment'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'SExpressionInterpreter class' category: 'Powerlang-Core-Metaphysics'!
SExpressionInterpreter class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkInterpreter category: 'Powerlang-Core'!
SExpressionInterpreter subclass: #SmalltalkInterpreter
	instanceVariableNames: 'localRuntime'
	classVariableNames: 'Underprimitives'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SmalltalkInterpreter class' category: 'Powerlang-Core'!
SmalltalkInterpreter class
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

!classDefinition: #StackFrameMirror category: 'Powerlang-Core'!
Mirror subclass: #StackFrameMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'FrameOffsets'
	category: 'Powerlang-Core'!
!classDefinition: 'StackFrameMirror class' category: 'Powerlang-Core'!
StackFrameMirror class
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

!classDefinition: #SpeciesMirror category: 'Powerlang-Core'!
ObjectMirror subclass: #SpeciesMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'SpeciesFormatMasks'
	category: 'Powerlang-Core'!
!classDefinition: 'SpeciesMirror class' category: 'Powerlang-Core'!
SpeciesMirror class
	instanceVariableNames: ''!

!classDefinition: #ClassMirror category: 'Powerlang-Core-Mirrors'!
SpeciesMirror subclass: #ClassMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'ClassMirror class' category: 'Powerlang-Core-Mirrors'!
ClassMirror class
	instanceVariableNames: ''!

!classDefinition: #MetaclassMirror category: 'Powerlang-Core-Mirrors'!
SpeciesMirror subclass: #MetaclassMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'MetaclassMirror class' category: 'Powerlang-Core-Mirrors'!
MetaclassMirror class
	instanceVariableNames: ''!

!classDefinition: #AssociationMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #AssociationMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'AssociationMirror class' category: 'Powerlang-Core-Mirrors'!
AssociationMirror class
	instanceVariableNames: ''!

!classDefinition: #BehaviorMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #BehaviorMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'BehaviorMirror class' category: 'Powerlang-Core-Mirrors'!
BehaviorMirror class
	instanceVariableNames: ''!

!classDefinition: #ClosureMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #ClosureMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'ClosureMirror class' category: 'Powerlang-Core-Mirrors'!
ClosureMirror class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #CompiledBlockMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledBlockFormatMasks'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledBlockMirror class' category: 'Powerlang-Core-Mirrors'!
CompiledBlockMirror class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #CompiledMethodMirror
	instanceVariableNames: ''
	classVariableNames: 'Flags'
	poolDictionaries: 'CompiledMethodFormatMasks'
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledMethodMirror class' category: 'Powerlang-Core-Mirrors'!
CompiledMethodMirror class
	instanceVariableNames: ''!

!classDefinition: #DictionaryMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #DictionaryMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'DictionaryMirror class' category: 'Powerlang-Core-Mirrors'!
DictionaryMirror class
	instanceVariableNames: ''!

!classDefinition: #MethodDictionaryMirror category: 'Powerlang-Core-Mirrors'!
ObjectMirror subclass: #MethodDictionaryMirror
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'MethodDictionaryMirror class' category: 'Powerlang-Core-Mirrors'!
MethodDictionaryMirror class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #BinaryMessageNativizer
	instanceVariableNames: 'message assembler nativizer done failed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'BinaryMessageNativizer class' category: 'Powerlang-Core-Nativization'!
BinaryMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #InlinedMessageNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #InlinedMessageNativizer
	instanceVariableNames: 'message assembler nativizer start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlinedMessageNativizer class' category: 'Powerlang-Core-Nativization'!
InlinedMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #MessageLinker category: 'Powerlang-Core-Nativization'!
Object subclass: #MessageLinker
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'MessageLinker class' category: 'Powerlang-Core-Nativization'!
MessageLinker class
	instanceVariableNames: ''!

!classDefinition: #CompositeMessageLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #CompositeMessageLinker
	instanceVariableNames: 'candidates'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'CompositeMessageLinker class' category: 'Powerlang-Core-Nativization'!
CompositeMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #HaltingSend category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #HaltingSend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'HaltingSend class' category: 'Powerlang-Core-Nativization'!
HaltingSend class
	instanceVariableNames: ''!

!classDefinition: #InlineMessageLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #InlineMessageLinker
	instanceVariableNames: 'assembler map'
	classVariableNames: ''
	poolDictionaries: 'InlineMessageLinkerFlags Registers'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinker class' category: 'Powerlang-Core-Nativization'!
InlineMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #InvokeLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #InvokeLinker
	instanceVariableNames: 'invoker sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InvokeLinker class' category: 'Powerlang-Core-Nativization'!
InvokeLinker class
	instanceVariableNames: ''!

!classDefinition: #LookupLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #LookupLinker
	instanceVariableNames: 'lookup lookupSuper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LookupLinker class' category: 'Powerlang-Core-Nativization'!
LookupLinker class
	instanceVariableNames: ''!

!classDefinition: #LazyLinker category: 'Powerlang-Core-Nativization'!
LookupLinker subclass: #LazyLinker
	instanceVariableNames: 'sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LazyLinker class' category: 'Powerlang-Core-Nativization'!
LazyLinker class
	instanceVariableNames: ''!

!classDefinition: #NativizationEnvironment category: 'Powerlang-Core-Nativization'!
Object subclass: #NativizationEnvironment
	instanceVariableNames: 'optimizedMethods invokedMethods inlinedMethods messageLinker globals writeBarrier abi safepointCheck cachedNativizer busy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativizationEnvironment class' category: 'Powerlang-Core-Nativization'!
NativizationEnvironment class
	instanceVariableNames: ''!

!classDefinition: #Opcode category: 'Powerlang-Core-Nativization'!
Object subclass: #Opcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'Opcode class' category: 'Powerlang-Core-Nativization'!
Opcode class
	instanceVariableNames: ''!

!classDefinition: #StackOpcode category: 'Powerlang-Core'!
Opcode subclass: #StackOpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StackOpcode class' category: 'Powerlang-Core'!
StackOpcode class
	instanceVariableNames: ''!

!classDefinition: #PopRopcode category: 'Powerlang-Core-Nativization'!
StackOpcode subclass: #PopRopcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'PopRopcode class' category: 'Powerlang-Core-Nativization'!
PopRopcode class
	instanceVariableNames: ''!

!classDefinition: #PushRopcode category: 'Powerlang-Core-Nativization'!
StackOpcode subclass: #PushRopcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'PushRopcode class' category: 'Powerlang-Core-Nativization'!
PushRopcode class
	instanceVariableNames: ''!

!classDefinition: #EnsureSmallIntegerOpcode category: 'Powerlang-Core-Nativization'!
Opcode subclass: #EnsureSmallIntegerOpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureSmallIntegerOpcode class' category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode class
	instanceVariableNames: ''!

!classDefinition: #EnsureASmallInteger category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode subclass: #EnsureASmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureASmallInteger class' category: 'Powerlang-Core-Nativization'!
EnsureASmallInteger class
	instanceVariableNames: ''!

!classDefinition: #EnsureRSmallInteger category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode subclass: #EnsureRSmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureRSmallInteger class' category: 'Powerlang-Core-Nativization'!
EnsureRSmallInteger class
	instanceVariableNames: ''!

!classDefinition: #LoadAOpcode category: 'Powerlang-Core-Nativization'!
Opcode subclass: #LoadAOpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAOpcode class' category: 'Powerlang-Core-Nativization'!
LoadAOpcode class
	instanceVariableNames: ''!

!classDefinition: #LoadAvisitingArgument category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAvisitingArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAvisitingArgument class' category: 'Powerlang-Core-Nativization'!
LoadAvisitingArgument class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithFalse category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithFalse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithFalse class' category: 'Powerlang-Core-Nativization'!
LoadAwithFalse class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithInstVar category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithInstVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithInstVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithInstVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithLiteralVar category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithLiteralVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithLiteralVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithLiteralVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithAssocVar category: 'Powerlang-Core-Nativization'!
LoadAwithLiteralVar subclass: #LoadAwithAssocVar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithAssocVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithAssocVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithClassVar category: 'Powerlang-Core-Nativization'!
LoadAwithAssocVar subclass: #LoadAwithClassVar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithClassVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithClassVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithGlobal category: 'Powerlang-Core-Nativization'!
LoadAwithAssocVar subclass: #LoadAwithGlobal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithGlobal class' category: 'Powerlang-Core-Nativization'!
LoadAwithGlobal class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithPoolVar category: 'Powerlang-Core-Nativization'!
LoadAwithAssocVar subclass: #LoadAwithPoolVar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithPoolVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithPoolVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithConstPoolVar category: 'Powerlang-Core-Nativization'!
LoadAwithLiteralVar subclass: #LoadAwithConstPoolVar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithConstPoolVar class' category: 'Powerlang-Core-Nativization'!
LoadAwithConstPoolVar class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithLiteral category: 'Powerlang-Core-Nativization'!
LoadAwithLiteralVar subclass: #LoadAwithLiteral
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithLiteral class' category: 'Powerlang-Core-Nativization'!
LoadAwithLiteral class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithLocal category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithLocal
	instanceVariableNames: 'index environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithLocal class' category: 'Powerlang-Core-Nativization'!
LoadAwithLocal class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithArgument category: 'Powerlang-Core-Nativization'!
LoadAwithLocal subclass: #LoadAwithArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithArgument class' category: 'Powerlang-Core-Nativization'!
LoadAwithArgument class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithTemporary category: 'Powerlang-Core-Nativization'!
LoadAwithLocal subclass: #LoadAwithTemporary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithTemporary class' category: 'Powerlang-Core-Nativization'!
LoadAwithTemporary class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithNil category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithNil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithNil class' category: 'Powerlang-Core-Nativization'!
LoadAwithNil class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithSelf category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithSelf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithSelf class' category: 'Powerlang-Core-Nativization'!
LoadAwithSelf class
	instanceVariableNames: ''!

!classDefinition: #LoadAwithTrue category: 'Powerlang-Core-Nativization'!
LoadAOpcode subclass: #LoadAwithTrue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadAwithTrue class' category: 'Powerlang-Core-Nativization'!
LoadAwithTrue class
	instanceVariableNames: ''!

!classDefinition: #LoadExpressionOpcode category: 'Powerlang-Core-Nativization'!
Opcode subclass: #LoadExpressionOpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadExpressionOpcode class' category: 'Powerlang-Core-Nativization'!
LoadExpressionOpcode class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithReceiver category: 'Powerlang-Core-Nativization'!
LoadExpressionOpcode subclass: #LoadRwithReceiver
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithReceiver class' category: 'Powerlang-Core-Nativization'!
LoadRwithReceiver class
	instanceVariableNames: ''!

!classDefinition: #LoadROpcode category: 'Powerlang-Core-Nativization'!
Opcode subclass: #LoadROpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadROpcode class' category: 'Powerlang-Core-Nativization'!
LoadROpcode class
	instanceVariableNames: ''!

!classDefinition: #LoadRvisitingReceiver category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRvisitingReceiver
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRvisitingReceiver class' category: 'Powerlang-Core-Nativization'!
LoadRvisitingReceiver class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithFalse category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithFalse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithFalse class' category: 'Powerlang-Core-Nativization'!
LoadRwithFalse class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithInstVar category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithInstVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithInstVar class' category: 'Powerlang-Core-Nativization'!
LoadRwithInstVar class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithLocal category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithLocal
	instanceVariableNames: 'index environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithLocal class' category: 'Powerlang-Core-Nativization'!
LoadRwithLocal class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithArgument category: 'Powerlang-Core-Nativization'!
LoadRwithLocal subclass: #LoadRwithArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithArgument class' category: 'Powerlang-Core-Nativization'!
LoadRwithArgument class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithTemporary category: 'Powerlang-Core-Nativization'!
LoadRwithLocal subclass: #LoadRwithTemporary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithTemporary class' category: 'Powerlang-Core-Nativization'!
LoadRwithTemporary class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithNil category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithNil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithNil class' category: 'Powerlang-Core-Nativization'!
LoadRwithNil class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithSelf category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithSelf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithSelf class' category: 'Powerlang-Core-Nativization'!
LoadRwithSelf class
	instanceVariableNames: ''!

!classDefinition: #LoadRwithTrue category: 'Powerlang-Core-Nativization'!
LoadROpcode subclass: #LoadRwithTrue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LoadRwithTrue class' category: 'Powerlang-Core-Nativization'!
LoadRwithTrue class
	instanceVariableNames: ''!

!classDefinition: #SExpressionNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #SExpressionNativizer
	instanceVariableNames: 'environment assembler method remainingBlocks safepointCheck mainCode stackCount fallbacks activeScript'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SExpressionNativizer class' category: 'Powerlang-Core-Nativization'!
SExpressionNativizer class
	instanceVariableNames: ''!

!classDefinition: #SendSite category: 'Powerlang-Core-Nativization'!
Object subclass: #SendSite
	instanceVariableNames: 'instructions selector cache tally format'
	classVariableNames: ''
	poolDictionaries: 'SendSiteFlags'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSite class' category: 'Powerlang-Core-Nativization'!
SendSite class
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

!classDefinition: #StaticBinder category: 'Powerlang-Core'!
IdentifierBinder subclass: #StaticBinder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StaticBinder class' category: 'Powerlang-Core'!
StaticBinder class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinder category: 'Powerlang-Core-SCompiler'!
IdentifierBinder subclass: #DynamicBinder
	instanceVariableNames: 'type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'DynamicBinder class' category: 'Powerlang-Core-SCompiler'!
DynamicBinder class
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

!classDefinition: #StackEnvironment category: 'Powerlang-Core'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'StackEnvironment class' category: 'Powerlang-Core'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArgumentEnvironment category: 'Powerlang-Core-SCompiler'!
StackEnvironment subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArgumentEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArgumentEnvironment class
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

!classDefinition: #ArrayEnvironment category: 'Powerlang-Core-SCompiler'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArrayEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArrayEnvironment class
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

!classDefinition: #SCompilationResult category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompilationResult
	instanceVariableNames: 'compiler error ast method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompilationResult class' category: 'Powerlang-Core-SCompiler'!
SCompilationResult class
	instanceVariableNames: ''!

!classDefinition: #SCompiledBlock category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompiledBlock
	instanceVariableNames: 'format nativeCode method'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledBlock class' category: 'Powerlang-Core-SCompiler'!
SCompiledBlock class
	instanceVariableNames: ''!

!classDefinition: #SCompiledBlockBuilder category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompiledBlockBuilder
	instanceVariableNames: 'scope node'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledBlockBuilder class' category: 'Powerlang-Core-SCompiler'!
SCompiledBlockBuilder class
	instanceVariableNames: ''!

!classDefinition: #SCompiler category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompiler
	instanceVariableNames: 'errorHandler result class pools namespace'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiler class' category: 'Powerlang-Core-SCompiler'!
SCompiler class
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
	instanceVariableNames: 'species pseudo ivars cvars pools globals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'MethodScope class' category: 'Powerlang-Core-SCompiler'!
MethodScope class
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

!classDefinition: #UnresolvedBinding category: 'Powerlang-Core'!
Binding subclass: #UnresolvedBinding
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'UnresolvedBinding class' category: 'Powerlang-Core'!
UnresolvedBinding class
	instanceVariableNames: ''!

!classDefinition: #AssociationBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #AssociationBinding
	instanceVariableNames: 'association'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'AssociationBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding class
	instanceVariableNames: ''!

!classDefinition: #ClassVarBinding category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding subclass: #ClassVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'ClassVarBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
ClassVarBinding class
	instanceVariableNames: ''!

!classDefinition: #GlobalBinding category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding subclass: #GlobalBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'GlobalBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
GlobalBinding class
	instanceVariableNames: ''!

!classDefinition: #ClassBinding category: 'Powerlang-Core-SCompiler-Bindings'!
GlobalBinding subclass: #ClassBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'ClassBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
ClassBinding class
	instanceVariableNames: ''!

!classDefinition: #PoolVarBinding category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding subclass: #PoolVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'PoolVarBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
PoolVarBinding class
	instanceVariableNames: ''!

!classDefinition: #ConstantPoolBinding category: 'Powerlang-Core-SCompiler-Bindings'!
PoolVarBinding subclass: #ConstantPoolBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'ConstantPoolBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
ConstantPoolBinding class
	instanceVariableNames: ''!

!classDefinition: #InstVarBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #InstVarBinding
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'InstVarBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
InstVarBinding class
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

!classDefinition: #TrueBinding category: 'Powerlang-Core'!
LiteralBinding subclass: #TrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'TrueBinding class' category: 'Powerlang-Core'!
TrueBinding class
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

!classDefinition: #TemporaryBinding category: 'Powerlang-Core'!
LocalBinding subclass: #TemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'TemporaryBinding class' category: 'Powerlang-Core'!
TemporaryBinding class
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

!classDefinition: #SelfBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'SelfBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SuperBinding category: 'Powerlang-Core'!
SelfBinding subclass: #SuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SuperBinding class' category: 'Powerlang-Core'!
SuperBinding class
	instanceVariableNames: ''!

!classDefinition: #NilBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Object subclass: #NilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'NilBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
NilBinding class
	instanceVariableNames: ''!

!classDefinition: #AstcodeDecoder category: 'Powerlang-Core-SExpressions'!
Object subclass: #AstcodeDecoder
	instanceVariableNames: 'method stream nodeTypes bindingTypes'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeDecoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeDecoder class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageOptimizer category: 'Powerlang-Core-SExpressions'!
Object subclass: #BinaryMessageOptimizer
	instanceVariableNames: 'emitter message selector receiver argument'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'BinaryMessageOptimizer class' category: 'Powerlang-Core-SExpressions'!
BinaryMessageOptimizer class
	instanceVariableNames: ''!

!classDefinition: #SBinding category: 'Powerlang-Core-SExpressions'!
Object subclass: #SBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SBinding class' category: 'Powerlang-Core-SExpressions'!
SBinding class
	instanceVariableNames: ''!

!classDefinition: #SLiteralBinding category: 'Powerlang-Core'!
SBinding subclass: #SLiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteralBinding class' category: 'Powerlang-Core'!
SLiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #STrueBinding category: 'Powerlang-Core'!
SLiteralBinding subclass: #STrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'STrueBinding class' category: 'Powerlang-Core'!
STrueBinding class
	instanceVariableNames: ''!

!classDefinition: #SFalseBinding category: 'Powerlang-Core-SExpressions'!
SLiteralBinding subclass: #SFalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SFalseBinding class' category: 'Powerlang-Core-SExpressions'!
SFalseBinding class
	instanceVariableNames: ''!

!classDefinition: #SLocalBinding category: 'Powerlang-Core'!
SBinding subclass: #SLocalBinding
	instanceVariableNames: 'position environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLocalBinding class' category: 'Powerlang-Core'!
SLocalBinding class
	instanceVariableNames: ''!

!classDefinition: #STemporaryBinding category: 'Powerlang-Core'!
SLocalBinding subclass: #STemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'STemporaryBinding class' category: 'Powerlang-Core'!
STemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SArgumentBinding category: 'Powerlang-Core-SExpressions'!
SLocalBinding subclass: #SArgumentBinding
	instanceVariableNames: 'inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SArgumentBinding class' category: 'Powerlang-Core-SExpressions'!
SArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #SSelfBinding category: 'Powerlang-Core'!
SBinding subclass: #SSelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSelfBinding class' category: 'Powerlang-Core'!
SSelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SSuperBinding category: 'Powerlang-Core'!
SSelfBinding subclass: #SSuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SSuperBinding class' category: 'Powerlang-Core'!
SSuperBinding class
	instanceVariableNames: ''!

!classDefinition: #SAssociationBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SAssociationBinding
	instanceVariableNames: 'index association'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SAssociationBinding class' category: 'Powerlang-Core-SExpressions'!
SAssociationBinding class
	instanceVariableNames: ''!

!classDefinition: #SPoolVarBinding category: 'Powerlang-Core'!
SAssociationBinding subclass: #SPoolVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SPoolVarBinding class' category: 'Powerlang-Core'!
SPoolVarBinding class
	instanceVariableNames: ''!

!classDefinition: #SConstantPoolBinding category: 'Powerlang-Core-SExpressions'!
SPoolVarBinding subclass: #SConstantPoolBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SConstantPoolBinding class' category: 'Powerlang-Core-SExpressions'!
SConstantPoolBinding class
	instanceVariableNames: ''!

!classDefinition: #SClassVarBinding category: 'Powerlang-Core-SExpressions'!
SAssociationBinding subclass: #SClassVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SClassVarBinding class' category: 'Powerlang-Core-SExpressions'!
SClassVarBinding class
	instanceVariableNames: ''!

!classDefinition: #SGlobalBinding category: 'Powerlang-Core-SExpressions'!
SAssociationBinding subclass: #SGlobalBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SGlobalBinding class' category: 'Powerlang-Core-SExpressions'!
SGlobalBinding class
	instanceVariableNames: ''!

!classDefinition: #SClassBinding category: 'Powerlang-Core-SExpressions'!
SGlobalBinding subclass: #SClassBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SClassBinding class' category: 'Powerlang-Core-SExpressions'!
SClassBinding class
	instanceVariableNames: ''!

!classDefinition: #SInstVarBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SInstVarBinding
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SInstVarBinding class' category: 'Powerlang-Core-SExpressions'!
SInstVarBinding class
	instanceVariableNames: ''!

!classDefinition: #SExpression category: 'Powerlang-Core-SExpressions'!
Object subclass: #SExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpression class' category: 'Powerlang-Core-SExpressions'!
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

!classDefinition: #SLiteral category: 'Powerlang-Core'!
SLiteralVar subclass: #SLiteral
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SLiteral class' category: 'Powerlang-Core'!
SLiteral class
	instanceVariableNames: ''!

!classDefinition: #SMessage category: 'Powerlang-Core'!
SExpression subclass: #SMessage
	instanceVariableNames: 'selector receiver arguments opcodes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SMessage class' category: 'Powerlang-Core'!
SMessage class
	instanceVariableNames: ''!

!classDefinition: #SAssignment category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SAssignment
	instanceVariableNames: 'assignees expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SAssignment class' category: 'Powerlang-Core-SExpressions'!
SAssignment class
	instanceVariableNames: ''!

!classDefinition: #SCascade category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SCascade
	instanceVariableNames: 'receiver messages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SCascade class' category: 'Powerlang-Core-SExpressions'!
SCascade class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessage category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SCascadeMessage
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SCascadeMessage class' category: 'Powerlang-Core-SExpressions'!
SCascadeMessage class
	instanceVariableNames: ''!

!classDefinition: #SIdentifier category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SIdentifier
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SIdentifier class' category: 'Powerlang-Core-SExpressions'!
SIdentifier class
	instanceVariableNames: ''!

!classDefinition: #SScript category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SScript
	instanceVariableNames: 'statements compiledCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SScript class' category: 'Powerlang-Core-SExpressions'!
SScript class
	instanceVariableNames: ''!

!classDefinition: #SBlock category: 'Powerlang-Core-SExpressions'!
SScript subclass: #SBlock
	instanceVariableNames: 'index capturedVariables inlinedArgs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SBlock class' category: 'Powerlang-Core-SExpressions'!
SBlock class
	instanceVariableNames: ''!

!classDefinition: #Subject category: 'Powerlang-Core'!
ProtoObject subclass: #Subject
	instanceVariableNames: 'gate'
	classVariableNames: 'Counts'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'Subject class' category: 'Powerlang-Core'!
Subject class
	instanceVariableNames: ''!


!OperandTypeFlags commentStamp: '<historical>' prior: 0!
WARNING: x86 specific!

!SCalloutMethod commentStamp: '<historical>' prior: 0!
#type : #variable,!

!SClosure commentStamp: '<historical>' prior: 0!
#type : #variable,!

!SFFIDescriptor commentStamp: '<historical>' prior: 0!
#type : #bytes!

!StorageReadError commentStamp: '<historical>' prior: 0!
?? Subclass Error ??!

!AssemblerGrammar commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!AssemblerParser commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!OOperand commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.
!

!OValue commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!OInstruction commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.
!

!OJump commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!OJumpConditional commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!Storage commentStamp: '<historical>' prior: 0!
?? Subclass Error ??!

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

!ISAOperand commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISAImmediate commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

NB: x86 specific!

!MemoryOperand commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

NB: Intel specific!

!Register commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.
!

!ISAOperandType commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!InstructionEncoder commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific
!

!InstructionPrefix commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!SegmentPrefix commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!InstructionSpec commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!Assembler64 commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!JITAssembler64 commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: x86 specific!

!ISAInstructionPartReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.
!

!ISAModRMReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISAOpcodeReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISAPrefixReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISASibReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!ISAInstructionReader commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!OctalStructure commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.!

!SIB commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
    See AucernaLicence.txt (MIT license) in package directory.

Nota Bene: Intel/x86 specific!

!ShapeMap commentStamp: '<historical>' prior: 0!
I represent the shape of objects as used by mirrors. Mirrors
access instance variables by name, asking the runtime for
the offsets of the instVars.!

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

!SExpression commentStamp: '<historical>' prior: 0!
I am a Smalltalk expression, the minimal unit of Smalltalk semantics, expressed as a tree.
!

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:17:23'!
format 

	^format! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 4/7/2021 14:22:05'!
printOn: aStream 

	aStream nextPutAll: self classBinding name; nextPutAll: '>>'; print: selector; cr.
	source
		ifNotNil: [ aStream
				cr;
				nextPutAll: source ]! !

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

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:56:49'!
printOn: aStream 
"
	prev printBackwardOn: aStream.
	aStrem nextPutAll: '-> '
"
	aStream
		nextPutAll: self basicPrintString
"	next printForwardOn: aStream cr"! !

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

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:41:14'!
name 

	^spec name! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:42:11'!
superclass 

	^superclass! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:42:20'!
superclass: aVirtualClass 

	superclass := aVirtualClass! !

!VirtualSpecies methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:41:37'!
printOn: aStream 

	aStream nextPut: $<; print: spec; nextPut: $>! !

!VirtualClass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:43:12'!
allInstVarNames 

	^ spec allInstVarNames! !

!VirtualClass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:43:54'!
classPool 

	^cvars ! !

!VirtualClass methodsFor: 'enumerating' stamp: 'KenD 4/8/2021 12:46:13'!
withAllSuperclasses 

	^ superclass ifNil:
	 [ OrderedCollection with: self ]
		ifNotNil:  [ superclass withAllSuperclasses
				addFirst: self;
				yourself ]! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:19:18'!
classPool 

	^ class classPool! !

!VirtualMetaclass methodsFor: 'enumerating' stamp: 'KenD 4/8/2021 14:18:59'!
allInstVarNames 

	^(spec environment at: #Class) allInstVarNames, spec allInstVarNames! !

!ISAInstruction methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:22:02'!
printOn: aStream 

	aStream nextPutAll: mnemonic.
	operands isNil ifTrue: [^self].
	operands
		do: [:op | aStream space; nextPutAll: op asString]
		separatedBy: [aStream nextPut: $,]! !

!ISAImmediate methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:03:25'!
printOn: aStream 
	| v |
	v := value isNil ifTrue: ['???'] ifFalse: [value hex].
	aStream nextPutAll: v! !

!MemoryOperand methodsFor: 'printing' stamp: 'KenD 3/19/2021 16:39:24'!
printOn: aStream 
	| sign displ |
	aStream nextPutAll: self lengthString; nextPutAll: ' ['.
	segment notNil ifTrue: [
		segment printOn: aStream.
		aStream nextPut: $:].
	base notNil ifTrue: [base printOn: aStream].
	index notNil ifTrue: [
		base notNil ifTrue: [aStream nextPutAll: ' + '].
		index printOn: aStream.
		scale isNil
			ifFalse: [aStream nextPutAll: ' * '; nextPutAll: scale asString]].
	displ := self displacementValue.
	displ !!= 0 ifTrue: [
		(base notNil or: [index notNil]) ifTrue: [
			sign := displ > 0 ifTrue: [' + '] ifFalse: [' - '].
			aStream nextPutAll: sign].
		aStream nextPutAll: '0x'; nextPutAll: displ abs hex].
	aStream nextPut: $]! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:24:17'!
name 

	^name! !

!Register methodsFor: 'printing' stamp: 'KenD 3/28/2021 15:25:31'!
printOn: aStream 

	name isNil ifTrue: [^super printOn: aStream].
	aStream nextPutAll: name! !

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

!InstructionSpec methodsFor: 'printing' stamp: 'KenD 3/7/2021 13:16:59'!
printOn: aStream 

	instruction isNil ifTrue: [^super printOn: aStream].
	aStream nextPutAll: instruction! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:34:55'!
name 

	^name! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:36:17'!
selectors 

	^selectors! !

!OperandEncoding methodsFor: 'printing' stamp: 'KenD 4/25/2021 11:36:00'!
printOn: aStream 

	name isNil ifTrue: [^super printOn: aStream].
	aStream nextPutAll: name! !

!Assembler64 methodsFor: 'printing' stamp: 'KenD 2/24/2021 16:13:13'!
printOn: aStream 

	aStream print: self class; cr; cr;
		nextPutAll: memory bytes disassembledAmd64! !

!NativeCodeReference methodsFor: 'printing' stamp: 'KenD 3/20/2021 15:18:27'!
printOn: aStream 

	aStream nextPutAll: 'Ref to '; print: target! !

!RelocationFixup methodsFor: 'printing' stamp: 'KenD 4/24/2021 12:46:29'!
printOn: aStream 

	aStream
		nextPutAll: self class name;
		nextPut: $:;
		space;
		nextPutAll: target printString! !

!ISAOpcodeReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:38:44'!
printOn: aStream 

	contents contents
		do: [:byte | aStream nextPutAll: byte hex]
		separatedBy: [aStream nextPut: $.]
! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:43:47'!
printOn: aStream 

	self printLegacyOn: aStream.
	legacy size > 0 ifTrue: [aStream space].
	rex notNil ifTrue: [
		self printRexOn: aStream.
		aStream space].
	vex notNil ifTrue: [self printVexOn: aStream]! !

!ISAInstructionReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:33:03'!
printOn: aStream 

	aStream nextPutAll: prefixes.
	prefixes size > 0 ifTrue: [aStream nextPutAll: '| '].
	aStream nextPutAll: opcode.
	aStream nextPutAll: ' | '.
	modrm notNil ifTrue: [modrm printOn: aStream].
	sib notNil ifTrue: [
		aStream nextPutAll: ' | '.
		sib printOn: aStream].
	displacement notNil ifTrue: [
		aStream nextPutAll: ' |'.
		displacement do: [:byte | | hex |
			hex := byte hex.
			hex size = 1 ifTrue: [hex := '0' , hex].
			aStream space; nextPutAll: hex]].
	immediate notNil ifTrue: [
		aStream nextPutAll: ' |'.
		immediate do: [:byte | | hex |
			hex := byte hex.
			hex size = 1 ifTrue: [hex := '0' , hex].
			aStream space; nextPutAll: hex]]
! !

!OctalStructure methodsFor: 'printing' stamp: 'KenD 3/20/2021 15:01:56'!
printOn: aStream 
	| hi mid lo |
	hi := self hi printPaddedWith: $0 to: 2 base: 2.
	mid := self mid printPaddedWith: $0 to: 3 base: 2.
	lo := self lo printPaddedWith: $0 to: 3 base: 2.
	aStream
		nextPutAll: hi;
		nextPut: $.;
		nextPutAll: mid;
		nextPut: $.;
		nextPutAll: lo! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:22:19'!
methods 

	^methods! !

!ImageSegmentBuilder methodsFor: 'compiling' stamp: 'KenD 3/4/2021 08:16:47'!
compile: anRGMethod 

	^runtime compile: anRGMethod! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:27:12'!
>> aSymbol 

	^bootstrapper spec at: aSymbol! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:16:41'!
methods 

	^methods! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:45'!
isBytes 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:00'!
isPointers 

	^ false! !

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

!MethodEvaluator methodsFor: 'printing' stamp: 'KenD 3/3/2021 11:26:46'!
printOn: aStream 

 	self backtrace
		do: [ :frame | 
			frame do: [ :elem | elem printOn: aStream ]
				   separatedBy: [ aStream nextPutAll: '. ' ].
			aStream cr ]
! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 07:57:32'!
compile: anRGMethod 
	| compiler spec class |
	compiler := SCompiler namespace: globals.
	spec := anRGMethod parent.
	class := self virtualSpeciesFor: spec.
	^ compiler
		forClass: class;
		compile: anRGMethod sourceCode! !

!MirageGate methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:01:12'!
printOn: aStream 

	aStream nextPutAll: 'mirage gate on: ' , handle printString! !

!PstFrameHandle methodsFor: 'printing' stamp: 'KenD 3/27/2021 08:29:19'!
printOn: aStream 

	aStream nextPutAll: 'FH with: ' , String cr , frame printString! !

!CuisStFrameHandle methodsFor: 'printing' stamp: 'KenD 4/12/2021 10:45:19'!
printOn: aStream 

	aStream nextPutAll: 'FH with: ' , String cr , frame printString! !

!ObjectHandle methodsFor: 'printing' stamp: 'KenD 3/11/2021 11:41:40'!
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

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:39:04'!
isBytes 

	^runtime objectFormat isBytes: oid! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:39:14'!
isFixed 

	^self isArrayed not! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:33:53'!
compile: anRGMethod 
	| compiler method |
	compiler := SCompiler namespace: globals.
	method := compiler
		forClass: anRGMethod parent;
		compile: anRGMethod sourceCode.
	^ method! !

!ObjectShape methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:24:29'!
printOn: aStream 

	aStream nextPutAll: 'Shape of '; nextPutAll: name! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:24:03'!
name 

	^name! !

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

!StackFrameMirror methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:48:23'!
printOn: aStream 

	aStream nextPutAll: 'SFMirror(' , String cr , handle printString , ')'! !

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

!MetaclassMirror methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:51:47'!
subclasses 
	| instance |
	instance := self instanceClass.
	^instance reflectsNil
		ifTrue: [#()]
		ifFalse: [instance subclasses collect: [:class | class class]]! !

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

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/3/2021 10:43:46'!
printOn: aStream 

	self printOn: aStream indent: 0! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:57:12'!
format 

	^ format! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:33:02'!
compile: aString 

	result := self smalltalkCompiler compileMethod: aString.
	^result method! !

!Binding methodsFor: 'printing' stamp: 'KenD 2/24/2021 11:15:28'!
printOn: aStream 

	aStream nextPutAll: name; nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'! !

!Binding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:14:36'!
name 

	^name! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:37:20'!
name 

	^'true'! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 3/3/2021 13:06:55'!
name 

	^'false'! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 2/25/2021 12:55:52'!
environment 

	^environment index! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:25:02'!
name 

	^'self'! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:32:36'!
name 

	^'super'! !

!SBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 13:20:09'!
name 

	^self printString! !

!STrueBinding methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:18:53'!
printOn: aStream 

	aStream nextPutAll: 'TrueId'! !

!SFalseBinding methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:20:25'!
printOn: aStream 

	aStream nextPutAll: 'FalseId'! !

!SLocalBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:01:09'!
environment 

	^environment! !

!STemporaryBinding methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:55:38'!
printOn: aStream 

	aStream
		nextPutAll: 'STemporary ';
		print: position;
		nextPutAll: ' @ env ';
		print: environment! !

!SArgumentBinding methodsFor: 'printing' stamp: 'KenD 4/12/2021 13:15:56'!
printOn: aStream 

	aStream
		nextPutAll: 'SArgument ';
		print: position;
		nextPutAll: ' @ env ';
		print: environment! !

!SSelfBinding methodsFor: 'printing' stamp: 'KenD 3/17/2021 15:57:37'!
printOn: aStream 

	aStream nextPutAll: 'SelfId'! !

!SSuperBinding methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:44:28'!
printOn: aStream 

	aStream nextPutAll: 'SuperId'! !

!SInstVarBinding methodsFor: 'printing' stamp: 'KenD 4/13/2021 09:19:27'!
printOn: aStream 

	aStream nextPutAll: 'InstVarId. '; nextPutAll: index printString! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:29'!
printOn: aStream 

	self printOn: aStream indent: 0! !

!SIdenitifier methodsFor: 'testing' stamp: 'KenD 2/23/2021 14:20:16'!
isVariable 

	^true! !

!SIdenitifier methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:17:50'!
binding 

	^binding! !

!SIdentifier methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:59:03'!
binding 

	^binding! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:10:17'!
isVariable 

	^true! !

!Subject methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:27:41'!
printOn: aStream 

	aStream nextPutAll: '{'; print: gate; nextPutAll: '}'! !

!CharacterConstants class methodsFor: 'class initialization' stamp: 'KenD 3/7/2021 12:37:28'!
initialize 

	Cr        := Character cr.
	Lf        := Character lf.
	Tab     := Character tab.
	Space := Character space.! !

!SpeciesFormatMasks class methodsFor: 'class initialization' stamp: 'KenD 3/1/2021 09:15:29'!
initialize
	"BitMasks should be in ObjectHeaderMasks ??"
	"flagsMask -> 16r000000FF"
	InstSize    := 16rFF000000.
	IsPointers := 16r00000002 "ObjectHeaderMasks isArrayed"
! !

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

!InlineMessageLinkerFlags class methodsFor: 'class initialization' stamp: 'KenD 3/7/2021 08:33:16'!
initialize 

	_Flags := -5.
	_SmallSize := -6.
	_Hash := -8.
	_Reserved := -2.
	_ExtendedSize := -3.! !

!SendSiteFlags class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 13:29:35'!
initialize 
	"Bitflags"
	IsStaticSend    := 16r01.
	IsSuperSend    := 16r02.
	IsPolymorphic := 16r04.
	HasBeenReset := 16r08
		! !

!SCompiledMethodFlags class methodsFor: 'class initialization' stamp: 'KenD 4/7/2021 14:11:20'!
initialize 

	ArgCount := 1 thru: 6.
	BlockCount := 7 thru: 13.
	TempCount := 14 thru: 21.
	CapturesSelf := 1 bitShift: 22 - 1.
	HasEnvironment := 1 bitShift: 23 - 1.
	HasFrame := 1 bitShift: 24 - 1.
	Debuggable := 1 bitShift: 25 - 1.
	EnvCount := 26 thru: 31! !

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

!SCompiledBlockFlags class methodsFor: 'class initialization' stamp: 'KenD 4/7/2021 13:53:22'!
initialize 

	ArgCount := 1 thru: 6.
	TempCount := 7 thru: 14.
	Id := 15 thru: 22.
	CapturesSelf := 1 bitShift: 23 - 1.
	CapturesHome := 1 bitShift: 24 - 1.
	EnvCount := 25 thru: 31! !

!NativeCode methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:54:16'!
code 

	^machineCode! !

!NativeCode methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:54:28'!
code: bytes 

	machineCode := bytes! !

!NativeCode methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:55:04'!
compiledCode: anObject 

	compiledCode := anObject! !

!NativeCode methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:54:52'!
disassembledAmd64 
	^machineCode disassembledAmd64! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:14:18'!
argumentCount 

	^format bitsAt: ArgCount! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:14:28'!
argumentCount: anInteger 

	format := format bitsAt: ArgCount put: anInteger! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:14:38'!
astcodes 

	^astcodes! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:14:48'!
astcodes: aCollection 

	astcodes := aCollection! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:14:58'!
beDebugabble 

	format := format bitOr: Debuggable! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:15:07'!
blockCount 

	^format bitsAt: BlockCount! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:15:17'!
blockCount: anInteger 

	format := format bitsAt: BlockCount put: anInteger! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:15:29'!
blocks 

	self hasBlocks ifFalse: [^#()].
	^self select: [:literal | literal isBlock]! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:15:45'!
capturesSelf 
	
	^ format anyMask: CapturesSelf! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:15:57'!
capturesSelf: aBoolean 

	format := aBoolean
		          ifTrue: [ format bitOr: CapturesSelf ]
		          ifFalse: [ format bitClear: CapturesSelf ]! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:16:09'!
classBinding 

	^class! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:16:18'!
classBinding: aClass 

	class := aClass! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:16:53'!
copyWithLiterals: aCollection 
	| result |
	result := self species withAll: aCollection.
	^ result
		astcodes: astcodes;
		classBinding: class;
		format: format;
		nativeCode: nativeCode;
		selector: selector;
		source: source;
		yourself! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:17:05'!
environmentCount 

	^format bitsAt: EnvCount! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:17:14'!
environmentCount: anInteger 

	format := format bitsAt: EnvCount put: anInteger! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:17:31'!
format: anInteger 

	format := anInteger! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:19:09'!
hasEnvironment: aBoolean 

	format := aBoolean
		          ifTrue: [ format bitOr: HasEnvironment ]
		          ifFalse: [ format bitClear: HasEnvironment ]! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:19:33'!
hasFrame: aBoolean 

	format := aBoolean
		          ifTrue: [ format bitOr: HasFrame ]
		          ifFalse: [ format bitClear: HasFrame ]! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:21:07'!
literals 

	^Array withAll: self! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:21:16'!
nativeCode 

	^nativeCode! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:21:24'!
nativeCode: aNativeCode 

	nativeCode := aNativeCode ! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:21:51'!
pragma: aPragmaNode 

	self notYetImplemented 
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:22:27'!
selector 

	^selector! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:22:36'!
selector: aSymbol 

	selector := aSymbol! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:22:48'!
sexpressions 
	| decoder |
	decoder := AstcodeDecoder new
		stream: astcodes readStream;
		method: self.
	^decoder decodeMethod! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:23:13'!
signature 

	^class-> selector! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:23:23'!
source 

	^source! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:23:31'!
source: aString 

	source := aString! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:23:40'!
tempCount 

	^format bitsAt: TempCount! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:23:50'!
tempCount: anInteger 

	format := format bitsAt: TempCount put: anInteger! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 4/7/2021 14:18:21'!
gtDisplayOn: stream 

	stream
		nextPutAll: self classBinding name;
		nextPutAll: '>>';
		print: selector! !

!SCompiledMethod methodsFor: 'initialization' stamp: 'KenD 4/7/2021 14:20:09'!
initialize 

	super initialize.
	format := 0! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:18:44'!
hasBlocks 

	^self blockCount > 0! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:18:56'!
hasEnvironment 

	^ format anyMask: HasEnvironment! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:19:22'!
hasFrame 

	^ format anyMask: HasFrame! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:20:28'!
isCallback 

	^false! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:20:36'!
isCalloutMethod 

	^ false! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:20:46'!
isDebuggable 

	^ format anyMask: Debuggable! !

!SCompiledMethod methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:20:56'!
isFrameless 

	^ self hasFrame not! !

!SCompiledMethod class methodsFor: 'instance creation' stamp: 'KenD 4/7/2021 14:13:37'!
new: anInteger 

	^ (self basicNew: anInteger) initialize! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:49:45'!
descriptor 

	^descriptor! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:49:54'!
descriptor: anFFIDescriptor 

	descriptor := anFFIDescriptor ! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:50:22'!
pragma: anSPragmaNode 

	descriptor := anSPragmaNode info! !

!SCallbackMethod methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:50:12'!
isCallback 

	^true! !

!SCallbackMethod class methodsFor: 'nativization' stamp: 'KenD 4/12/2021 14:49:26'!
behaviorNativeCodeSlot 
	"callback methods have a special machine code. Its bytes are of
	class ByteArray, but the behavior of this ByteArray is special:
	it has an extra slot that allows to find the native code object
	corresponding to this callback"
	^4! !

!SCalloutMethod methodsFor: 'constants' stamp: 'KenD 4/12/2021 14:52:41'!
pragma: anSPragmaNode 

	descriptor := anSPragmaNode info.
	symbol := anSPragmaNode name! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:36:32'!
block 
	
	^block! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:36:42'!
block: aPCompiledMethod 

	block := aPCompiledMethod! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:39:34'!
home: anObject 

	home := anObject! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:39:13'!
evaluateWith: anObject 

	^self value: anObject! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:39:23'!
evaluateWith: anObject with: anotherObject 

	block argumentCount = 2
		ifFalse: [^super evaluateWith: anObject with: anotherObject].
	^self value: anObject value: anotherObject! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:40:27'!
value 

	^home evaluateClosure: self! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:40:36'!
value: anObject 

	^home evaluateClosure: self with: anObject! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:40:46'!
value: anObject1 value: anObject2 

	^ home evaluateClosure: self with: anObject1 with: anObject2! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:40:58'!
value: anObject1 value: anObject2 with: anObject3 

	^ home evaluateBlock: self with: anObject1 with: anObject2 with: anObject3! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:43:05'!
whileFalse: aBlockSubject 
	| result |
	[ result := home evaluateClosure: self.
	  result _gate handle asLocalBoolean ] 
		whileFalse: [ home evaluateClosure: aBlockSubject _gate handle oid ]! !

!SClosure methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 08:43:13'!
whileTrue: aBlockSubject 
	| result |
	[ result := home evaluateClosure: self.
	  result _gate handle asLocalBoolean ]
		whileTrue: [ home evaluateClosure: aBlockSubject _gate handle oid ]! !

!SClosure methodsFor: 'testing' stamp: 'KenD 4/13/2021 08:39:51'!
isSelfEvaluating 

	^false! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 4/8/2021 07:51:25'!
arguments: aCollection 

	self replaceFrom: 3 to: 3 + aCollection size -1 with: aCollection! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 4/8/2021 07:51:44'!
callingConvention: anInteger 

	self at: 1 put: anInteger! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 4/8/2021 07:51:54'!
return: anInteger 

	self at: 2 put: anInteger! !

!SFFIDescriptor class methodsFor: 'instance creation' stamp: 'KenD 4/8/2021 07:50:38'!
ret: aString args: aCollection cc: ccName 
	| args return cc result |
	args := aCollection
		collect: [ :argname | 
			FFITypes
				at: argname asString
				ifAbsent: [ self error: 'undefined argument type ' , argname ] ].
	return := FFITypes
		at: aString
		ifAbsent: [ self error: 'undefined result type ' , aString ].
	cc := FFICallingConventions
		at: ccName
		ifAbsent: [ self error: 'unsupported calling convention ' , ccName ].
	result := self new: args size + 2.
	^ result
		callingConvention: cc;
		return: return;
		arguments: args! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 4/8/2021 07:49:27'!
initialize 

	self initializeFFITypes; initializeCallingConventions! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 4/8/2021 07:49:39'!
initializeCallingConventions 

	FFICallingConventions := Dictionary new.
	FFICallingConventions
		at: 'cdecl' put: 20;
		at: 'com' put: 21;
		at: 'callback' put: 22! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 4/8/2021 07:49:54'!
initializeFFITypes 

	FFITypes := Dictionary new.
	FFITypes
		at: 'char' put: 1;
		at: 'uchar' put: 2;
		at: 'short' put: 3;
		at: 'ushort' put: 4;
		at: 'long' put: 5;
		at: 'ulong' put: 6;
		at: 'large' put: 7;
		at: 'ularge' put: 8;
		at: 'intptr' put: 9;
		at: 'uintptr' put: 10;
		at: 'pointer' put: 11;
		at: 'struct' put: 12;
		at: 'float' put: 13;
		at: 'double' put: 14! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:42:59'!
beFatal 

	resumable := retryable := false! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:43:10'!
beResumable 

	resumable := true! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:43:20'!
beWarning 

	resumable := true! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:43:30'!
compiler 

	^compiler! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:43:40'!
compiler: aCompiler 

	compiler := aCompiler.
	compiler result error: self! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:43:51'!
description: aString 

	messageText := aString! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:45:51'!
source 

	^compiler sourceCode copyFrom: stretch start to: stretch end! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:46:01'!
stretch 

	^stretch! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:46:11'!
stretch: aStretch 

	stretch := aStretch! !

!SCompilationError methodsFor: 'debug support' stamp: 'KenD 4/7/2021 13:45:28'!
proceed 

	retryable := false.
	compiler result beSuccessful.
	self isResumable ifTrue: [ self resume ] ifFalse: [ self return ]! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 4/7/2021 13:44:01'!
isResumable 

	^resumable! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 4/7/2021 13:44:23'!
isUndeclaredAccess 

	^false! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 4/7/2021 13:44:47'!
isUndeclaredAssignment 

	^ false! !

!SUndeclaredIdentifierError methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:30:04'!
assignment: aBoolean 

	assigned := aBoolean! !

!SUndeclaredIdentifierError methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:30:12'!
identifier 

	^ identifier! !

!SUndeclaredIdentifierError methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:30:37'!
stretch: aStretch 

	super stretch: aStretch.
	identifier := self source! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:30:25'!
isUndeclaredAccess 

	^assigned not! !

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

!OOperand methodsFor: 'converting' stamp: 'KenD 2/24/2021 14:08:23'!
asOperand 

	self halt! !

!OOperand methodsFor: 'enumerating' stamp: 'KenD 2/24/2021 14:12:24'!
usesDo: aBlock 

	aBlock value: self.
	nextUse ifNotNil: [nextUse usesDo: aBlock]! !

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:38:24'!
basicPrintString 

	^self primitivePrintString! !

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:55:40'!
primitivePrintString 

	^self class name! !

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:55:52'!
printBackwardOn: aStream 

	aStream size > 1000 ifTrue: [
		aStream nextPutAll: '...'.
		^self].
	prev printBackwardOn: aStream.
	aStream nextPutAll: self basicPrintString; cr! !

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:56:02'!
printForwardOn: aStream 

	aStream size > 100000 ifTrue: [
		aStream nextPutAll: '...'.
		^self].
	aStream nextPutAll: self basicPrintString; cr.
	next printForwardOn: aStream! !

!OInstruction methodsFor: 'printing' stamp: 'KenD 3/11/2021 13:56:16'!
printForwardOn: aStream using: names 

	aStream size > 100000 ifTrue: [
		aStream nextPutAll: '...'.
		^self].
	aStream
		nextPutAll: (names at: self) , ' := ' , (self printStringUsing: names);
		cr.
	next printForwardOn: aStream using: names
! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:36:07'!
addLast: anInstruction 

	next addLast: anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:36:16'!
addNext: anInstruction 

	^self afterInsert: anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:36:30'!
addUse: new 

	firstUse ifNil: [firstUse := new] ifNotNil: [firstUse addUse: new]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:36:42'!
addUse: user at: name 
	| operand |
	operand := OOperand at: user named: name.
	self addUse: operand! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:36:54'!
afterInsert: anInstruction 

	anInstruction next: next.
	anInstruction prev: self.
	next prev: anInstruction.
	next := anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:37:05'!
afterInsertAll: anInstruction 
	| last |
	last := anInstruction last.
	last next: next.
	anInstruction prev: self.
	next prev: last.
	next := anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:37:15'!
allUses 
	| result following |
	result := OrderedCollection new.
	following := firstUse.
	[following notNil] whileTrue: [
		result add: following.
		following := following nextUse].
	^result! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:37:32'!
assureBoundBy: binder 

	self notYetImplemented ! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:37:52'!
atOperand: name 

	^self subclassResponsibility! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:38:03'!
atOperand: operandName put: instruction 

	^self subclassResponsibility! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:38:46'!
beforeInsert: anInstruction 

	anInstruction next: self.
	anInstruction prev: prev.
	prev next: anInstruction.
	prev := anInstruction
! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:38:56'!
beforeInsertAll: anInstruction 
	| last |
	last := anInstruction "last".
	last next: self.
	anInstruction prev: prev.
	prev next: anInstruction.
	prev := last.
	self shouldBeImplemented! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:39:40'!
cutFollowing 
	| end |
	end := OEndInstruction new.
	end prev: self.
	next := end.
	^end! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:39:49'!
cutPrevious 
	| begin |
	begin := OBeginInstruction new.
	begin next: self.
	prev := begin.
	^begin! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:40:55'!
dissolve 

	self untie; operandsDo: [:instruction | instruction removeUse: self]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:41:08'!
dissolveDeep 

	prev ifNil: [^self].
	self untie; operandsDo: [:instruction | instruction removeUse: self; dissolveIfUseless]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:41:19'!
dissolveIfUnused 

	self isUsed ifFalse: [self dissolveDeep]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:41:28'!
dissolveIfUseless 

	self isUseless ifTrue: [self dissolveDeep]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:41:40'!
dissolveReplacingWith: anInstruction 

	prev next: anInstruction.
	next prev: anInstruction.
	anInstruction prev: prev.
	anInstruction next: next.
	prev := next := nil.
	self operandsDo: [:instruction | 
		instruction removeUse: self; dissolveIfUseless].
	self replaceAllUsesWith: anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:41:51'!
dissolveReplacingWithAll: instructions 
	| last |
	last := instructions last.
	prev next: instructions.
	instructions prev: prev.
	last next: next.
	next prev: last.
	prev := next := nil.
	self operandsDo: [:instruction | instruction removeUse: self].
	self replaceAllUsesWith: last! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:42:24'!
firstNonPhi 
	| current |
	current := self.
	[current isPhi] whileTrue: [current := current next].
	^current! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:42:34'!
firstUse 

	^firstUse! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:43:07'!
insertCopyBefore: anInstruction 
	| copy |
	copy := self newCopy.
	anInstruction beforeInsert: copy.
	^copy! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:45:52'!
isDefinedAt: aBlock 

	aBlock instructionsDo: [:instruction | instruction == self ifTrue: [^true]].
	^false! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:48:44'!
last 

	^next last! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:48:54'!
lastPhi 
	| current |
	current := self.
	[current next isPhi] whileTrue: [current := current next].
	^current! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:49:11'!
lastValue 
	| last |
	last := self last.
	^last isJump ifTrue: [last prev] ifFalse: [last]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:53:51'!
newCopy 
	| copy |
	copy := OUnaryOperation receiver: self name: #copy.
	self addUse: copy at: #receiver.
	^copy! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:54:04'!
next 

	^next! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:54:14'!
next: anInstruction 

	self deny: (self isJump and: [anInstruction isEnd not]).
	next := anInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:54:39'!
nextDetect: aBlock ifNone: absentBlock 

	^next detect: aBlock ifNone: absentBlock! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:54:58'!
operands 
	| result |
	result := OrderedCollection new.
	self operandsDo: [:o | result add: o].
	^result select: #isInstruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:57:31'!
removeUse: instruction 

	firstUse instruction == instruction
		ifTrue: [firstUse := firstUse nextUse]
		ifFalse: [firstUse removeUse: instruction].! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:57:42'!
removeUse: instruction at: name 

	(firstUse instruction == instruction and: [firstUse name = name])
		ifTrue: [firstUse := firstUse nextUse]
		ifFalse: [firstUse removeUse: instruction at: name]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:57:52'!
replaceAllUsesWith: anInstruction 

	self == anInstruction ifTrue: [^self].
	firstUse ifNil: [^self].
	anInstruction addUse: firstUse.
	firstUse replaceAllUsesWith: anInstruction.
	firstUse := nil! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:58:10'!
replaceOperand: name with: instruction 
	| previous |
	previous := self atOperand: name.
	previous removeUse: self.
	self atOperand: name put: instruction.
	instruction addUse: self at: name! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:58:25'!
replaceUsesOf: value with: instruction 

	self operandsDo: [:operand | 
		operand = value ifTrue: [
			operand
				usesDo: [:use | use user = self
					ifTrue: [use disolveReplacingWith: instruction]]]]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:58:37'!
replaceWithCopyOf: value 
	| instruction |
	instruction := ((value isUsedOnlyBy: self) andNot: [value isPhi])
		ifTrue: [value untie]
		ifFalse: [value newCopy].
	self dissolveReplacingWith: instruction.
	^instruction! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:58:48'!
reverseDo: aBlock 
	| following |
	following := prev.
	aBlock value: self.
	prev
		ifNil: [following reverseDo: aBlock]
		ifNotNil: [prev reverseDo: aBlock]! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:59:02'!
targets 

	^OrderedCollection new! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:59:14'!
untie 

	prev next: next.
	next prev: prev.
	prev := next := nil! !

!OInstruction methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:59:25'!
updateUser: instruction named: oldName with: newName 

	self usesDo: [:use | 
		(use instruction == instruction and: [use name == oldName])
			ifTrue: [use name: newName]]! !

!OInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:43:45'!
insertPushBefore: anInstruction 
	| push |
	push := OUnaryOperation receiver: self name: #push.
	self addUse: push at: #receiver.
	anInstruction beforeInsert: push.
	^push! !

!OInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:49:29'!
livesAfter: anInstruction 
	anInstruction
		nextDetect: [:instruction | instruction usesResultOf: self]
		ifNone: [^false].
	^true! !

!OInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:49:42'!
livesAfter: anInstruction orOutOf: aBasicBlock 

	^(self livesAfter: anInstruction) or: [self livesOutOfBlock: aBasicBlock]! !

!OInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:53:14'!
livesOutOfBlock: aBasicBlock 

	aBasicBlock successorsPostOrder
		reverseDo: [:block | (block usesResultOf: self) ifTrue: [^true]].
	^false! !

!OInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:59:46'!
useDistanceTo: value 
	| count |
	count := 0.
	self do: [:instruction | 
		(instruction usesResultOf: value) ifTrue: [^count].
		count := count + 1].
	^Number infinity! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:40:28'!
detect: aBlock 

	^self detect: aBlock ifNone: [self errorAbsentObject]! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:40:40'!
detect: aBlock ifNone: absentBlock 

	(aBlock value: self)
		ifTrue: [^self]
		ifFalse: [^next detect: aBlock ifNone: absentBlock]! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:42:08'!
do: aBlock 
	| following |
	following := next.
	aBlock value: self.
	next ifNil: [following do: aBlock] ifNotNil: [next do: aBlock]! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:55:11'!
operandsDo: aBlock 

	self subclassResponsibility
! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:55:20'!
prev 

	^prev! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:55:28'!
prev: anInstruction 

	prev := anInstruction! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 13:57:11'!
realReverseDo: aBlock 
	| following |
	following := prev.
	aBlock value: self.
	prev
		ifNil: [following realReverseDo: aBlock]
		ifNotNil: [prev realReverseDo: aBlock]! !

!OInstruction methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 14:00:00'!
usesDo: aBlock 

	firstUse ifNotNil: [firstUse usesDo: aBlock]! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:39:21'!
canHaveSideEffects 

	^true! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:42:46'!
hasNext 

	^true! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:42:55'!
hasPrev 

	^true! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:44:09'!
isBlockStart 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:44:17'!
isConditionalJump 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:44:26'!
isConstant 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:45:12'!
isDefineArgument 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:46:13'!
isEnd 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:46:22'!
isGenericMessage 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:46:41'!
isInstruction 

	^true! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:46:30'!
isJump 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:46:52'!
isLoadImplicit 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:01'!
isMessageSend 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:10'!
isPhi 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:18'!
isPrimitiveOperation 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:25'!
isReturn 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:32'!
isStoreVariable 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:39'!
isUnaryOperation 

	^false! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:47:52'!
isUnconditionalJump 

	^self isJump andNot: [self isConditionalJump]! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:48:00'!
isUsed 

	^firstUse notNil! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:48:11'!
isUsedJustOnce 

	^firstUse notNil and: [firstUse nextUse isNil]! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:48:22'!
isUsedOnlyBy: instruction 

	^self isUsedJustOnce and: [firstUse user == instruction]! !

!OInstruction methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:48:31'!
isUseless 

	^firstUse isNil andNot: [ self canHaveSideEffects ]! !

!OInstruction methodsFor: 'visiting' stamp: 'KenD 3/11/2021 13:35:47'!
acceptVisitor: aVisitor 
	| following current |
	current := self.
	[
		following := current next.
		current isEnd]
		whileFalse: [
			current basicAcceptVisitor: aVisitor.
			current := current next ifNil: [following]]! !

!OInstruction class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 13:34:37'!
empty 
	| begin last |
	begin := OBeginInstruction new.
	last := OEndInstruction new.
	begin next: last.
	last prev: begin.
	^begin! !

!OJump methodsFor: 'accessing' stamp: 'KenD 3/11/2021 14:06:25'!
retargetFrom: aBasicBlock to: otherBasicBlock 

	target := otherBasicBlock! !

!OJump methodsFor: 'accessing' stamp: 'KenD 3/11/2021 14:06:41'!
target 

	^target! !

!OJump methodsFor: 'accessing' stamp: 'KenD 3/11/2021 14:06:52'!
target: aBasicBlock 

	target := aBasicBlock! !

!OJump methodsFor: 'accessing' stamp: 'KenD 3/11/2021 14:07:03'!
targets 

	^OrderedCollection with: target! !

!OJump methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 14:04:30'!
basicAcceptVisitor: aVisitor 

	^aVisitor visitJump: self! !

!OJump methodsFor: 'enumerating' stamp: 'KenD 3/11/2021 14:05:29'!
operandsDo: aBlock 

	self notYetImplemented ! !

!OJump methodsFor: 'printing' stamp: 'KenD 3/11/2021 14:04:50'!
basicPrintString 

	^'[jump to ' , target name , ']'! !

!OJump methodsFor: 'printing' stamp: 'KenD 3/11/2021 14:05:48'!
primitivePrintString 

	^'{jump}'! !

!OJump methodsFor: 'printing' stamp: 'KenD 3/11/2021 14:06:01'!
printStringUsing: names 

	^'jump to ' , (names at: target)! !

!OJump methodsFor: 'testing' stamp: 'KenD 3/11/2021 14:05:02'!
isJump 

	^true! !

!OJump methodsFor: 'testing' stamp: 'KenD 3/11/2021 14:07:14'!
usesResultOf: anInstruction 

	^false! !

!OJump class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 14:02:18'!
to: aDestination 

	^self new target: aDestination! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:57:18'!
atOperand: name 
	"@@FIXME: ?? name ??"
	^variable! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:57:28'!
atOperand: name put: instruction 

	variable := instruction! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:57:37'!
implicitTarget 

	^implicitTarget! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:57:49'!
implicitTarget: aBasicBlock 

	implicitTarget := aBasicBlock! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:59:07'!
replaceWithUnconditional: condition in: basicBlock 
	| fixed removed jump |
	self isJumpTrue == condition
		ifTrue: [
			fixed := target.
			removed := implicitTarget]
		ifFalse: [
			fixed := implicitTarget.
			removed := target].
	jump := OJump to: fixed.
	self dissolveReplacingWith: jump.
	removed fullyRemovePredecessor: basicBlock! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:59:22'!
retargetFrom: aBasicBlock to: otherBasicBlock 

	target == aBasicBlock ifTrue: [target := otherBasicBlock].
	implicitTarget == aBasicBlock ifTrue: [implicitTarget := otherBasicBlock]! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:59:30'!
target 

	^target! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:59:39'!
target: aBasicBlock 

	target := aBasicBlock! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 07:59:48'!
targets 

	^OrderedCollection with: implicitTarget with: target! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 08:00:03'!
usesResultOf: anInstruction 

	^variable == anInstruction! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 08:00:12'!
variable 

	^variable! !

!OJumpConditional methodsFor: 'accessing' stamp: 'KenD 3/12/2021 08:00:20'!
variable: operand 

	variable := operand! !

!OJumpConditional methodsFor: 'enumerating' stamp: 'KenD 3/12/2021 07:58:41'!
operandsDo: aBlock 

	aBlock value: variable! !

!OJumpConditional methodsFor: 'testing' stamp: 'KenD 3/12/2021 07:58:14'!
isConditionalJump 

	^true! !

!OJumpConditional methodsFor: 'testing' stamp: 'KenD 3/12/2021 07:58:24'!
isJump 

	^true! !

!OJumpConditional class methodsFor: 'instance creation' stamp: 'KenD 3/12/2021 07:54:43'!
variable: operation target: explicitTarget implicitTarget: implicitTarget 

	^self new
		variable: operation;
		target: explicitTarget;
		implicitTarget: implicitTarget! !

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

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:37:05'!
visitAssignment: anAssignmentNode 
	| c |
	self analyzeAssignment: anAssignmentNode.
	anAssignmentNode expression acceptVisitor: self.
	c := anAssignmentNode compiler.! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:37:41'!
visitBlock: aBlockNode 

	self
		analyzeBlock: aBlockNode
		while: [aBlockNode statements do: [:node | node acceptVisitor: self]]! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:37:53'!
visitBraceNode: aBraceNode 

	aBraceNode isLiteral
		ifFalse: [aBraceNode asMessageNode acceptVisitor: self]! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:38:03'!
visitCascade: aCascadeNode 

	aCascadeNode receiver acceptVisitor: self.
	aCascadeNode messages do: [:msg | msg acceptVisitor: self]! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:38:12'!
visitIdentifier: anIdentifierNode 

	self analyzeIdentifier: anIdentifierNode! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:38:39'!
visitMessage: aMessageNode 

	self analyzeMessage: aMessageNode.
	aMessageNode receiver acceptVisitor: self.
	aMessageNode arguments do: [:arg | arg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:38:50'!
visitMethod: aMethodNode 

	self analyzeMethod: aMethodNode while: [
		aMethodNode bindLocals.
		aMethodNode statements do: [:s | s acceptVisitor: self].
		aMethodNode positionLocals]! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:39:15'!
visitParseNode: aParseNode 
"
	do nothing
"
	! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/14/2021 15:39:26'!
visitReturn: aReturnNode 

	aReturnNode expression acceptVisitor: self.
	self analyzeReturn: aReturnNode! !

!SSemanticVisitor methodsFor: 'initialization' stamp: 'KenD 3/14/2021 15:36:36'!
initialize 

	super initialize.
	inliner := MessageInliner new! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:34:44'!
analyzeAssignment: anAssignmentNode 

	anAssignmentNode assignees
		do: [:v | self analyzeIdentifier: v assignee: true]! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:34:59'!
analyzeBlock: aBlockNode while: aBlock 

	aBlockNode isInlined
		ifFalse: [aBlockNode index: aBlockNode compiler blockIndex].
	self analyzeScript: aBlockNode while: aBlock! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:35:17'!
analyzeIdentifier: anIdentifierNode 

	self analyzeIdentifier: anIdentifierNode assignee: false! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:35:29'!
analyzeIdentifier: anIdentifierNode assignee: aBoolean 
	| script binding |
	anIdentifierNode resolveAssigning: aBoolean.
	aBoolean ifTrue: [anIdentifierNode beAssigned].
	script := anIdentifierNode compiler activeScript.
	binding := anIdentifierNode binding.
	script reference: binding.
	binding isLocal ifTrue: [binding := script scope captureLocal: binding].
	anIdentifierNode binding: binding! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:35:42'!
analyzeMessage: aMessageNode 
	inliner inline: aMessageNode.
	aMessageNode isInlined ifFalse: [aMessageNode compiler noticeSend]! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:35:53'!
analyzeMethod: aMethodNode while: aBlock 

	self analyzeScript: aMethodNode while: aBlock! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:36:03'!
analyzeReturn: aReturnNode 

	aReturnNode compiler activeScript realScript captureHome! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/14/2021 15:36:18'!
analyzeScript: aScriptNode while: aBlock 

	aScriptNode compiler activate: aScriptNode while: aBlock! !

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

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:15:46'!
activate: aScriptNode while: aBlock 
	| current |
	current := activeScript.
	activeScript := aScriptNode.
	aBlock value.
	activeScript := current! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:16:00'!
activeScope 

	^activeScript scope! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:16:10'!
activeScript 

	^activeScript! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:16:22'!
activeScript: aParseNode 

	activeScript := aParseNode! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:17:04'!
ast 

	^ast! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:25:34'!
frontend 

	^frontend! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:25:45'!
frontend: aCompiler 

	frontend := aCompiler
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:27:52'!
newScope 

	^frontend newScope! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:28:13'!
noticeSend 

	leaf := false! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:32:05'!
ourceCode: aString 

	source := aString! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:29:33'!
parser 

	^SSmalltalkParser new compiler: self! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:30:53'!
result 

	^result! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:31:26'!
scanner 
	
	^SSmalltalkScanner new compiler: self! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/14/2021 15:31:57'!
sourceCode 

	^source! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/14/2021 15:17:46'!
blockCount 

	^blocks! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/14/2021 15:17:57'!
blockIndex 

	blocks := blocks + 1.
	^blocks - 1! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/14/2021 15:23:30'!
compilationError: aString stretch: aStretch 

	^SCompilationError new
		compiler: self;
		stretch: aStretch;
		description: aString! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/14/2021 15:25:09'!
error: aString at: anInteger 
	| stretch |
	stretch := anInteger thru: anInteger.
	^self error: aString stretch: stretch! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/14/2021 15:25:21'!
error: aString stretch: aStretch 
	| error |
	error := self compilationError: aString stretch: aStretch.
	^error beFatal; signal! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/14/2021 15:33:08'!
undeclaredErrorAt: aStretch assignment: aBoolean 

	^SUndeclaredIdentifierError new
		compiler: self;
		stretch: aStretch;
		assignment: aBoolean;
		beResumable;
		signal! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/14/2021 15:33:22'!
warning: aString at: aStretch 
	| error |
	error := self compilationError: aString stretch: aStretch.
	error beWarning; signal! !

!SSmalltalkCompiler methodsFor: 'initialization' stamp: 'KenD 3/14/2021 15:26:52'!
initialize 

	self reset! !

!SSmalltalkCompiler methodsFor: 'initialization' stamp: 'KenD 3/14/2021 15:30:10'!
reset 

	self resetResult.
	leaf := true.
	blocks := 0.! !

!SSmalltalkCompiler methodsFor: 'initialization' stamp: 'KenD 3/14/2021 15:30:22'!
resetResult 

	result := SCompilationResult new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:16:51'!
assignmentNode 

	^SAssignmentNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:18:13'!
blockNode 

	^SBlockNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:18:47'!
braceNode 

	^SBraceNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:19:09'!
buildMethod 

	result method: ast buildMethod! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:19:19'!
cascadeMessageNode 

	^SCascadeMessageNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:19:32'!
cascadeNode 

	^SCascadeNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:19:44'!
commentNode 

	^SCommentNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:26:31'!
identifierNode 

	^SIdentifierNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:27:05'!
literalNode 

	^SLiteralNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:27:24'!
messageNode 

	^SMessageNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:27:38'!
methodNode 

	^SMethodNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:28:26'!
numericLiteralNode 

	^SNumberNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:29:42'!
pragmaNode 

	^SPragmaNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:31:07'!
returnNode 

	^SReturnNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:31:46'!
selectorNode 

	^SSelectorNode new compiler: self! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/14/2021 15:32:36'!
stringToken 

	^SStringToken new compiler: self! !

!SSmalltalkCompiler methodsFor: 'parsing' stamp: 'KenD 3/14/2021 15:24:46'!
delimiterToken 

	^SDelimiterToken new compiler: self! !

!SSmalltalkCompiler methodsFor: 'parsing' stamp: 'KenD 3/14/2021 15:24:58'!
endToken 

	^SEndToken new compiler: self! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 3/14/2021 15:26:07'!
hasBlocks 

	^ blocks > 0! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 3/14/2021 15:26:19'!
hasSends 

	^ leaf not! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 3/14/2021 15:32:48'!
supportsBraceNodes 

	^true! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:24:10'!
compileMethod: aString 

	source := aString.
	frontend protect: [
		self
			parseMethod;
			resolveSemantics;
			buildMethod].
	^result! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:28:42'!
parseFragment 

	headless := false.
	self reset.
	ast := self parser methodFragment.
	result ast: ast! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:28:53'!
parseFragment: aString 

	source := aString.
	[self parseFragment; resolveSemantics] on: SCompilationError do: [].
	^ast! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:29:07'!
parseMethod 

	headless := false.
	self reset.
	ast := self parser method.
	result ast: ast! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:29:18'!
parseMethod: aString 

	source := aString.
	frontend protect: [self parseMethod; resolveSemantics].
	^result! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/14/2021 15:30:39'!
resolveSemantics 

	ast acceptVisitor: SSemanticVisitor new! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:39:03'!
compiler 

	^compiler! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:39:13'!
compiler: aSmalltalkCompiler 

	compiler := aSmalltalkCompiler.
	scanner := compiler scanner! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:51:34'!
next 

	token := next.
	next := nil.
	^token ifNil: [token := scanner next]! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:52:47'!
on: aString 

	scanner on: aString! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:54:19'!
peek 
	| comments |
	next ifNotNil: [^next].
	next := scanner next.
	next isComment ifFalse: [^next].
	comments := OrderedCollection new: 2.
	[
		comments add: next.
		next := scanner next.
		next isComment] whileTrue.
	^next comments: comments! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:57:59'!
token 

	^token! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:31:49'!
arrayBody 
	| literals position |
	literals := OrderedCollection new.
	position := token position.
	[
		self step.
		(token is: $)) or: [token isEnd]]
		whileFalse: [| element |
			element := self arrayElement.
			literals add: element].
	token isEnd ifTrue: [self missingToken: ')'].
	^self buildNode: compiler literalNode at: position with: literals asArray! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:32:05'!
arrayElement 

	token isLiteral ifTrue: [^token value].
	token isNameToken ifTrue: [^self pseudoLiteralValue].
	token isKeyword ifTrue: [^self literalKeyword].
	(token is: #'-') ifTrue: [^self negativeNumberOrBinary].
	token hasSymbol ifTrue: [^token value].
	(token is: $() ifTrue: [^self arrayBody value].
	(token is: #'#(') ifTrue: [^self arrayBody value].
	(token is: #'#[') ifTrue: [^self byteArrayBody value].
	self invalidArrayToken! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:36:00'!
braceBody 
	| elements position |
	elements := OrderedCollection new.
	position := token position.
	self step.
	[
		token isEnd ifTrue: [self missingToken: '}'].
		token is: $}]
		whileFalse: [
			elements add: self expression.
			(token is: $.) ifTrue: [self step]].
	^self buildBraceNode: elements at: position! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:36:11'!
bracedArray 
	| array |
	array := self braceBody.
	self step.
	^array! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:38:04'!
byteArrayBody 
	| bytes save start array node |
	bytes := OrderedCollection new.
	save := token.
	start := token position.
	[
		self step.
		token isLiteral or: [token isPoolLiteral]]
		whileTrue: [self addByteTo: bytes].
	(token is: $]) ifFalse: [
		token isNameToken
			ifTrue: [self missingLiteral]
			ifFalse: [self missingToken: ']']].
	array := ByteArray new: bytes size.
	bytes withIndexDo: [:b :i | array at: i put: b].
	node := self buildNode: compiler literalNode at: start with: array.
	^node moveCommentsFrom: save! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:47:47'!
literalArray 
	| array |
	array := self arrayBody.
	self step.
	^array! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/14/2021 12:47:57'!
literalByteArray 
	| node |
	node := self byteArrayBody.
	self step.
	^node! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/14/2021 12:33:16'!
binaryMessage: aMessageNode 
	| selector primary argument |
	selector := self step.
	primary := self primary.
	primary isNil ifTrue: [
		((selector is: $:) and: [token is: #'='])
			ifTrue: [self
				error: 'stray whitespaces left in assignment'
				at: token position - 1]
			ifFalse: [self error: 'primary missing']].
	argument := self unarySequence: primary.
	aMessageNode
		selector: selector asSelectorNode;
		end: argument end;
		arguments: {argument}! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/14/2021 12:33:28'!
binarySequence: aParseNode 
	| node rcvr |
	node := aParseNode.
	[
		rcvr := node.
		self hasBinarySelector]
		whileTrue: [
			node := self buildMessageNode: rcvr.
			self binaryMessage: node].
	^node! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/14/2021 12:33:43'!
binarySignature 
	| selector arguments |
	((token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:])
		ifFalse: [^nil].
	selector := self step asSelectorNode.
	token isNameToken ifFalse: [self missingArgument].
	self validateLocalName: token.
	arguments := {token asIdentifierNode}.
	self step.
	token moveCommentsTo: selector.
	^self buildMethodNode: selector arguments: arguments! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/14/2021 12:34:14'!
block 
	| block |
	block := self buildNode: compiler blockNode at: token position.
	block parent: compiler activeScript.
	compiler activate: block while: [
		token moveCommentsTo: block.
		self step.
		block
			arguments: self blockArguments;
			temporaries: self temporaries;
			addStatements: self statements.
		(token is: $]) ifFalse: [self missingToken: ']'].
		block end: token position.
		token moveCommentsTo: block.
		self step].
	^block
! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/14/2021 12:35:42'!
blockArguments 
	| arguments |
	(token is: $:) ifFalse: [^#()].
	arguments := OrderedCollection new.
	[ self step.
	  token isNameToken ifFalse: [self missingArgument].
	  self validateLocalName: token.
	  arguments add: self step asIdentifierNode.
	  token is: $:] whileTrue.

	token isBar ifTrue: [self step] ifFalse: [
		(token is: #'||')
			ifTrue: [token value: #'|']
			ifFalse: [self missingToken: '|']].
	^arguments! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:36:42'!
buildBraceNode: elements at: position 
	| node |
	node := self buildNode: compiler braceNode at: position.
	^node elements: elements! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:36:54'!
buildCascadeMessageNode: receiver 
	| node |
	node := self buildNode: compiler cascadeMessageNode at: receiver position.
	^node receiver: receiver! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:37:04'!
buildMessageNode: receiver 
	| node |
	node := self buildNode: compiler messageNode at: receiver position.
	^node receiver: receiver! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:37:14'!
buildMethodNode: selector arguments: arguments 
	| node |
	node := self buildNode: compiler methodNode at: selector position.
	compiler activeScript: node.
	^node selector: selector; arguments: arguments! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:37:26'!
buildNode: aParserNode at: anInteger 

	^aParserNode position: anInteger; end: token position! !

!SSmalltalkParser methodsFor: 'buildNode' stamp: 'KenD 3/14/2021 12:37:47'!
buildNode: aParseNode at: anInteger with: anObject 
	| node |
	node := scanner buildToken: aParseNode at: anInteger with: anObject.
	^node end: token position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:39:34'!
error: aString 

	self error: aString at: token position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:39:51'!
error: aString at: position 
	
	^compiler error: aString at: position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:44:58'!
invalidArrayToken 

	self error: 'invalid literal entry'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:45:07'!
invalidByteValue 

	self error: 'value not between 0 and 255'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:45:19'!
invalidPragma 
	| position stretch |
	position := token position.
 	stretch := position thru: position.
	^SInvalidPragmaError new stretch: stretch; signal! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:49:39'!
missingArgument 

	self error: 'argument missing'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:49:48'!
missingExpression 

	self error: 'missing expression'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:49:56'!
missingLiteral 

	self error: 'missing literal or named literal'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:50:39'!
missingToken: aString 

	self error: 'missing ' , aString! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:51:45'!
nonIntegerToken 

	self error: 'non-integer token'! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:51:57'!
notify: aString 

	compiler notify: aString at: token position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:52:08'!
notify: aString at: position 

	compiler notify: aString at: position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 13:00:42'!
warning: aString 

	compiler warning: aString at: token position! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/14/2021 13:00:51'!
warning: aString at: position 

	compiler warning: aString at: position! !

!SSmalltalkParser methodsFor: 'ffi' stamp: 'KenD 3/14/2021 12:40:23'!
ffiArguments 
	| args type |
	args := OrderedCollection new.
	self step.
	token value !!= $(
		ifTrue: [ self error: 'expected "("' ].
	self peek value = $)
		ifTrue: [ self step.
			^ args ].
	[ type := self ffiType.
	args add: type.
	self step.
	token value = #, ] whileTrue.
	token value !!= $)
		ifTrue: [ self error: 'expected ")"' ].
	^ args! !

!SSmalltalkParser methodsFor: 'ffi' stamp: 'KenD 3/14/2021 12:41:22'!
ffiCall: aBoolean method: aMethodNode 
	| cc return name args descriptor |
	cc := token value.
	return := self ffiType.
	aBoolean
		ifTrue: [ self step.
			name := token value ifNil: [ self error: 'invalid function name' ] ].
	args := self ffiArguments.
	args size = aMethodNode selector arity
		ifFalse:
			[ ^ self error: 'method arity does not match with function arguments' ].
	self step.
	descriptor := SFFIDescriptor ret: return args: args cc: cc.
	^ compiler pragmaNode ffi: cc name: name with: descriptor! !

!SSmalltalkParser methodsFor: 'ffi' stamp: 'KenD 3/14/2021 12:41:54'!
ffiOrPrimitive: aMethodNode 
	| tag |
	tag := token value asLowercase.
	tag last = $: ifFalse: [self invalidPragma].
	tag := tag allButLast.
	token value: tag.
	tag = 'primitive' ifTrue: [^self primitive].
	tag = 'callback' ifTrue: [ ^self ffiCall: false method: aMethodNode ].
	tag = 'callout' ifTrue: [ ^self ffiCall: true method: aMethodNode ].	
	self invalidPragma! !

!SSmalltalkParser methodsFor: 'ffi' stamp: 'KenD 3/14/2021 12:42:07'!
ffiType 
	| type |
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].
	type := token value.
	type = 'struct' ifFalse: [ ^type].
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].	
	^token value! !

!SSmalltalkParser methodsFor: 'ffi' stamp: 'KenD 3/14/2021 12:57:05'!
symbolicPragma 
	| position symbol pragma |
	position := token position.
	symbol := self step value.
	pragma := self buildNode: compiler pragmaNode at: position.
	^pragma symbol: symbol! !

!SSmalltalkParser methodsFor: 'keywords' stamp: 'KenD 3/14/2021 12:45:50'!
keywordArgument 
	| arg |
	arg := self primary ifNil: [self missingArgument].
	arg := self unarySequence: arg.
	^self binarySequence: arg! !

!SSmalltalkParser methodsFor: 'keywords' stamp: 'KenD 3/14/2021 12:46:29'!
keywordMessage: aMessageNode 
	| selector arguments node |
	node := self buildNode: compiler selectorNode at: token position.
	selector := '' writeStream.
	arguments := OrderedCollection new.
	[token isKeyword] whileTrue: [
		selector nextPutAll: token value.
		node addKeyword: self step.
		arguments add: self keywordArgument].
	node symbol: selector contents; end: token prevPosition.
	aMessageNode
		arguments: arguments;
		end: token prevPosition;
		selector: node! !

!SSmalltalkParser methodsFor: 'keywords' stamp: 'KenD 3/14/2021 12:46:42'!
keywordSequence: aParseNode 
	| expression |
	self hasKeywordSelector ifFalse: [^aParseNode].
	expression := self buildMessageNode: aParseNode.
	self keywordMessage: expression.
	^expression! !

!SSmalltalkParser methodsFor: 'keywords' stamp: 'KenD 3/14/2021 12:47:13'!
keywordSignature 
	| selector arguments node |
	selector := '' writeStream.
	arguments := OrderedCollection new.
	node := self buildNode: compiler selectorNode at: token position.
	[token isKeyword] whileTrue: [
		selector nextPutAll: token value.
		node addKeyword: token asSelectorNode.
		self step.
		token isNameToken ifFalse: [self missingArgument].
		arguments add: token asIdentifierNode.
		self step].
	arguments isEmpty ifTrue: [^nil].
	node
		symbol: selector contents;
		end: token end;
		moveCommentsFrom: token.
	^self buildMethodNode: node arguments: arguments! !

!SSmalltalkParser methodsFor: 'keywords' stamp: 'KenD 3/14/2021 12:48:07'!
literalKeyword 
	| keyword |
	keyword := token value , scanner nextKeyword value.
	^keyword reduced asSymbol! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:30:09'!
addBodyTo: aMethodNode 

	self
		addTemporariesTo: aMethodNode;
		addPragmaTo: aMethodNode;
		addStatementsTo: aMethodNode! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:30:42'!
addByteTo: aCollection 
	| byte |
	byte := token isLiteral ifTrue: [token value] ifFalse: [token literalValue].
	byte isInteger ifFalse: [self nonIntegerToken].
	(byte between: 0 and: 255) ifFalse: [self invalidByteValue].
	aCollection add: byte! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:30:57'!
addPragmaTo: aMethodNode 

	(self attachPragmaTo: aMethodNode) ifTrue: [self step]! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:31:10'!
addStatementsTo: aMethodNode 

	aMethodNode
		position: token position;
		addStatements: self statements;
		end: token position;
		moveCommentsFrom: token.
	token isEnd
		ifFalse: [^self unexpectedStatementError: aMethodNode statements]! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:31:22'!
addTemporariesTo: aMethodNode 

	aMethodNode temporaries: self temporarie! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:32:26'!
assignment 
	| position variable delimiter expression assignment |
	position := token position.
	variable := self step asIdentifierNode moveCommentsFrom: token.
	delimiter := self step.
	expression := self expression.
	expression isAssign
		ifTrue: [^expression assign: variable operator: delimiter].
	expression moveCommentsFrom: token.
	assignment := self buildNode: compiler assignmentNode at: position.
	^assignment assign: variable with: expression operator: delimiter! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:32:43'!
attachPragmaTo: aMethodNode 
	| start pragma |
	(aMethodNode isHeadless orNot: [token is: #'<']) ifTrue: [^false].
	start := token position.
	self step.
	pragma := token isKeyword
		ifTrue: [self ffiOrPrimitive: aMethodNode]
		ifFalse: [self symbolicPragma].
	pragma position: start; end: token position.
	aMethodNode pragma: pragma.
	(token is: #'>') ifFalse: [self missingToken: '>'].
	^true! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:38:26'!
cascadeMessage: aMessageNode 
	| msg |
	self hasUnarySelector ifTrue: [^self unaryMessage: aMessageNode].
	self hasBinarySelector ifTrue: [^self binaryMessage: aMessageNode].
	self hasKeywordSelector ifTrue: [^self keywordMessage: aMessageNode].
	msg := token value = ''
		ifTrue: ['unfinished cascade']
		ifFalse: [token value asString , ' not allowed in cascade'].
	self error: msg! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:38:44'!
cascadeSequence: aMessageNode 
	| cascade receiver messages msg node |
	(token is: $;) ifFalse: [^aMessageNode].
	cascade := self buildNode: compiler cascadeNode at: aMessageNode position.
	receiver := aMessageNode receiver.
	cascade receiver: receiver.
	node := compiler cascadeMessageNode from: aMessageNode.
	node cascade: cascade.
	messages := OrderedCollection with: node.
	[token is: $;] whileTrue: [
		self step.
		msg := self buildCascadeMessageNode: receiver.
		msg
			cascade: cascade;
			position: token position;
			moveCommentsFrom: token.
		messages add: msg.
		self cascadeMessage: msg].
	^cascade messages: messages asArray; end: msg end! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:40:09'!
expression 
	| primary expression |
	(token isNameToken and: [self peek isAssignment]) ifTrue: [^self assignment].
	primary := self primary ifNil: [^self missingExpression].
	expression := self unarySequence: primary.
	expression := self binarySequence: expression.
	expression := self keywordSequence: expression.
	expression == primary
		ifFalse: [expression := self cascadeSequence: expression].
	token endsExpression ifFalse: [self errorIn: primary].
	^expression! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:48:58'!
methodPragma 
	self step.
	^[| method |
		method := self methodSignature.
		self addTemporariesTo: method; attachPragmaTo: method.
		method pragma]
		on: SCompilationError
		do: [:ex | ex return: compiler pragmaNode]! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:50:50'!
namedPrimitive 
	| name pragma |
	token isNameToken ifFalse: [self invalidPragma].
	name := token value.
	pragma := self buildNode: compiler pragmaNode at: token position.
	^pragma primitive: 0 name: name! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:51:03'!
negativeNumber 

	token := nil.
	^self negativeNumberOrBinary; step! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:51:19'!
negativeNumberOrBinary 

	self peek isNumberNode
		ifTrue: [token := self next negate position: token position - 1].
	^token value! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:52:31'!
numberedPrimitive 
	| number pragma |
	number := token value.
	number isInteger ifFalse: [self invalidPragma].
	pragma := self buildNode: compiler pragmaNode at: token position.
	^pragma primitive: number name: nil! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:53:03'!
parenthesizedExpression 
	| start open expression |
	start := token position.
	open := self step.
	expression := self expression.
	expression moveCommentsFrom: open.
	(token is: $)) ifFalse: [self missingToken: ')'].
	expression isImmediate
		ifFalse: [expression position: start; end: token position].
	self step.
	^expression! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:54:51'!
primary 

	token isNameToken ifTrue: [^self step asIdentifierNode].
	token isLiteral ifTrue: [^self step].
	(token is: $[) ifTrue: [^self block].
	(token is: $() ifTrue: [^self parenthesizedExpression].
	(token is: #'#(') ifTrue: [^self literalArray].
	(token is: #'#[') ifTrue: [^self literalByteArray].
	(compiler supportsBraceNodes and: [token is: ${]) ifTrue: [^self bracedArray].
	(token is: #'-') ifTrue: [^self negativeNumber].
	(token is: #'<') ifTrue: [^self taggedNode].
	^nil! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:55:06'!
primitive 
	| primitive |
	self step.
	primitive := token isNumberNode
		ifTrue: [self numberedPrimitive]
		ifFalse: [self namedPrimitive].
	self step.
	^primitive! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:55:16'!
pseudoLiteralValue 
	| value |
	token isPoolLiteral ifTrue: [^token literalValue].
	value := token value.
	value = 'nil' ifTrue: [^nil].
	value = 'true' ifTrue: [^true].
	value = 'false' ifTrue: [^false].
	^token isPoolLiteral ifTrue: [token literalValue] ifFalse: [value asSymbol]! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:55:35'!
return 
	| return expression end node |
	return := self step.
	expression := self expression.
	expression moveCommentsFrom: token.
	end := token position.
	self skipDots.
	node := self buildNode: compiler returnNode at: return position.
	^node
		return: return;
		end: end;
		expression: expression;
		moveCommentsFrom: return! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:55:56'!
skipDots 

	[token is: $.] whileTrue: [self step]! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:56:29'!
statement 
	| expression |
	(token is: $^) ifTrue: [^self return].
	expression := self expression.
	token moveCommentsTo: expression.
	^expression! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:56:40'!
statements 
	| statements |
	statements := OrderedCollection new.
	[
		token endsExpression ifTrue: [^statements].
		statements add: self statement.
		token is: $.]
		whileTrue: [self skipDots].
	^statements! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:56:51'!
step 
	| save comments |
	save := token.
	self next isComment ifFalse: [^save].
	comments := OrderedCollection new: 2.
	[
		comments add: token.
		self next isComment] whileTrue.
	token comments: comments.
	^save! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:57:24'!
temporaries 
	| temporaries |
	(token is: #'||') ifTrue: [
		self step.
		^#()].
	token isBar ifFalse: [^#()].
	temporaries := OrderedCollection new.
	[
		self step.
		token isNameToken]
		whileTrue: [
			self validateLocalName: token.
			temporaries add: token asIdentifierNode].
	token isBar ifFalse: [self missingToken: '|'].
	self step.
	^temporaries! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:59:08'!
unaryMessage: aMessageNode 
	| selector |
	selector := self unarySelector.
	aMessageNode
		selector: selector;
		end: selector end;
		arguments: #();
		moveCommentsFrom: selector! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:59:26'!
unarySelector 
	| selector start end node |
	selector := token value.
	start := token position.
	end := start + selector size - 1.
	self step.
	node := self buildNode: compiler selectorNode at: start.
	^node
		symbol: selector;
		end: end;
		moveCommentsFrom: token! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:59:42'!
unarySequence: aParseNode 
	| node receiver |
	node := aParseNode.
	node isNameToken ifTrue: [node := node asIdentifierNode].
	[
		receiver := node.
		self hasUnarySelector]
		whileTrue: [
			node := self buildMessageNode: receiver.
			self unaryMessage: node].
	^node moveCommentsFrom: token! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 12:59:57'!
unarySignature 

	self hasUnarySelector ifFalse: [^nil].
	^self buildMethodNode: self unarySelector arguments: #()! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/14/2021 13:00:29'!
validateLocalName: aSmalltalkToken 

	aSmalltalkToken isDelimitedIdentifier ifTrue: [^self].
	(aSmalltalkToken value includes: $.)
		ifTrue: [self error: 'invalid embedded dot']
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/14/2021 12:43:47'!
headlessMethod 
	| method |
	self step.
	method := compiler methodNode.
	compiler activeScript: method.
	self addBodyTo: method.
	^method! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/14/2021 12:48:20'!
method 
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	self addBodyTo: method.
	^method! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/14/2021 12:48:34'!
methodFragment 
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	[self addBodyTo: method] on: SCompilationError do: [].
	^method! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/14/2021 12:49:15'!
methodSelector 

	self step.
	^self methodSignature ifNotNil: [:m | m selectorNode]! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/14/2021 12:49:25'!
methodSignature 

	self keywordSignature ifNotNil: [:m | ^m].
	self binarySignature ifNotNil: [:m | ^m].
	self unarySignature ifNotNil: [:m | ^m].
	self error: 'method signature expected'! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/14/2021 12:53:36'!
parse: aString 

	^self on: aString; method! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/14/2021 12:53:45'!
parseExpression: aString 

	^self on: aString; headlessMethod! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/14/2021 12:53:56'!
parseFragment: aString 
	| method |
	self on: aString; step.
	[
		method := self methodSignature.
		method notNil ifTrue: [self addBodyTo: method]]
		on: SCompilationError
		do: [].
	^method! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/14/2021 12:54:06'!
parseTemporaries: aString 

	self on: aString; step.
	^self methodSignature notNil ifTrue: [self temporaries]! !

!SSmalltalkParser methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:42:22'!
hasBinarySelector 
	^(token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:]! !

!SSmalltalkParser methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:42:44'!
hasKeywordSelector 

	^token isKeyword! !

!SSmalltalkParser methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:42:51'!
hasUnarySelector 

	^token isNameToken! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:26:47'!
on: aString 

	stream := aString readStream.
	compiler notNil ifTrue: [compiler sourceCode: aString]! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/14/2021 12:28:19'!
sourceCode: aString 

	stream := aString readStream! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:14:34'!
error: aString 

	^self error: aString at: stream position! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/14/2021 12:14:48'!
error: aString at: anInteger 

	^compiler error: aString at: anInteger! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:11:56'!
buildToken: aSmalltalkToken 

	^self buildToken: aSmalltalkToken at: stream position! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:12:14'!
buildToken: aSmalltalkToken at: anInteger 
	| string |
	string := stream copyFrom: anInteger to: stream position.
	^self buildToken: aSmalltalkToken at: anInteger with: string! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:12:32'!
buildToken: aSmalltalkToken at: anInteger with: anObject 

	^aSmalltalkToken
		position: anInteger;
		value: anObject;
		end: stream position! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:13:54'!
end 
	
	^self buildToken: compiler endToken at: stream position + 1! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:17:18'!
next 

	^self nextToken! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:17:32'!
nextArrayPrefix 
	| string |
	string := stream copyFrom: stream position - 1 to: stream position.
	^self
		buildToken: compiler delimiterToken
		at: stream position - 1
		with: string! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:17:49'!
nextAssignment 

	^self buildToken: compiler delimiterToken at: stream position with: #':='! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:18:00'!
nextBinarySelector 

	stream back.
	^self
		buildToken: compiler stringToken
		at: stream position + 1
		with: self scanBinarySymbol! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:18:12'!
nextBinarySymbol 

	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanBinarySymbol! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:18:25'!
nextColon 
	| start char |
	start := stream position.
	char := stream peek.
	((char = $ or: [char = $	]) and: [(stream peek: 2) second = $=]) ifTrue: [
		stream skip: 1.
		char := $=].
	char = $= ifTrue: [
		stream skip.
		^self nextAssignment position: start].
	^(self isBinary: stream peek)
		ifTrue: [self nextBinarySelector]
		ifFalse: [self nextSpecialCharacter]! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:18:40'!
nextComment 
	| start comment |
	start := stream position.
	(stream skipTo: $") ifFalse: [self error: 'unfinished comment' at: start].
	stream position: start.
	comment := stream upTo: $".
	^self buildToken: compiler commentNode at: start with: comment! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:18:56'!
nextIdentifierOrKeyword 
	| start |
	start := stream position.
	self skipIdentifier.
	((stream peekFor: $:) and: [stream peekFor: $=]) ifTrue: [stream skip: -2].
	^self buildToken: compiler stringToken at: start! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:19:18'!
nextKeyword 
	| start string |
	start := stream position + 1.
	self skipKeyword.
	string := stream copyFrom: start to: stream position.
	^self buildToken: compiler literalNode at: start - 1 with: string asSymbol! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:19:29'!
nextLiteralCharacter 

	stream atEnd ifTrue: [^self error: 'character expected'].
	^self
		buildToken: compiler literalNode
		at: stream position
		with: stream next! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:19:41'!
nextLiteralString 

	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanString reduced! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:19:53'!
nextNumber 
	| parser assoc |
	stream skip: -1.
	parser := NumberParser2 new on: stream.
	assoc := parser next.
	parser error ifNotNil: [:e | ^self error: e key at: e value].
	^self
		buildToken: compiler numericLiteralNode
		at: assoc value start
		with: assoc key! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:20:25'!
nextQuotedSymbol 
	| node |
	node := self nextLiteralString.
	^node beSymbol; position: node position - 1! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:20:34'!
nextSpecialCharacter 
	| token |
	token := self buildToken: compiler delimiterToken.
	^token beCharacter! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:21:11'!
nextSymbolOrArrayPrefix 
	| char |
	stream atEnd ifTrue: [self error: 'character expected'].
	char := stream peek.
	(self canBeInIdentifier: char) ifTrue: [^self nextKeyword].
	(self isBinary: char) ifTrue: [^self nextBinarySymbol].
	stream next.
	(char = $[ or: [char = $(]) ifTrue: [^self nextArrayPrefix].
	char = $' ifTrue: [^self nextQuotedSymbol].
	self error: 'character expected'! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:26:21'!
nextToken 
	| first |
	first := self scanChar.
	first isNil ifTrue: [^self end].
	(self canStartIdentifier: first) ifTrue: [^self nextIdentifierOrKeyword].
	"(first = $→ or: [first = $_]) ifTrue: [^self nextAssignment]."
	(first = $_) ifTrue: [^self nextAssignment].
	first = $: ifTrue: [^self nextColon].
	first = $' ifTrue: [^self nextLiteralString].
	first = $$ ifTrue: [^self nextLiteralCharacter].
	first = $# ifTrue: [^self nextSymbolOrArrayPrefix].
	first = $" ifTrue: [^self nextComment].
	first isDigit ifTrue: [^self nextNumber].
	(first !!= $^ and: [first !!= $_ and: [self isBinary: first]])
		ifTrue: [^self nextBinarySelector].
	^self nextSpecialCharacter! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:27:05'!
scanBinarySymbol 
	| start symbol |
	start := stream position.
	self skipBinary.
	symbol := stream copyFrom: start + 1 to: stream position.
	^symbol asSymbol! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:27:17'!
scanChar 

	^stream skipSeparators atEnd ifFalse: [stream next]! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:27:28'!
scanString 
	| current start |
	start := current := stream position.
	^String streamContents: [:writer | 
		[| fragment |
			fragment := stream upTo: $'.
			writer nextPutAll: fragment.
			(current < stream position and: [(stream back; next) = $'])
				ifFalse: [self error: 'string end expected' at: start].
			stream peekFor: $']
			whileTrue: [
				writer nextPut: $'.
				current := stream position]]! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:27:41'!
skipBinary 

	[self isBinary: stream peek] whileTrue: [stream next]! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:27:52'!
skipIdentifier 
	| frontend |
	frontend := compiler frontend.
	[stream atEnd]
		whileFalse: [(frontend peekForIdentifier: stream) ifFalse: [^self]]! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/14/2021 12:28:06'!
skipKeyword 
	| frontend continue pos |
	frontend := compiler frontend.
	[
		self skipIdentifier.
		continue := false.
		(stream peekFor: $:) ifTrue: [
			pos := stream position.
			stream atEnd
				ifFalse: [continue := frontend canStartIdentifier: stream peek]].
		continue] whileTrue.
	pos isNil ifFalse: [stream position: pos]! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:13:01'!
canBeInIdentifier: aCharacter 

	^compiler frontend canBeInIdentifier: aCharacter! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:13:15'!
canStartIdentifier: aCharacter 

	(compiler frontend canStartIdentifier: aCharacter) ifFalse: [^false].
	aCharacter = $_
		ifTrue: [^stream peek ifNil: [false] ifNotNil: [:ch | ch asInteger >= 33]].
	^true! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:13:25'!
compiler 

	^compiler! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:13:35'!
compiler: aSmalltalkCompiler 

	compiler := aSmalltalkCompiler.
	compiler sourceCode ifNotNil: [:s | self sourceCode: s]! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/14/2021 12:17:02'!
isBinary: aCharacter 
	| code |
	aCharacter isNil ifTrue: [^false].
	code := aCharacter asInteger.
	code < 128 ifTrue: [
		^#($+ $- $< $> $= $* $/ $\ $| $& $~ $, $@ $% $? $!! $: $^)
			includes: aCharacter].
	^code > 255! !

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

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:05'!
value 

	^value! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 2/20/2021 16:13:25'!
value: anObject 

	value := anObject! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 2/20/2021 16:12:43'!
is: anObject 

	^value == anObject! !

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

!SStringNode methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:34:49'!
acceptVisitor: visitor 

	^visitor visitString: self! !

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

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:30:19'!
assignees 

	^assignees! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:30:29'!
expression 

	^expression! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:31:51'!
operators 

	^operators! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 4/12/2021 14:29:43'!
assign: anIdentifierNode operator: aDelimiterToken 

	assignees add: anIdentifierNode.
	operators add: aDelimiterToken! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 4/12/2021 14:29:55'!
assign: anIdentifierNode with: aParseNode operator: aDelimiterToken 

	assignees add: anIdentifierNode.
	operators add: aDelimiterToken.
	expression := aParseNode! !

!SAssignmentNode methodsFor: 'enumerating' stamp: 'KenD 4/12/2021 14:31:37'!
nodesDo: aBlock includingDeclarations: aBoolean 

	super nodesDo: aBlock includingDeclarations: aBoolean.
	assignees do: [:v | v nodesDo: aBlock includingDeclarations: aBoolean].
	expression nodesDo: aBlock includingDeclarations: aBoolean! !

!SAssignmentNode methodsFor: 'initialization' stamp: 'KenD 4/12/2021 14:31:02'!
initialize 

	super initialize.
	assignees := OrderedCollection new: 1.
	operators := OrderedCollection new: 1! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:30:44'!
hasAssign 

	^true! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:31:14'!
isAssign 

	^true! !

!SAssignmentNode methodsFor: 'visiting' stamp: 'KenD 4/12/2021 14:29:16'!
acceptVisitor: visitor 

	^visitor visitAssignment: self! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:44:59'!
asMessageNode 

	message notNil ifTrue: [^message].
	^message := self expanded! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:45:11'!
elements 

	^elements! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:45:20'!
elements: aCollection 

	elements := aCollection asArray! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:46:23'!
expanded 
	| receiver n new argument array messages i you yourself cascade |
	receiver := compiler identifierNode name: 'Array'.
	n := elements size.
	new := compiler selectorNode symbol: #new:.
	argument := compiler numericLiteralNode value: n.
	array := compiler messageNode.
	array receiver: receiver.
	array selector: new.
	array arguments: (Array with: argument).
	i := 0.
	messages := elements collect: [:elem | | msg sel idx args |
		i := i + 1.
		msg := compiler cascadeMessageNode 
					position: elem position; 
					end: elem end.
		sel := compiler selectorNode symbol: #at:put:.
		idx := compiler numericLiteralNode value: i.
		args := Array with: idx with: elem.
		msg selector: sel; arguments: args].
	you := compiler selectorNode symbol: #yourself.
	yourself := compiler cascadeMessageNode.
	yourself selector: you.
	yourself arguments: #().
	messages := messages copyWith: yourself.
	cascade := compiler cascadeNode receiver: array.
	messages do: [:msg | msg cascade: cascade].
	^cascade messages: messages! !

!SBraceNode methodsFor: 'enumerating' stamp: 'KenD 4/12/2021 14:46:54'!
nodesDo: aBlock includingDeclarations: aBoolean 

	super nodesDo: aBlock includingDeclarations: aBoolean.
	elements do: [:n | n nodesDo: aBlock includingDeclarations: aBoolean]! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:46:37'!
isBraceNode 

	^true! !

!SBraceNode methodsFor: 'visiting' stamp: 'KenD 4/12/2021 14:44:18'!
acceptVisitor: visitor 

	^visitor visitBraceNode: self! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:20:12'!
messages 

	^messages! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:20:21'!
messages: aCollection 

	messages := aCollection! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:20:44'!
receiver 

	^receiver! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:20:52'!
receiver: rcvr 

	receiver := rcvr! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 4/12/2021 16:20:33'!
nodesDo: aBlock includingDeclarations: aBoolean 

	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	messages do: [:msg | msg nodesDo: aBlock includingDeclarations: aBoolean]! !

!SCascadeNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:19:37'!
hasAssign 

	receiver hasAssign ifTrue: [^true].
	messages detect: [:msg | msg hasAssign] ifNone: [^false].
	^true! !

!SCascadeNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:19:47'!
isCascade 

	^true! !

!SCascadeNode methodsFor: 'visiting' stamp: 'KenD 4/12/2021 16:19:20'!
acceptVisitor: visitor 

	^visitor visitCascade: self! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:40:59'!
value 

	^value! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:41:12'!
value: aString 

	value := aString! !

!SCommentNode methodsFor: 'testing' stamp: 'KenD 4/7/2021 13:40:38'!
isComment 

	^true! !

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

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:25:18'!
arguments 

	^arguments! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:25:33'!
arguments: aCollection 

	arguments := aCollection! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:29:26'!
receiver 

	^receiver! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:29:35'!
receiver: node 

	receiver := node! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:29:44'!
selector 

	^selector! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:29:52'!
selector: node 

	selector := node! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:30:01'!
symbol 

	^selector symbol! !

!SMessageNode methodsFor: 'emitting - inlined' stamp: 'KenD 4/8/2021 08:26:19'!
beInlined 

	inlined := true! !

!SMessageNode methodsFor: 'enumerating' stamp: 'KenD 4/8/2021 08:29:12'!
nodesDo: aBlock includingDeclarations: aBoolean 

	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean].
	selector nodesDo: aBlock includingDeclarations: aBoolean
! !

!SMessageNode methodsFor: 'initialization' stamp: 'KenD 4/8/2021 08:27:34'!
initialize 

	super initialize.
	inlined := false! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:26:41'!
hasAssign 

	receiver hasAssign ifTrue: [^true].
	^arguments anySatisfy: [:arg | arg hasAssign]! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:26:54'!
hasVolatileArguments 

	^arguments anySatisfy: [:arg | 
		arg isIdentifier
			ifTrue: [arg binding canBeAssigned]
			ifFalse: [arg isBlockNode not andNot: [arg isLiteral]]]! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:27:14'!
hasVolatileReceiver 

	^ compiler hasBlocks
		  or: [ receiver isMethodTemporary not ]
		  or: [ arguments anySatisfy: [ :arg | arg hasAssign ] ]! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:27:45'!
isCascadeMessage 

	^false! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:27:53'!
isInlined 

	^inlined! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:28:02'!
isMessageNode 

	^true! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:28:17'!
needsStrictEvaluationOrder 

	arguments size = 0 ifTrue: [^false].
	receiver isBlockNode ifTrue: [^false].
	receiver isLiteral ifTrue: [^false].
	receiver isSelf ifTrue: [^false].
	receiver isSuper ifTrue: [^false].
	receiver isMethodArgument ifTrue: [^false].
	self hasVolatileReceiver ifFalse: [^false].
	(receiver isImmediate
		and: [arguments conform: [:arg | arg isImmediate or: [arg isBlockNode]]])
		ifTrue: [^false].
	receiver hasAssign ifTrue: [^true].
	receiver isMessageNode ifTrue: [ ^true ]. 
	^self hasVolatileArguments! !

!SMessageNode methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:25:07'!
acceptVisitor: visitor 

	^visitor visitMessage: self! !

!SCascadeMessageNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:16:12'!
cascade: aCascadeNode 

	cascade := aCascadeNode.
	receiver := cascade receiver! !

!SCascadeMessageNode methodsFor: 'enumerating' stamp: 'KenD 4/12/2021 16:17:16'!
nodesDo: aBlock includingDeclarations: aBoolean 

	aBlock evaluateWith: self.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean]! !

!SCascadeMessageNode methodsFor: 'initialization' stamp: 'KenD 4/12/2021 16:16:40'!
from: aMessageNode 

	arguments := aMessageNode arguments.
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	inlined := aMessageNode isInlined.
	stretch := aMessageNode stretch.
	comments := aMessageNode comments! !

!SCascadeMessageNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:16:54'!
isCascadeMessage 

	^true! !

!SCascadeMessageNode methodsFor: 'visiting' stamp: 'KenD 4/12/2021 16:15:57'!
acceptVisitor: visitor 

	^visitor visitCascadeMessage: self! !

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

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:40:01'!
environmentIndexOf: aParseNode 

	^scope environmentIndexOf: aParseNode! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:41:46'!
parent 

	^parent! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:42:00'!
parent: aScriptNode 

	parent := aScriptNode addChild: self! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:42:11'!
realParent 

	^parent realScript! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:42:21'!
realScript 

	^inlined ifTrue: [parent realScript] ifFalse: [self]! !

!SBlockNode methodsFor: 'initialization' stamp: 'KenD 4/12/2021 14:40:54'!
initialize 

	super initialize.
	inlined := false.
	scope := BlockScope on: self! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:40:28'!
index 

	^index! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:40:37'!
index: aNumber 

	index := aNumber! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:41:04'!
isBlockNode 

	^true! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:41:19'!
isEvaluable 

	^self isNullary! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:41:27'!
isInlined 

	^inlined! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:41:36'!
isNullary 

	^arguments isEmpty! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:42:37'!
usesHome 

	^inlined
		ifTrue: [children anySatisfy: [:block | block usesHome]]
		ifFalse: [scope capturesHome]! !

!SBlockNode methodsFor: 'services' stamp: 'KenD 4/12/2021 14:38:05'!
beInlined 

	inlined := true.
	arguments do: [:arg | arg binding beInlined]! !

!SBlockNode methodsFor: 'services' stamp: 'KenD 4/12/2021 14:39:23'!
buildBlock 
	| block |
	self isInlined ifTrue: [ ^ nil ].
	block := SCompiledBlock new.
	^ block
		  id: index;
		  argumentCount: arguments size;
		  tempCount: scope stackSize;
		  environmentCount: scope environmentSize;
		  capturesSelf: scope capturesSelf;
			capturesHome: scope capturesHome! !

!SBlockNode methodsFor: 'services' stamp: 'KenD 4/12/2021 14:39:36'!
captureHome 

	scope captureEnvironment: self ast! !

!SBlockNode methodsFor: 'visiting' stamp: 'KenD 4/12/2021 14:36:57'!
acceptVisitor: visitor 

	^visitor visitBlock: self! !

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

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:40:39'!
allSharedPoolsUsing: globals 
	| pools class |
	pools := Set new.
	class := self.
	[ class isNil ]
		whileFalse: [ pools addAll: (class sharedPoolsUsing: globals).
			class := class superclass ].
	^ pools! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:40:52'!
map 

	^map! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:41:04'!
map: anObjectMap 
	
	map := anObjectMap ! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:41:53'!
spec 

	^spec! !

!VirtualSpecies methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:42:02'!
spec: anRGBehavior 

	spec := anRGBehavior! !

!VirtualClass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:44:46'!
instanceSide 

	^ self! !

!VirtualClass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:44:59'!
localPools 
	| pools dict name pool |
	pools := cvars associations
		select: [ :assoc | assoc value spec name = #PoolDictionary ].
	dict := Dictionary new.
	pools
		do: [ :assoc | 
			name := assoc key asString.
			pool := assoc value.
			dict at: name put: (VirtualDictionary fromPool: pool) ].
	^ dict! !

!VirtualClass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:45:33'!
sharedPoolsUsing: globals 
	| pools dicts |
	pools := OrderedCollection new.
	spec sharedPoolsDo: [ :p | pools add: p ].
	dicts := pools
		collect: [ :p | (globals at: p name) association value ].
	^ dicts
		select: [ :d | d spec name = #PoolDictionary ]
		thenCollect: [ :d | VirtualDictionary fromPool: d ]! !

!VirtualClass methodsFor: 'service' stamp: 'KenD 4/8/2021 12:44:33'!
createClassAssociationsWith: aVirtualSmalltalkImage 
	|  assocs |
	assocs := spec classVariables
		collect: [ :cvar | aVirtualSmalltalkImage newAssociation: cvar name -> nil ].
	cvars := VirtualDictionary withAll: assocs! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:19:09'!
class: aVirtualClass 

	class := aVirtualClass! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:19:40'!
createClassAssociationsWith: aVirtualSmalltalkImage 

	self notYetImplemented ! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:19:50'!
instanceSide 

	^class! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:20:00'!
localPools 

	^ class localPools! !

!VirtualMetaclass methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:20:09'!
sharedPoolsUsing: globals 

	^class sharedPoolsUsing: globals! !

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

!ISAInstruction methodsFor: 'templates' stamp: 'KenD 3/8/2021 11:23:53'!
updateTemplate: anISAInstruction 
	| arity array |
	arity := operands size.
	array := Array new: arity.
	1 to: arity do: [:i | array at: i put: (operands at: i) template].
	anISAInstruction
		prefix: prefix;
		mnemonic: mnemonic;
		operands: array! !

!ISAInstruction methodsFor: 'templates' stamp: 'KenD 3/8/2021 11:24:04'!
useTemplate 

	template := self shallowCopy.
	mnemonic isNil ifTrue: [^self].
	template mnemonic: mnemonic; prefix: prefix.
	operands notNil
		ifTrue: [template operands: (operands collect: [:op | op template])]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:09:42'!
arity 

	^operands size! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:10:38'!
db: byte 
	| imm |
	mnemonic := '.db'.
	imm := ISAImmediate new value: byte.
	operands := {imm}! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:14:38'!
hash 

	^prefix hashWith: mnemonic with: self operand1 with: self operand2! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:18:47'!
mnemonic 

	^mnemonic! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:18:58'!
mnemonic: aString 

	mnemonic := aString asLowercase.
	template notNil ifTrue: [template mnemonic: aString]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:19:36'!
operand1 

	^operands notNil ifTrue: [operands at: 1 ifAbsent: nil]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:19:51'!
operand2 

	^operands notNil ifTrue: [operands at: 2 ifAbsent: nil]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:19:59'!
operand3 

	^operands at: 3! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:20:09'!
operand4 

	^operands at: 4! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:20:33'!
operandFrom: anObject 

	anObject isInteger ifTrue: [^ISAImmediate new value: anObject].
	anObject isString ifTrue: [
		^anObject first = $@
			ifTrue: [anObject]
			ifFalse: [MemoryOperand fromString: anObject]].
	^anObject! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:20:45'!
operands 

	^operands ifNil: #()! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:20:57'!
operands: aCollection 

	operands := aCollection collect: [:op | self operandFrom: op].
	template notNil
		ifTrue: [template operands: (operands collect: [:op | op template])]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:21:26'!
prefix 

	^prefix! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:21:40'!
prefix: aLegacyPrefix 

	prefix := aLegacyPrefix.
	template notNil ifTrue: [template prefix: aLegacyPrefix]! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:22:43'!
sizeInBytes32 
	| stream |
	stream := #[  ] writeStream.
	self writeEncoding32On: stream.
	^ stream size! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:23:00'!
sizeInBytes64 
	| stream |
	stream := #[  ] writeStream.
	self writeEncoding64On: stream.
	^ stream size! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:23:09'!
spec 

	^self encoder spec! !

!ISAInstruction methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:23:19'!
template 

	^template! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:11:05'!
encoder 

	^InstructionEncoder new instruction: self! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:11:17'!
encoding32 

	^ ByteArray streamContents: [ :strm | self writeEncoding32On: strm ]! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:11:47'!
encoding64 

	^ByteArray streamContents: [:strm | self writeEncoding64On: strm]! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:18:08'!
jumpOffset32 

	self assert:
		((self isJump or: [ self isCall ]) and: [ 
			 operands anyone isImmediate ]).
	^ operands first value + self sizeInBytes32! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:18:30'!
jumpOffset64 

	self assert:
		((self isJump or: [ self isCall ]) and: [ 
			 operands anyone isImmediate ]).
	^ operands first value + self sizeInBytes64! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:19:18'!
mod 

	(operands conform: [:op | op isRegister or: [op isImmediate]])
		ifTrue: [^2r11].
	operands do: [:op | op isMemory ifTrue: [^op mod]]! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:24:20'!
writeEncoding32On: aStream 

	^self encoder wordSize: 4; writeEncodingOn: aStream! !

!ISAInstruction methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 11:24:30'!
writeEncoding64On: aStream 

	^self encoder wordSize: 8; writeEncodingOn: aStream! !

!ISAInstruction methodsFor: 'operators' stamp: 'KenD 3/8/2021 11:09:15'!
= instruction 

	self class == instruction class ifFalse: [^false].
	prefix = instruction prefix ifFalse: [^false].
	mnemonic = instruction mnemonic ifFalse: [^false].
	(self hasOperands or: [instruction hasOperands]) ifFalse: [^true].
	operands isNil ifTrue: [^false].
	operands size = instruction arity ifFalse: [^false].
	operands
		with: instruction operands
		do: [:op1 :op2 | op1 = op2 ifFalse: [^false]].
	^true! !

!ISAInstruction methodsFor: 'services' stamp: 'KenD 3/8/2021 11:10:22'!
beTemplate 

	1 to: operands size do: [:i | | op |
		op := operands at: i.
		operands at: i put: op template]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:13:47'!
hasDirectMemoryReference 

	^operands anySatisfy: [:op | op isDirectMemoryReference]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:13:58'!
hasDisplacement 

	operands isNil ifTrue: [^false].
	^operands anySatisfy: [:op | op isMemory and: [op hasDisplacement]]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:14:10'!
hasOperands 

	^operands notNil and: [operands size > 0]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:14:25'!
hasSib 

	operands isNil ifTrue: [^false].
	^operands anySatisfy: [:op | op isMemory and: [op hasSib]]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:14:54'!
isCall 

	^mnemonic = 'call'! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:15:04'!
isJump 

	^mnemonic first = $j or: [mnemonic beginsWith: 'loop']! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:15:18'!
isLike: anISAInstruction 

	self class = anISAInstruction class ifFalse: [^false].
	mnemonic = anISAInstruction mnemonic ifTrue: [^self = anISAInstruction].
	operands = anISAInstruction operands ifFalse: [^false].
	^self spec isLike: anISAInstruction spec! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:15:46'!
isPushFP 
	| operand |
	^(mnemonic beginsWith: 'push')
		and: [
			operand := operands at: 1.
			operand isRegister]
		and: [operand index = RBP index]! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:15:58'!
isReturn 

	^mnemonic = 'ret'! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:16:21'!
isTemplate 
	1 to: operands size
	   do: [:i | (operands at: i) isTemplate ifFalse: [^false]].
	^true! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:17:25'!
isTestAL1 

	mnemonic = 'test' ifFalse: [^false].
	operands first = AL ifFalse: [^false].
	operands second isImmediate ifFalse: [^false].
	^operands second value = 1! !

!ISAInstruction methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:21:10'!
overridesAddressSize: anInteger 
	| length |
	operands isNil ifTrue: [^false].
	length := anInteger bitShift: 3.
	^operands
		anySatisfy: [:op | op isMemory
			and: [op base notNil]
			and: [op pointerLength !!= length]]! !

!ISAInstruction class methodsFor: 'instance creation' stamp: 'KenD 3/8/2021 11:08:22'!
db: byte 

	^self new db: byte! !

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

!ISAImmediate methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:01:01'!
bytes 
	| bytes v |
	bytes := ByteArray new: length // 8.
	v := value.
	v < 0 ifTrue: [v := v + (1 bitShift: length)].
	1 to: bytes size do: [:i | 
		bytes at: i put: (v bitAnd: 16rFF).
		v := v bitShift: -8].
	^bytes! !

!ISAImmediate methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:01:17'!
defaultLength 

	value < -168000000000000000 ifTrue: [^128].
	value < -16r80000000 ifTrue: [^64].
	value < -16r8000 ifTrue: [^32].
	value < -16r80 ifTrue: [^16].
	value < 16r80 ifTrue: [^8].
	value < 16r8000 ifTrue: [^16].
	value < 16r80000000 ifTrue: [^32].
	value < 16r8000000000000000 ifTrue: [^64].
	^128! !

!ISAImmediate methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:01:30'!
hash 

	^value hashWith: length! !

!ISAImmediate methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:03:55'!
value 

	^value! !

!ISAImmediate methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:04:20'!
value: anInteger 

	value := anInteger.
	length := self defaultLength
	^value! !

!ISAImmediate methodsFor: 'services' stamp: 'KenD 3/8/2021 11:03:39'!
template 

	(0 <= value and: [value < 4]) ifTrue: [^self copy].
	^self class new value: length; length: length! !

!ISAImmediate methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:01:51'!
isCompatibleWith: anOperandType 

	(value = 0 and: [anOperandType name = '0']) ifTrue: [^true].
	(value = 1 and: [anOperandType name = '1']) ifTrue: [^true].
	(value = 3 and: [anOperandType name = '3']) ifTrue: [^true].
	^anOperandType isImmediate
		and: [anOperandType hasImmediateFlag]
		and: [length <= anOperandType length]! !

!ISAImmediate methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:02:14'!
isImmediate 

	^true! !

!ISAImmediate methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:02:44'!
looksLikeAddress 

	^value > 65536 and: [value even]! !

!ISAImmediate methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:02:57'!
memoryLength 

	^nil! !

!ISAImmediate methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:03:11'!
prefers: anOperandType to: otherOperandType 

	anOperandType length < otherOperandType length ifTrue: [^true].
	(value = 0 and: [anOperandType name = '0']) ifTrue: [^true].
	(value = 1 and: [anOperandType name = '1']) ifTrue: [^true].
	(value = 3 and: [anOperandType name = '3']) ifTrue: [^true].
	^false! !

!ISAImmediate methodsFor: 'operators' stamp: 'KenD 3/8/2021 11:00:44'!
= operand 

	self class == operand class ifFalse: [^false].
	value = operand value ifFalse: [^false].
	^length = operand length! !

!MemoryOperand methodsFor: 'printing' stamp: 'KenD 3/19/2021 16:38:14'!
lengthString 

	length = 256 ifTrue: [^'ymmword ptr'].
	length = 128 ifTrue: [^'xmmword ptr'].
	(length isNil or: [length = 64]) ifTrue: [^'qword ptr'].
	length = 32 ifTrue: [^'dword ptr'].
	length = 16 ifTrue: [^'word ptr'].
	length = 8 ifTrue: [^'byte ptr'].
	self assert: false.
	^''! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:33:26'!
base 

	^base! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:33:34'!
base: aRegister 

	base := aRegister! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:33:43'!
baseExtension 

	^base notNil ifTrue: [base extensionBit] ifFalse: [0]! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:33:55'!
displacement 

	^displacement ifNil: 0! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:34:03'!
displacement: anInteger 

	displacement := anInteger ifNil: 0! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:36:27'!
hash 

	^length
		hashWith: base
		with: index
		with: scale
		with: displacement
		with: segment! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:36:42'!
index 

	^index! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:36:59'!
index: aRegister 

	index := aRegister! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:37:06'!
initialize 

	super initialize.
	displacement := 0.
	scale := 1! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:37:58'!
length: anInteger 

	length := anInteger! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:38:30'!
memoryLength 

	^length! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:39:11'!
pointerLength 

	base notNil ifTrue: [^base length].
	^self displacementLength! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:42:19'!
scale 

	^scale ifNil: [0]! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:42:28'!
scale: anInteger 

	scale := anInteger ifNil: [1]! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:42:09'!
segment 

	^segment! !

!MemoryOperand methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:42:38'!
segment: aRegister 

	segment := aRegister! !

!MemoryOperand methodsFor: 'comparing' stamp: 'KenD 3/19/2021 16:33:12'!
= operand 

	self class == operand class ifFalse: [^false].
	length = operand length ifFalse: [^false].
	base = operand base ifFalse: [^false].
	index = operand index ifFalse: [^false].
	self scale = operand scale ifFalse: [^false].
	displacement = operand displacement ifFalse: [^false].
	^segment = operand segment! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:34:28'!
displacementBytes 
	| bytes displ n |
	n := (base notNil and: [displacement between: -128 and: 127])
		ifTrue: [1]
		ifFalse: [4].
	base == RIP ifTrue: [n := 4].
	bytes := ByteArray new: n.
	displ := displacement.
	1 to: bytes size do: [:i | 
		bytes at: i put: (displ bitAnd: 16rFF).
		displ := displ bitShift: -8].
	^bytes! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:34:37'!
displacementLength 

	displacement = 0 ifTrue: [^0].
	^(base notNil and: [displacement between: -128 and: 127])
		ifTrue: [1]
		ifFalse: [4]! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:34:59'!
displacementValue 
	| value |
	displacement isNumber ifTrue: [^displacement].
	displacement size = 4 ifTrue: [^displacement longAtOffset: 0].
	displacement size = 2 ifTrue: [^displacement shortAtOffset: 0].
	value := displacement at: 1.
	(value isOnBit: 16r80) ifTrue: [^value - (1 bitShift: displacement size * 8)].
	^value! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:35:22'!
encodeSib: aSIB 
	| s i b |
	s := scale ifNil: 1.
	i := index isNil ifTrue: [RSP index] ifFalse: [index index \\ 8].
	b := base isNil ifTrue: [RBP index] ifFalse: [base index \\ 8].
	aSIB
		scaleFactor: s;
		index: i;
		base: b! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:38:47'!
mod 

	base == RIP ifTrue: [^2r0].
	base isNil ifTrue: [^0].
	self hasDisplacement ifFalse: [^0].
	(displacement between: -128 and: 127) ifTrue: [^2r1] ifFalse: [^2r10]! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:41:04'!
rm 

	self hasSib ifTrue: [^2r100].
	^base ifNil: [2r101] ifNotNil: [base index]! !

!MemoryOperand methodsFor: 'encoding' stamp: 'KenD 3/19/2021 16:42:59'!
sib 
	| factor s i b |
	factor := scale ifNil: 1.
	s := #[1 2 4 8] indexOf: factor.
	i := index isNil ifTrue: [RSP index] ifFalse: [index index bitAnd: 8r7].
	b := base isNil ifTrue: [RBP index] ifFalse: [base index bitAnd: 8r7].
	^((s - 1 bitShift: 6) bitOr: (i bitShift: 3)) bitOr: b! !

!MemoryOperand methodsFor: 'private' stamp: 'KenD 3/19/2021 16:40:48'!
reset 

	base := index := segment := length := nil.
	displacement := 0.
	scale := 1
! !

!MemoryOperand methodsFor: 'services' stamp: 'KenD 3/19/2021 16:43:24'!
template 
	| template bits d |
	template := self copy.
	displacement = 0 ifTrue: [^template].
	bits := self displacementLength.
	d := bits = 1 ifTrue: [16r3F] ifFalse: [16r3FFFFFFF].
	^template displacement: d! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:35:41'!
hasDisplacement 

	^self hasExplicitDisplacement
		or: [base isNil]
		or: [self requiresSpecialCaseDisplacement]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:35:53'!
hasExplicitDisplacement 

	^displacement !!= 0! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:36:04'!
hasOnlyDisplacement 

	^index isNil and: [base isNil]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:36:15'!
hasSib 

	^index notNil or: [self requiresSpecialCaseSib]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:37:18'!
isCompatibleWith: anOperandType 

	^anOperandType isMemory
		and: [length = anOperandType memoryLength
			or: [anOperandType memoryLength isNil]]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:37:39'!
isMemory 

	^true! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:37:48'!
isTemplate 

	^displacement = 0! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:38:58'!
needsExtraBit 

	(base notNil and: [base needsExtraBit]) ifTrue: [^true].
	^index notNil and: [index needsExtraBit]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:39:58'!
requiresSpecialCaseDisplacement 

	^base notNil and: [base == R13 or: [base r == RBP]]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:40:15'!
requiresSpecialCaseSib 

	base ifNil: [^true].
	^base == R12 or: [base r == RSP]! !

!MemoryOperand methodsFor: 'testing' stamp: 'KenD 3/19/2021 16:37:31'!
sDirectMemoryReference 

	^self hasOnlyDisplacement
! !

!MemoryOperand class methodsFor: 'instance creation' stamp: 'KenD 3/19/2021 16:30:48'!
fromStream: aStream 
	| memory |
	memory := AssemblerParser new memory parse: aStream.
	memory isPetitFailure
		ifTrue: [self error: 'invalid operand: ' , memory message].
	^memory! !

!MemoryOperand class methodsFor: 'instance creation' stamp: 'KenD 3/19/2021 16:31:11'!
fromString: aString 
"
	MemoryOperand fromString: 'qword ptr [rbx]'
"
	^self fromStream: aString readStream! !

!Register methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:43:38'!
B

	^family at: 1! !

!Register methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:43:46'!
E

	^family at: 3! !

!Register methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:43:59'!
R

	^family at: 4! !

!Register methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:44:10'!
W

	^family at: 2! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:12:07'!
b 

	^family at: 1! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:12:24'!
byte 

	^self b! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:12:38'!
e 

	^family at: 3! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:13:02'!
extensionBit 

	^self isExtended ifTrue: [1] ifFalse: [0]! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:13:14'!
family: anArray 

	family := anArray! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:15:57'!
getB 

	self == RAX ifTrue: [^AL].
	self == RCX ifTrue: [^CL].
	self == RDX ifTrue: [^DL].
	self == RBX ifTrue: [^BL].
	self == RSI ifTrue: [^SIL].
	self == RDI ifTrue: [^DIL].
	self == RBP ifTrue: [^BPL].
	self == RSP ifTrue: [^SPL].
	self == R8  ifTrue: [^R8B].
	self == R9  ifTrue: [^R9B].
	self == R10 ifTrue: [^R10B].
	self == R11 ifTrue: [^R11B].
	self == R12 ifTrue: [^R12B].
	self == R13 ifTrue: [^R13B].
	self == R14 ifTrue: [^R14B].
	self == R15 ifTrue: [^R15B].
	^nil! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:18:17'!
getE

	self == RAX ifTrue: [^EAX].
	self == RCX ifTrue: [^ECX].
	self == RDX ifTrue: [EDX].
	self == RBX ifTrue: [EBX].
	self == RSI ifTrue: [^ESI].
	self == RDI ifTrue: [^EDI].
	self == RBP ifTrue: [^EBP].
	self == RSP ifTrue: [^ESP].
	self == R8  ifTrue: [^R8D].
	self == R9  ifTrue: [^R9D].
	self == R10 ifTrue: [^R10D].
	self == R11 ifTrue: [^R11D].
	self == R12 ifTrue: [^R12D].
	self == R13 ifTrue: [^R13D].
	self == R14 ifTrue: [^R14D].
	self == R15 ifTrue: [^R15D].
	^nil! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:20:39'!
getW

	self == RAX ifTrue: [^AX].
	self == RCX ifTrue: [^CX].
	self == RDX ifTrue: [^DX].
	self == RBX ifTrue: [^BX].
	self == RSI ifTrue: [^SI].
	self == RDI ifTrue: [^DI].
	self == RBP ifTrue: [^BP].
	self == RSP ifTrue: [^SP].
	self == R8  ifTrue: [^R8W].
	self == R9  ifTrue: [^R9W].
	self == R10 ifTrue: [^R10W].
	self == R11 ifTrue: [^R11W].
	self == R12 ifTrue: [^R12W].
	self == R13 ifTrue: [^R13W].
	self == R14 ifTrue: [^R14W].
	self == R15 ifTrue: [^R15W].
	^nil! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:20:51'!
index 

	^index! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:20:59'!
index: anInteger 

	index := anInteger! !

!Register methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 11:02:50'!
name: aString 
	name := aString asUppercase ! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:25:43'!
r 
	^family at: 4! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:25:52'!
regExtension 

	^self extensionBit! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:26:28'!
registerGroup 

	^flags bitAnd: RegisterGroupMask! !

!Register methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:27:09'!
w 

	^family at: 2! !

!Register methodsFor: 'encoding' stamp: 'KenD 3/28/2021 15:26:59'!
rm 

	^index! !

!Register methodsFor: 'initialization' stamp: 'KenD 3/28/2021 15:11:53'!
addFlag: flagBit 

	flags := flags bitOr: flagBit! !

!Register methodsFor: 'initialization' stamp: 'KenD 3/28/2021 15:21:24'!
initializeFamily 

	(name first = $R and: [length = 64]) ifTrue: [
		family := {self getB. self getW. self getE. self}.
		family select: #notNil thenDo: [:reg | reg family: family]]! !

!Register methodsFor: 'initialization' stamp: 'KenD 3/28/2021 15:21:36'!
initializeFlags 

	flags := 0.
	self initializeRegisterGroupFlag! !

!Register methodsFor: 'initialization' stamp: 'KenD 3/28/2021 15:22:07'!
initializeRegisterGroupFlag 

	(name includesString: 'MM') ifTrue: [^self addFlag: RegisterSIMD].
	(#('ES' 'CS' 'SS' 'DS' 'FS' 'GS') includes: name)
		ifTrue: [^self addFlag: RegisterSegment].
	self addFlag: RegisterGP! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:22:31'!
isCompatibleWith: anOperandType 

	anOperandType isRegister ifFalse: [^false].
	(anOperandType registerGroup = self registerGroup
		and: [length = anOperandType length or: [anOperandType length isNil]])
		ifTrue: [^true].
	^anOperandType isSpecificRegister and: [name = anOperandType name]! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:22:47'!
isExtended 

	^index > 7! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:22:56'!
isGeneral 

	^self registerGroup = RegisterGP! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:23:22'!
isLongModeOld8BitRegister 

	self = SPL ifTrue: [^true].
	self = BPL ifTrue: [^true].
	self = SIL ifTrue: [^true].
	self = DIL ifTrue: [^true].
	^false! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:23:36'!
isRegister 

	^true! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:23:47'!
isSIMD 

	^self registerGroup = RegisterSIMD! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:23:57'!
isSegment 

	^self registerGroup = RegisterSegment! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:24:05'!
isTemplate 

	^true! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:24:53'!
needsExtraBit 

	^self isExtended! !

!Register methodsFor: 'testing' stamp: 'KenD 3/28/2021 15:25:06'!
prefers: anOperandType to: anotherOperandType 

	^anOperandType name = name! !

!Register class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:44:50'!
XMM: i 

	^self named: 'XMM' , i asString! !

!Register class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:45:02'!
YMM: i 

	^self named: 'YMM' , i asString! !

!Register class methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:08:34'!
named: aString 
"
	Register named: 'rax'
"
	^Registers at: aString asLowercase ifAbsent: nil! !

!Register class methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:09:17'!
segment: index 

	index = 0 ifTrue: [^CS].
	index = 1 ifTrue: [^SS].
	index = 2 ifTrue: [^DS].
	index = 3 ifTrue: [^ES].
	index = 4 ifTrue: [^FS].
	index = 5 ifTrue: [^GS].
	^nil! !

!Register class methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:09:30'!
withIndex: index length: length 

	^Registers detect: [:r | 
		r index = index
			and: [r length = length]
			and: [(r name beginsWith: 'mmx') not]
			and: [r isSegment not]]! !

!Register class methodsFor: 'accessing' stamp: 'KenD 3/28/2021 15:09:42'!
withIndex: index length: length long: aBoolean 

	^Registers detect: [:r | 
		r index = index
			and: [r length = length]
			and: [(r name beginsWith: 'mmx') not]
			and: [r isSegment not]
			and: [r isLongModeOld8BitRegister ifTrue: [aBoolean] ifFalse: [true]]]! !

!Register class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:45:08'!
xmm: i 

	^self named: 'XMM' , i asString! !

!Register class methodsFor: 'accessing' stamp: 'Install-PowerLang 4/25/2021 10:45:13'!
ymm: i 

	^self named: 'YMM' , i asString! !

!Register class methodsFor: 'class initialization' stamp: 'KenD 3/28/2021 15:05:09'!
addRegister: aRegister 

	Registers at: aRegister name put: aRegister! !

!Register class methodsFor: 'class initialization' stamp: 'KenD 3/28/2021 15:05:23'!
initialize 

	self initializeRegisters; initializeFamilies! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:39:07'!
initialize16BitRegisters 

	#('AX' 'CX' 'DX' 'BX' 'SP' 'BP' 'SI' 'DI' 'R8W' 'R9W' 'R10W' 'R11W' 'R12W' 'R13W' 'R14W' 'R15W')
		withIndexDo: [:r :i | | register |
			register := self new
				name: r;
				index: i - 1;
				length: 16;
				initializeFlags.
			self addRegister: register]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:39:15'!
initialize32BitRegisters 

	#('EAX' 'ECX' 'EDX' 'EBX' 'ESP' 'EBP' 'ESI' 'EDI' 'R8D' 'R9D' 'R10D' 'R11D' 'R12D' 'R13D' 'R14D' 'R15D')
		withIndexDo: [:r :i | | register |
			register := self new
				name: r;
				index: i - 1;
				length: 32;
				initializeFlags.
			self addRegister: register]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:39:22'!
initialize64BitRegisters 

	#('RAX' 'RCX' 'RDX' 'RBX' 'RSP' 'RBP' 'RSI' 'RDI' 'R8' 'R9' 'R10' 'R11' 'R12' 'R13' 'R14' 'R15')
		withIndexDo: [:r :i | | register |
			register := self new
				name: r;
				index: i - 1;
				length: 64;
				initializeFlags.
			self addRegister: register]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:39:30'!
initialize8BitRegisters 

	#('AL' 'CL' 'DL' 'BL' 'AH' 'CH' 'DH' 'BH') withIndexDo: [:r :i | | register |
		register := Register new
			name: r;
			index: i - 1;
			length: 8;
			initializeFlags.
		self addRegister: register]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:39:36'!
initialize8BitRexRegisters 

	#('SPL' 'BPL' 'SIL' 'DIL' 'R8B' 'R9B' 'R10B' 'R11B' 'R12B' 'R13B' 'R14B' 'R15B')
		withIndexDo: [:r :i | | register |
			register := self new
				name: r;
				index: i + 3;
				length: 8;
				initializeFlags.
			self addRegister: register]! !

!Register class methodsFor: 'class initialization' stamp: 'KenD 3/28/2021 15:06:34'!
initializeFamilies 

	Registers do: [:reg | reg initializeFamily]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:38:15'!
initializeMMXRegisters 

	0 to: 7 do: [:i | | mmx |
		mmx := self new
			name: 'MMX' , i asString;
			index: i;
			length: 64;
			initializeFlags.
		self addRegister: mmx]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:38:26'!
initializeRIPRegister 
	| register |
	register := self new
		name: 'RIP';
		index: 5;
		length: 64;
		initializeFlags.
	self addRegister: register! !

!Register class methodsFor: 'class initialization' stamp: 'KenD 3/28/2021 15:07:07'!
initializeRegisters 

	self
		initialize8BitRegisters;
		initialize8BitRexRegisters;
		initialize16BitRegisters;
		initialize32BitRegisters;
		initialize64BitRegisters;
		initializeRIPRegister;
		initializeMMXRegisters;
		initializeSSERegisters;
		initializeSegmentRegisters! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:38:43'!
initializeSSERegisters 

	0 to: 15 do: [:i | | xmm |
		xmm := self new
			name: 'XMM' , i asString;
			index: i;
			length: 128;
			initializeFlags.
		self addRegister: xmm].
	0 to: 15 do: [:i | | ymm |
		ymm := self new
			name: 'YMM' , i asString;
			index: i;
			length: 256;
			initializeFlags.
		self addRegister: ymm]! !

!Register class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 10:38:53'!
initializeSegmentRegisters 

	#('ES' 'CS' 'SS' 'DS' 'FS' 'GS') withIndexDo: [:r :i | | register |
		register := self new
			name: r;
			index: i - 1;
			length: 16;
			initializeFlags.
		self addRegister: register]! !

!InstructionEncoder methodsFor: 'caching' stamp: 'KenD 3/7/2021 12:09:00'!
checkCache64 

	Cache keysAndValuesDo: [:k :v | | s |
		s := InstructionSpec
			bestMatchForMnemonic: k mnemonic
			operands: k operands
			wordSize: 8.
		self assert: s = v]! !

!InstructionEncoder methodsFor: 'caching' stamp: 'KenD 3/7/2021 12:09:33'!
initializeCache 

	Cache := Dictionary new! !

!InstructionEncoder methodsFor: 'caching' stamp: 'KenD 3/7/2021 12:09:42'!
invalidateCache 

	Cache removeAll! !

!InstructionEncoder methodsFor: 'initialization' stamp: 'KenD 3/7/2021 12:19:07'!
initialize 

	super initialize.
	wordSize := 8! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:10:29'!
arity 

	^spec arity! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:10:40'!
at: position 
	| pos |
	pos := stream position.
	^[stream position: position; peek] ensure: [stream position: pos]! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:14:53'!
bestMatchingSpec 
	| template s |
	template := instruction template.
	s := Cache at: template ifAbsent: nil.
	s notNil ifTrue: [^s].
	s := InstructionSpec
		bestMatchForMnemonic: template mnemonic
		operands: template operands
		wordSize: wordSize.
	Cache at: template copy put: s.
	^s! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:15:05'!
displacementOffset 

	^displacement! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:17:05'!
immediate2: aByteArray 

	stream position: immediate2; nextPutAll: aByteArray! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:17:15'!
immediate2Offset 

	^immediate2! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:17:28'!
immediate: aByteArray 

	immediate isNil ifTrue: [
		immediate := stream position.
		modrm isNil ifTrue: [modrm := sib := displacement := immediate]].
	stream position: immediate.
	aByteArray isCollection
		ifTrue: [stream nextPutAll: aByteArray]
		ifFalse: [stream nextPut: aByteArray].
	immediate2 := stream position! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:17:38'!
immediateOffset 

	^immediate! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:17:48'!
indexExtension 

	^instruction operands maxValue: [:op | op indexExtension]! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:19:23'!
instruction: anISAInstruction 

	instruction := anISAInstruction.
	instruction useTemplate! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:23:44'!
reg: aRegister 
	| index prev |
	modrm isNil
		ifTrue: [modrm := stream position]
		ifFalse: [prev := stream position].
	stream position: modrm.
	index := aRegister isInteger ifTrue: [aRegister] ifFalse: [aRegister index].
	self
		writeMid: index;
		rexR: index > 7.
	sib := stream position.
	(prev notNil and: [prev > sib]) ifTrue: [stream position: prev]! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:24:10'!
reset 

	spec := rex := modrm := sib := displacement := immediate := nil! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:25:52'!
rm: anInteger 

	modrm isNil ifTrue: [modrm := stream position].
	stream position: modrm.
	self
		writeLo: anInteger;
		rexB: anInteger > 7.
	sib := stream position.
	self writeSib; writeDisplacement! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:26:10'!
spec 

	spec notNil ifTrue: [^spec].
	^spec := self bestMatchingSpec! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:27:29'!
vreg: aRegister 
	| index |
	modrm isNil ifTrue: [modrm := stream position].
	stream position: modrm.
	index := aRegister isInteger ifTrue: [aRegister] ifFalse: [aRegister index].
	self
		writeMid: index;
		vexR: index < 8.
	sib := stream position! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:27:44'!
vrm: anInteger 

	modrm isNil ifTrue: [modrm := stream position].
	stream position: modrm.
	self
		writeLo: anInteger;
		vexB: anInteger < 8;
		vexX: self rexX = 0.
	sib := stream position.
	self writeSib; writeDisplacement! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:28:12'!
wordSize 

	^wordSize! !

!InstructionEncoder methodsFor: 'accessing' stamp: 'KenD 3/7/2021 12:28:24'!
wordSize: anInteger 

	self assert: (anInteger = 4 or: [anInteger = 8]).
	wordSize := anInteger! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:15:37'!
hasDisplacement 

	^instruction hasDisplacement! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:15:55'!
hasModRM 

	^spec hasModRM! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:16:03'!
hasRex 

	^vex > rex! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:16:14'!
hasSib 
	
	^instruction hasSib! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:16:24'!
hasVex 

	^opcode > vex! !

!InstructionEncoder methodsFor: 'testing' stamp: 'KenD 3/7/2021 12:22:30'!
overridesOperandSize 
	| operands op |
	operands := instruction operands.
	operands size = 0 ifTrue: [^false].
	op := operands first.
	(op isRegister and: [op isSegment]) ifTrue: [^false].
	op memoryLength = 16 ifTrue: [
		^instruction mnemonic first = $f
			ifTrue: [spec operands first length !!= 16]
			ifFalse: [true]].
	operands with: spec operands do: [:a :f | 
		(a isImmediate not
			and: [a memoryLength !!= f memoryLength]
			and: [a memoryLength !!= f length]
			and: [(a isMemory and: [f name = 'm']) not])
			ifTrue: [^true]].
	^false! !

!InstructionEncoder methodsFor: 'printing' stamp: 'KenD 3/7/2021 12:19:50'!
legacyMap 

	^String streamContents: [:strm | 
		(prefixes to: rex - 1)
			do: [:i | | p |
				p := self at: i.
				strm nextPutAll: p hex]
			separatedBy: [strm space]]! !

!InstructionEncoder methodsFor: 'printing' stamp: 'KenD 3/7/2021 12:23:24'!
prefixesMap 
	| parts |
	parts := {self legacyMap. self rexMap. self vexMap}.
	parts := parts select: #notEmpty.
	^String
		streamContents: [:strm | parts do: [:p | strm nextPutAll: p; space]]! !

!InstructionEncoder methodsFor: 'printing' stamp: 'KenD 3/7/2021 12:24:53'!
rexMap 

	^String streamContents: [:strm | 
		(rex to: vex - 1)
			do: [:i | | p |
				p := self at: i.
				REXPrefix print: p on: strm]
			separatedBy: [strm space]]! !

!InstructionEncoder methodsFor: 'printing' stamp: 'KenD 3/7/2021 12:26:44'!
vexMap 

	^String streamContents: [:strm | 
		(vex to: opcode - 1)
			do: [:i | | p |
				p := self at: i.
				VEXPrefix print: p on: strm]
			separatedBy: [strm space]]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:20:38'!
mmmmm: anInteger 
	| pos byte |
	pos := stream position.
	byte := stream position: vex + 1; peek.
	byte := byte bitOr: anInteger.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:20:50'!
opcode: aByteArray 
	| pos |
	pos := stream position.
	stream
		position: opcode;
		nextPutAll: aByteArray;
		position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:21:00'!
operand1 

	^instruction operand1! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:21:08'!
operand2 

	^instruction operand2! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:21:22'!
operand3 

	^instruction operand3! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:21:32'!
operand4 

	^instruction operand4! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:21:43'!
operands 

	^instruction operands! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:22:56'!
pp: anInteger 
	| pos offset byte |
	pos := stream position.
	offset := stream peek = 16rC5 ifTrue: [2] ifFalse: [1].
	byte := stream position: vex + offset; peek.
	byte := byte bitOr: anInteger.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:24:26'!
rexB: aBoolean 
	| pos byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: rex; peek.
	byte := byte bitOr: REXPrefix b.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:24:37'!
rexB: aBoolean opcode: aByteArray 
	(rex isNil or: [rex = opcode]) ifTrue: [
		rex := opcode.
		stream position: rex; nextPut: REXPrefix rex value.
		opcode := opcode + 1].
	self rexB: aBoolean; opcode: aByteArray.
	stream position: opcode; skip: aByteArray size! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:25:13'!
rexR: aBoolean 
	| pos byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: rex; peek.
	byte := byte bitOr: REXPrefix r value.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:25:25'!
rexX 

	self hasSib ifFalse: [^0].
	instruction operands
		select: [:op | op isMemory]
		thenDo: [:op | ^op indexExtension]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:25:37'!
rexX: aBoolean 
	| pos byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: rex; peek.
	byte := byte bitOr: REXPrefix x.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:26:22'!
vexB: aBoolean 
	| pos byte |
	(self at: vex) = 16rC5 ifTrue: [^self].
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: vex + 1; peek.
	byte := byte bitOr: VEXPrefix b.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:26:32'!
vexL: aBoolean 
	| pos offset byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	offset := stream peek = 16rC5 ifTrue: [2] ifFalse: [1].
	byte := stream position: vex + offset; peek.
	byte := byte bitOr: VEXPrefix l.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:26:58'!
vexR: aBoolean 
	| pos byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: vex + 1; peek.
	byte := byte bitOr: VEXPrefix r.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:27:08'!
vexW: aBoolean 
	| pos byte |
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: vex + 2; peek.
	byte := byte bitOr: VEXPrefix w.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:27:17'!
vexX: aBoolean 
	| pos byte |
	(self at: vex) = 16rC5 ifTrue: [^self].
	aBoolean ifFalse: [^self].
	pos := stream position.
	byte := stream position: vex + 1; peek.
	byte := byte bitOr: VEXPrefix x.
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:27:58'!
vvvv: anInteger 
	| pos offset byte vvvv |
	pos := stream position.
	stream position: vex.
	offset := stream peek = 16rC5 ifTrue: [1] ifFalse: [2].
	byte := stream position: vex + offset; peek.
	vvvv := (anInteger bitInvert bitShift: 3) bitAnd: 2r1111000.
	byte := (byte bitAnd: 2r10000111) bitOr: vvvv.
	byte < 0 ifTrue: [byte := 256 + byte].
	stream nextPut: byte; position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:28:56'!
writeDisplacement 

	self hasDisplacement ifTrue: [
		instruction operands
			select: [:op | op isMemory]
			thenDo: [:op | stream nextPutAll: op displacementBytes]].
	immediate isNil ifTrue: [immediate := stream position]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:29:12'!
writeEncodingOn: aStream 

	stream := aStream.
	prefixes := rex := vex := stream position.
	self writePrefixes; writeOpcode; writeOperands! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:29:36'!
writeExtension: anInteger 
	| pos bit4 |
	pos := stream position.
	stream position: modrm.
	self writeMid: anInteger.
	(self hasRex and: [bit4 := anInteger > 7]) ifTrue: [self rexR: bit4].
	(self hasVex and: [bit4 := anInteger < 8]) ifTrue: [self vexR: bit4].
	sib := stream position.
	stream position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:29:47'!
writeHi: anInteger 
	| bits byte |
	bits := (anInteger bitAnd: 8r3) bitShift: 6.
	byte := stream peek ifNil: 0.
	byte := (byte bitAnd: 8r77) bitOr: bits.
	stream nextPut: byte! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:29:59'!
writeLegacyPrefix: byte 

	stream nextPut: byte.
	rex := vex := stream position! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:30:08'!
writeLo: anInteger 
	| byte modReg rm |
	byte := stream peek ifNil: 0.
	modReg := byte bitAnd: 8r370.
	rm := anInteger bitAnd: 8r7.
	byte := modReg bitOr: rm.
	stream nextPut: byte! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:30:17'!
writeMid: anInteger 
	| bits byte |
	bits := (anInteger bitAnd: 8r7) bitShift: 3.
	byte := stream peek ifNil: 0.
	byte := (byte bitAnd: 8r307) bitOr: bits.
	stream nextPut: byte! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:30:26'!
writeMod 
	| pos |
	pos := stream position.
	stream position: modrm.
	self writeHi: instruction mod.
	stream position: pos! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:30:43'!
writeOpcode 

	stream position: opcode; nextPutAll: spec primaryOpcode.
	modrm := stream position.
	spec extension ifNotNil: [:e | self writeExtension: e]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:30:54'!
writeOperands 

	spec operandEncoding ifNotNil: [:oe | 
		oe encodeOperands: self.
		self hasModRM ifTrue: [self writeMod]]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:31:58'!
writePrefixes 
	| head p67 p66 |
	self writeSegmentPrefixes.
	instruction prefix notNil ifTrue: [instruction prefix writeOn: self].
	head := self spec prefixes asOrderedCollection.
	p66 := LegacyPrefix operandSizeOverride.
	p67 := LegacyPrefix addressSizeOverride.
	(head anySatisfy: [:p | p = p66 or: [p = p67] or: [p isVex]]) ifFalse: [
		self overridesOperandSize ifTrue: [head addFirst: p66].
		(instruction overridesAddressSize: wordSize) ifTrue: [head addFirst: p67]].
	head do: [:prefix | prefix writeOn: self].
	((head noneSatisfy: [:p | p isRex or: [p isVex]]) and: [
		(instruction operands anySatisfy: [:op | op needsExtraBit]) or: [
			instruction operands
				anySatisfy: [:op | op = SPL or: [op = BPL] or: [op = SIL] or: [op = DIL]]]])
		ifTrue: [REXPrefix rex writeOn: self].
	opcode := stream position! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:32:17'!
writeRexPrefix: byte 

	self assert: wordSize = 8.
	stream nextPut: byte.
	vex := stream position! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:33:00'!
writeSegmentPrefixes 

	instruction operands
		select: [:op | op isMemory andNot: [op segment isNil]]
		thenDo: [:op | | seg |
			seg := op segment.
			seg = CS ifTrue: [self writeLegacyPrefix: 16r2E].
			seg = SS ifTrue: [self writeLegacyPrefix: 16r36].
			seg = DS ifTrue: [self writeLegacyPrefix: 16r3E].
			seg = ES ifTrue: [self writeLegacyPrefix: 16r26].
			seg = FS ifTrue: [self writeLegacyPrefix: 16r64].
			seg = GS ifTrue: [self writeLegacyPrefix: 16r65]]! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:33:14'!
writeSib 
	| operand |
	self hasSib ifTrue: [
		operand := instruction operands detect: [:op | op isMemory].
		stream nextPut: operand sib.
		opcode - vex > 0
			ifTrue: [
				self
					vexX: operand indexExtension = 0;
					vexB: operand baseExtension = 0]
			ifFalse: [
				self
					rexX: operand indexExtension > 0;
					rexB: operand baseExtension > 0]].
	displacement := stream position! !

!InstructionEncoder methodsFor: 'encoding' stamp: 'KenD 3/7/2021 12:33:25'!
writeVexPrefix: aByteArray 

	vex := stream position.
	stream nextPutAll: aByteArray! !

!InstructionEncoder class methodsFor: 'instance creation' stamp: 'KenD 3/7/2021 12:10:01'!
new 

	^super new initialize! !

!InstructionEncoder class methodsFor: 'class initialization' stamp: 'KenD 3/7/2021 12:18:39'!
initialize 

	self initializeCache! !

!InstructionEncoder class methodsFor: 'class initialization' stamp: 'Install-PowerLang 4/25/2021 11:04:04'!
initializeCache 

	Cache := Dictionary new! !

!InstructionPrefix methodsFor: 'accessing' stamp: 'KenD 2/27/2021 13:14:56'!
name: aString 

	name := aString! !

!InstructionPrefix methodsFor: 'writing' stamp: 'KenD 2/27/2021 13:16:29'!
writeOn: anInstruction 

	self subclassResponsibility! !

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

!LegacyPrefix methodsFor: 'codeGeneration' stamp: 'KenD 3/9/2021 07:41:20'!
writeOn: instruction 

	instruction writeLegacyPrefix: value! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:30:35'!
addressSizeOverride 

	^AddressSize_Override! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:38:44'!
group 

	^group! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:38:56'!
group: anInteger 

	group := anInteger! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:39:53'!
overridesAddressSize 

	^self = AddressSize_Override! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:40:28'!
overridesOperandSize 

	^self = OperandSize_Override! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:40:40'!
value 

	^value! !

!LegacyPrefix methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:40:52'!
value: anInteger 

	value := anInteger! !

!LegacyPrefix methodsFor: 'testing' stamp: 'KenD 3/9/2021 07:39:28'!
isLegacy 

	^true! !

!LegacyPrefix methodsFor: 'testing' stamp: 'KenD 3/9/2021 07:39:39'!
matches: aLegacyPrefix 

	^self == aLegacyPrefix! !

!LegacyPrefix class methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:38:01'!
operandSizeOverride 

	^OperandSize_Override! !

!LegacyPrefix class methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:38:20'!
withValue: byte 

	^Prefixes
		detect: [:prefix | prefix isLegacy and: [prefix value = byte]]
		ifNone: nil! !

!LegacyPrefix class methodsFor: 'class initialization' stamp: 'KenD 3/9/2021 07:34:38'!
initializeGroup1 

	#(#(0xF0 'LOCK') #(0xF2 'REPNE/REPNZ') #(0xF3 'REP/REPE/REPZ'))
		do: [:pair | | names prefix |
			names := $/ split: pair second.
			prefix := self new
				group: 1;
				value: pair first;
				name: names first.
			names do: [:aka | Prefixes at: aka put: prefix]]! !

!LegacyPrefix class methodsFor: 'class initialization' stamp: 'KenD 3/9/2021 07:36:06'!
initializeGroup2 

	#(#(0x2E 'CS') #(0x36 'SS') #(0x3E 'DS') #(0x26 'ES') #(0x64 FS) #(0x65 'GS'))
		do: [:pair | | prefix |
			prefix := self new
				group: 2;
				value: pair first;
				name: pair second , ' segment override'.
			self disableCode: [Prefixes at: prefix name put: prefix]].
	#(#(0x2E 'not') #(0x3E '')) do: [:pair | | prefix |
		prefix := self new
			group: 2;
			value: pair first;
			name: 'Branch ' , pair second , ' taken'.
		self disableCode: [Prefixes at: prefix name put: prefix]]! !

!LegacyPrefix class methodsFor: 'class initialization' stamp: 'KenD 3/9/2021 07:36:36'!
initializeGroup3 
	| prefix |
	prefix := self new
		group: 3;
		value: 16r66;
		name: 'OperandSize_Override'.
	Prefixes at: prefix name put: prefix! !

!LegacyPrefix class methodsFor: 'class initialization' stamp: 'KenD 3/9/2021 07:36:54'!
initializeGroup4 
	| prefix |
	prefix := self new
		group: 4;
		value: 16r67;
		name: 'AddressSize_Override'.
	Prefixes at: prefix name put: prefix! !

!LegacyPrefix class methodsFor: 'class initialization' stamp: 'KenD 3/9/2021 07:37:09'!
initializePrefixes 

	self
		initializeGroup1;
		initializeGroup2;
		initializeGroup3;
		initializeGroup4.
	super initializePrefixes! !

!REXPrefix methodsFor: 'accessing' stamp: 'KenD 4/24/2021 13:04:04'!
b 

	^1! !

!REXPrefix methodsFor: 'accessing' stamp: 'KenD 4/24/2021 13:03:58'!
r 

	^REX_R! !

!REXPrefix methodsFor: 'accessing' stamp: 'KenD 4/24/2021 13:04:16'!
rex 

	^REX! !

!REXPrefix methodsFor: 'accessing' stamp: 'KenD 4/24/2021 13:04:28'!
w 

	^REX_W! !

!REXPrefix methodsFor: 'accessing' stamp: 'KenD 4/24/2021 13:04:38'!
x 

	^2! !

!REXPrefix methodsFor: 'evaluating' stamp: 'KenD 4/24/2021 13:06:08'!
value 

	self == REX_W ifTrue: [^16r48].
	self == REX_R  ifTrue: [^16r44].
	self == REX      ifTrue: [^16r40].
	self assert: false.
	^nil! !

!REXPrefix methodsFor: 'printing' stamp: 'KenD 4/24/2021 13:03:27'!
print: byte on: aStream 

	self assert: (byte isOnBit: REX value).
	aStream nextPutAll: '0100'.
	(byte isOnBit: self w value) ifTrue: [aStream nextPut: $w].
	(byte isOnBit: self r) ifTrue: [aStream nextPut: $r].
	(byte isOnBit: self x) ifTrue: [aStream nextPut: $x].
	(byte isOnBit: self b) ifTrue: [aStream nextPut: $b]! !

!REXPrefix methodsFor: 'services' stamp: 'KenD 4/24/2021 13:03:04'!
peekFrom: aStream 

	^(aStream peek bitAnd: 16rF0) = 16r40 ifTrue: [aStream next]! !

!REXPrefix methodsFor: 'testing' stamp: 'KenD 4/24/2021 13:04:59'!
isRex 

	^true! !

!REXPrefix methodsFor: 'testing' stamp: 'KenD 4/24/2021 13:05:10'!
matches: anInteger 

	^anInteger isOnBit: self value! !

!REXPrefix methodsFor: 'writing' stamp: 'KenD 4/24/2021 13:06:44'!
writeOn: instruction 

	instruction writeRexPrefix: self value! !

!REXPrefix class methodsFor: 'class initialization' stamp: 'KenD 4/24/2021 13:02:14'!
initializePrefixes 

	#('REX' 'REX_W' 'REX_R')
		do: [ :s | 
			| rex |
			rex := self new name: s.
			Prefixes at: s put: rex ].
	super initializePrefixes.
	self	compileAll.
	self class compileAll.! !

!REXPrefix class methodsFor: 'instance creation' stamp: 'KenD 4/24/2021 13:01:29'!
fromStream: aStream 
	| s |
	s := aStream upTo: $+.
	^self fromString: s! !

!REXPrefix class methodsFor: 'instance creation' stamp: 'KenD 4/24/2021 13:01:43'!
fromString: aString 

	(aString endsWith: 'REX.W') ifTrue: [^self w].
	(aString endsWith: 'REX.R') ifTrue: [^self r].
	(aString endsWith: 'REX') ifTrue: [^self rex].
	^nil! !

!REXPrefix class methodsFor: 'instance creation' stamp: 'KenD 4/24/2021 13:02:35'!
new 

	^super new initialize! !

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

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:02'!
arity 

	^operands size! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:13'!
atnt 

	^atnt! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:22'!
compat 

	^compat! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:30'!
description 

	^description! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:39'!
encodingSelectors 

	opEncoding isNil ifTrue: [^#()].
	^opEncoding selectors! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:48'!
existsInWordSize: wordSize 

	^wordSize = 8 ifTrue: [mode first = $V] ifFalse: [compat first = $V]! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:08:56'!
extension 

	^extension! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:09:05'!
family 

	^Specs at: mnemonic! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:09:14'!
features 

	^features! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:37:27'!
fromString: aString
	| fields |
	"fields := Tab split: aString."
	fields := aString subStrings: Character tab asString.
	self
		instruction: fields second;
		opcode: fields first;
		operandEncoding: fields third trimBlanks.
	properties := fields at: 4.
	implicitRead := fields at: 5.
	implicitWrite := fields at: 6.
	implicitUndef := fields at: 7.
	useful := fields at: 8.
	protected := (fields at: 9) = 'YES'.
	mode := fields at: 10.
	compat := fields at: 11.
	features := fields at: 12.
	atnt := fields at: 13.
	preferred := (fields at: 14) = 'YES'.
	description := fields at: 15.
	self fixDocumentation! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:11:14'!
implicitRead 

	^implicitRead! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:11:22'!
implicitUndef 

	^implicitUndef! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:11:34'!
implicitWrite 

	^implicitWrite! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:12:06'!
instruction 

	^instruction! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:42:22'!
instruction: aString 
	| substrings |
	instruction := aString asLowercase.
	substrings := (instruction copyReplaceAll: "replaceAllSubstrings:" ',' with: ' ') substrings.
	mnemonic := substrings first.
	self operandsFrom: substrings! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:13:24'!
legacyPrefixesFrom: aStream 
	| prefix |
	aStream peekForAll: 'PREF.'.
	[| hex |
		hex := aStream peek: 2.
		hex !!= 'RE' and: [hex !!= 'VE'] and: [hex size = 2] and: [
			prefix := LegacyPrefix
				withValue: hex first asUppercase digitValue * 16
					+ hex second asUppercase digitValue.
			prefix notNil]]
		whileTrue: [
			prefixes add: prefix.
			aStream upTo: Space]! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:13:35'!
mnemonic 

	^mnemonic! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:13:43'!
mode 

	^mode! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:13:53'!
opcode 

	^opcode! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:14:04'!
opcode: aString 
	| reader |
	opcode := self opcodeFrom: aString.
	reader := opcode readStream.
	prefixes := OrderedCollection new.
	self
		legacyPrefixesFrom: reader;
		rexPrefixFrom: reader;
		vexPrefixFrom: reader;
		primaryOpcodeFrom: reader;
		opcodeExtensionFrom: reader.
	prefixes := prefixes asArray! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:14:42'!
opcodeExtensionFrom: aStream 

	(aStream peekFor: $/) ifFalse: [^self].
	extension := aStream peek digitValue < 8 ifTrue: [aStream next digitValue]! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:42:58'!
opcodeFrom: aString 

	(aString includesSubString: '66') ifTrue: [^aString].
	(instruction endsWith: '16, imm8') ifTrue: [^'66 ' , aString].
	(instruction endsWith: '16, imm16') ifTrue: [^'66 ' , aString].
	(instruction endsWith: ' ax, imm16') ifTrue: [^'66 ' , aString].
	^aString! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:15:10'!
operand: index of: decoder 
	| op type |
	op := opEncoding operand: index of: decoder.
	type := operands at: index.
	type isMoff ifTrue: [^type operandFrom: op value].
	op isMemory ifTrue: [op length: type memoryLength].
	op isImmediate ifTrue: [op length: type length].
	^op! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:15:22'!
operandEncoding 

	^opEncoding! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:15:34'!
operandEncoding: aString 

	opEncoding := OperandEncoding named: aString! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:15:43'!
operandLength 

	operands do: [:op | op length ifNotNil: [:l | ^l]].
	^nil! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:15:52'!
operands 

	^operands! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:16:15'!
prefixes 

	^prefixes! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:16:23'!
primaryOpcode 

	^primary! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:16:34'!
primaryOpcodeFrom: aStream 
	| oc |
	primary := #[].
	[
		aStream atEnd not
			and: [
				oc := aStream peek: 2.
				oc := self fixOpcode: oc.
				oc size = 2]
			and: [oc asUppercase = oc]
			and: [oc conform: [:ch | ch isHexDigit]]]
		whileTrue: [
			primary := primary
				copyWith: oc first digitValue * 16 + oc second digitValue.
			aStream upTo: Space]! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:17:14'!
properties 

	^properties! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:17:23'!
protected 

	^protected! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:17:34'!
rexPrefixFrom: aStream 
	| rex |
	(aStream peekForAll: 'REX') ifTrue: [
		aStream skip: 'REX' size negated.
		rex := REXPrefix fromStream: aStream.
		aStream upTo: Space.
		prefixes add: rex]! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:17:43'!
useful 

	^useful! !

!InstructionSpec methodsFor: 'accessing' stamp: 'KenD 3/7/2021 13:17:53'!
vexPrefixFrom: aStream 
	| vex |
	(aStream peekForAll: 'VEX') ifTrue: [
		aStream skip: 'VEX' size negated.
		vex := VEXPrefix fromStream: aStream.
		prefixes add: vex]! !

!InstructionSpec methodsFor: 'initialization' stamp: 'KenD 3/7/2021 13:09:42'!
fixDocumentation 

	(mnemonic = 'enter' and: [operands second length = 16])
		ifTrue: [operands swap: 1 with: 2].
	(mnemonic = 'pushq' and: [operands first length !!= 16])
		ifTrue: [mnemonic := 'push'].
	(instruction = 'vmovsd xmm1, xmm2, xmm3' and: [primary = #[16r11]]) ifTrue: [
		operands swap: 1 with: 3.
		instruction := 'vmovsd xmm3, xmm2, xmm1']! !

!InstructionSpec methodsFor: 'initialization' stamp: 'KenD 3/7/2021 13:09:53'!
fixOpcode: oc 

	^oc = '0f' ifTrue: ['0F'] ifFalse: [oc]! !

!InstructionSpec methodsFor: 'initialization' stamp: 'KenD 3/7/2021 13:16:05'!
operandsFrom: substrings 

	operands := substrings allButFirst collect: [:s | ISAOperandType named: s]! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:07:39'!
acceptsOperands: aCollection 

	operands size = aCollection size ifFalse: [^false].
	aCollection
		with: operands
		do: [:real :spec | (real isCompatibleWith: spec) ifFalse: [^false]].
	^true! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:10:29'!
hasImmediate2Data 

	^opEncoding usesImmediate2! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:10:41'!
hasImmediateData 

	^opEncoding usesImmediate! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:10:52'!
hasModRM 
	| arity |
	extension notNil ifTrue: [^true].
	arity := self arity.
	arity = 0 ifTrue: [^false].
	(arity = 1 and: [operands first isConstant]) ifTrue: [^false].
	^opEncoding usesModRM! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:11:05'!
hasOperandEncoding: anOperandEncoding 

	opEncoding = anOperandEncoding ifTrue: [^true].
	(opEncoding isNil and: [anOperandEncoding name = 'NP']) ifTrue: [^true].
	^opEncoding name = 'NP' and: [anOperandEncoding isNil]! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:12:33'!
isLike: anInstructionSpec 

	opcode = anInstructionSpec opcode ifFalse: [^false].
	primary = anInstructionSpec primaryOpcode ifFalse: [^false].
	extension = anInstructionSpec extension ifFalse: [^false].
	(self hasOperandEncoding: anInstructionSpec operandEncoding)
		ifFalse: [^false].
	properties = anInstructionSpec properties ifFalse: [^false].
	implicitRead = anInstructionSpec implicitRead ifFalse: [^false].
	implicitWrite = anInstructionSpec implicitWrite ifFalse: [^false].
	implicitUndef = anInstructionSpec implicitUndef ifFalse: [^false].
	useful = anInstructionSpec useful ifFalse: [^false].
	protected = anInstructionSpec protected ifFalse: [^false].
	mode = anInstructionSpec mode ifFalse: [^false].
	compat = anInstructionSpec compat ifFalse: [^false].
	features = anInstructionSpec features ifFalse: [^false].
	preferred = anInstructionSpec isPreferred ifFalse: [^false].
	prefixes = anInstructionSpec prefixes ifFalse: [^false].
	^operands = anInstructionSpec operands! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:12:58'!
isPreferred 

	^preferred! !

!InstructionSpec methodsFor: 'testing' stamp: 'KenD 3/7/2021 13:13:06'!
isPreferredTo: otherSpec for: realOperands 

	1 to: operands size do: [:i | | real this other |
		real := realOperands at: i.
		this := operands at: i.
		other := otherSpec operands at: i.
		(real prefers: this to: other) ifTrue: [^true]].
	^false! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:39:59'!
addendum32 
	^'
FF /2	CALL r/m32	M		rdi rsi rdx rcx r8 r9 rax xmm0 xmm1 xmm2 xmm3 xmm4 xmm5 xmm6 xmm7	RAX RDX XMM0 XMM1	RDI RSI RCX R8 R9 R10 R11 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 XMM9 XMM10 XMM11 XMM12 XMM13 XMM14 XMM15			NE	V				Call near, absolute indirect, address given in r/m32.
48 +rw	DEC r16 	O							NE	V				Decrement r16 by 1.
48 +rd	DEC r32	O							NE	V				Decrement r32 by 1.
40 +rw 	INC r16 	O							NE	V				Increment word register by 1.
40 +rd 	INC r32 	O							NE	V				Increment doubleword register by 1.
FF /4 	JMP r/m32 	M	R						NS	V				Jump near, absolute indirect, address given in r/m32. Not supported in 64-bit mode.

66 REX.W+ 0F 3A 22 /r ib 	PINSRQ xmm1, r/m64, imm8 	RMI							NE	V	SSE4_1	pinsrq		Insert a qword integer value from r/m64 into the xmm1 at the destination element specified by imm8.
8F /0 	POP r/m32 	M		RSP	RSP				NE	V				Pop top of stack into m32; increment stack pointer.
58 +rd 	POP r32 	O		RSP	RSP				NE	V				Pop top of stack into r32; increment stack pointer.
FF /6	PUSH r/m32	M		RSP	RSP				NE	V				Push r/m32.
50 +rd	PUSH r32	O		RSP	RSP				NE	V			YES	Push r32.'! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:40:23'!
bestMatchForMnemonic: aString operands: operands 
	| current family |
	current := nil.
	family := Specs at: aString.
	family do: [:spec | | fits |
		fits := spec acceptsOperands: operands.
		fits ifTrue: [
			spec isPreferred ifTrue: [^spec].
			(current isNil or: [spec isPreferredTo: current for: operands])
				ifTrue: [current := spec]]].
	current ifNil: [self error: 'cannot identify the instruction'].
	^current! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:40:38'!
bestMatchForMnemonic: aString operands: operands wordSize: wordSize 
	| current family |
	current := nil.
	family := Specs at: aString.
	family
		select: [:spec | (spec existsInWordSize: wordSize)
			and: [spec acceptsOperands: operands]]
		thenDo: [:spec | 
			spec isPreferred ifTrue: [^spec].
			(current isNil or: [spec isPreferredTo: current for: operands])
				ifTrue: [current := spec]].
	current ifNil: [self error: 'cannot identify the instruction'].
	^current! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:40:57'!
byteSpecs 

	^self selectSpecs: [:s | s opcode includesString: '+r']! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:44:06'!
selectSpecs: aBlock 

	^Array
		streamContents: [:strm | Specs
			do: [:specs | specs select: aBlock thenDo: [:s | strm nextPut: s]]]! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:44:28'!
specsByOpcode 
	| specs |
	specs := Dictionary new.
	Specs do: [:family | 
		family do: [:s | | group |
			group := specs at: s primaryOpcode 
						ifAbsentPut: [OrderedCollection new].
			group add: s]].
	^specs! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 12:44:41'!
specsCollect: aBlock 

	^Array streamContents: [:strm | 
		Specs
			do: [:specs | specs
				collect: aBlock
				thenDo: [:aspect | strm nextPut: aspect]]]! !

!InstructionSpec class methodsFor: 'private' stamp: 'KenD 3/7/2021 13:26:46'!
x86

	^(self package fullFileName asFileEntry parent  // 'x86.txt')  textContents ! !

!InstructionSpec class methodsFor: 'instance creation' stamp: 'KenD 3/7/2021 12:41:20'!
fromString: aString 

	^self new fromString: aString! !

!InstructionSpec class methodsFor: 'class initialization' stamp: 'KenD 3/7/2021 13:29:23'!
initialize 
"
	self initialize.
"
	OperandEncoding initializeEncodings.
	Prefixes initialize.
	VEXPrefix initializeSignatures.
	self initializeSpecs.
	Smalltalk at: #Decoder64 ifPresent: [ :d | d initializeSpecs ]! !

!InstructionSpec class methodsFor: 'class initialization' stamp: 'KenD 3/7/2021 13:44:22'!
initializeSpecs 
"
	self initializeSpecs.
"
	| dict reader |
	dict := Dictionary new.
	reader := (self x86 , self addendum32) readStream.
	reader nextLine.
	[reader atEnd] whileFalse: [| line spec family |
		line := reader nextLine.
		line withBlanksTrimmed notEmpty ifTrue: [
			spec := self fromString: line.
			family := dict at: spec mnemonic 
					      ifAbsentPut: [OrderedCollection new].
			(spec arity = 0 orNot: [spec operandEncoding isNil])
				ifTrue: [family add: spec]]].
	Specs := dict! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:12:13'!
descriptions 

	^descriptions! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:12:25'!
descriptions: aCollection 

	descriptions := aCollection.
	modrm := immediate := false.
	(selectors conform: [:s | s beginsWith: 'encodeNP']) ifTrue: [^self].
	descriptions do: [:d | 
		(d includesString: 'ModRM') ifTrue: [modrm := true].
		(d includesString: 'offs') ifTrue: [immediate := true].
		(d includesString: 'imm') ifTrue: [immediate := true]]! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:35:04'!
name: aString 

	name := aString! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:36:25'!
selectors: aCollection 

	selectors := aCollection! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:12:55'!
encodeAOperand1: operand 
"
	imm8
"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:08'!
encodeDOperand1: instruction 
	"
	offset
	"
	| op bytes |
	op := instruction spec operands at: 1.
	bytes := self bytesFor: instruction operand1 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:38'!
encodeFDOperand1: instruction 
	"
	AL/AX/EAX/RAX
	Moffs
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:48'!
encodeFDOperand2: operand 
	"
	AL/AX/EAX/RAX
	Moffs
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:57'!
encodeFVOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:06'!
encodeFVOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:16'!
encodeFVOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:24'!
encodeFVRVMOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:34'!
encodeFVRVMOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:43'!
encodeFVRVMOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:52'!
encodeIIOperand1: instruction 
	"
	iw
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 1.
	bytes := self bytesFor: instruction operand1 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:04'!
encodeIIOperand2: instruction 
	"
	iw
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate2: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:16'!
encodeIOperand1: instruction 
	"
	AL/AX/EAX/RAX
	imm8
	"
	"
	do nothing
	"
	instruction arity = 1 ifTrue: [| op bytes |
		op := instruction spec operands at: 1.
		bytes := self bytesFor: instruction operand1 value length: op length // 8.
		instruction immediate: bytes]! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:29'!
encodeIOperand2: instruction 
	"
	AL/AX/EAX/RAX
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:40'!
encodeM1Operand1: instruction 
	"
	ModRM:r/m (w)
	1
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:50'!
encodeM1Operand2: instruction 
	"
	ModRM:r/m (w)
	1
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:16:17'!
encodeMCOperand1: instruction 
	"
	ModRM:r/m (w)
	CL
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:20:10'!
encodeMCOperand2: operand 
	"
	ModRM:r/m (w)
	CL
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:24'!
encodeMIOperand1: instruction 
	"
	ModRM:r/m (r, w)
	imm8
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:39'!
encodeMIOperand2: instruction 
	"
	ModRM:r/m (r, w)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:50'!
encodeMOperand1: instruction 

	"
	ModRM:r/m (r)
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:03'!
encodeMRCOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:14'!
encodeMRCOperand2: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:24'!
encodeMRCOperand3: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:35'!
encodeMRIOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:45'!
encodeMRIOperand2: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:58'!
encodeMRIOperand3: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:09'!
encodeMROperand1: instruction 
	"
	ModRM:r/m (r, w)
	ModRM:reg (r)
	"
	instruction rm: instruction operand1 rm
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:18'!
encodeMROperand2: instruction 
	"
	ModRM:r/m (r, w)
	ModRM:reg (r)
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:27'!
encodeMVROperand1: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vrm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:36'!
encodeMVROperand2: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:45'!
encodeMVROperand3: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vreg: instruction operand3! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:54'!
encodeNPOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	"
	self assert: instruction operand1 isImmediate! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:07'!
encodeNPOperand2: operand 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	"
	self assert: false! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:19'!
encodeOIOperand1: instruction 
	"
	opcode + rd (w)
	imm8/16/32/64
	"
	self encodeOOperand1: instruction! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:32'!
encodeOIOperand2: instruction 
	"
	opcode + rd (w)
	imm8/16/32/64
	"
	instruction operand2 length: instruction operand1 length.
	instruction immediate: instruction operand2 bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:40'!
encodeOOperand1: instruction 
	"
	opcode + rd (r, w)
	"
	| index i opcode |
	index := instruction operand1 index.
	i := index bitAnd: 2r111.
	opcode := instruction spec primaryOpcode copy.
	opcode at: opcode size put: opcode last + i.
	index > 7
		ifTrue: [instruction rexB: true opcode: opcode]
		ifFalse: [instruction opcode: opcode]! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:10'!
encodeRM0Operand1: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:21'!
encodeRM0Operand2: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:58'!
encodeRMIOperand1: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	instruction reg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:10'!
encodeRMIOperand2: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	instruction rm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:22'!
encodeRMIOperand3: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:30'!
encodeRMOperand1: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction reg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:39'!
encodeRMOperand2: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction rm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:49'!
encodeRMVOperand1: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:00'!
encodeRMVOperand2: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:12'!
encodeRMVOperand3: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vvvv: instruction operand3 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:22'!
encodeRVMIOperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:30'!
encodeRVMIOperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:41'!
encodeRVMIOperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:58'!
encodeRVMIOperand4: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	| op bytes |
	op := instruction spec operands at: 4.
	bytes := self bytesFor: instruction operand4 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:09'!
encodeRVMOperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:19'!
encodeRVMOperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:34'!
encodeRVMOperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:43'!
encodeRVMROperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:51'!
encodeRVMROperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:01'!
encodeRVMROperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:10'!
encodeRVMROperand4: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	| imm |
	imm := instruction operand4 index bitShift: 4.
	instruction immediate: imm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:18'!
encodeT1SOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:27'!
encodeT1SOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:37'!
encodeT1SOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:48'!
encodeT1SRVMOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:57'!
encodeT1SRVMOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:05'!
encodeT1SRVMOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:17'!
encodeTDOperand1: operand 
	"
	Moffs (w)
	AL/AX/EAX/RAX
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:27'!
encodeTDOperand2: operand 
	"
	Moffs (w)
	AL/AX/EAX/RAX
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:38'!
encodeTOOperand1: operand ! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:46'!
encodeTOOperand2: operand ! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:58'!
encodeVMIOperand1: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	instruction vvvv: instruction operand1 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:07'!
encodeVMIOperand2: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:16'!
encodeVMIOperand3: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:28'!
encodeVMOperand1: operand 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	"
	! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:37'!
encodeVMOperand2: operand 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:45'!
encodeXMOperand1: operand 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:59'!
encodeXMOperand2: operand 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:11:50'!
bytesFor: integer length: n 
	| bytes v |
	bytes := ByteArray new: n.
	v := integer.
	v < 0 ifTrue: [v := v + (1 bitShift: n * 8)].
	1 to: n do: [:i | | b |
		b := v bitAnd: 16rFF.
		bytes at: i put: b.
		v := v bitShift: -8].
	^bytes! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:25:43'!
encodeOperand: i of: instruction 
	| selector |
	selector := selectors at: i.
	self perform: selector with: instruction
! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:25:56'!
encodeOperands: instruction 

	1 to: instruction arity do: [:i | self encodeOperand: i of: instruction]! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:33:26'!
immediateOperand 

	^descriptions findFirst: [:d | d includesString: 'IMM']! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:35:17'!
operand: index of: instruction 
	| d |
	d := descriptions at: index.
	(d includesString: 'reg') ifTrue: [^instruction regOperand: index].
	(d includesString: 'r/m') ifTrue: [^instruction rmOperand: index].
	(d includesString: 'vvvv') ifTrue: [^instruction vvvvOperand: index].
	(self isImmediate1Operand: index) ifTrue: [^instruction immediateOperand].
	(self isImmediate2Operand: index) ifTrue: [^instruction immediateOperand2].
	(instruction spec operands at: index) isImmediate
		ifTrue: [^instruction immediateOperand].
	((d beginsWith: 'opcode') and: [index = 1])
		ifTrue: [^instruction opcodeOperand].
	self assert: false! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:33:46'!
isImmediate1Operand: index 

	^(self isImmediateOperand: index)
		and: [(1 to: index - 1) noneSatisfy: [:i | self isImmediateOperand: i]]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:33:59'!
isImmediate2Operand: index 

	^(self isImmediateOperand: index)
		and: [(1 to: index - 1) anySatisfy: [:i | self isImmediateOperand: i]]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:34:25'!
isImmediateOperand: index 

	| d |
	d := descriptions at: index.
	^(d includesString: 'IMM') or: [d includesString: 'OFFS'] or: [d = 'IW']! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:34:41'!
isVvvvOperand: index 

	^(descriptions at: index) includesString: 'VVVV'! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:36'!
usesImmediate 

	^immediate! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:45'!
usesImmediate2 

	^immediate and: [selectors anySatisfy: [:s | s includesString: 'II']]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:59'!
usesModRM 

	^modrm! !

!OperandEncoding class methodsFor: 'instance creation' stamp: 'KenD 4/25/2021 11:11:15'!
named: aString 

	^Encodings
		detect: [:e | e name = aString asUppercase ]
		ifNone: [(aString includes: $-) ifTrue: [self halt]]! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:09:22'!
commentEncodingMethods 
"
	StChangesetBrowser new
		label: 'OperandEncoding comments';
		setModel: (ChangesetBrowserModel on: OperandEncoding commentEncodingMethods);
		openInWindow
"
	| changes |
	changes := OrderedCollection new.
	Encodings collect: [:oe | | comment |
		comment := String streamContents: [:strm | 
			strm crtab; nextPut: $"; crtab.
			oe descriptions do: [:d | strm nextPutAll: d; crtab].
			strm nextPut: $"; cr].
		oe selectors do: [:s | | cm reader source change |
			cm := self >> s.
			reader := cm sourceCode readStream.
			source := String streamContents: [:strm | 
				strm
					nextPutAll: reader nextLine;
					nextPutAll: comment;
					nextPutAll: reader upToEnd].
			change := self project changes
				methodDefinitionClass: self
				sourceCode: source.
			changes add: change]].
	^changes
! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:09:53'!
defs 
	^#(
		#('A' 'imm8')
		#('D' 'offset')
		#('FD' 'AL/AX/EAX/RAX' 'Moffs')
		#('FV' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('FV-RVM' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('I' 'AL/AX/EAX/RAX' 'imm8')
		#('II' 'iw' 'imm8')
		#('M' 'ModRM:r/m (r)')
		#('M1' 'ModRM:r/m (w)' '1')
		#('MC' 'ModRM:r/m (w)' 'CL')
		#('MI' 'ModRM:r/m (r, w)' 'imm8')
		#('MR' 'ModRM:r/m (r, w)' 'ModRM:reg (r)')
		#('MRC' 'ModRM:r/m (w)' 'ModRM:reg (r)' 'CL')
		#('MRI' 'ModRM:r/m (w)' 'ModRM:reg (r)' 'imm8')
		#('MVR' 'ModRM:r/m (w)' 'VEX.vvvv (r)' 'ModRM:reg (r)')
		#('NP' 'ModRM:r/m (w)' 'ModRM:reg (r)')
		#('O' 'opcode + rd (r, w)')
		#('OI' 'opcode + rd (w)' 'imm8/16/32/64')
		#('RM' 'ModRM:reg (r, w)' 'ModRM:r/m (r)')
		#('RM0' 'ModRM:reg (r, w)' 'ModRM:r/m (r)')
		#('RMI' 'ModRM:reg (w)' 'ModRM:r/m (r)' 'imm8')
		#('RMV' 'ModRM:reg (w)' 'ModRM:r/m (r)' 'VEX.vvvv (r)')
		#('RVM' 'ModRM:reg (w)' 'VEX.vvvv' 'ModRM:r/m (r)')
		#('RVMI' 'ModRM:reg (w)' 'VEX.vvvv (r)' 'ModRM:r/m (r)' 'imm8[3:0]')
		#('RVMR' 'ModRM:reg (w)' 'VEX.vvvv (r)' 'ModRM:r/m (r)' 'imm8[7:4]')
		#('T1S' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('T1S-RVM' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('TD' 'Moffs (w)' 'AL/AX/EAX/RAX')
		#('VM' 'VEX.vvvv (w)' 'ModRM:r/m (r)')
		#('VMI' 'VEX.vvvv (w)' 'ModRM:r/m (r)' 'imm8')
		#('XM' 'ModRM:reg (w)' 'ModRM:r/m (r)'))! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:10:16'!
initializeEncodings 
	Encodings := OrderedCollection new.
	self defs
		do: [ :def | 
			| oe n selectors |
			n := def first replaceAllSubstrings: '-' with: ''.
			oe := self new.
			selectors := (2 to: def size)
				collect: [ :i | ('encode' , n , 'Operand' , (i - 1) asString , ':') asSymbol ].
			oe
				name: n;
				selectors: selectors;
				descriptions: def allButFirst.
			selectors
				reject: [ :s | self includesSelector: s ]
				thenDo: [ :s | self compile: s , ' instruction' ].
			Encodings add: oe ].
	Encodings := Encodings asArray! !

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

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:13:02'!
addLiteral: anObject 
	| index | 
	index := literals
		indexOf: anObject
		ifAbsent: [ literals
				add: anObject;
				size ].
	^ index + 2! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:17:30'!
addressOfExternal: function 

	^ExternalFunctions at: function ifAbsent: nil! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:10:50'!
aspects 

	^#(#disassembledText32 #disassembledText64)! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:33:17'!
disassembledText32 

	^self nativeCode disassembledText32! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:34:05'!
disassembledText64 

	^self nativeCode disassembledText64! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:34:21'!
discardArguments: anInteger 

	anInteger = 0 ifTrue: [^self].
	self addSPwithImmediate: anInteger * wordSize! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:34:44'!
divideDoubleX0byX1 

	self assemble: 'divsd' with: XMM0 with: XMM1! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:35:15'!
divideRbyT 
	| conversion |
	self assert: (self regR r == RAX and: [self regA r == RDX]).
	conversion := wordSize = 8 ifTrue: ['cqo'] ifFalse: ['cdq'].
	self
		assemble: conversion;
		assemble: 'idiv' with: self regT! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:35:36'!
dropTopOfFPU 
"
	fstp st(0)
"
	self assembleBytes: #[16rDD 16rD8]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:35:57'!
dropTos: count 
	| imm |
	imm := count * self addressSize.
	self assemble: 'add' with: self regSP with: imm! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 13:36:19'!
dummyPointer 
	#dontOptimize.
	^wordSize = 8 ifTrue: [16r1BADADD01BADADD0] ifFalse: [16r1BADADD0]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:21:58'!
nativeCode 

	^(NativeCode withAll: literals) code: memory bytes! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:30:41'!
regA 

	^wordSize = 8 ifTrue: [RDX] ifFalse: [EDX]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:31:00'!
regA8 

	^DL! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:31:20'!
regB 

	^wordSize = 8 ifTrue: [RBX] ifFalse: [EBX]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:32:00'!
regC 

	^wordSize = 8 ifTrue: [RBX] ifFalse: [EBX]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:32:38'!
regE 

	^wordSize = 8 ifTrue: [RDI] ifFalse: [EDI]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:33:01'!
regFP 

	^wordSize = 8 ifTrue: [RBP] ifFalse: [EBP]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:33:24'!
regFalse 

	^ R14! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:33:41'!
regG

	^R15! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:33:58'!
regIP 

	^ RIP! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:34:11'!
regM 

	^RBX! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:34:28'!
regNil 

	^ R12! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:34:53'!
regR 

	^wordSize = 8 ifTrue: [RAX] ifFalse: [EAX]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:35:41'!
regR8 

	^AL! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:36:01'!
regS 

	^wordSize = 8 ifTrue: [RSI] ifFalse: [ESI]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:36:19'!
regSP 

	^wordSize = 8 ifTrue: [RSP] ifFalse: [ESP]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:36:38'!
regT 

	^wordSize = 8 ifTrue: [RCX] ifFalse: [ECX]! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:36:55'!
regT8 

	^ CL! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 14:37:07'!
regTrue 

	^ R13! !

!JITAssembler64 methodsFor: 'accessing' stamp: 'KenD 3/8/2021 15:58:57'!
wordSize 

	^wordSize! !

!JITAssembler64 methodsFor: 'services' stamp: 'KenD 3/8/2021 14:38:01'!
reset 

	super reset.
	literals := OrderedCollection new! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:12:26'!
addAtoR 

	self assemble: 'add' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:12:52'!
addDoubleX1toX0 

	self assemble: 'addsd' with: XMM0 with: XMM1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:17:43'!
andRwithA 

	self assemble: 'and' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:17:55'!
andRwithImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'and' with: self regR withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:18:08'!
andTosWithImmediate: anInteger 
	#imm8.
	#imm32.
	pointer reset; length: self addressLength; base: self regSP.
	self assemble: 'and' with: pointer withImm: anInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:18:22'!
buildFrame 

	self
		push: self regFP;
		move: self regSP to: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:18:34'!
callA 

	self assemble: 'call' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:19:13'!
callIndirectA 

	pointer reset; length: self addressLength; base: self regA.
	self assemble: 'call' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:19:33'!
callIndirectM 

	pointer reset; length: self addressLength; base: self regM.
	self assemble: 'call' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:19:55'!
callR 

	self assemble: 'call' with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:20:08'!
clearAintegerBit 

	self assemble: 'dec' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:21:16'!
clearFPUFlags 

	self assemble: 'fnclex'! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:21:34'!
clearRhighHalf 

	self assemble: 'mov' with: self regR e with: self regR e! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:21:46'!
clearRintegerBit 

	self assemble: 'dec' with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:22:21'!
compare: register withBoolean: aBoolean 

	aBoolean
		ifTrue: [ self compareWithTrue: register ]
		ifFalse: [ self compareWithFalse: register ]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:22:53'!
compare: register withLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self
		assemble: 'cmp'
		withReg: register
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:23:14'!
compareAwithBoolean: aBoolean 

	aBoolean
		ifTrue: [ self compareAwithTrue ]
		ifFalse: [ self compareAwithFalse ]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:23:51'!
compareAwithFalse 

	self assemble: 'cmp' with: self regA with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:24:05'!
compareAwithImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'cmp' with: self regA withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:24:19'!
compareAwithSmallInteger: anInteger 

	self compareAwithImmediate: (anInteger bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:24:56'!
compareAwithTrue 

	self assemble: 'cmp' with: self regA with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:25:15'!
compareEqualLargeX0withAindirect 

	pointer reset; length: 64; base: self regA.
	self assemble: 'cmpsd' with: XMM0 with: pointer with: 0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:25:42'!
compareLessThanLargeX0withAindirect 

	pointer reset; length: 64; base: self regA.
	self assemble: 'cmpsd' with: XMM0 with: pointer with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:25:57'!
compareRwithA 

	self assemble: 'cmp' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:26:25'!
compareRwithBoolean: aBoolean 

	aBoolean
		ifTrue: [ self compareRwithTrue ]
		ifFalse: [ self compareRwithFalse ]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:26:53'!
compareRwithEindex: index 

	self assemble: 'cmp' withReg: self regR withReg: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:27:12'!
compareRwithFPindex: index 

	self assemble: 'cmp' withReg: self regR withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:27:22'!
compareRwithFalse 

	self assemble: 'cmp' with: self regR with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:27:37'!
compareRwithImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'cmp' with: self regR withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:28:07'!
compareRwithNil 

	self assemble: 'cmp' with: self regR with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:28:25'!
compareRwithS 

	self assemble: 'cmp' with: self regR with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:28:37'!
compareRwithSindex: index 

	self assemble: 'cmp' withReg: self regR withReg: self regS index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:29:00'!
compareRwithSmallInteger: anInteger 

	self compareRwithImmediate: (anInteger bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:29:18'!
compareRwithTrue 

	self assemble: 'cmp' with: self regR with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:29:27'!
compareRwithVindex: index 

	self assemble: 'cmp' withReg: self regR withReg: self regV index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:29:39'!
compareSwithTindex: index 

	self assemble: 'cmp' withReg: self regS withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:29:53'!
compareTwithA 

	self assemble: 'cmp' with: self regT with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:30:06'!
compareTwithImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'cmp' with: self regT withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:30:18'!
compareWithFalse: register 

	self assemble: 'cmp' with: register with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:30:29'!
compareWithNil: register 

	self assemble: 'cmp' with: register with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:30:48'!
compareWithTrue: register 

	self assemble: 'cmp' with: register with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:30:57'!
convertAtoNativeInteger 

	self convertToNativeInteger: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:31:14'!
convertAtoSmallInteger 

	self convertToSmallInteger: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:31:32'!
convertRtoNativeInteger 

	self convertToNativeInteger: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:31:42'!
convertRtoSmallInteger 

	self convertToSmallInteger: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:01'!
convertTToNativeInteger 

	self convertToNativeInteger: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:09'!
convertTosToSmallInteger 

	pointer reset; length: self addressLength; base: self regSP.
	self
		assemble: 'shl' with: pointer with: 1;
		assemble: 'inc' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:22'!
convertTtoNativeInteger 

	self convertToNativeInteger: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:31'!
dec: op1 

	self assemble: 'dec' with: op1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:43'!
decR 

	self assemble: 'dec' with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:32:54'!
decRindirect 

	pointer reset; length: self addressLength; base: self regR.
	self assemble: 'dec' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:37:26'!
ensureRintegerBit 

	self assemble: 'or' with: AL with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:37:44'!
ensureSafeRintegerBit 

	self assemble: 'or' with: AL with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:38:04'!
exchangeRindirectWithT 

	pointer reset; length: self addressLength; base: self regR.
	self assemble: 'xchg' with: pointer with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:38:16'!
incA 

	self assemble: 'inc' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:38:38'!
incC 

	self assemble: 'inc' with: self regC! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:39:49'!
initializeS 

	self assemble: 'mov' with: self regS with: self regR
! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:40:01'!
jumpIndirectA 

	pointer reset; length: self addressLength; base: self regA.
	self assemble: 'jmp' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:41:20'!
jumpToA 

	self assemble: 'jmp' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:41:41'!
jumpToMindex: index 

	self assemble: 'jmp' withReg: self regM index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:41:53'!
jumpToS 

	self assemble: 'jmp' with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:42:09'!
jumpToTindex: index 

	self assemble: 'jmp' withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:42:21'!
labeledIntegerBitTestOf: aRegister 
	| label |
	self testIntegerBitOf: aRegister.
	label := self newLabel.
	self shortJumpIfZeroTo: label.
	^label! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:42:51'!
labeledIntegerBitTestOfA 

	^self labeledIntegerBitTestOf: self regA8! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:43:11'!
labeledIntegerBitTestOfR 

	^self labeledIntegerBitTestOf: self regR8! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:43:21'!
labeledIntegerBitTestOfT 

	^self labeledIntegerBitTestOf: self regT byte! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:43:34'!
labeledIntegerNativizationOf: aRegister 
	| label |
	self convertToNativeInteger: aRegister.
	label := self newLabel.
	self shortJumpIfNotCarryTo: label.
	^label! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:43:49'!
labeledIntegerNativizationOfA 

	^self labeledIntegerNativizationOf: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:44:40'!
labeledIntegerNativizationOfR 

	^self labeledIntegerNativizationOf: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:45:04'!
labeledIntegerNativizationOfT 

	^self labeledIntegerNativizationOf: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:45:15'!
labeledNonIntegerBitTestOf: aRegister 
	| label |
	self testIntegerBitOf: aRegister.
	label := self newLabel.
	self shortJumpIfNotZeroTo: label.
	^label! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:46:02'!
labeledNonIntegerBitTestOfR 

	^self labeledNonIntegerBitTestOf: self regR8! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:22:10'!
learSafeRintegerBit 

	immediate value: 16rFE; length: 8.
	self assemble: 'and' with: AL with: immediate! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:46:13'!
load: register withLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self
		assemble: 'mov'
		withReg: register
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:46:28'!
loadAwithAindex: index 

	self assemble: 'mov' withReg: self regA withReg: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:47:12'!
loadAwithBoolean: aBoolean 

	aBoolean ifTrue: [self loadAwithTrue]
	ifFalse: [self loadAwithFalse]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:47:27'!
loadAwithEindex: index 

	self assemble: 'mov' withReg: self regA withReg: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:47:38'!
loadAwithFPindex: index 

	self assemble: 'mov' withReg: self regA withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:47:49'!
loadAwithFalse 

	self assemble: 'mov' with: self regA with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:48:01'!
loadAwithGindex: index 

	self
		assemble: 'mov'
		withReg: self regA
		withReg: self regG
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:48:11'!
loadAwithGlobal: aSymbol 
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadAwithGindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:48:29'!
loadAwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regA withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:50:56'!
loadAwithKnown: anObject 

	self breakpoint! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:51:06'!
loadAwithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadAwithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:51:18'!
loadAwithMindex: index 

	self
		assemble: 'mov'
		withReg: self regA
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:51:29'!
loadAwithNil 

	self assemble: 'mov' with: self regA with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:51:40'!
loadAwithR 

	self assemble: 'mov' with: self regA with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:51:53'!
loadAwithRindex: index 

	self assemble: 'mov' withReg: self regA withReg: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:52:03'!
loadAwithRoffsetAtA 

	pointer
		reset;
		length: self addressLength;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: self regA with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:52:15'!
loadAwithS 

	self assemble: 'mov' with: self regA with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:52:25'!
loadAwithSindex: index 

	self assemble: 'mov' withReg: self regA withReg: self regS index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:52:41'!
loadAwithSmallInteger: anInteger 

	self loadAwithImmediate: (anInteger bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:52:57'!
loadAwithT 

	self assemble: 'mov' with: self regA with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:53:17'!
loadAwithTrue 

	self assemble: 'mov' with: self regA with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:53:42'!
loadEwithFPindex: index 

	self assemble: 'mov' withReg: self regE withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:53:52'!
loadEwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regE withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:09'!
loadEwithNil 

	self assemble: 'mov' with: self regE with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:18'!
loadEwithR 

	self assemble: 'mov' with: self regE with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:28'!
loadFPwithR 

	self assemble: 'mov' with: self regFP with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:38'!
loadFPwithSP 

	self assemble: 'mov' with: self regFP with: self regSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:48'!
loadFalseWithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadFalseWithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:54:57'!
loadFalseWithMindex: index 

	self assemble: 'mov' withReg: self regFalse withReg: self regM index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:55:09'!
loadGwithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadGwithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:55:25'!
loadGwithMindex: index 

	self assemble: 'mov' withReg: self regG withReg: self regM index: index
! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:55:43'!
loadLargeX0withRindirect 

	pointer reset; length: 64; base: self regR.
	self assemble: 'movq' with: XMM0 with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:55:57'!
loadLargeX1withAindirect 

	pointer reset; length: 64; base: self regA.
	self assemble: 'movq' with: XMM1 with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:56:10'!
loadLongMwithIPoffset: anInteger 
	| instsize |
	#dontOptimize.
	instsize := 6.
	pointer
		reset;
		length: 32;
		base: self regIP;
		displacement: anInteger - instsize.
	self assemble: 'mov' with: self regM e with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:56:27'!
loadLongRWithRAtOffsetA 

	pointer
		reset;
		length: 32;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: self regR e with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:56:37'!
loadLongRwithRatOffsetA 

	pointer
		reset;
		length: 32;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: self regR e with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:56:52'!
loadLongSwithRindex: index 
	#dontOptimize.
	pointer
		reset;
		length: 32;
		base: self regR;
		displacement: index - 1 * 4.
	self assemble: 'mov' with: self regS e with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:57:11'!
loadMXCSRfromA 

	pointer reset; length: 32; base: self regA.
	self assemble: 'ldmxcsr' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:57:21'!
loadMwithA 

	self assemble: 'mov' with: self regM with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:57:31'!
loadMwithFPindex: index 

	self
		assemble: 'mov'
		withReg: self regM
		withReg: self regFP
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:57:45'!
loadMwithGindex: index 

	self assemble: 'mov' withReg: self regM withReg: self regG index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:57:57'!
loadMwithGlobal: aSymbol 
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadMwithGindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:58:08'!
loadMwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regM withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:58:17'!
loadMwithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadMwithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:58:28'!
loadMwithMindex: index 

	self
		assemble: 'mov'
		withReg: self regM
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:00:27'!
loadMwithRIPoffset: imm 

	pointer
		reset;
		length: self addressLength;
		base: RIP;
		displacement: imm.

	self assemble: 'lea' with: self regM with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:01:42'!
loadMwithRindex: index 

	self
		assemble: 'mov'
		withReg: self regM
		withReg: self regR
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:02:12'!
loadMwithTindex: index 

	self assemble: 'mov' withReg: self regM withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:02:22'!
loadNilWithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadNilWithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:02:35'!
loadNilWithMindex: index 

	self assemble: 'mov' withReg: self regNil withReg: self regM index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:02:45'!
loadRConvertingDoubleRindirect 

	pointer reset; length: 64; base: self regR.
	self assemble: 'cvttsd2si' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:02:57'!
loadRconvertingDoublePointedByR 

	pointer reset; length: 64; base: self regR.
	self assemble: 'cvttsd2si' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:07'!
loadRwithA 

	self assemble: 'mov' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:18'!
loadRwithArgPointer 

	pointer
		reset;
		length: self addressLength;
		base: self regFP;
		displacement: wordSize * 2.
	self assemble: 'lea' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:30'!
loadRwithBoolean: aBoolean 

	aBoolean
		ifTrue: [ self loadRwithTrue ]
		ifFalse: [ self loadRwithFalse ]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:39'!
loadRwithE 

	self assemble: 'mov' with: self regR with: self regE! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:48'!
loadRwithEindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:03:58'!
loadRwithFP 

	self assemble: 'mov' with: self regR with: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:04:19'!
loadRwithFPindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:04:33'!
loadRwithFalse 

	self assemble: 'mov' with: self regR with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:04:43'!
loadRwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regR withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:04:55'!
loadRwithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadRwithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:05:04'!
loadRwithM 

	self assemble: 'mov' with: self regR with: self regM! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:05:15'!
loadRwithMindex: index 

	self
		assemble: 'mov'
		withReg: self regR
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:05:27'!
loadRwithNil 

	self assemble: 'mov' with: self regR with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:05:37'!
loadRwithRatA 

	self load: self regR from: self regR atIndexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:06:35'!
loadRwithRatOffsetA 

	pointer
		reset;
		length: self addressLength;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:06:46'!
loadRwithRbyte: index 

	pointer
		reset;
		length: 8;
		base: self regR;
		displacement: index - 1.
	self
		assemble: 'mov' with: self regR b with: pointer;
		andRwithImmediate: 16rFF;
		convertRtoSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:06:58'!
loadRwithRindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:07:09'!
loadRwithRwordAt: index 

	pointer
		reset;
		length: 16;
		base: self regR;
		displacement: index - 1.
	self
		assemble: 'mov' with: self regR with: pointer;
		andRwithImmediate: 16rFFFF;
		convertRtoSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:07:19'!
loadRwithS 

	self assemble: 'mov' with: self regR with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:07:29'!
loadRwithSP 

	self assemble: 'mov' with: self regR with: self regSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:07:40'!
loadRwithSPindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regSP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:07:51'!
loadRwithSbyte: index 
	pointer
		reset;
		length: 8;
		base: self regS;
		displacement: index - 1.
	self
		assemble: 'mov' with: self regR b with: pointer;
		andRwithImmediate: 16rFF;
		convertRtoSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:08:02'!
loadRwithSindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regS index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:08:10'!
loadRwithSmallInteger: anInteger 

	self loadRwithImmediate: (anInteger bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:08:21'!
loadRwithSwordAt: index 

	pointer
		reset;
		length: 16;
		base: self regS;
		displacement: index - 1.
	self
		assemble: 'mov' with: self regR w with: pointer;
		andRwithImmediate: 16rFFFF;
		convertRtoSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:08:50'!
loadRwithT 

	self assemble: 'mov' with: self regR with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:09:17'!
loadRwithTIBatIndexR 
	| seg |
	seg := wordSize = 8 ifTrue: [GS] ifFalse: [FS].
	pointer
		reset;
		length: self addressLength;
		index: self regR;
		scale: wordSize;
		segment: seg.
	self assemble: 'mov' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:09:49'!
loadRwithThreadVariableAtIndexR 

	pointer
		reset;
		length: self addressLength;
		index: self regR;
		scale: wordSize.
	wordSize = 8
		ifTrue: [pointer segment: GS; displacement: 16r1480]
		ifFalse: [pointer segment: FS; displacement: 16rE10].
	self assemble: 'mov' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:03'!
loadRwithTindex: index 

	self assemble: 'mov' withReg: self regR withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:15'!
loadRwithTos 

	pointer reset; length: self addressLength; base: self regSP.
	self assemble: 'mov' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:25'!
loadRwithTrue 

	self assemble: 'mov' with: self regR with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:41'!
loadRwithX0 
	| mov |
	mov := wordSize = 8 ifTrue: ['movq'] ifFalse: ['movd'].
	self assemble: mov with: self regR with: XMM0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:50'!
loadSPwithFP 

	self assemble: 'mov' with: self regSP with: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:10:59'!
loadSPwithT 

	self assemble: 'mov' with: self regSP with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:11:11'!
loadSWithRIndex: index 

	self load: self regS from: self regR atIndex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:11:21'!
loadSwithA 

	self assemble: 'mov' with: self regS with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:11:37'!
loadSwithAddressOfSatA 

	pointer
		reset;
		length: self addressLength;
		base: self regS;
		index: self regA;
		scale: self regS sizeInBytes;
		displacement: 0 - self regS sizeInBytes.
	self assemble: 'lea' with: self regS with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:11:48'!
loadSwithFPindex: index 

	self assemble: 'mov' withReg: self regS withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:11:56'!
loadSwithGindex: index 

	self assemble: 'mov' withReg: self regS withReg: self regG index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:12:06'!
loadSwithGlobal: aSymbol 
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadSwithGindex: index
! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:12:24'!
loadSwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regS withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:12:34'!
loadSwithNil 

	self assemble: 'mov' with: self regS with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:12:44'!
loadSwithRindex: index 

	self assemble: 'mov' withReg: self regS withReg: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:12:52'!
loadSwithT 

	self assemble: 'mov' with: self regS with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:13:09'!
loadTrueWithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadTrueWithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:13:43'!
loadTrueWithMindex: index 

	self assemble: 'mov' withReg: self regTrue withReg: self regM index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:13:53'!
loadTwithA 

	self assemble: 'mov' with: self regT with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:14:04'!
loadTwithAindex: index 

	self assemble: 'mov' withReg: self regT withReg: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:14:19'!
loadTwithEindex: index 

	self assemble: 'mov' withReg: self regT withReg: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:14:49'!
loadTwithFPindex: index 

	self assemble: 'mov' withReg: self regT withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:14:58'!
loadTwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regT withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:15:08'!
loadTwithLiteral: anObject 
	| index |
	index := self addLiteral: anObject.
	self loadTwithMindex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:15:20'!
loadTwithMindex: index 

	self
		assemble: 'mov'
		withReg: self regT
		withReg: self regM
		index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:15:33'!
loadTwithR 

	self assemble: 'mov' with: self regT with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:15:45'!
loadTwithTindex: index 

	self assemble: 'mov' withReg: self regT withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:16:05'!
loadVwithImmediate: imm 
	#imm32.
	self assemble: 'mov' with: self regV withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:16:14'!
loadWithFalse: register 

	self assemble: 'mov' with: register with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:16:24'!
loadWithNil: register 

	self
		assemble: 'mov'
		with: register
		with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:16:38'!
loadWithTrue: register 

	self assemble: 'mov' with: register with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:16:54'!
loadX0withRasDouble 

	self assemble: 'cvtsi2sd' with: XMM0 with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:17:19'!
loadX1roundingX0 

	self assemble: 'roundsd' with: XMM1 with: XMM0 with: 3! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:17:58'!
loadZeroExtendByteRwithRatA 

	self loadZeroExtendByte: self regR from: self regR atIndexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:18:09'!
loadZeroExtendByteRwithRindex: index 
	#dontOptimize.
	self loadZeroExtendByte: self regR from: self regR atIndex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:18:20'!
loadZeroExtendByteRwithSPatA 

	self loadZeroExtendByte: self regR from: self regSP atIndexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:18:32'!
loadZeroExtendByteTwithAindex: index 
	#dontOptimize.
	self loadZeroExtendByte: self regT from: self regA atIndex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:18:42'!
loadZeroExtendLongRwithRatA 

	self load: self regR e from: self regR atIndexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:19:16'!
loadZeroExtendLongRwithRindex: index 
	#dontOptimize.
	self load: self regR e from: self regR atIndex: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:19:25'!
loadZeroExtendShortRwithRoffset: offset 

	pointer
		reset;
		length: 16;
		base: self regR;
		displacement: offset.
	self assemble: 'movzx' with: self regR with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:19:39'!
lock 

	self assembleByte: 16rF0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:19:51'!
loop: aBlock times: anInteger 
	| loop |
	loop := self newLabel.
	self loadTwithImmediate: anInteger; @ loop.
	aBlock value.
	self dec: self regT; shortJumpIfNotZeroTo: loop
! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:20:00'!
loopTo: label 
	self
		assemble: 'dec' with: self regT;
		jumpIfNotZeroTo: label! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:20:14'!
loopTtimes: aBlock 
	| loop end |
	loop := self newLabel.
	end := self newLabel.
	self
		compareTwithImmediate: 0;
		@ loop;
		shortJumpIfEqualTo: end.
	aBlock value.
	self
		dec: self regT;
		shortJumpTo: loop;
		@ end! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:20:28'!
moveTslots 
	| rep mnemonic |
	rep := 16rF3.
	mnemonic := wordSize = 8 ifTrue: ['movsq'] ifFalse: ['movsd'].
	self assembleByte: rep; assemble: mnemonic! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:20:46'!
multiplyDoubleX0byX1 

	self assemble: 'mulsd' with: XMM0 with: XMM1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:21:13'!
multiplyRbyA 

	self assert: (self regR r == RAX and: [self regA r == RDX]).
	self assemble: 'imul' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:21:34'!
multiplyRbyConstant: imm 

	self assemble: 'imul' with: self regR with: self regR with: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:53:28'!
oadEwithAddressOfRatA 

	pointer
		reset;
		length: self addressLength;
		base: self regR;
		index: self regA;
		scale: self regE sizeInBytes;
		displacement: 0 - self regE sizeInBytes.
	self assemble: 'lea' with: self regE with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 13:27:49'!
ompareRwithIndirect: reg1 andExchange: reg2 

	pointer reset; length: self addressLength; base: reg1.
	self assemble: 'cmpxchg' with: pointer with: reg2! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:31'!
opTrue 

	self assemble: 'pop' with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:22:10'!
orRwithA 

	self assemble: 'or' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:22:18'!
popA 

	self assemble: 'pop' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:22:34'!
popB 

	self assemble: 'pop' with: self regB! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:22:46'!
popE 

	self assemble: 'pop' with: self regE! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:22:54'!
popFP 

	self assemble: 'pop' with: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:10'!
popFalse 

	self assemble: 'pop' with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:18'!
popG 

	self assemble: 'pop' with: self regG! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:27'!
popM 

	self assemble: 'pop' with: self regM! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:36'!
popNil 

	self assemble: 'pop' with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:45'!
popR 

	self assemble: 'pop' with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:23:55'!
popS 

	self assemble: 'pop' with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:05'!
popSP 

	self assemble: 'pop' with: self regSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:15'!
popSPindirect 

	pointer reset; length: self addressLength; base: self regSP.
	self assemble: 'pop' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:22'!
popT 

	self assemble: 'pop' with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:40'!
pushA 

	self assemble: 'push' with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:24:49'!
pushAOnFPUStack 

	pointer reset; length: 64; base: self regA.
	self assemble: 'fld' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:25:10'!
pushAatToffset: offset 

	pointer
		reset;
		length: self addressLength;
		base: self regA;
		index: self regT;
		scale: self regSP sizeInBytes;
		displacement: offset.
	self assemble: 'push' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:25:39'!
pushB 

	self assemble: 'push' with: self regB! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:25:47'!
pushE 

	self assemble: 'push' with: self regE! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:00'!
pushEindex: index 

	self assemble: 'push' withReg: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:09'!
pushFP 

	self assemble: 'push' with: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:18'!
pushFPindex: index 

	self assemble: 'push' withReg: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:27'!
pushFalse 

	self assemble: 'push' with: self regFalse! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:40'!
pushG 

	self assemble: 'push' with: self regG! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:26:48'!
pushImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'push' withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:00'!
pushIndirectR 

	pointer reset; length: self addressLength; base: self regR.
	self assemble: 'push' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:09'!
pushM 

	self assemble: 'push' with: self regM! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:18'!
pushNil 

	self assemble: 'push' with: self regNil! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:26'!
pushR 

	self assemble: 'push' with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:34'!
pushROnFPUStack 

	pointer reset; length: 64; base: self regR.
	self assemble: 'fld' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:27:48'!
pushRbyte: index 

	pointer
		reset;
		length: self addressLength;
		base: self regR;
		displacement: index - 1.
	self
		assemble: 'push' with: pointer;
		andTosWithImmediate: 16rFF;
		convertTosToSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:00'!
pushRwordAt: index 

	pointer
		halt;
		reset;
		length: self addressLength;
		base: self regR;
		displacement: index - 1.
	self
		assemble: 'push' with: pointer;
		andTosWithImmediate: 16rFFFF;
		convertTosToSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:08'!
pushS 

	self assemble: 'push' with: self regS! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:16'!
pushSP 

	self assemble: 'push' with: self regSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:25'!
pushSbyte: index 

	pointer
		reset;
		length: self addressLength;
		base: self regS;
		displacement: index - 1.
	self
		assemble: 'push' with: pointer;
		andTosWithImmediate: 16rFF;
		convertTosToSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:35'!
pushSindex: index 

	self assemble: 'push' withReg: self regS index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:43'!
pushSmallInteger: integer 

	self pushImmediate: (integer bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:28:52'!
pushSwordAt: index 

	pointer
		reset;
		length: self addressLength;
		base: self regS;
		displacement: index - 1.
	self
		assemble: 'push' with: pointer;
		andTosWithImmediate: 16rFFFF;
		convertTosToSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:29:01'!
pushT 

	self assemble: 'push' with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:29:15'!
pushTindex: index 

	self assemble: 'push' withReg: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:29:22'!
pushTrue 

	self assemble: 'push' with: self regTrue! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:29:32'!
pushVindex: index 

	self assemble: 'push' withReg: self regV index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:29:43'!
readFPUStatusOnA 

	pointer reset; length: 16; base: self regA.
	self assemble: 'fstsw' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:37:25'!
reserveStackSlots: amount 

	self subtract: amount * self addressSize from: self regSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:38:18'!
restoreCallerEnvironment 

	self loadEwithFPindex: -2! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:38:31'!
restoreCallerFrame 

	self
		move: self regFP to: self regSP;
		pop: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:38:41'!
restoreCallerM 

	self loadMwithFPindex: -1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:38:50'!
restoreCallerSelf 

	self loadSwithFPindex: 0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:38:59'!
restoreRSmallInteger 

	self assemble: 'rcl' with: self regR with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:39:09'!
restoreRsmallInteger 

	self assemble: 'rcl' with: self regR with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:39:38'!
returnFromCallback: argCount 

	wordSize = 4 ifTrue: [self return: argCount] ifFalse: [self return]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:39:48'!
saveCallerFrame 

	self pushFP; loadFPwithSP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:39:56'!
scaleFloatOnRWithA 

	self pushAOnFPUStack; pushROnFPUStack; assemble: 'fscale'.
	pointer reset; length: 64; base: self regR.
	self assemble: 'fstp' with: pointer; dropTopOfFPU! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:40:13'!
shiftLeftRwithT 

	self assert: self regT r == RCX.
	self assemble: 'sal' with: self regR with: self regT b! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:40:26'!
shiftLogicalRright: count 

	self assert: count < 32.
	self assemble: 'shr' with: self regR with: count! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:40:46'!
shiftRightRwithT 

	self assert: self regT r == RCX.
	self assemble: 'sar' with: self regR with: self regT b! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:40:58'!
shiftRleft: count 

	self assert: count < 32.
	self assemble: 'sal' with: self regR with: count! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:41:13'!
shiftRright: count 

	self assert: count < (wordSize * 8).
	self assemble: 'sar' with: self regR with: count! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:41:24'!
shiftTleft: count 

	self assert: count < 32.
	self assemble: 'sal' with: self regT with: count! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:41:39'!
shiftTright: count 
	
	self assert: count < 32.
	self assemble: 'sar' with: self regT with: count! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:41:52'!
smallInteger: anInteger 

	^(anInteger bitShift: 1) + 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:42:23'!
sqrtDoubleX0 

	self assemble: 'sqrtsd' with: XMM0 with: XMM0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:42:35'!
storeAinRindex: index 

	self store: self regA in: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:42:44'!
storeAinSPatT 

	self store: self regA in: self regSP indexAt: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:43:27'!
storeAinThreadVariableAtIndexR 

	pointer
		reset;
		length: self addressLength;
		index: self regR;
		scale: wordSize.
	wordSize = 8
		ifTrue: [pointer segment: GS; displacement: 16r1480]
		ifFalse: [pointer segment: FS; displacement: 16rE10].
	self assemble: 'mov' with: pointer with: self regA
! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:43:38'!
storeAinTindex: index 

	self store: self regA in: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:44:18'!
storeArgumentsInStack 

	self
		store: RCX in: RBP index: 3;
		store: RDX in: RBP index: 4;
		store: R8 in: RBP index: 5;
		store: R9 in: RBP index: 6! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 14:44:31'!
storeByteAinRindex: index 
	#dontOptimize.
	pointer
		reset;
		length: 8;
		base: self regR;
		displacement: index - 1.
	self assemble: 'mov' with: pointer with: self regA b! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:47:03'!
storeByteTinRatA 

	pointer
		reset;
		length: 8;
		base: self regR;
		index: self regA;
		displacement: -1.
	self assemble: 'mov' with: pointer with: self regT b! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:47:22'!
storeDoubleResultInRindirect 

	pointer reset; length: 64; base: self regR.
	wordSize = 8
		ifTrue: [self assemble: 'movq' with: pointer with: XMM0]
		ifFalse: [self assemble: 'fstp' with: pointer]! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:49:54'!
storeEinAindex: index 

	self store: self regE in: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:50:05'!
storeEinRindex: index 

	self store: self regE in: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:50:35'!
storeLargeX0inA 

	pointer reset; length: 64; base: self regA.
	self assemble: 'movq' with: pointer with: XMM0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:50:56'!
storeLargeX0inR 

	pointer reset; length: 64; base: self regR.
	self assemble: 'movq' with: pointer with: XMM0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:51:15'!
storeLargeX0inT 

	pointer reset; length: 64; base: self regT.
	self assemble: 'movq' with: pointer with: XMM0! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:52:19'!
storeLongTInRAtA 

	self store: self regT e in: self regR indexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:52:27'!
storeLongTinRatA 

	self store: self regT e in: self regR indexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:52:36'!
storeLongTinRatOffsetA 

	pointer
		reset;
		length: 32;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: pointer with: self regT e! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:52:46'!
storeMXCSRintoA 

	pointer reset; length: 32; base: self regA.
	self assemble: 'stmxcsr' with: pointer! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:52:56'!
storeRinAindex: index 

	self store: self regR in: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:53:06'!
storeRinEindex: index 

	self store: self regR in: self regE index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:53:16'!
storeRinFPindex: index 

	self store: self regR in: self regFP index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:53:36'!
storeRinSbyte: index 

	pointer
		reset;
		length: 8;
		base: self regS;
		displacement: index - 1.
	self assemble: 'mov' with: pointer with: self regR b! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:53:47'!
storeRinSwordAt: index 

	pointer
		reset;
		length: 16;
		base: self regS;
		displacement: index - 1.
	self
		convertRtoNativeInteger;
		assemble: 'mov' with: pointer with: self regR w;
		convertRtoSmallInteger! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:53:57'!
storeRinTindex: index 

	self store: self regR in: self regT index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:54:07'!
storeShortAinRoffset: offset 

	pointer
		reset;
		length: 16;
		base: self regR;
		displacement: offset.
	self assemble: 'mov' with: pointer with: self regA w! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:54:20'!
storeShortTinRatOffsetA 

	pointer
		reset;
		length: 16;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: pointer with: self regT w! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:54:29'!
storeSinAindex: index 

	self store: self regS in: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:54:38'!
storeSinRindex: index 

	self store: self regS in: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:54:57'!
storeTIBwithAatIndexR 
	| seg |
	seg := wordSize = 8 ifTrue: [GS] ifFalse: [FS].
	pointer
		reset;
		length: self addressLength;
		index: self regR;
		scale: wordSize;
		segment: seg.
	self assemble: 'mov' with: pointer with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:55:06'!
storeTInRAtA 

	self store: self regT in: self regR indexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:55:20'!
storeTinAindex: index 

	self store: self regT in: self regA index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:55:30'!
storeTinRatA 

	self store: self regT in: self regR indexAt: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:55:38'!
storeTinRatOffsetA 

	pointer
		reset;
		length: self addressLength;
		base: self regR;
		index: self regA.
	self assemble: 'mov' with: pointer with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:55:48'!
storeTinRindex: index 

	self store: self regT in: self regR index: index! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:56:04'!
subAfromR 

	self assemble: 'sub' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:56:14'!
subAfromT 

	self assemble: 'sub' with: self regT with: self regA! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:56:38'!
subDoubleX1fromX0 

	self assemble: 'subsd' with: XMM0 with: XMM1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:56:47'!
subFromRconstant: imm 

	self assemble: 'sub' with: self regR withImm: imm! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:57:21'!
subTfromR 

	self assemble: 'sub' with: self regR with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:57:09'!
subTslotsToSP 

	self assemble: 'neg' with: self regT.
	pointer
		reset;
		length: self addressLength;
		base: self regSP;
		index: self regT;
		scale: self regSP sizeInBytes.
	self
		assemble: 'lea' with: self regSP with: pointer;
		assemble: 'neg' with: self regT! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:57:59'!
testAintegerBit 

	self assemble: 'test' with: self regA8 with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:57:42'!
testIntegerBitOf: aRegister 

	self assemble: 'test' with: aRegister byte with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:58:10'!
testRintegerBit 

	self assemble: 'test' with: self regR8 with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:58:19'!
testRwithR 

	self assemble: 'test' with: self regR with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:58:28'!
testTIntegerBit 

	self assemble: 'test' with: self regT byte with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:58:37'!
testTintegerBit 

	self assemble: 'test' with: self regT byte with: 1! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:59:17'!
writeTslots 
	| rep mnemonic |
	rep := 16rF3.
	mnemonic := wordSize = 8 ifTrue: ['stosq'] ifFalse: ['stosd'].
	self assembleByte: rep; assemble: mnemonic! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:59:28'!
xorAwithR 

	self assemble: 'xor' with: self regA with: self regR! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:59:37'!
xorFPwithFP 

	self assemble: 'xor' with: self regFP with: self regFP! !

!JITAssembler64 methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 15:59:45'!
xorRwithA 

	self assemble: 'xor' with: self regR with: self regA! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:14:03'!
addRconstant: imm 

	self assemble: 'add' with: self regR withImm: imm! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:14:57'!
addSPtoT 

	self assemble: 'add' with: self regT with: self regSP! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:15:11'!
addSPwithImmediate: imm 
	#imm8.
	#imm32.
	self assemble: 'add' with: self regSP withImm: imm! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:15:25'!
addSslotsToSP 

	pointer
		reset;
		length: self addressLength;
		base: self regSP;
		index: self regS;
		scale: self regSP sizeInBytes.
	self assemble: 'lea' with: self regSP with: pointer! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:15:39'!
addToTconstant: imm 

	self assemble: 'add' with: self regT withImm: imm! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:16:46'!
addTslotsToSP 

	pointer
		reset;
		length: self addressLength;
		base: self regSP;
		index: self regT;
		scale: self regSP sizeInBytes.
	self assemble: 'lea' with: self regSP with: pointer
! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:17:03'!
addTtoR 

	self assemble: 'add' with: self regR with: self regT! !

!JITAssembler64 methodsFor: 'initialization' stamp: 'KenD 3/8/2021 13:39:23'!
initialize 

	super initialize.
	literals := OrderedCollection new! !

!JITAssembler64 class methodsFor: 'class initialization' stamp: 'KenD 3/8/2021 13:39:12'!
initialize 

	super initialize.
	ExternalFunctions := Dictionary new! !

!NameOfSubclass methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:40:52'!
baseAddress 

	^address! !

!NameOfSubclass methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:41:05'!
bytes 

	^stream contents! !

!NameOfSubclass methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:41:15'!
codeSize 

	^stream size! !

!NameOfSubclass methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:41:27'!
currentAddress 

	^address + stream position! !

!NameOfSubclass methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:39:52'!
addAbsoluteFixup: label 
	| fixup |
	fixup := RelocationFixup absoluteFrom: self currentAddress to: label.
	fixups add: fixup! !

!NameOfSubclass methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:40:10'!
addRelativeFixup: label size: n 
	| fixup |
	fixup := RelocationFixup relativeFrom: self currentAddress to: label.
	fixup size: n.
	fixups add: fixup! !

!NameOfSubclass methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:40:28'!
applyFixupsWith: solver 

	fixups do: [:fixup | fixup patch: self with: solver]! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:16:28'!
beAbsolute 

	absolute := true! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:16:38'!
classBinding 

	^source classBinding! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:16:49'!
for: anObject 

	self target: anObject! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:18:40'!
source: sourceObject 

	source := sourceObject! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:18:49'!
sourceOffset 

	^sourceOffset! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:19:00'!
sourceOffset: aNumber 

	sourceOffset := aNumber! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:19:11'!
target 

	^target! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:19:19'!
target: anObject 

	target := anObject! !

!NativeCodeReference methodsFor: 'initialization' stamp: 'KenD 3/20/2021 15:17:07'!
initialize 

	absolute := false! !

!NativeCodeReference methodsFor: 'testing' stamp: 'KenD 3/20/2021 15:17:32'!
isAbsolute 

	^absolute! !

!NativeCodeReference class methodsFor: 'instance creation' stamp: 'KenD 3/20/2021 15:16:01'!
absoluteFor: anObject 

	^(self new for: anObject) beAbsolute! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:48:15'!
baseAddress 

	^address! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:48:24'!
bytes 

	^stream contents! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:48:32'!
codeSize 

	^stream size! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:48:42'!
currentAddress 

	^address + stream position! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:50:48'!
peek 

	^stream peek! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:50:56'!
peek: n 

	^stream peek: n! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:51:04'!
position 

	^stream position! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:51:15'!
position: anInteger 

	stream position: anInteger
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:52:14'!
size 

	^stream size! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:52:24'!
skip: anInteger 

	stream skip: anInteger! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:52:49'!
stream 

	^stream
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:52:58'!
stream: aStream 

	stream := aStream! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:47:26'!
addAbsoluteFixup: label 
	| fixup |
	fixup := RelocationFixup absoluteFrom: self currentAddress to: label.
	fixups add: fixup! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:47:37'!
addRelativeFixup: label size: n 
	| fixup |
	fixup := RelocationFixup relativeFrom: self currentAddress to: label.
	fixup size: n.
	fixups add: fixup! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 4/24/2021 12:47:49'!
applyFixupsWith: solver 

	fixups do: [:fixup | fixup patch: self with: solver]! !

!RelocatableBuffer methodsFor: 'initialization' stamp: 'KenD 4/24/2021 12:49:00'!
initialize 

	super initialize.
	fixups := OrderedCollection new.
	address := 0.
	stream := #[] writeStream! !

!RelocatableBuffer methodsFor: 'initialization' stamp: 'KenD 4/24/2021 12:52:03'!
reset 

	fixups := OrderedCollection new.
	stream reset! !

!RelocatableBuffer methodsFor: 'relocation' stamp: 'KenD 4/24/2021 12:51:42'!
relocateTo: location with: solver 
	| delta |
	delta := location - address.
	address := location.
	fixups do: [:fixup | fixup relocateBy: delta].
	self applyFixupsWith: solver! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:49:36'!
nextBytePut: byte 
	| value |
	value := byte < 0 ifTrue: [ byte + 256 ] ifFalse: byte.
	stream nextBytePut: value! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:49:45'!
nextBytesPut: aByteArray 

	stream nextBytesPut: aByteArray! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:50:05'!
nextPut: byte 

	stream nextPut: byte! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:50:14'!
nextPutAll: aByteArray 

	stream nextPutAll: aByteArray! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:50:25'!
nextULargePut: long 

	stream nextULargePut: long! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:50:33'!
nextULongPut: long 

	stream nextULongPut: long! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:53:14'!
writeByte: byte at: location 
	| previous value |
	previous := stream position.
	value := byte < 0 ifTrue: [ byte + 256 ] ifFalse: [ byte ].
	stream
		position: location - address;
		nextBytePut: value;
		position: previous! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 4/24/2021 12:53:49'!
writeLong: long at: location 
	| previous |
	previous := stream position.
	stream
		position: location - address;
		nextLongPut: long;
		position: previous! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:44:47'!
addressSize 

	^4! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:44:56'!
beAbsolute 

	relative := false.
	size := self addressSize! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:45:05'!
beRelative 

	relative := true! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:45:15'!
from: address1 to: address2 

	source := address1.
	target := address2! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:46:55'!
size: anInteger 

	size := anInteger! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 4/24/2021 12:47:05'!
target 

	^target! !

!RelocationFixup methodsFor: 'services' stamp: 'KenD 4/24/2021 12:45:54'!
patch: buffer with: solver 
	| delta address |
	address := solver resolveLabel: target.
	self assert: address notNil.
	relative
		ifTrue: [
			delta := address - source - size.
			size = 1
				ifTrue: [buffer writeByte: delta at: source]
				ifFalse: [buffer writeLong: delta at: source]]
		ifFalse: [buffer writeLong: address at: source]! !

!RelocationFixup methodsFor: 'services' stamp: 'KenD 4/24/2021 12:46:45'!
relocateBy: delta 

	source := source + delta! !

!RelocationFixup methodsFor: 'testing' stamp: 'KenD 4/24/2021 12:45:33'!
isRelative 

	^relative! !

!RelocationFixup class methodsFor: 'instance creation' stamp: 'KenD 4/24/2021 12:44:10'!
absoluteFrom: source to: target 

	^self new beAbsolute; from: source to: target! !

!RelocationFixup class methodsFor: 'instance creation' stamp: 'KenD 4/24/2021 12:44:22'!
relativeFrom: source to: target 

	^self new beRelative; from: source to: target! !

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

!ISAInstructionPartReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:28:00'!
contents 

	^contents contents! !

!ISAInstructionPartReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:28:08'!
from: aStream 

	contents := #[] writeStream! !

!ISAModRMReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:36:40'!
contents 

	^contents! !

!ISAModRMReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:36:54'!
from: aStream 

	contents := aStream atEnd ifFalse: [ModRM new on: aStream next]! !

!ISAOpcodeReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:38:12'!
from: aStream 
	| byte octets |
	super from: aStream.
	byte := aStream next.
	contents nextPut: byte.
	byte = 16rF ifTrue: [
		octets := (#[16r66 16rF2 16rF3] includes: contents contents first)
			ifTrue: [aStream next: 2]
			ifFalse: [{aStream next}].
		contents nextPutAll: octets]! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:43:15'!
printLegacyOn: aStream 

	legacy contents
		do: [:p | aStream nextPutAll: p asString]
		separatedBy: [aStream space]! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:44:02'!
printRexOn: aStream 

	rex isNil ifTrue: [^self].
	aStream nextPutAll: REXPrefix rex asString.
	(rex isOnBit: REXPrefix w value) ifTrue: [aStream nextPutAll: '.W'].
	(rex isOnBit: REXPrefix r value) ifTrue: [aStream nextPutAll: '.R'].
	(rex isOnBit: 1) ifTrue: [aStream nextPutAll: '.B'].
	(rex isOnBit: 2) ifTrue: [aStream nextPutAll: '.X']! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:44:29'!
printVex2On: aStream 

	self printVexVvvvLpp: vex second on: aStream! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:44:42'!
printVex3On: aStream 
	| byte x b mmmmm w |
	byte := vex second.
	x := (byte bitAnd: 2r1000000) > 0 ifTrue: [$1] ifFalse: [$0].
	aStream nextPut: x; nextPut: $..
	b := (byte bitAnd: 2r100000) > 0 ifTrue: [$1] ifFalse: [$0].
	aStream nextPut: b; nextPut: $..
	mmmmm := byte bitAnd: 2r11111.
	aStream
		nextPutAll: (mmmmm bin: 5);
		nextPut: $|.
	byte := vex third.
	w := byte >= 16r80 ifTrue: [$1] ifFalse: [$0].
	aStream nextPut: w; nextPut: $..
	self printVexVvvvLpp: byte on: aStream! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:45:02'!
printVexOn: aStream 
	| byte r |
	vex isNil ifTrue: [^self].
	aStream nextPutAll: vex first hex; nextPut: $|.
	byte := vex second.
	r := byte // 16r80 > 0 ifTrue: [$1] ifFalse: [$0].
	aStream nextPut: r; nextPut: $..
	vex size = 2
		ifTrue: [self printVex2On: aStream]
		ifFalse: [self printVex3On: aStream]! !

!ISAPrefixReader methodsFor: 'printing' stamp: 'KenD 3/8/2021 11:45:15'!
printVexVvvvLpp: byte on: aStream 
	| vvvv l pp |
	vvvv := (byte bitShift: -3) bitAnd: 2r1111.
	aStream
		nextPutAll: (vvvv bin: 4);
		nextPut: $..
	l := (byte bitAnd: 2r100) > 0 ifTrue: [$1] ifFalse: [$0].
	aStream nextPut: l; nextPut: $..
	pp := byte bitAnd: 2r11.
	aStream nextPutAll: (pp bin: 2)! !

!ISAPrefixReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:42:30'!
from: aStream 

	super from: aStream.
	self
		legacyFrom: aStream;
		rexFrom: aStream;
		vexFrom: aStream! !

!ISAPrefixReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:42:44'!
legacyFrom: aStream 
	| prefix |
	legacy := #() writeStream.
	[
		prefix := LegacyPrefix withValue: aStream peek.
		prefix isNil]
		whileFalse: [
			legacy nextPut: prefix.
			contents nextPut: aStream next]! !

!ISAPrefixReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:45:33'!
rexFrom: aStream 

	(aStream peek bitAnd: 16rF0) = REXPrefix rex value ifTrue: [
		rex := aStream next.
		contents nextPut: rex]! !

!ISAPrefixReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:45:45'!
vexFrom: aStream 
	| byte |
	byte := aStream peek.
	vex := byte = 16rC4 ifTrue: [aStream next: 3] ifFalse: [
		byte = 16rC5 ifFalse: [^self].
		aStream next: 2].
	contents nextPutAll: vex! !

!ISASibReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:47:44'!
contents 

	^contents! !

!ISASibReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:47:52'!
from: aStream 

	contents := SIB new on: aStream next! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:30:43'!
displacementFrom: aStream

	self notYetImplemented ! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:30:57'!
from: aStream 

	self
		prefixesFrom: aStream;
		opcodeFrom: aStream;
		modrmFrom: aStream;
		sibFrom: aStream;
		displacementFrom: aStream;
		immediateFrom: aStream! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:31:40'!
immediateFrom: aStream 

	immediate := aStream upToEnd! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:31:53'!
modrmFrom: aStream 

	modrm := ISAModRMReader new from: aStream; contents! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:32:07'!
opcodeFrom: aStream 

	opcode := ISAOpcodeReader new from: aStream; asString! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:32:25'!
prefixesFrom: aStream 

	prefixes := ISAPrefixReader new from: aStream; asString! !

!ISAInstructionReader methodsFor: 'accessing' stamp: 'KenD 3/8/2021 11:33:26'!
sibFrom: aStream 

	self hasSib ifFalse: [^self].
	aStream atEnd ifTrue: [^self].
	sib := ISASibReader new from: aStream; contents! !

!ISAInstructionReader methodsFor: 'testing' stamp: 'KenD 3/8/2021 11:31:24'!
hasSib 

	^modrm notNil and: [modrm mod = 0]! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:00:10'!
hi 

	^byte bitShift: -6! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:00:22'!
hi: anInteger 
	| bits |
	self assert: anInteger < 4.
	bits := anInteger bitShift: 6.
	byte := (byte bitAnd: 2r111111) bitOr: bits! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:00:38'!
lo 

	^byte bitAnd: 7! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:00:48'!
lo: anInteger 

	self assert: anInteger < 8.
	byte := (byte bitAnd: 2r11111000) bitOr: anInteger! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:00:59'!
mid 

	^(byte bitShift: -3) bitAnd: 7! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:01:09'!
mid: anInteger 
	| bits |
	self assert: anInteger < 8.
	bits := anInteger bitShift: 3.
	byte := (byte bitAnd: 2r11000111) bitOr: bits! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:01:26'!
on: anInteger 

	byte := anInteger! !

!OctalStructure methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:02:13'!
value 

	^byte! !

!OctalStructure class methodsFor: 'instance creation' stamp: 'KenD 3/20/2021 14:59:45'!
new 

	^super new initialize! !

!ModRM methodsFor: 'initialization' stamp: 'KenD 3/20/2021 15:03:27'!
initialize 

	byte := 0! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:03:12'!
beRR 

	self mod: 2r11! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:03:41'!
mod 

	^self hi
! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:03:51'!
mod: anInteger 

	self hi: anInteger! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:01'!
opcode 

	^self reg! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:09'!
opcode: anInteger 

	self reg: anInteger! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:19'!
reg 

	^self mid! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:29'!
reg: aRegister 
	| mid |
	mid := aRegister isInteger
		ifTrue: [aRegister]
		ifFalse: [aRegister index \\ 8].
	self mid: mid! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:39'!
rm 

	^self lo! !

!ModRM methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:04:51'!
rm: anInteger 

	self lo: anInteger! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:54:49'!
base 

	^self lo! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:54:58'!
base: anInteger 

	self lo: anInteger! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:55:22'!
baseRegister: aRegister 

	self base: aRegister index! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:55:32'!
index 

	^self mid! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:55:42'!
index: anInteger 

	self mid: anInteger! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:55:55'!
indexRegister: aRegister 

	self index: aRegister index! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:56:03'!
scale 

	^self hi! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:56:14'!
scale: anInteger 

	self hi: anInteger! !

!SIB methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:56:31'!
scaleFactor: s 
	| index |
	index := #[1 2 4 8] indexOf: s.
	self scale: index - 1! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:13:30'!
classSpecs 

	^ self spec allClasses! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:15:39'!
classes 

	^classes! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:20:03'!
image 

	^ image! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:22:26'!
module 

	^ module! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:25:04'!
newSymbol: aSymbol 

	^runtime newSymbol: aSymbol! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:25:22'!
runtime 

	^ runtime! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:12:24'!
specAt: aSymbol 

	^ self spec at: aSymbol! !

!ImageSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:29:54'!
writer 

	^ ImageSegmentWriter new roots:
		objects;
		module: module;
		wordSize: image wordSize;
		yourself! !

!ImageSegmentBuilder methodsFor: 'codeGeneration' stamp: 'KenD 3/4/2021 08:23:04'!
nativizeForDMR 

	DMRBootstrapper new
		image: image;
		builder: self;
		nativize;
		initializeKernelModule! !

!ImageSegmentBuilder methodsFor: 'codeGeneration' stamp: 'KenD 3/4/2021 08:23:38'!
newCallback: aNativeCode bytesFrom: aByteArray 
	| code original behavior class |
	code := image newBytesFrom: aByteArray.
	original := code behavior.
	behavior := image newSlots: 'CallbackBehavior'.
	class := original slotNamed: 'class'.
	behavior
		slotNamed: 'class' put: class;
		methods: original methods;
		next: image nil;
		nativeCode: aNativeCode.
	code behavior: behavior.
	^ code! !

!ImageSegmentBuilder methodsFor: 'codeGeneration' stamp: 'KenD 3/4/2021 08:24:45'!
newMethod: anAstcode 
selector: aSymbol 
in: classname 
format: anInteger 
literals: anArray 
	| method astcodes class selector format |
	method := image newSlots: 'CompiledMethod'.
	astcodes := self transferAstcodesFrom: anAstcode.
	class := image classNamed: classname.
	selector := image newSymbol: aSymbol.
	format := image newInteger: anInteger.
	method
		nativeCode: image nil;
		astcodes: astcodes;
		class: class;
		selector: selector;
		format: format;
		source: image nil.
	^ method! !

!ImageSegmentBuilder methodsFor: 'initialization' stamp: 'KenD 3/4/2021 08:20:38'!
initialize 

	index := OrderedDictionary new.
	classes := OrderedDictionary new.
	methods := OrderedDictionary new.
	globals := VirtualDictionary new.
	objects := OrderedCollection new! !

!ImageSegmentBuilder methodsFor: 'printing' stamp: 'KenD 3/4/2021 08:22:07'!
log: aString 

	Transcript
		show: aString;
		cr! !

!ImageSegmentBuilder methodsFor: 'validating' stamp: 'KenD 3/4/2021 08:29:04'!
validate 

	objects do:[:obj | obj validate]! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:12:46'!
addObjectDeep: anObject 

	self assert: (anObject isKindOf: ObjectMap).
	anObject isImport
		ifTrue: [ ^ self addImport: anObject ].
	anObject isImmediate
		ifTrue: [ ^ self ].
	(objects includes: anObject)
		ifTrue: [ ^ self ].
	objects add: anObject.
	anObject slotsDo: [ :s | self addObjectDeep: s ].
	^ anObject! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:13:04'!
bootstrapModule 

	runtime send: #bootstrap to: module! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:16:19'!
createLoadAction 

	^ image nil! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:17:33'!
createMethodDictionary: species sized: anInteger 
	| behavior md size dictionary |
	behavior := species instanceBehavior.
	md := image classNamed: #MethodDictionary.
	size := image newInteger: anInteger.
	dictionary := runtime send: #new: to: md with: {size}.
	behavior methods: dictionary.
	^dictionary! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:17:48'!
export: anObject as: aSymbol 

	runtime globals at: aSymbol put: anObject! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:18:01'!
fillClasses 
	| class meta |
	self classSpecs
		do: [ :def | 
			self log: 'filling ' , def name , '...'.
			class := image classFor: def.
			meta := class behavior slotNamed: #class.
			self
				fillSpecies: meta with: def metaclass;
				fillSpecies: class with: def ]! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:18:59'!
fillSpecies: species with: classDefinition 
	| dictionary smethod transferred |
	dictionary := self
		createMethodDictionary: species
		sized: classDefinition methods size.
	classDefinition methods
		do: [ :methodDefinition | 
			smethod := runtime compile: methodDefinition.
			methods at: methodDefinition put: smethod.
			transferred := self transferMethod: smethod in: species.
			runtime
				send: #basicAt:put:
				to: dictionary
				with:
					{transferred selector.
					transferred} ]! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:19:27'!
generateModule 
	| class dictionary exports array assocs |
	class := image classNamed: self moduleName.
	dictionary := image classNamed: #Dictionary.
	module := runtime send: #basicNew to: class.
	exports := runtime send: #new to: dictionary.
	array := runtime send: #declaredGlobals to: module.
	assocs := runtime declareGlobals: array.
	assocs := image newArray: assocs.
	runtime send: #addAll: to: exports with: {assocs}.
	module exports: exports.
	"self classes
		do: [ :c | | args |
			args := Array with: c name with: c.
			runtime send: #at:put: to: exports with: args ]."
! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:21:06'!
initialize32BitImage 

	image := VirtualSmalltalkImage fromSpec
		wordSize: 4;
		genesis.
	runtime := VirtualSmalltalkRuntime new image: image; initializeClassPools
! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:21:30'!
initialize64BitImage 

	image := VirtualSmalltalkImage fromSpec
		wordSize: 8;
		genesis.
	runtime := VirtualSmalltalkRuntime new
		image: image;
		initializeClassPools! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:23:57'!
newClassVarDictionary: anArray 
	| dict |
	dict := runtime newDictionary.
	anArray do: [ :assoc | runtime send: #add: to: dict with: {assoc} ]! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:25:37'!
transferArrayDeep: anArray 
	| copy transferred |
	copy := image newSlots: 'Array' sized: anArray size.
	anArray
		withIndexDo: [ :elem :i | 
			transferred := elem isInteger
				ifTrue: [ image newInteger: elem ]
				ifFalse: [ self transferArrayDeep: elem ].
			copy at: i put: transferred ].
	^ copy! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:25:53'!
transferAstcodesFrom: anArray 
	| copy transferred |
	copy := image newSlots: 'Array' sized: anArray size.
	anArray
		withIndexDo: [ :elem :i | 
			transferred := elem isInteger
				ifTrue: [ image newInteger: elem ]
				ifFalse: [ self transferAstcodesFrom: elem ].
			copy at: i put: transferred ].
	^ copy! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:28:21'!
transferMethod: anSCompiledMethod in: species 
	| size classname transferred astcodes selector format literal tliteral |
	(image includes: anSCompiledMethod)
		ifTrue: [ self assert: false ].
	size := anSCompiledMethod size.
	classname := anSCompiledMethod isCallback
		ifTrue: [ 'CallbackMethod' ]
		ifFalse: [ 'CompiledMethod' ].
	transferred := image newSlots: classname sized: size.
	image map: anSCompiledMethod to: transferred.
	astcodes := image transferLiteralDeep: anSCompiledMethod astcodes.
	selector := image newSymbol: anSCompiledMethod selector.
	format := image newInteger: anSCompiledMethod format.
	transferred
		astcodes: astcodes;
		class: species;
		selector: selector;
		format: format;
		source: image nil.
	1 to: size do: [ :i | 
		literal := anSCompiledMethod at: i.
		tliteral := image transferLiteralDeep: literal.
		transferred at: i put: tliteral ].
	^ transferred! !

!ImageSegmentBuilder methodsFor: 'services' stamp: 'KenD 3/4/2021 08:28:46'!
transferSimpleLiterals: method 
	"fixme: to be used by emulator only"
	| literal class |
	1 to: method size do: [ :i | 
		literal := method at: i.
		class := literal class.
		((class inheritsFrom: ObjectMap)
			or: [ class = SCompiledBlock ])
			ifFalse: [ method at: i put: (self transferLiteralDeep: literal) ] ].
	^ method! !

!ImageSegmentBuilder methodsFor: 'visiting' stamp: 'KenD 3/4/2021 08:25:12'!
visitTemporary: anSIdentifier 

	^temporaries at: anSIdentifier binding index! !

!KernelSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:17:32'!
moduleName 

	^'Kernel'! !

!KernelSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:17:53'!
spec 

	^image kernel! !

!KernelSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:18:08'!
undermethods 

	^ (self => #ProtoObject) methods
		select: [ :m | m category = 'header access' ]! !

!KernelSegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:18:19'!
writer 

	^ super writer space: smalltalk value memory edenSpace! !

!KernelSegmentBuilder methodsFor: 'building' stamp: 'KenD 3/9/2021 07:15:02'!
addGenesisObjects 

	objects
		add: image nil;
		add: image false;
		add: image true;
		add: module.
	globals valuesDo: [ :obj | objects add: obj ].
	smalltalk ifNotNil: [ objects add: smalltalk value ]! !

!KernelSegmentBuilder methodsFor: 'building' stamp: 'KenD 3/9/2021 07:15:33'!
generateModule 
	| wordsize lasthash |
	super generateModule.
	smalltalk := runtime globals associationAt: #Smalltalk.
	wordsize := runtime globals associationAt: #WordSize.
	lasthash := runtime globals associationAt: #LastHash.
	runtime send: #add: to: module exports with: {wordsize}.
	runtime send: #add: to: module exports with: {lasthash}! !

!KernelSegmentBuilder methodsFor: 'building' stamp: 'KenD 3/9/2021 07:15:59'!
methodSubset: aDictionary 
	| all species m |
	all := aDictionary
		flatCollect: [ :assoc | 
			species := self => assoc key.
			assoc value
				collect: [ :sel | 
					m := species >> sel.
					self assert: m notNil.
					m ] ].
	^ all asOrderedCollection! !

!LibrarySegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:48:19'!
spec 

	^ spec! !

!LibrarySegmentBuilder methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:48:31'!
spec: anRGEnvironment 

	spec := anRGEnvironment! !

!LibrarySegmentBuilder methodsFor: 'building' stamp: 'KenD 3/9/2021 07:47:42'!
addClasses

	self notYetImplemented ! !

!LibrarySegmentBuilder methodsFor: 'building' stamp: 'KenD 3/9/2021 07:47:56'!
importKernelObjects 

	self addImport: image nil; addImport: image true; addImport: image false! !

!LibrarySegmentBuilder methodsFor: 'initialization' stamp: 'KenD 3/9/2021 07:47:05'!
initialize 

	super initialize.
	kernelBuilder := KernelSegmentBuilder new.! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:34:29'!
addClosure 
	| remaining obj b |
	remaining := OrderedCollection withAll: roots.
	remaining do: [ :s | offsets at: s put: nil ].
	[ remaining isEmpty ]
		whileFalse: [ obj := remaining removeFirst.
			objects add: obj.
			b := obj behavior.
			(offsets includesKey: b)
				ifFalse: [ offsets at: b put: nil. remaining add: b ].
			obj
				slotsDo: [ :s | 
					(s isImmediate or: [ offsets includesKey: s ])
						ifFalse: [ offsets at: s put: nil.
							remaining add: s ] ] ]! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:35:09'!
base 
"
	Return preferred base address for this segment
"
	^ base! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:35:32'!
base: anInteger 
"
	 Set the preferred base address for this segment. 
	 This is a hint only, loaders may load a segment
	 at a different address but then they must relocate.
"
	base := anInteger! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:36:59'!
image 

	^stream contents! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:38:00'!
module: aSlotObjectMap 

	module := aSlotObjectMap! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:38:11'!
nextHash 
	|  result |
	result := nextHash.
	nextHash := nextHash linearFeedbackShiftRandom: 16rB9C8.
	^result! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:38:35'!
objects 

	^ objects! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:38:44'!
objectsOffset 

	^self class objectsOffset! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:38:52'!
offsetOf: anObjectMap 

	^ offsets at: anObjectMap! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:39:00'!
roots: aCollection 

	roots := aCollection! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:39:15'!
space: aGCSpace 

	space := aGCSpace! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:39:38'!
stream: aWriteStream 

	stream := aWriteStream! !

!ImageSegmentWriter methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:39:52'!
wordSize: anInteger 

	wordSize := anInteger! !

!ImageSegmentWriter methodsFor: 'encoding' stamp: 'KenD 3/4/2021 08:36:46'!
encodedReferenceTo: anObject 
	| offset |
	anObject isImmediate
		ifTrue: [ ^ anObject value * 2 + 1 ].
	offset := offsets at: anObject.
	^base + offset! !

!ImageSegmentWriter methodsFor: 'initialization' stamp: 'KenD 3/4/2021 08:37:20'!
initialize 

	offsets := IdentityDictionary new.
	objects := OrderedCollection new.
	stream := #[] writeStream.
	nextHash := 1.
	base := 0! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:36:00'!
configureSpace 
	| basemap free limit |
	basemap := SmallintObjectMap new value: base // 2.
	free := SmallintObjectMap new value: (base + size) // 2.
	limit := SmallintObjectMap new value: (base + size + 16r20000 // 2).
	space
		base: basemap;
		nextFree: free;
		softLimit: limit;
		commitedLimit: limit;
		reservedLimit: limit! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:37:40'!
layoutObjects 
	| offset oop |
	offset := self objectsOffset.
	objects
		do: [ :obj | 
			oop := offset + obj headerSizeInBytes.
			offsets at: obj put: oop.
			offset := oop + obj bodySizeInBytes ].
	size := offset! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:40:14'!
write 

	self
		addClosure;
		layoutObjects;
		configureSpace;
		writeSignature;
		writeHeader;
		writeObjects! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:40:35'!
writeHeader 
	"See ImageSegment.h for structure of a segment header"
	| reserved |
	reserved := (space reservedLimit value - space base value) * 2.
	stream uint64le: base; uint64le: size; uint64le: reserved.
	self writeReferenceTo: module! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:40:54'!
writeObjectBody: obj 
	obj isBytes
		ifTrue: [ self writeObjectBytes: obj ]
		ifFalse: [ self writeObjectSlots: obj ]! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:41:08'!
writeObjectBytes: obj 
	| current aligned |
	stream nextBytesPutAll: obj bytes.
	current := stream position.
	aligned := current alignedTo: wordSize.
	aligned - current timesRepeat: [ stream nextPut: 0 ]! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:41:22'!
writeObjectHeader: obj 
	| behavior |
	obj isSmall
		ifFalse: [ stream
				uint32le: obj size;
				uint32le: 0 ].
	behavior := self encodedReferenceTo: obj behavior.
	stream
		uint16le: obj headerHash;
		nextPut: obj headerSmallSize;
		nextPut: obj headerFlags;
		uint32le: behavior.
	self assert: stream position == (self offsetOf: obj)! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:41:41'!
writeObjectSlots: obj 

	obj slots do: [ :slot | self writeReferenceTo: slot ]! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:41:53'!
writeObjects 
	self assert: stream position == self objectsOffset.
	objects
		do: [ :obj | 
			self
				writeObjectHeader: obj;
				writeObjectBody: obj ]! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:42:03'!
writeReferenceTo: slot 
	| encoded |
	encoded := self encodedReferenceTo: slot.
	wordSize = 8
		ifFalse: [ self assert: false ].
	stream uint64le: encoded! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:42:15'!
writeSignature 

	stream
		nextBytesPutAll: 'P_IM_S';
		nextPut: Character lf asInteger;
		nextPut: 0! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:42:27'!
writeTo: aStream 

	self stream: aStream.
	self write.
! !

!ImageSegmentWriter methodsFor: 'services' stamp: 'KenD 3/4/2021 08:42:39'!
writeToFile: filename 
	filename asFileReference binaryWriteStreamDo: [ :fileStream |
		| bytes |
		
		"Bit stupid - we write into internal ByteArray backed stream and
      then write it to real file. That's because WriteStream and ZnWriteStream
      are not polymorphic. Sigh"
		bytes := ByteArray streamContents:[:byteStream | self writeTo: byteStream ].
		fileStream nextPutAll: bytes.
	]! !

!ImageSegmentWriter class methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:33:06'!
behaviorOffset 
"
	The offset at which the behavior is from the oop (negated)
	[Oop is pointer to 1st slot, behavior is slot preceeding].
"

	^ -4! !

!ImageSegmentWriter class methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:33:26'!
nilOffset 

	^self objectsOffset + 8! !

!ImageSegmentWriter class methodsFor: 'accessing' stamp: 'KenD 3/4/2021 08:33:57'!
objectsOffset 
"
	The offset at which header terminates and objects are stored.
	See ImageSegment.h for structure of a segment header
"
	^40! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:14:22'!
bootstrapper: aSmalltalkBootstrapper 

	bootstrapper := aSmalltalkBootstrapper! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:14:33'!
closureMethods 

	^ self selectorLookupMethods , self globalLookupMethods
		, self otherLookupMethods , bootstrapper undermethods
		, self sendSiteMethods! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:13:54'!
findSymbol: aSymbol 

	^bootstrapper spec at: aSymbol! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:14:56'!
globalLookupMethods 
	| result out global |
	result := OrderedCollection new.
	result
		add: (self >> #ProtoObject) >> #_cachedLookup:;
		add: (self >> #ProtoObject) >> #_cachedLookup:in:;
		add: (self >> #Thread) metaclass >> #currentGlobalLookup;
		add: (self >> #GlobalDispatchCache) metaclass >> #current.
	out := #(initialize flushAll: #flush:forSpecies: #flush:for: #flush:for:startingAt:).
	global := (self >> #GlobalDispatchCache) methods
		reject: [ :m | out includes: m selector ].
	^ result
		addAll: global;
		yourself! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:16:30'!
methodFor: selector 

	^methods detect: [:m | m selector == selector]! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:19:53'!
otherLookupMethods 

	^ OrderedCollection new
		add: self >> #ProtoObject >> #objectAtValid:put:;
		add: self >> #ProtoObject >> #behavior;
		add: self >> #CompiledMethod >> #prepareForExecution;
		add: self >> #CompiledMethod >> #isNativized;
		add: self >> #CompiledMethod >> #validNativeCodeAddress;
		add: self >> #CompiledMethod >> #nativeCode;
		add: self >> #CompiledMethod >> #selector;
		add: self >> #NativeCode >> #code;
		add: self >> #NativeCode >> #compiledCode;
		add: self >> #Species >> #instanceBehavior;
		add: self >> #Process >> #wantsToStepInto;
		yourself! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:20:06'!
selectorLookupMethods 

	^ OrderedCollection new
		add: (self >> #ProtoObject) >> #_lookup:;
		add: (self >> #ProtoObject) >> #_lookup:in:;
		add: (self >> #ProtoObject) >> #_lookup:inDictionary:;
		yourself! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:20:17'!
sendSiteMethods 
	| sendsite |
	sendsite := self >> #SendSite.
	^ #(_dispatchOn: _dispatchOn:startingAt: _dispatchDebuggableOn: _dispatchDebuggableOn:startingAt: sentSelector when:use: beInvoke:using: bePolymorphic isStaticSend monomorphicMap:to: polymorphicMap:to: maxSize reset takeNextFreeMIC takeNextFreePIC)
		collect: [ :s | sendsite >> s ]! !

!LookupNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 13:17:05'!
nativizeMethods 
	| environment | 
	methods := self closureMethods collect: [:m | bootstrapper compile: m ].
	environment := self newNativizationEnvironment.
	methods do: [:m | environment nativize: m]! !

!LookupNativizer methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 13:19:21'!
newNativizationEnvironment 
	| environment ignored lookup invoke |
	environment := NativizationEnvironment new
		globals: bootstrapper nativizer globals;
		optimizedMethods: bootstrapper nativizer optimizedMethods.
	ignored := HaltingSend new
		filter: #(< <= = > + - * // bitAnd: bitOr: bitXor:).
	lookup := LookupLinker new initializeFrom: environment.
	lookup
		filter:
			#(debuggableCopy acquireReferences nativize refreshBlocks doesNotUnderstandSelector: mustBeBoolean class allocateMoreCaches).
	invoke := InvokeLinker new
		invoker: environment invokeStub;
		addMethods: methods.
	^ environment
		addLinker: invoke;
		addLinker: ignored;
		addLinker: lookup;
		completeInitialization
! !

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

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:08:51'!
argumentAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^arguments at: index ].
	env := self environmentFor: anInteger.
	^env at: index.! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:05'!
arguments 

	^arguments! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:16'!
arguments: aCollection 

	arguments := aCollection! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:24'!
associationValueAt: anInteger 

	^ (method at: anInteger) value! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:34'!
associationValueAt: anInteger put: value 
	| association |
	association := (method at: anInteger).
	^association value: value! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:01'!
beBlock 
	
	isBlock := true! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:11'!
blockAstcodesOf: anSCompiledBlock 

	^blockAstcodes at: anSCompiledBlock! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:23'!
blockOf: anObjectMap 

	^closures at: anObjectMap! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:36'!
booleanFor: aBoolean 

	^ aBoolean
		ifTrue: [ system true ]
		ifFalse: [ system false ]! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:11:10'!
captureClosure: anSBlock with: block 
	| closure s i type env arg |
	closure := system newClosure: block environmentCount.
	closures at: closure put: block.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: receiver ].
			type = Environment
				ifTrue: [ closure at: i put: environment ].
			type = EnvironmentValue
				ifTrue: [ env := environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := arguments at: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:12:08'!
closures 

	^closures! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:12:20'!
constPoolValueAt: anInteger 

	^ method at: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:13:59'!
environment: anObjectMap 

	environment := anObjectMap! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:14:24'!
environmentFor: anInteger 
"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. 
"
	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:22:34'!
falseLiteral 

	^ system false! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:06'!
instanceVarAt: anInteger 

	^ receiver slotAt: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:17'!
instanceVarAt: index put: aValue 

	^ receiver slotAt: index put: aValue! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:28'!
integerFor: anInteger 

	^ system newInteger: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:11'!
literal: anObject 

	^anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:22'!
method 

	^method! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:36'!
method: anSCompiledMethod 

	method := anSCompiledMethod.
	temporaries := Array new: anSCompiledMethod tempCount! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:48'!
nilLiteral 

	^ system nil! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:57'!
parent 

	^parent! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:25:05'!
parent: anInterpreter 

	parent := anInterpreter! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:25:29'!
primitive: primitive 
	| result |
	result := self evaluatePrimitive: primitive.
	returning ifTrue: [ ^self ].
	system popFrame.
	self returning: result! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:26:59'!
receiver 

	^receiver! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:27:10'!
receiver: anObject 

	receiver := anObject.
	returnValue := anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:27:24'!
returning: anObject 

	returning := true.
	returnValue := anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:15'!
system: anEmulator 

	system := anEmulator! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:27'!
temporaryAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^ temporaries at: index ].
	env := self environmentFor: anInteger.
	^ env at: index! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:40'!
temporaryAt: index in: anInteger put: aValue 
	| env |
	anInteger ifNil: [ ^ temporaries	at:index put: aValue ].
	env := self environmentFor: anInteger.
	^ env at: index put: aValue
! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:55'!
trueLiteral 

	^system true! !

!MethodEvaluator methodsFor: 'dispatch' stamp: 'KenD 3/3/2021 11:13:04'!
dispatchUndermessage: message 
	| selector recv args result |
	selector := message selector.
	recv := message receiver.
	args := message arguments.
	selector == #_isSmallInteger
		ifTrue: [ ^ self booleanFor: recv isImmediate ].
	selector == #_isLarge
		ifTrue: [ ^ self booleanFor: recv isSmall not ].
	selector == #_smallSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ recv size ]
						ifFalse: [ self error ]) ].
	selector == #_largeSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ self error ]
						ifFalse: [ recv size ]) ].
	selector == #_basicFlags
		ifTrue: [ ^ self integerFor: recv headerFlags ].
	selector == #_basicAt:
		ifTrue: [ ^ recv slots at: args first value ].
	selector == #_byteAt:
		ifTrue: [ result := recv bytes at: args first value.
			^ self integerFor: result ].
	selector == #_basicHash
		ifTrue: [ ^ self integerFor: recv headerHash ].
	selector == #_basicHash:
		ifTrue: [ recv headerHash: args first value.
			^ recv ].
	selector == #_smallIntegerByteAt:
		ifTrue: [ result := recv value byteAt: args first value.
			^ self integerFor: result ].
	selector == #_bitShiftLeft:
		ifTrue: [ result := recv value bitShift: args first value.
			(result isKindOf: LargeInteger)
				ifTrue: [ self halt ].
			^ self integerFor: result ].
	selector == #_uShortAtOffset:
		ifTrue: [ ^ result := self
				integerFor: (recv bytes unsignedShortAt: args first value + 1) ].
	selector == #_uShortAtOffset:put:
		ifTrue: [ result := args second.
			recv bytes unsignedShortAt: args first value + 1 put: result value.
			^ result ].
	self assert: false! !

!MethodEvaluator methodsFor: 'dispatch' stamp: 'KenD 3/3/2021 11:27:51'!
staticSend: selector to: recv with: args 
	| result |
	selector == #_isSmallInteger
		ifTrue: [ ^ self booleanFor: recv isImmediate ].
	selector == #_isLarge
		ifTrue: [ ^ self booleanFor: recv isSmall not ].
	selector == #_smallSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ recv size ]
						ifFalse: [ self error ]) ].
	selector == #_largeSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ self error ]
						ifFalse: [ recv size ]) ].
	selector == #_basicFlags
		ifTrue: [ ^ self integerFor: recv headerFlags ].
	selector == #_basicAt:
		ifTrue: [ ^ recv slots at: args first value ].
	selector == #_byteAt:
		ifTrue: [ result := recv bytes at: args first value.
			^ self integerFor: result ].
	selector == #_basicHash
		ifTrue: [ ^ self integerFor: recv headerHash ].
	selector == #_basicHash:
		ifTrue: [ recv headerHash: args first value.
			^ recv ].
	selector == #_smallIntegerByteAt:
		ifTrue: [ result := recv value byteAt: args first value.
			^ self integerFor: result ].
	selector == #_bitShiftLeft:
		ifTrue: [ result := recv value bitShift: args first value.
			(result isKindOf: LargeInteger)
				ifTrue: [ self halt ].
			^ self integerFor: result ].
	selector == #_uShortAtOffset:
		ifTrue: [ ^ result := self
				integerFor: (recv bytes unsignedShortAt: args first value + 1) ].
	selector == #_uShortAtOffset:put:
		ifTrue: [ result := args second.
			recv bytes unsignedShortAt: args first value + 1 put: result value.
			^ result ].
	self assert: false! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:09:45'!
backtrace 
	| bt next |
	bt := OrderedCollection new.
	next := self.
	[ next notNil ]
		whileTrue: [ bt
				add:
					{next method signature.
					next receiver} , next arguments.
			next := next parent ].
	^ bt! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:14:55'!
evaluate 

	system pushFrame: self.
	^ self visitMethod: method sexpressions! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:18'!
evaluateBlock: sblock args: anArray 
	" as this block is inlined, we didn't capture parent environment.
	Thus, we don't know if environment is a closure or a method home.
	We unwind to that environment and clean up later if it was a closure. "

	anArray
		with: sblock inlinedArgs
		do: [ :arg :i | temporaries at: i put: arg ].
	^ self visitScript: sblock! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:36'!
evaluateBlock: sblock args: anArray closure: closure 
	" inlined blocks can only return to their real parent environment.
	Here we complete the non-local return process for them, unwinding
	to the real home environment "

	temporaries := Array new: sblock tempCount.
	environment := closure.
	arguments := anArray.
	^ self visitScript: sblock! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:51'!
evaluateClosure: aPClosure 

	^self evaluateClosure: aPClosure withArgs: {}! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:16:45'!
evaluateClosure: aPClosure with: anObject 

	 ^self evaluateClosure: aPClosure withArgs: { anObject }! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:16:58'!
evaluateClosure: aPClosure with: anObject with: anotherObject 

	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:17:12'!
evaluateClosure: closure withArgs: anArray 
	| frame block sblock evaluator result |
	frame := system builderOf: closure.
	block := frame blockOf: closure.
	sblock := frame blockAstcodesOf: block.
	evaluator := frame copy beBlock.
	system pushFrame: evaluator.
	result := sblock isInlined
		ifTrue: [ evaluator evaluateBlock: sblock args: anArray ]
		ifFalse: [ evaluator evaluateBlock: sblock args: anArray closure: closure ].
	returning ifFalse: [ system popFrame ].
	^result! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:19:55'!
evaluatePrimitive: primitive 
	| index size argument value |
	primitive = #Behavior
		ifTrue: [ ^ receiver isImmediate
				ifTrue: [ system smallintBehavior ]
				ifFalse: [ receiver behavior ] ].
	primitive = #UnderSize
		ifTrue: [ ^ self integerFor: receiver size ].
	primitive = #Size
		ifTrue: [ ^ self integerFor: receiver arrayedSize ].
	primitive = #At
		ifTrue: [ index := arguments first value.
			value := receiver at: index.
			^ receiver isBytes
				ifTrue: [ self integerFor: value ]
				ifFalse: [ value ] ].
	primitive = #AtPut
		ifTrue: [ index := arguments first value.
			^ receiver at: index put: arguments second ].
	primitive = #New
		ifTrue: [ ^ system newSlotsOf: receiver spec instanceSide sized: 0].
	primitive = #NewSized
		ifTrue: [ size := arguments first value.
			^ system newOf: receiver spec instanceSide sized: size ].
	primitive = #NewBytes
		ifTrue: [ size := arguments first value.
			^ system newBytesOf: receiver spec instanceSide sized: size ].
	primitive = #Equal
		ifTrue: [ argument := arguments first.
			^ self
				booleanFor:
					(receiver == argument
						or: [ receiver isImmediate
								and: [ argument isImmediate and: [ receiver value = argument value ] ] ]) ].
	primitive = #SMIPlus
		ifTrue: [ ^ self integerFor: receiver value + arguments first value ].
	primitive = #SMIMinus
		ifTrue: [ ^ self integerFor: receiver value - arguments first value ].
	primitive = #SMITimes
		ifTrue: [ ^ self integerFor: receiver value * arguments first value ].
	primitive = #SMIIntDiv
		ifTrue: [ ^ self integerFor: receiver value // arguments first value ].
	primitive = #SMIIntQuot
		ifTrue: [ ^ self integerFor: receiver value \\ arguments first value ].
	primitive = #SMIBitAnd
		ifTrue: [ ^ self integerFor: (receiver value bitAnd: arguments first value) ].
	primitive = #SMIBitXor
		ifTrue: [ ^ self integerFor: (receiver value bitXor: arguments first value) ].
	primitive = #SMIBitShift
		ifTrue:
			[ ^ self integerFor: (receiver value bitShift: arguments first value) ].
	primitive = #SMIHighBit
		ifTrue: [ ^ self integerFor: receiver value highBit ].
	primitive = #SMIGreaterThan
		ifTrue: [ ^ self booleanFor: receiver value > arguments first value ].
	primitive = #SMIGreaterEqualThan
		ifTrue: [ ^ self booleanFor: receiver value >= arguments first value ].
	primitive = #SMIEqual
		ifTrue: [ ^ self booleanFor: receiver value = arguments first value ].
	primitive = #SMINotEqual
		ifTrue: [ ^ self booleanFor: receiver value !!= arguments first value ].
	primitive = #SMISize
		ifTrue: [ ^ self integerFor: receiver value bytesCount ].
	primitive = #ClosureValue
		ifTrue: [ ^ self evaluatePrimitiveClosureValue ].
	primitive = #ClosureValueWithArgs
		ifTrue: [ ^ self evaluatePrimitiveClosureValueWithArgs ].
	primitive = #ClosureWhileTrue
		ifTrue: [ ^ self evaluatePrimitiveClosureWhileTrue ].
	primitive = #ClosureWhileFalse
		ifTrue: [ ^ self evaluatePrimitiveClosureWhileFalse ].
	primitive = #ClosureArgumentCount
		ifTrue: [ ^ self evaluatePrimitiveClosureArgumentCount ].
	primitive = #StringReplaceFromToWithStartingAt
		ifTrue: [ receiver bytes
				replaceFrom: arguments first value
				to: arguments second value
				with: arguments third bytes
				startingAt: arguments fourth value.
			^ receiver ].
	primitive = #FloatNew
		ifTrue: [ ^ system newBytesOf: receiver spec instanceSide sized: 8 ].
	primitive = #PrimeFor
		ifTrue: [ ^ self evaluatePrimitivePrimeFor ].
	self assert: false
! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:20:47'!
evaluatePrimitiveClosureArgumentCount 
	| frame block |
	frame := system builderOf: receiver. 
	block := frame blockOf: receiver.
	^ self integerFor: block argumentCount! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:01'!
evaluatePrimitiveClosureValue 

	^ self evaluateClosure: receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:11'!
evaluatePrimitiveClosureValueWithArgs 

	^ self evaluateClosure: receiver withArgs: arguments! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:23'!
evaluatePrimitiveClosureWhileFalse 
	| result arg |
	arg := arguments first.
	[ result := self evaluateClosure: receiver.
	returning
		ifTrue: [ ^ returnValue ].
	system booleanFrom: result ]
		whileFalse: [ self evaluateClosure: arg.
			returning
				ifTrue: [ ^ returnValue ] ].
	^ receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:45'!
evaluatePrimitiveClosureWhileTrue 
	| result arg |
	arg := arguments first.
	[ result := self evaluateClosure: receiver. returning ifTrue: [^returnValue].
	system booleanFrom: result ] whileTrue: [ self evaluateClosure: arg. returning ifTrue: [^returnValue]].
	^ receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:22:00'!
evaluatePrimitiveHash 
	| hash |
	hash := receiver headerHash.
	hash = 0 ifTrue: [ hash := system nextHash. receiver headerHash: hash ].
	^ self integerFor: hash! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:22:16'!
evaluatePrimitivePrimeFor 
	| num result |
	num := arguments first value.
	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= num ].
	^ self integerFor: result! !

!MethodEvaluator methodsFor: 'initialization' stamp: 'KenD 3/3/2021 11:22:52'!
initialize 

	blockAstcodes := IdentityDictionary new.
	closures := IdentityDictionary new.
	returning := false.
	isBlock := false! !

!MethodEvaluator methodsFor: 'services' stamp: 'KenD 3/3/2021 11:11:55'!
classBinding 

	^method classBinding! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:10:54'!
built: closure 

	^closures includesKey: closure! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:23:38'!
isHomeOf: env 

	^ environment == env andNot: [ isBlock ]! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:24:00'!
isUndermessage: selector 

	^ Undermessages includes: selector! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:27'!
visitArgument: anSIdentifier 

	^arguments at: anSIdentifier binding index! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:37'!
visitAssignment: anSAssignment 
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: self ].
	^result! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:53'!
visitBlock: anSBlock 
	| block closure |
	block := anSBlock isInlined
		ifTrue: [ SCompiledBlock new ]
		ifFalse: [ anSBlock compiledCode ].
	closure := self captureClosure: anSBlock with: block.
	blockAstcodes at: block put: anSBlock.
	^ closure! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:04'!
visitCascade: anSCascade 
	| recv args selector last |
	recv := anSCascade receiver acceptVisitor: self.
	anSCascade messages
		do: [ :msg | 
			args := msg arguments collect: [ :code | code acceptVisitor: self ].
			selector := system symbolFrom: msg selector.
			last := system
				send: selector
				to: recv
				with: args
				super: anSCascade receiver isSuper ].
	^ last! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:25'!
visitIdentifier: anSIdentifier 

	^anSIdentifier binding valueWithin: self! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:36'!
visitLiteral: anSLiteral 

	^ system transferLiteral: anSLiteral value! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:49'!
visitMessage: anSMessage 
	| recv args selector message |
	recv := anSMessage receiver acceptVisitor: self.
	args := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	selector := system symbolFrom: anSMessage selector.
	self assert: selector !!== #error:.
	^ system send: selector to: recv with: args super: anSMessage receiver isSuper! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:31:39'!
visitMethod: anSMethod 
	| primitive |
	primitive := anSMethod primitive.
	primitive 
		ifNil: [	self visitScript: anSMethod] 
		ifNotNil: [ self primitive: primitive ].
	^ returning
		ifTrue: [ returnValue ]
		ifFalse: [ system popFrame.  receiver ]! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:31:58'!
visitReturn: anSReturn 
	| value home |
	value := anSReturn expression acceptVisitor: self.
	"it could happen that while we were going to return, the
	expression contained a non-local return that was reached.
	In that case we just keep unwinding without altering the
	unwindLimit"
	returning
		ifTrue: [ ^ returnValue ].
	home := anSReturn local
		ifTrue: [ environment ]
		ifFalse: [ environment at: 1 ].
	system unwindUpTo: home returning: value! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:32:12'!
visitScript: anSScript 
	| result |
	anSScript statements
		do: [ :node | 
			result := node acceptVisitor: self.
			returning
				ifTrue: [ ^ returnValue ] ].
	^ result! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:32:26'!
visitTemporary: anSIdentifier 

	^temporaries at: anSIdentifier binding index! !

!MethodEvaluator class methodsFor: 'class initialization' stamp: 'KenD 3/3/2021 11:07:59'!
initialize 
"
	self initialize
"

	Undermessages := #(_basicAt: #_basicAt:put: 
		_bitShiftLeft: _byteAt: #_byteAt:put: 
		_smallSize _largeSize _isSmallInteger 
		_basicHash _basicHash: 
		_smallIntegerByteAt: 
		_uShortAtOffset: _uShortAtOffset:put:)
! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:25:36'!
=> aSymbol 

	^ kernel at: aSymbol! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:27:52'!
classFor: anRGBehavior 

	^classes at: anRGBehavior! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:28:02'!
classNamed: aString 

	^self classFor: self => aString! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:28:15'!
classes 

	^ classes! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:28:48'!
false 

	^ falseObj! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:33:41'!
kernel 

	^kernel! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:33:49'!
kernel: anRGEnvironment 

	kernel := anRGEnvironment ! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:33:57'!
map: anObject to: anObjectMap 

	identityMap at: anObject put: anObjectMap! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:34:06'!
metaclassFor: anRGBehavior 

	^ metaclasses at: anRGBehavior! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:38:19'!
nil 

	^ nilObj! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:38:32'!
speciesFor: anRGBehavior 

	^classes at: anRGBehavior ifAbsent: [ metaclasses at: anRGBehavior]! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:38:44'!
surrogateFor: anObject 

	^ identityMap at: anObject ifAbsent: nil! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:39:09'!
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
		nativeCode: nilObj.
	^ transferred! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:39:27'!
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
	^ transferred! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:39:55'!
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
	(class inheritsFrom: Symbol)
		ifTrue: [ ^ self newSymbol: anObject ].
	(class inheritsFrom: String)
		ifTrue: [ ^ self newString: anObject ].
	class = ByteArray
		ifTrue: [ ^ self newBytesFrom: anObject ].
	(class inheritsFrom: Float)
		ifTrue: [ ^ self newFloatFrom: anObject ].
	(class inheritsFrom: ObjectMap)
		ifTrue: [ ^ anObject ].
	class == SCompiledBlock
		ifTrue: [ ^ self transferBlock: anObject ].
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
	^ transferred! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:40:05'!
true 

	^ trueObj! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:40:14'!
wordSize 

	^ wordSize! !

!VirtualSmalltalkImage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 14:40:31'!
wordSize: anInteger 

	wordSize := anInteger.
	maxSMI := (1 bitShift: wordSize * 8 - 2) - 1.
	minSMI := maxSMI negated - 1! !

!VirtualSmalltalkImage methodsFor: 'building' stamp: 'KenD 4/8/2021 14:29:40'!
fixBehaviors 

	self
		initializeBehavior: nilObj;
		initializeBehavior: trueObj;
		initializeBehavior: falseObj.
	classes
		do: [ :c | 
			| m |
			m := c behavior slotNamed: 'class'.
			self
				initializeBehavior: c instanceBehavior;
				initializeBehavior: c behavior;
				initializeBehavior: m ]! !

!VirtualSmalltalkImage methodsFor: 'building' stamp: 'KenD 4/8/2021 14:30:43'!
genesis 
"
	Create the world (should take less than 6 days). This is named 'genesis' to remind us those who had
	done this (and much more) before us. Namely SELF people. I (JV) would like to use this opportunity and point you to
	
	https://github.com/russellallen/self/blob/2bcf2c4cab23f52bf68ac4f617020e748699a548/vm/src/any/memory/universe.cpp#L79
"

	nilObj := self basicNewSlots: #UndefinedObject.
	trueObj := self basicNewSlots: #True.
	falseObj := self basicNewSlots: #False.
	kernel allClasses do: [ :def | self createSpecies: def ].
	self fixBehaviors. 
	kernel allClasses do: [ :def | self buildSpecies: def ]! !

!VirtualSmalltalkImage methodsFor: 'building' stamp: 'KenD 4/8/2021 14:32:56'!
initializeClass: definition superclass: superclass superbehavior: superbehavior 
	| class name flag ivars poolnames pools subclasses format |
	class := classes at: definition.
	class instanceBehavior next: superbehavior.
	subclasses := definition subclasses
		collect: [ :def | classes at: def ].
	subclasses := self newArray: subclasses.
	name := self newString: definition name.
	flag := self formatOfClass: definition.
	format := self newInteger: flag.
	ivars := self newStringArray: definition instVarNames.
	poolnames := definition sharedPools collect: #name.
	pools := self newStringArray: poolnames.
	class
		superclass: superclass;
		format: format;
		instanceVariables: ivars;
		organization: nilObj;
		name: name;
		subclasses: subclasses;
		sharedPools: pools.
	definition metaclass allInstVarNames
		do: [ :ivar | class slotNamed: ivar put: nilObj ]! !

!VirtualSmalltalkImage methodsFor: 'building' stamp: 'KenD 4/8/2021 14:33:25'!
initializeMetaclass: definition superclass: superclass 
	| meta ivars flags format superbehavior |
	meta := metaclasses at: definition.
	superbehavior := superclass instanceBehavior.
	meta instanceBehavior next: superbehavior.
	ivars := self newStringArray: definition instVarNames.
	flags := self formatOfClass: definition. 
	format := self newInteger: flags.
	meta
		superclass: superclass;
		format: format;
		instanceVariables: ivars;
		organization: nilObj! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:30:02'!
formatOfClass: definition 
	| variable pointers |
	variable := definition isVariable ifTrue: [ 16r2000 ] ifFalse: [ 0 ].
	pointers := definition isBytes ifTrue: [ 0 ] ifFalse: [16r4000 ].
	^variable | pointers | definition allInstVarNames size! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:32:20'!
initialize 

	classes := OrderedDictionary new.
	metaclasses := OrderedDictionary new.
		identityMap := IdentityDictionary new! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:32:37'!
initializeBehavior: anObjectMap 
	| class |
	class := classes at: anObjectMap spec.
	anObjectMap behavior: class instanceBehavior.! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:34:25'!
newArray: anArray 
	| assoc |
	assoc := self newSlots: 'Array' sized: anArray size.
	anArray withIndexDo: [ :obj :i | assoc at: i put: obj ].
	^ assoc! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:34:36'!
newAssociation: anAssociation 
	| assoc key value |
	assoc := self newSlots: 'Association'.
	key := self transferLiteralDeep: anAssociation key.
	value := self transferLiteralDeep: anAssociation value.
	^ assoc
		key: key;
		value: value; yourself! !

!VirtualSmalltalkImage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 14:24:59'!
newKernelSpec 
	| current repo spec |
	current := 'specs/current' asFileReference contents trim.
	repo := TonelRepository new
		directory: ('specs/' , current) asFileReference.
	spec := repo asRingEnvironmentWith: #(Kernel).
	^ spec clean! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:26:06'!
basicNewBytes: classname contents: aByteObject 

	^ self basicNewBytesOf: self => classname contents: aByteObject! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:26:18'!
basicNewBytesOf: anRGBehavior  contents: aByteObject 

	^ ByteObjectMap new: anRGBehavior valued: aByteObject! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:26:32'!
basicNewSlots: classname 

	^ self basicNewSlots: classname sized: 0! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:26:43'!
basicNewSlots: classname in: spec 

	^ self basicNewSlots: classname in: spec sized: 0! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:26:55'!
basicNewSlots: classname in: spec sized: size 
	| species |
	species := spec at: classname.
	^self basicNewSlotsOf: species sized: size! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:27:09'!
basicNewSlots: classname sized: size 

	^ self basicNewSlots: classname in: kernel sized: size! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:27:20'!
basicNewSlotsOf: anRGBehavior sized: size 

	^ SlotObjectMap new: anRGBehavior size: size withAll: nilObj! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:27:32'!
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
		initializeMetaclass: spec metaclass superclass: metasuper! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:28:34'!
createSpecies: definition 
	| class meta ibehavior cbehavior |
	class := self basicNewSlots: #Class.
	class initializeAs: definition metaclass sized: 0.
	meta := self basicNewSlots: #Metaclass.
	ibehavior := self basicNewSlots: #Behavior.
	cbehavior := self basicNewSlots: #Behavior.
	ibehavior class: class.
	cbehavior class: meta.
	meta
		class: class;
		instanceBehavior: cbehavior.
	class
		instanceBehavior: ibehavior;
		behavior: cbehavior.
	classes at: definition put: class.
	metaclasses at: definition metaclass put: meta! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:35:06'!
newBytes: classname contents: aByteObject 
	| obj |
	obj := self basicNewBytes: classname contents: aByteObject.
	self initializeBehavior: obj.
	^ obj! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:35:15'!
newBytesFrom: aByteObject 

	^self newBytes: aByteObject class name contents: aByteObject! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:35:26'!
newBytesOf: anRGBehavior contents: aByteObject 
	| obj |
	obj := self basicNewBytesOf: anRGBehavior contents: aByteObject.
	self initializeBehavior: obj.
	^ obj! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:35:38'!
newBytesOf: anRGBehavior sized: anInteger 
	| contents |
	contents := ByteArray new: anInteger.
	^ self newBytesOf: anRGBehavior contents: contents! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:35:49'!
newFloatFrom: aFloat 

	^ self newBytes: 'Float' contents: aFloat pointerDouble! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:36:01'!
newInteger: anInteger 

	anInteger > maxSMI
		ifTrue: [ ^ self newLargePositiveInteger: anInteger ].
	anInteger < minSMI
		ifTrue: [ ^ self newLargeNegativeInteger: anInteger ].
	^self newSmallInteger: anInteger! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:36:15'!
newLargeNegativeInteger: anInteger 
	| size bytes byte |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := ByteArray new: size withAll: 16rFF.
	1 to: anInteger bytesCount do: [ :i | 
		byte := anInteger byteAt: i.
		byte > 0
			ifTrue: [ byte := 256 - byte ].
		bytes at: i put: byte ].
	^ self newBytes: #LargeNegativeInteger contents: bytes! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:36:30'!
newLargePositiveInteger: anInteger 
	| size bytes |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := anInteger asByteArrayOfSize: size.
	^ self newBytes: #LargePositiveInteger contents: bytes reversed! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:36:40'!
newSlots: classname 

	^self newSlots: classname sized: 0! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:37:05'!
newSlots: classname sized: size 
"
	Allocate an object of pointer type (as SlotObjectMap).
	It is niled-out, and 	`size` is the size of indexed part (i.e.,
	shall not include named slots)
"
	| obj |
	obj := self basicNewSlots: classname sized: size.
	self initializeBehavior: obj.
	^ obj! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:37:24'!
newSlotsOf: anRGBehavior sized: size 
"
	Allocate an object of pointer type (as SlotObjectMap).
	It is niled-out, and 	`size` is the size of indexed part (i.e.,
	shall not include named slots)
"
	| obj |
	obj := self basicNewSlotsOf: anRGBehavior sized: size.
	self initializeBehavior: obj.
	^ obj! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:37:35'!
newSmallInteger: anInteger 
	self assert: (anInteger between: minSMI and: maxSMI).
	^ SmallintObjectMap
		new: self => #SmallInteger
		valued: anInteger! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:37:48'!
newString: aString 
	| bytes |
	bytes := aString copyWith: Character null.
	^self newBytes: 'String' contents: bytes! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:38:00'!
newStringArray: strings 
	| array bytes |
	array := self newSlots: 'Array' sized: strings size.
	strings
		withIndexDo: [ :s :i |
			bytes := self newString: s.
			array at: i put: bytes ].
	^ array! !

!VirtualSmalltalkImage methodsFor: 'services' stamp: 'KenD 4/8/2021 14:38:09'!
newSymbol: aSymbol 
	| new bytes |
	identityMap at: aSymbol ifPresent: [ :s | ^ s ].
	bytes := aSymbol copyWith: Character null.
	new := self newBytes: 'Symbol' contents: bytes.
	^ identityMap at: aSymbol put: new! !

!VirtualSmalltalkImage methodsFor: 'testing' stamp: 'KenD 4/8/2021 14:32:08'!
includes: anObject 

	^identityMap includesKey: anObject! !

!VirtualSmalltalkImage class methodsFor: 'class initialization' stamp: 'KenD 4/8/2021 14:23:30'!
newKernelSpec 
	| current repo spec |
	current := 'specs/current' asFileReference contents trim.
	repo := TonelRepository new
		directory: ('specs/' , current) asFileReference.
	spec := repo asRingEnvironmentWith: #(Kernel).
	^ spec clean! !

!VirtualSmalltalkImage class methodsFor: 'instance creation' stamp: 'KenD 4/8/2021 14:22:33'!
fromSpec 

	^ self new kernel: self kernelSpec! !

!VirtualSmalltalkImage class methodsFor: 'instance creation' stamp: 'KenD 4/8/2021 14:22:48'!
kernelSpec 

	^ KernelSpec ifNil: [ KernelSpec := self newKernelSpec ]! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 07:58:00'!
declareGlobals: anObjectMap 
	| assocs |
	assocs := anObjectMap
		slots collect: [ :symbol | 
			image newAssociation: symbol -> nil].
	assocs do: [:assoc | 	globals add: assoc ].
		^assocs! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:02:22'!
newBytesOf: anRGBehavior  sized: anInteger 

	^ image newBytesOf: anRGBehavior  sized: anInteger! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:03:02'!
newClosure: anInteger 

	^image newSlots: #Closure sized: anInteger! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:03:50'!
newDictionary 
	| factory |
	factory := image classNamed: #Dictionary.
	^ self send: #new to: factory! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:04:07'!
newInteger: anInteger 

	^image newInteger: anInteger ! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:04:23'!
newOf: anRGBehavior 
	
	^ image newSlotsOf: anRGBehavior sized: 0! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:04:35'!
newOf: anRGBehavior sized: anInteger 

	^ anRGBehavior isBytes
		ifTrue: [ image newBytesOf: anRGBehavior sized: anInteger ]
		ifFalse: [ image newSlotsOf: anRGBehavior sized: anInteger ]! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:04:46'!
newSlotsOf: anRGBehavior sized: anInteger 

	^ image newSlotsOf: anRGBehavior sized: anInteger! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:05:31'!
popFrame 

	frames removeLast! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:05:40'!
pushFrame: aMethodEvaluator 

	frames addLast: aMethodEvaluator! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:05:50'!
send: aSymbol to: receiver 

	^ self send: aSymbol to: receiver with: {}! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:06:00'!
send: aSymbol to: receiver with: anArray 

	^ self send: aSymbol to: receiver with: anArray super: false! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:06:16'!
send: aSymbol to: receiver with: arguments super: aBoolean 
	| behavior method environment frame |
	(self isUndermessage: aSymbol)
		ifTrue: [ ^ frames last staticSend: aSymbol to: receiver with: arguments ].
	behavior := aBoolean
		ifTrue: [ frames last classBinding superclass spec ]
		ifFalse: [ receiver spec ].
	method := self lookup: aSymbol startingAt: behavior.
	self assert: method notNil.
	environment := image newSlots: #Array sized: method environmentCount.
	frame := MethodEvaluator new
		receiver: receiver;
		arguments: arguments;
		environment: environment;
		method: method;
		system: self.
	^ frame evaluate
! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:07:35'!
transferLiteral: anObject 

	^image transferLiteral: anObject! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:07:46'!
transferMethodLiterals: method 
	| class |
	method withIndexDo: [:literal :i | 
		class := literal class.
		((class inheritsFrom: ObjectMap)
			or: [ class = SCompiledBlock ])
			ifFalse: [ method at: i put: (image transferLiteralDeep: literal) ] ].
	^ method! !

!VirtualSmalltalkRuntime methodsFor: 'services' stamp: 'KenD 4/12/2021 08:08:27'!
unwindUpTo: environment returning: value 
	| frame |
	frames size to: 1 by: -1 do: [ :i | 
		frame := frames at: i.
		frame returning: value.
		(frame isHomeOf: environment)
			ifTrue: [ ^ frames removeLast: frames size - i +1 ] ].
	self error: 'frame not found'! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:55:55'!
booleanFrom: anObject 

	anObject == image false
		ifTrue: [ ^ false ].
	anObject == image true
		ifTrue: [ ^ true ].
	self error: 'not a boolean'! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:57:03'!
builderOf: closure 

	frames
		reverseDo: [ :frame | 
			(frame built: closure)
				ifTrue: [ ^ frame ] ].
	self error: 'home of closure not found'! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:58:29'!
doLookup: aSymbol startingAt: aBehavior 
	| behavior m c smethod |
	behavior := aBehavior.
	[ m := self methodFor: aSymbol in: behavior.
	m
		ifNotNil: [ smethod := self compile: m.
			^ self transferMethodLiterals: smethod ].
	behavior := behavior superclass.
	behavior notNil ] whileTrue.
	^ aBehavior isMeta
		ifTrue: [ c := aBehavior environment at: #Class.
			self doLookup: aSymbol startingAt: c ]! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:58:45'!
false 

	^ image false! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:58:54'!
frames 

	^ frames! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 07:59:04'!
globals 

	^ globals! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:01:14'!
lastHash 

	^ lastHash value value! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:01:22'!
lastHash: anInteger 

	^ lastHash value value: anInteger! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:01:58'!
lookup: aSymbol startingAt: aBehavior 

	^methodCache at: aSymbol -> aBehavior 
		ifAbsentPut: [ self doLookup: aSymbol startingAt: aBehavior ]! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:02:09'!
methodFor: aSymbol in: anRGBehavior 

	overrides at: anRGBehavior->aSymbol ifPresent: [:m | ^m].
	^anRGBehavior methodNamed: aSymbol! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:04:57'!
nil 

	^ image nil! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:05:17'!
override: assoc with: source 
	| species selector method override |
	species := image kernel at: assoc key.
	selector := assoc value.
	method := species methodNamed: selector.
	override := method copy sourceCode: source.
	overrides at: species -> selector put: override! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:07:05'!
smallintBehavior 

	^smallintBehavior! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:07:21'!
symbolFrom: anObjectMap 

	^ symbolCache
		at: anObjectMap
		ifAbsentPut: [ anObjectMap asString asSymbol ]! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:08:05'!
true 

	^image true! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:08:45'!
virtualClassFor: spec 
	| superclass supervirtual virtual map |
	superclass := spec superclass.
	map := image classFor: spec.
	supervirtual := superclass
		ifNotNil: [ self virtualSpeciesFor: superclass ].
	virtual := VirtualClass new
		spec: spec;
		superclass: supervirtual;
		map: map.
	virtual createClassAssociationsWith: image.
	^ virtualSpecies at: spec put: virtual! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:09:00'!
virtualMetaclassFor: spec 
	| superclass supervirtual class virtual map |
	class := self virtualSpeciesFor: spec instanceSide.
	map := 	image speciesFor: spec.
	superclass := spec superclass ifNil: image => #Class.
	supervirtual := self virtualSpeciesFor: superclass.
	virtual := VirtualMetaclass new
		spec: spec;
		superclass: supervirtual;
		map: map;
		class: class.
	^ virtualSpecies at: spec put: virtual! !

!VirtualSmalltalkRuntime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 08:09:33'!
virtualSpeciesFor: spec 

	virtualSpecies at: spec ifPresent: [ :existing | ^ existing ].
	^spec isMeta 
		ifTrue: [self virtualMetaclassFor: spec] 
		ifFalse: [self virtualClassFor: spec]! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 07:56:12'!
bootstrap 
	| transferred class smalltalk |
	transferred := self newInteger: image wordSize.
	class := image classNamed: #SmalltalkSystem.
	smalltalk := self send: #new to: class.
	self send: #bootstrap: to: smalltalk with: {transferred}! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 07:59:23'!
image: aVirtualSmalltalkImage 

	image := aVirtualSmalltalkImage.
	smallintBehavior := (image classNamed: #SmallInteger) instanceBehavior.
	self
		initializeEmulationOverrides;
		initializeGlobals! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 07:59:40'!
initialize 

	frames := OrderedCollection new.
	methodCache := Dictionary new.
	symbolCache := IdentityDictionary new.
	overrides := Dictionary new.
	virtualSpecies := OrderedDictionary new.
	globals := VirtualDictionary new! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 07:59:52'!
initializeClassPools 
	| dictionary virtual cvars |
	dictionary := image classNamed: #Dictionary.
	image classes
		keysAndValuesDo: [ :spec :map | 
			virtual := self virtualSpeciesFor: spec.
			cvars := self send: #new to: dictionary.
			virtual classPool
				associations do: [ :assoc | self send: #add: to: cvars with: {assoc} ].
			map classVariables: cvars ]! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 08:00:22'!
initializeEmulationOverrides 
	self
		override: #Species -> #basicNew with: 'basicNew <primitive: New>';
		override: #Species -> #basicNew:
			with: 'basicNew: anInteger <primitive: NewSized>';
		override: #Species -> #new with: 'new <primitive: New>';
		override: #Species -> #new:
			with: 'new: anInteger <primitive: NewSized>';
		override: #Species -> #primitiveNewBytes:
			with: 'primitiveNewBytes: anInteger <primitive: NewBytes>';
		override: #'Float class' -> #new with: 'new <primitive: FloatNew>';
		override: #ProtoObject -> #_size
			with: '_size <primitive: UnderSize>';
		override: #ProtoObject -> #behavior
			with: 'behavior <primitive: Behavior>';
		override: #ProtoObject -> #==
			with: '== anObject <primitive: Equal>';
		override: #ProtoObject -> #primitiveSize
			with: 'primitiveSize <primitive: Size>';
		override: #ProtoObject -> #primitiveAt:
			with: 'primitiveAt: anInteger <primitive: At>';
		override: #ProtoObject -> #primitiveAt:put:
			with: 'primitiveAt: anInteger put: anObject <primitive: AtPut>';
		override: #ProtoObject -> #basicHash
			with: 'basicHash <primitive: Hash>';
		override: #SmallInteger -> #+
			with: '+ anObject <primitive: SMIPlus>';
		override: #SmallInteger -> #-
			with: '- anObject <primitive: SMIMinus>';
		override: #SmallInteger -> #*
			with: '* anObject <primitive: SMITimes>';
		override: #SmallInteger -> #//
			with: '// anObject <primitive: SMIIntDiv>';
		override: #SmallInteger -> #\\
			with: '\\ anObject <primitive: SMIIntQuot>';
		override: #SmallInteger -> #bitAnd:
			with: 'bitAnd: aNumber <primitive: SMIBitAnd>';
		override: #SmallInteger -> #bitXor:
			with: 'bitXor: aNumber <primitive: SMIBitXor>';
		override: #SmallInteger -> #bitShift:
			with: 'bitShift: aNumber <primitive: SMIBitShift>';
		override: #SmallInteger -> #highBit
			with: 'highBit <primitive: SMIHighBit>';
		override: #SmallInteger -> #>
			with: '> anObject <primitive: SMIGreaterThan>';
		override: #SmallInteger -> #>=
			with: '>= anObject <primitive: SMIGreaterEqualThan>';
		override: #SmallInteger -> #=
			with: '= anObject <primitive: SMIEqual>';
		override: #SmallInteger -> #sizeInBytes
			with: 'sizeInBytes <primitive: SMISize>';
		override: #Closure -> #value
			with: 'value <primitive: ClosureValue>';
		override: #Closure -> #evaluateAtomically
			with: 'evaluateAtomically <primitive: ClosureValue>';
		override: #Closure -> #value:
			with: 'value: a1 <primitive: ClosureValueWithArgs>';
		override: #Closure -> #value:value:
			with: 'value: a1 value: a2 <primitive: ClosureValueWithArgs>';
		override: #Closure -> #value:value:value:
			with: 'value: a1 value: a2 value: a3 <primitive: ClosureValueWithArgs>';
		override: #Closure -> #evaluateWith:
			with: 'evaluateWith: arg <primitive: ClosureValueWithArgs>';
		override: #Closure -> #evaluateWith:with:
			with: 'evaluateWith: a1 with: a2 <primitive: ClosureValueWithArgs>';
		override: #Closure -> #whileTrue:
			with: 'whileTrue: aBlock <primitive: ClosureWhileTrue>';
		override: #Closure -> #whileFalse:
			with: 'whileFalse: aBlock <primitive: ClosureWhileFalse>';
		override: #Closure -> #argumentCount
			with: 'argumentCount <primitive: ClosureArgumentCount>';
		override: #String -> #replaceFrom:to:with:startingAt:
			with:
			'replaceFrom: start to: end with: aCollection startingAt: position <primitive: StringReplaceFromToWithStartingAt>';
		override: #'HashTable class' -> #primeFor:
			with: 'primeFor: anInteger <primitive: PrimeFor>'! !

!VirtualSmalltalkRuntime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 08:00:47'!
initializeGlobals 
	| assoc |
	assoc := image newAssociation: #WordSize -> image wordSize.
	globals add: assoc.
	assoc := image newAssociation: #LastHash ->1.
	globals add: assoc.
					
	image classes
		keysAndValuesDo: [ :spec :map | 
			assoc := image newAssociation: spec name asSymbol -> map.
			globals add: assoc.
			spec
				sharedPoolsDo: [ :pool | 
					assoc := image newAssociation: pool name asSymbol -> nil.
					globals add: assoc ] ]! !

!VirtualSmalltalkRuntime methodsFor: 'testing' stamp: 'KenD 4/12/2021 08:01:02'!
isUndermessage: selector 

	^ Undermessages includes: selector! !

!VirtualSmalltalkRuntime class methodsFor: 'class initialization' stamp: 'KenD 4/12/2021 07:54:56'!
initialize 
"
	self initialize
"
	Undermessages := 
		#(_basicAt: #_basicAt:put:
		  _bitShiftLeft: _byteAt: #_byteAt:put: 
		 _smallSize _largeSize 
		 _isSmallInteger 
		 _basicHash _basicHash: 
		 _smallIntegerByteAt: 
		 _uShortAtOffset: #_uShortAtOffset:put:)! !

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

!CuisBridge methodsFor: 'initialization' stamp: 'KenD 3/21/2021 13:27:20'!
findRootObjects 

	nilObj     := LocalHandle on: nil     within: runtime.
	trueObj  := LocalHandle on: true  within: runtime.
	falseObj := LocalHandle on: false within: runtime
! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:40:38'!
findFalseObject 
	| s handle |
	s := runtime storage.
	handle := s class = VirtualSmalltalkImage
		ifTrue: [ s false ]
		ifFalse: [ self assert: false ].
	^ falseObj := ObjectHandle on: handle within: runtime! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:40:52'!
findGlobalNamed: name 
	| globals array |
	globals := self smalltalk slotOf: #SmalltalkSystem named: #globals.
	array := globals slotOf: #Dictionary named: 'table'.
	array do: [:slot | | assoc |
		assoc :=  slot asAssociationMirror.
		assoc reflectsNil
			ifFalse: [assoc key asLocalString = name ifTrue: [^assoc value]]].
	self error: 'global not found'! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:41:04'!
findNilObject 

	^ nilObj := ObjectHandle
		on: ImageSegmentWriter nilOffset
		within: runtime! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:41:14'!
findRootClasses 
	| object subclasses |
	object := self globalNamed: 'Object'.
	subclasses := object asSpeciesMirror subclasses.
	1 to: subclasses size do: [:i | | subclass name |
		subclass := (subclasses slotAt: i) asSpeciesMirror.
		name := subclass name asLocalString.
		self name: subclass as: name]! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:41:30'!
findRootObjects 
	| class |
	nilObj := self findNilObject.
	class := nilObj mirror reflectedClass.
	[ class reflectsNil ]
		whileFalse: [ | name |
			name := class name asLocalString.
			self name: class as: name.
			class := class superclass ].
	self findRootClasses
	"; findSmalltalk"! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:41:59'!
findSmalltalk 
	| smalltalk |
	smalltalk := self halt.
	self name: smalltalk as: #Smalltalk.
	^smalltalk! !

!CuisStBridge methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:42:13'!
findTrueObject 

	self assert: false.
	^ trueObj := ObjectHandle on: 0 within: runtime! !

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

!Handle methodsFor: 'testing' stamp: 'KenD 3/3/2021 13:12:02'!
isLocal 

	^runtime isLocal! !

!Handle methodsFor: 'accessing' stamp: 'KenD 3/3/2021 13:12:38'!
runtime 

	^runtime! !

!Handle methodsFor: 'accessing' stamp: 'KenD 3/3/2021 13:12:51'!
runtime: aRuntime 
	
	runtime := aRuntime! !

!Handle methodsFor: 'meta accessing' stamp: 'KenD 3/3/2021 13:11:38'!
handleOn: objectId 

	^self class on: objectId within: runtime! !

!Handle methodsFor: 'meta accessing' stamp: 'KenD 3/3/2021 13:12:18'!
objectHandleOn: objectId 

	^ ObjectHandle on: objectId within: runtime! !

!PstFrameHandle methodsFor: 'accessing' stamp: 'KenD 3/27/2021 08:28:09'!
currentIp 

	^frame currentIp! !

!PstFrameHandle methodsFor: 'accessing' stamp: 'KenD 3/27/2021 08:27:59'!
frame: aFrame 

	frame := aFrame! !

!PstFrameHandle methodsFor: 'meta accessing' stamp: 'KenD 3/27/2021 08:28:35'!
objectAtSlot: index 
	| slot |
	slot := frame slotAt: index.
	^self objectHandleOn: slot! !

!PstFrameHandle methodsFor: 'meta accessing' stamp: 'KenD 3/27/2021 08:29:57'!
slotAt: index 

	^self objectAtSlot: index! !

!PstFrameHandle methodsFor: 'meta accessing' stamp: 'KenD 3/27/2021 08:30:10'!
slotAtTop 

	^frame slotAtTop! !

!PstFrameHandle class methodsFor: 'instance creation' stamp: 'KenD 3/27/2021 08:27:27'!
on: frame within: runtime 

	^self new frame: frame; runtime: runtime! !

!CuisStFrameHandle methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:44:23'!
currentIp 

	^frame currentIp! !

!CuisStFrameHandle methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:44:31'!
frame: aFrame 

	frame := aFrame! !

!CuisStFrameHandle methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:44:47'!
objectAtSlot: index 
	| slot |
	slot := frame slotAt: index.
	^self objectHandleOn: slot! !

!CuisStFrameHandle methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:45:33'!
slotAt: index 

	^self objectAtSlot: index! !

!CuisStFrameHandle methodsFor: 'accessing' stamp: 'KenD 4/12/2021 10:45:42'!
slotAtTop 

	^frame slotAtTop! !

!CuisStFrameHandle class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 10:44:01'!
on: frame within: runtime 

	^self new frame: frame; runtime: runtime! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 08:55:45'!
= anObject 

	^ anObject class = self class and: [ oid = anObject oid ]! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:38:55'!
isArrayed 

	^runtime objectFormat isArrayed: oid! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:39:24'!
isInteger 

	^runtime objectFormat isInteger: oid! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:39:33'!
isLarge 

	^self isSmall not! !

!ObjectHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 11:39:42'!
isSmall 

	^runtime objectFormat isSmall: oid! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:38:05'!
handleOn: anObject 

	^self class on: anObject within: runtime! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:38:17'!
hash 

	^oid hash! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:38:30'!
indexOf: varname for: aMirror 
	| type |
	type := self structureOf: aMirror structureType.
	^type indexOf: varname! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:38:40'!
indexOf: varname inStructureOf: type 

	^runtime indexOf: varname inStructureOf: type! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:40:12'!
maneuverer 

	^ DirectGate subjectOn: self! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:40:23'!
mirage 

	^MirageGate subjectOn: self! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:40:34'!
mirror 

	^ObjectMirror on: self! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:40:45'!
nilObject 

	^runtime nil! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:40:57'!
oid

	^oid! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:41:07'!
oid: objectId 

	self assert: objectId !!== nil.
	oid := objectId! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:41:58'!
runtime 

	^runtime! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:42:10'!
runtime: aRuntime 

	runtime := aRuntime! !

!ObjectHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 11:42:22'!
size 

	^runtime objectFormat sizeOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:33:58'!
arrayedSize 

	^ runtime objectFormat arrayedSizeOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:34:35'!
asLocalBoolean 

	runtime false oid = oid ifTrue: [ ^false ].
	runtime true oid = oid ifTrue: [ ^true ].
	self assert: false.! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:34:51'!
asLocalBytes 

	^runtime objectFormat bytesOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:35:02'!
asLocalCollection 

	^self isBytes ifTrue: [runtime bytesOf: oid] ifFalse: [self assert: false]! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:35:16'!
asLocalInteger 

	^runtime integerOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:35:25'!
asLocalString 

	^runtime stringOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:35:35'!
asLocalSymbol 

	^runtime symbolOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:37:22'!
basicFlags 

	^runtime objectFormat flagsOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:37:34'!
getBehavior 
	| behavior |
	behavior := runtime objectFormat behaviorOf: oid.
	^self handleOn: behavior! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:37:47'!
getClass 

	^runtime objectFormat classOf: self.! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:39:57'!
largeSize 

	^runtime objectFormat largeSizeOf: oid! !

!ObjectHandle methodsFor: 'meta accessing' stamp: 'KenD 3/11/2021 11:43:10'!
structureOf: type 

	^runtime structureOf: type! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 3/11/2021 11:35:54'!
at: index 
	| slot |
	slot := runtime arrayedSlotOf: oid at: index.
	^ self handleOn: slot! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 3/11/2021 11:36:42'!
at: index put: anOid 

	^ runtime arrayedSlotOf: oid at: index put: anOid! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 3/11/2021 11:42:44'!
slotAt: index 
	| slot |
	slot := runtime slotOf: oid at: index.
	^self handleOn: slot! !

!ObjectHandle methodsFor: 'services' stamp: 'KenD 3/11/2021 11:42:54'!
slotAt: index put: anOid 

	^runtime slotOf: oid at: index put: anOid! !

!ObjectHandle class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 08:54:22'!
on: anObject within: aRuntime 

	^self new oid: anObject; runtime: aRuntime! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:07:27'!
asLocalCollection 

	^ oid! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:07:51'!
asLocalInteger 

	^ oid! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:08:01'!
asLocalString 

	^ oid asString! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:08:13'!
getClass 
	| handle |
	handle := runtime handleOn: oid class.
	^ handle mirror asSpeciesMirror! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:08:24'!
indexOf: varname for: aMirror 

	^ oid class indexOfSlot: varname asString! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:08:55'!
nilObject 

	^self handleOn: nil! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:09:08'!
oid: objectId 

	oid !!= nil ifTrue: [ self halt ].
	objectId class = ByteString
		ifTrue: [ self halt ].
	oid := objectId! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:09:21'!
size 

	^ oid basicSize + oid class instSize! !

!LocalHandle methodsFor: 'accessing' stamp: 'KenD 3/11/2021 13:09:33'!
slotAt: index 
	| slot |
	slot := oid instVarAt: index.
	^ self handleOn: slot! !

!LocalHandle methodsFor: 'testing' stamp: 'KenD 3/11/2021 13:08:43'!
isLocal 

	^true! !

!MethodLookup methodsFor: 'meta accessing' stamp: 'KenD 3/3/2021 11:04:34'!
lookup: aSymbol on: aSubject 

	^self subclassResponsibility! !

!CuisLookup methodsFor: 'meta accessing' stamp: 'KenD 3/21/2021 13:28:29'!
lookup: aSymbol on: aSubject 

	^ aSubject _gate handle oid class lookupSelector: aSymbol! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:34:06'!
compiledMethodFor: anRGMethod 
	| method |
	cache at: anRGMethod ifPresent: [ :cm | ^ cm ].
	method := self compile: anRGMethod.
	^ cache at: anRGMethod put: method! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:34:19'!
globals: aPoolDictionary 

	globals := aPoolDictionary! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:34:45'!
lookup: aSymbol on: aSubject 
	| behavior classname |
	classname := aSubject _gate handle oid classname.
	behavior := spec at: classname.
	^ self lookup: aSymbol startingAt: behavior! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:34:58'!
lookup: aSymbol startingAt: aBehavior 
	| next m c |
	next := aBehavior.
	[ m := next methodNamed: aSymbol.
	m ifNotNil: [ ^ self compiledMethodFor: m ].
	next := next superclass.
	next notNil ] whileTrue.
	^ aBehavior isMeta
		ifTrue: [ c := aBehavior environment at: #Class.
			self lookup: aSymbol startingAt: c ]! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:35:14'!
lookupSuper: aSymbol on: aSubject from: classname 
	| behavior |
	cache at: classname -> aSymbol ifPresent: [ :cached | ^ cached ].
	behavior := spec at: classname.
	^ self lookup: aSymbol startingAt: behavior! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:35:25'!
spec 

	^spec! !

!EmulationLookup methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:35:34'!
spec: anRGEnvironment 

	spec := anRGEnvironment! !

!EmulationLookup methodsFor: 'initialization' stamp: 'KenD 3/3/2021 11:34:32'!
initialize 

	cache := Dictionary new! !

!MirrorLookup methodsFor: 'meta accessing' stamp: 'KenD 3/20/2021 14:52:06'!
lookup: aSymbol on: aSubject 

	^aSubject _gate mirror lookup: aSymbol! !

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

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:30:08'!
behaviorOf: oid 

	^self assert: false! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:30:21'!
bytesOf: oid count: size 

	^oid copyFrom: 1 to: size! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:30:31'!
classOf: anObjectHandle 

	^anObjectHandle oid class! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:30:42'!
integerOf: oid 

	self assert: oid isInteger.
	^ oid! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:31:32'!
labelFor: oid 
	| label |
	label := storage ifNotNil: [storage nameOf: oid].
	^label ifNil: [ 'unknown' ]! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:32:17'!
sizeOf: oid 

	^oid basicSize + oid class instSize! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:32:33'!
slotOf: oid at: index 

	^ oid instVarAt: index! !

!CuisObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/21/2021 13:32:43'!
stringOf: oid count: size 

	^(oid copyFrom: 1 to: size) asString! !

!CuisObjectFormat methodsFor: 'printing' stamp: 'KenD 3/21/2021 13:32:04'!
print: oid on: aStream 

	aStream
		nextPutAll: '@local {';
		print: oid;
		nextPut: $}! !

!CuisObjectFormat methodsFor: 'testing' stamp: 'KenD 3/21/2021 13:31:08'!
isBytes: anObject 

	^anObject class isBytes! !

!CuisObjectFormat methodsFor: 'testing' stamp: 'KenD 3/21/2021 13:31:18'!
isInteger: oid 

	^oid isInteger! !

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

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:45'!
indexOf: ivarName 
	
	^fields at: ivarName asString! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:57'!
indexOf: ivarName be: i 

	fields at: ivarName put: i! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:18'!
initialize 

	fields := Dictionary new! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:52'!
loadFrom: aClassDefinition 

	name := aClassDefinition name asSymbol.
	aClassDefinition allInstVarNames
		withIndexDo: [:ivarName :i | self indexOf: ivarName be: i]! !

!ObjectShape class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:21:32'!
new 

	^self basicNew initialize! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:31:47'!
bridge 

	^bridge! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:31:57'!
bridge: aBridge 

	bridge := aBridge.
	bridge runtime: self! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:32:17'!
false 

	^ bridge false! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:32:27'!
globalNamed: name 

	^bridge globalNamed: name! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:35:06'!
loadBridge 

	bridge findRootObjects! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:38:01'!
nil 

	^bridge nil! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:38:09'!
objectFormat 

	^objectFormat! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:38:17'!
objectFormat: anObjectFormat 

	objectFormat := anObjectFormat.
	anObjectFormat runtime: self! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:38:25'!
objectModel 

	^objectModel! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:38:43'!
objectModel: aModuleSpec 

	^objectModel := aModuleSpec! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:39:15'!
storage 

	^storage! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:39:23'!
storage: anObject 

	storage := anObject! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:39:33'!
stringOf: oid 

	^objectFormat stringOf: oid! !

!Runtime methodsFor: 'accessing' stamp: 'KenD 4/12/2021 12:40:05'!
true 

	^ bridge true! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:33:46'!
initialize 

	shapeMap := ShapeMap new.
	self useMirrorLookup! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:35:21'!
loadShapesFrom: anRGEnvironment 

	objectModel := anRGEnvironment.
	anRGEnvironment allClasses do: [ :class | shapeMap load: class ]! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:35:38'!
loadShapesFromImage 
	| classes |
	objectModel := Smalltalk.
	classes := #(ClassDescription Class Metaclass) 
				collect: [ :name | Smalltalk at: name ].
	classes do: [ :class | shapeMap load: class ]! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:40:58'!
useCuisLookup 

	lookup := CuisLookup new! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:40:22'!
useEmulationLookup: anRGEnvironment 
	
	lookup := EmulationLookup new spec: anRGEnvironment! !

!Runtime methodsFor: 'initialization' stamp: 'KenD 4/12/2021 12:40:32'!
useMirrorLookup 

	lookup := MirrorLookup new! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 4/12/2021 12:32:53'!
handleOn: oid 

	^ ObjectHandle on: oid within: self! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 4/12/2021 12:33:01'!
handleOnGlobal: aString 
	| oid |
	oid := self globalNamed: aString.
	^self handleOn: oid! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 4/12/2021 12:35:54'!
lookup 

	^ lookup! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 4/12/2021 12:36:03'!
lookup: aSymbol on: aSubject 

	^lookup lookup: aSymbol on: aSubject! !

!Runtime methodsFor: 'meta accessing' stamp: 'KenD 4/12/2021 12:36:13'!
lookupSuper: aSymbol on: aSubject from: classname 

	^ lookup lookupSuper: aSymbol on: aSubject from: classname! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:34:20'!
integerHandle: anInteger 
	| oid |
	oid := objectFormat newInteger: anInteger.
	^ self handleOn: oid! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:34:30'!
integerOf: oid 

	^objectFormat integerOf: oid! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:36:28'!
new: oid 
	| instance |
	instance := storage new: oid.
	^ self handleOn: instance! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:37:12'!
new: oid sized: anInteger 
	| instance |
	instance := storage new: oid sized: anInteger.
	^ self handleOn: instance! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:37:28'!
newClosure: anObjectHandle 
	| oid |
	oid := storage newClosure: anObjectHandle.
	"should put a thing that lives in remote runtime, not a PCompiledBlock"
	oid block: anObjectHandle.
	^ self handleOn: oid! !

!Runtime methodsFor: 'object format' stamp: 'KenD 4/12/2021 12:37:44'!
newClosureHandle: aPCompiledBlock 
	| oid |
	oid := storage newClosure: aPCompiledBlock.
	"should put a thing that lives in remote runtime, not a PCompiledBlock"
	oid block: aPCompiledBlock.
	^ self handleOn: oid! !

!Runtime methodsFor: 'shapes' stamp: 'KenD 4/12/2021 12:33:26'!
indexOf: varname inStructureOf: type 

	^shapeMap indexOf: varname at: type! !

!Runtime methodsFor: 'shapes' stamp: 'KenD 4/12/2021 12:39:44'!
structureOf: type 

	^shapeMap at: type! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:31:13'!
arrayedSlotOf: object at: index 

	^ objectFormat arrayedSlotOf: object at: index! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:31:23'!
arrayedSlotOf: object at: index put: value 

	^ storage arrayedSlotOf: object at: index put: value! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:32:08'!
bytesOf: oid 

	^objectFormat bytesOf: oid! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:38:55'!
slotOf: object at: index 

	^objectFormat slotOf: object at: index! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:39:03'!
slotOf: object at: index put: value 

	^ storage slotOf: object at: index put: value! !

!Runtime methodsFor: 'storage' stamp: 'KenD 4/12/2021 12:39:54'!
symbolOf: oid 

	^objectFormat symbolOf: oid! !

!Runtime methodsFor: 'testing' stamp: 'KenD 4/12/2021 12:34:50'!
isLocal 

	^objectModel == Smalltalk.! !

!Runtime class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 12:26:17'!
forBootstrappingCuisSt: aSmalltalkBootstrapper spec: anRGEnvironment 

	^ self new
		bridge: (BootstrappedCuisStBridge new bootstrapper: aSmalltalkBootstrapper);
		objectFormat: (BootstrapObjectFormat on: aSmalltalkBootstrapper);
		storage: (BootstrapStorage on: aSmalltalkBootstrapper);
		useEmulationLookup: anRGEnvironment! !

!Runtime class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 12:29:12'!
forEmulatingCuisSt: aSmalltalkBootstrapper 

	^ self new
		bridge: (BootstrappedCuisStBridge new bootstrapper: aSmalltalkBootstrapper);
		objectFormat: (BootstrapObjectFormat on: aSmalltalkBootstrapper);
		storage: (BootstrapStorage on: aSmalltalkBootstrapper);
		loadBridge! !

!Runtime class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 12:30:02'!
forLocalCuis
	^ self new
		bridge: CuisBridge new;
		objectFormat: CuisObjectFormat new;
		useCuisLookup;
		loadBridge;
		loadShapesFromImage! !

!Runtime class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 12:30:32'!
forSimulating: aModuleSpec memory: aByteArray 
	| adapter |
	adapter := ByteArrayAdapter on: aByteArray.
	^ self new
		bridge: CuisStBridge new;
		objectFormat: (DmrObjectFormat on: adapter);
		storage: adapter;
		loadShapesFrom: aModuleSpec;
		loadBridge! !

!Runtime class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 12:30:46'!
new 

	^self basicNew initialize! !

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

!SmalltalkInterpreter methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:14:04'!
primitivePrimeFor 
	| num result  |
	num := arguments first _gate handle asLocalInteger.
	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= num ].
	^ self subjectOnInteger: result in: receiver _gate handle runtime! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:08:27'!
dispatch: message to: msgReceiver 

	^ msgReceiver _gate dispatch: message from: self! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:09:26'!
dispatchSpecial: message 
	| selector mirror gate |
	selector := message selector.
	gate := message receiver _gate.
	mirror := gate mirror.
	selector == #_isSmallInteger
		ifTrue: [ ^ self subjectOnBoolean: gate handle isInteger in: gate handle runtime].
	selector == #_isLarge
		ifTrue: [ ^ self subjectOnBoolean: mirror reflectsLargeObject in: gate handle runtime].
	selector == #_smallSize
		ifTrue: [ ^ self subjectOnInteger: mirror  smallSize in: gate handle runtime ].
	selector == #_largeSize
		ifTrue: [ ^ self subjectOnInteger: mirror largeSize in: gate handle runtime ].
	selector == #_basicFlags
		ifTrue: [ ^ self subjectOnInteger: mirror basicFlags in: gate handle runtime ].
	selector == #_basicHash
		ifTrue: [ ^ self subjectOnInteger: 0 in: gate handle runtime ].
	selector == #_basicHash:
		ifTrue: [ ^ message receiver ].
	self assert: false
! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:10:13'!
dispatchSuper: message to: msgReceiver 

	^ msgReceiver _gate dispatchSuper: message from: self! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:10:24'!
falseLiteral 

	^receiver _gate handle runtime false maneuverer.! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:10:35'!
gateOnBlock: aPCompiledBlock 
	| runtime closure handle |
	runtime := receiver _gate handle runtime.
	closure := aPCompiledBlock newClosure home: self.
	handle := LocalHandle on: closure within: localRuntime.
	^ closure mirage! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:12:22'!
literal: anObject 
	| handle |
	handle := receiver _gate handleOn: anObject.
	^ self subjectOn: handle! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:12:33'!
mirageOnBlock: aPCompiledBlock 
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := runtime newClosureHandle: aPCompiledBlock.
	^ handle mirage! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:12:49'!
nilLiteral 

	^receiver _gate handle runtime nil maneuverer! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:13:07'!
primitiveClosureValue 
	| closure block sblock prev result interpreter next |
	closure := receiver _gate handle.
	block := closure mirror asClosureMirror block handle oid.
	interpreter := self.
	[ next := interpreter blocks. next includesKey: block] whileFalse: [ interpreter := interpreter parent ].
	sblock := next at: block.
	prev := environment.
	environment := closure.
	result := interpreter visitScript: sblock.
	environment := prev.
	^result! !

!SmalltalkInterpreter methodsFor: 'evaluation' stamp: 'KenD 4/8/2021 08:14:16'!
trueLiteral 

	^receiver _gate handle runtime true maneuverer.! !

!SmalltalkInterpreter methodsFor: 'initialization' stamp: 'KenD 4/8/2021 08:11:33'!
initialize 

	super initialize.
	localRuntime := Runtime forLocalCuis! !

!SmalltalkInterpreter methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:12:10'!
isSpecial: selector 

	^Underprimitives includes: selector! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:14:41'!
visitLiteral: anSLiteral 
	| handle |
	anSLiteral value isInteger ifTrue: [ 
		^self subjectOnInteger: anSLiteral value in: receiver _gate handle runtime ].
	handle := localRuntime handleOn: anSLiteral value.
	^ handle mirage! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:15:20'!
visitPrimitive: primitive 
	| gate new left right args rcvr runtime value class |
	returned := true.
	gate := receiver _gate.
	runtime := gate handle runtime.
	primitive = #Behavior
		ifTrue: [ class := runtime bridge globalNamed: gate handle oid spec name.
			^ returnValue := self subjectOn: (gate handleOn: class instanceBehavior)].
	primitive = #UnderSize
		ifTrue: [ ^ returnValue := self subjectOnInteger: gate handle size in: runtime ].
	primitive = #Size
		ifTrue: [ ^ returnValue := self
				subjectOnInteger: gate handle arrayedSize
				in: runtime ].
	primitive = #At
		ifTrue:
			[ value := gate handle at: arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOn: value].
	primitive = #AtPut
		ifTrue:
			[ value := arguments second.
			gate handle at: arguments first _gate handle asLocalInteger put: value _gate handle oid.
			^ returnValue := value].
	primitive = #New
		ifTrue: [ new := gate handle runtime new: gate handle oid.
			^ returnValue := self subjectOn: new ].
	primitive = #NewSized
		ifTrue: [ new := gate handle runtime
				new: gate handle oid
				sized: arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOn: new ].
	primitive = #Equal
		ifTrue: [ left := receiver _gate handle oid.
			right := arguments first _gate handle oid.
			^ returnValue := self
				subjectOnBoolean: left == right
				in: localRuntime ].
	primitive = #SMIPlus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left + right in: runtime ].
	primitive = #SMIMinus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left - right in: runtime ].
	primitive = #SMITimes
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left * right in: runtime ].
	primitive = #SMIIntDiv
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left // right in: runtime ].
	primitive = #SMIIntQuot
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left \\ right in: runtime ].
	primitive = #SMIGreaterThan
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left > right
				in: localRuntime ].
	primitive = #SmallIntegerBitAnd
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnInteger: (left bitAnd: right)
				in: runtime ].
	primitive = #SMIGreaterEqualThan
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left >= right
				in: localRuntime ].
	primitive = #SMIEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left = right
				in: localRuntime ].
	primitive = #SMINotEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left !!= right
				in: localRuntime ].
	primitive = #ClosureValue
		ifTrue: [ ^ self primitiveClosureValue ].
	primitive = #ReplaceFromTo
		ifTrue: [ rcvr := receiver _gate handle target.
			args := arguments collect: [ :arg | arg _gate asLocalCollection ].
			rcvr
				perform: #replaceFrom:to:with:startingAt:
				withArguments: args asArray.
			^ returnValue := receiver ].
	primitive = #PrimeFor
		ifTrue: [ ^ self primitivePrimeFor ].
	self assert: false! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:16:13'!
visitPrimitiveOld: primitive 
	| gate new left right args rcvr |
	returned := true.
	gate := receiver _gate.
	primitive = #Size
		ifTrue: [ ^ returnValue := self mirageOnInteger: gate mirror size ].
	primitive = #New
		ifTrue: [ new := gate handle runtime new: gate handle oid.
			^ returnValue := self mirageOnObject: new ].
	primitive = #NewSized
		ifTrue: [ new := gate handle target new: arguments first _gate handle target.
			^ returnValue := self mirageOnObject: new ].
	primitive = #SmallIntegerMinus
		ifTrue: [ left := receiver _gate handle target.
			right := arguments first _gate handle target.
			^ returnValue := self mirageOnInteger: left - right ].
	primitive = #SmallIntegerPlus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnInteger: left + right ].
	primitive = #SmallIntegerBitAnd
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnInteger: (left bitAnd: right) ].
	primitive = #SmallIntegerLessOrEqual
		ifTrue: [ left := receiver _gate handle target.
			right := arguments first _gate handle target.
			^ returnValue := self mirageOnBoolean: left <= right ].
	primitive = #SmallIntegerEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnBoolean: left = right ].
	primitive = #SmallIntegerNotEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnBoolean: left !!= right ].
	primitive = #ClosureValue
		ifTrue: [ ^ self primitiveClosureValue ].
	primitive = #ReplaceFromTo
		ifTrue: [ rcvr := receiver _gate handle target.
			args := arguments collect: [ :arg | arg _gate asLocalCollection ].
			rcvr
				perform: #replaceFrom:to:with:startingAt:
				withArguments: args asArray.
			^ returnValue := receiver ].
	self assert: false! !

!SmalltalkInterpreter class methodsFor: 'class initialization' stamp: 'KenD 4/8/2021 08:07:13'!
initialize 
"
	self initialize
"
	Underprimitives := 
		     #(_basicAt: #_basicAt:put: 
			_byteAt: #_byteAt:put: 
			_smallSize _largeSize 
			_isSmallInteger 
			_basicHash _basicHash:)! !

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

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:47:19'!
argumentAt: index 

	^(handle slotAt: LastArgumentIndex - index + 1) mirror! !

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:47:50'!
currentIp 

	^handle currentIp! !

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:47:59'!
method 
	| mirror |
	mirror := (handle slotAt: MethodIndex) mirror asMethodMirror.
	^mirror isValid ifTrue: mirror! !

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:48:36'!
receiver 

	^(handle slotAt: ReceiverIndex) mirror! !

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:48:45'!
returnAddress 

	^handle slotAt: ReturnAddressIndex! !

!StackFrameMirror methodsFor: 'meta accessing' stamp: 'KenD 4/8/2021 08:48:54'!
slotAtTop 

	^handle slotAtTop! !

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

!MetaclassMirror methodsFor: 'accessing' stamp: 'KenD 3/19/2021 16:50:40'!
classVariables 

	^self instanceClass classVariables! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 3/19/2021 16:50:55'!
instanceClass 
	| class |
	class := self getInstVarNamed: #class.
	^class asClassMirror! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 3/19/2021 16:51:03'!
localEquivalent 

	^(handle runtime objectModel at: self instanceClass localName asSymbol) metaclass! !

!MetaclassMirror methodsFor: 'constants' stamp: 'KenD 3/19/2021 16:51:14'!
localName 

	^self instanceClass localName , ' class'! !

!MetaclassMirror methodsFor: 'private' stamp: 'KenD 3/19/2021 16:51:35'!
structureType 

	^#Metaclass! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:08'!
key 

	^self getInstVarNamed: #key! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:24'!
structureType 

	^#Association! !

!AssociationMirror methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:26:34'!
value 

	^self getInstVarNamed: #value! !

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

!BehaviorMirror methodsFor: 'nativizing' stamp: 'KenD 2/25/2021 13:46:39'!
compiledMethodFor: aSymbol 
	| method next |
	method := self methodDictionary compiledMethodFor: aSymbol.
	method ifNotNil: [^method].
	next := self next.
	^next reflectsNil ifFalse: [next compiledMethodFor: aSymbol]! !

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

!MethodDictionaryMirror methodsFor: 'enumerating' stamp: 'KenD 3/20/2021 14:29:34'!
do: aBlock 

	1 to: self contentsSize by: 2 do: [:i | | current |
		current := self at: i.
		current reflectsNil ifFalse: [| method |
			method := self at: i + 1.
			aBlock value: current value: method asMethodMirror]]! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:28:33'!
at: i 

	^self contents at: i! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:29:03'!
contents 

	^self getInstVarNamed: #table! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:29:16'!
contentsSize 

	^self contents size
! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:30:21'!
structureType

	^#MethodDictionary! !

!MethodDictionaryMirror methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:30:33'!
tally 

	^self getInstVarNamed: #tally! !

!MethodDictionaryMirror methodsFor: 'nativizing' stamp: 'KenD 3/20/2021 14:28:47'!
compiledMethodFor: aSymbol 
	| selector |
	selector := aSymbol asString.
	self do: [:sym :method | sym asLocalString = selector ifTrue: [^method]].
	^nil! !

!MethodDictionaryMirror methodsFor: 'printing' stamp: 'KenD 3/20/2021 14:29:57'!
rintOn: aStream 

	aStream nextPutAll: 'a MDMirror (' ; nextPutAll: handle printString ; nextPut: $)! !

!MethodDictionaryMirror methodsFor: 'testing' stamp: 'KenD 3/20/2021 14:30:09'!
reflectsMethodDictionary 

	^true! !

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

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:22:44'!
inlineAnd 
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineAndCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ skip! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:23:05'!
inlineAndCondition: anSExpression skip: skip 
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	anSExpression acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithFalse;
		jumpIfEqualTo: skip;
		compareRwithTrue;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:23:28'!
inlineAndNot 
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineAndCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	self negateBoolean.
assembler		@ skip! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:23:46'!
inlineBinaryWhile: aBoolean 
	| retry failed block continue |
	start := assembler newLabel.
	retry := assembler newLabel.
	failed := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler
		@ retry;
		compareRwithBoolean: aBoolean;
		jumpIfEqualTo: block;
		compareRwithBoolean: aBoolean not;
		jumpIfNotEqualTo: failed;
		jumpTo: continue;
		@ block.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler
		jumpTo: start;
		@ continue.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:24:31'!
inlineBranchIf: aBoolean 
	| retry failed first second |
	retry := assembler newLabel.
	failed := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	first := aBoolean not.
	second := aBoolean.
	assembler
		@ retry;
		loadAwithR;
		loadRwithNil;
		compareAwithBoolean: first;
		jumpIfEqualTo: end;
		compareAwithBoolean: second;
		jumpIfNotEqualTo: failed.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ end.
	nativizer
		addFallback: [ assembler @ failed; loadRwithA.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:24:52'!
inlineBranchIfNil: aBoolean 

	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	assembler
		compareRwithNil.
	aBoolean
		ifTrue: [ assembler jumpIfNotEqualTo: end ]
		ifFalse: [ assembler jumpIfEqualTo: end ].
	message arguments first acceptVisitor: nativizer.
	assembler @ end
! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:25:12'!
inlineBranchIfNilIfNotNil: aBoolean 
	| second |
	second := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	assembler compareRwithNil.
	aBoolean
		ifTrue: [ assembler jumpIfNotEqualTo: second ]
		ifFalse: [ assembler jumpIfEqualTo: second ].
	message arguments first acceptVisitor: nativizer.
	assembler
		jumpTo: end;
		@ second.
	message arguments first acceptVisitor: nativizer.
	assembler @ end! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:25:30'!
inlineIfTrueIfFalse: aBoolean 
	| retry other failed first second |
	retry := assembler newLabel.
	other := assembler newLabel.
	failed := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	first := aBoolean not.
	second := aBoolean.
	assembler
		@ retry;
		compareRwithBoolean: first;
		jumpIfEqualTo: other;
		compareRwithBoolean: second;
		jumpIfNotEqualTo: failed.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler
		jumpTo: end;
		@ other.
	message arguments second statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ end.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:25:55'!
inlineMessage 
	| selector |
	selector := message selector.
	selector = #ifTrue:
		ifTrue: [ ^ self inlineBranchIf: true ].
	selector = #ifFalse:
		ifTrue: [ ^ self inlineBranchIf: false ].
	selector = #ifNil:
		ifTrue: [ ^ self inlineBranchIfNil: true ].
	selector = #ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNil: false ].
	selector = #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNilIfNotNil: true ].
	selector = #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNilIfNotNil: false ].
	selector = #ifTrue:ifFalse:
		ifTrue: [ ^ self inlineIfTrueIfFalse: true ].
	selector = #ifFalse:ifTrue:
		ifTrue: [ ^ self inlineIfTrueIfFalse: false ].
	selector = #whileTrue
		ifTrue: [ ^ self inlineUnitaryWhile: true ].
	selector = #whileFalse
		ifTrue: [ ^ self inlineUnitaryWhile: false ].
	selector = #whileTrue:
		ifTrue: [ ^ self inlineBinaryWhile: true ].
	selector = #whileFalse:
		ifTrue: [ ^ self inlineBinaryWhile: false ].
	selector = #repeat
		ifTrue: [ ^ self inlineRepeat ].
	selector = #to:do:
		ifTrue: [ ^ self inlineToDo ].
	selector = #to:by:do:
		ifTrue: [ ^ self inlineToByDo].
	selector = #timesRepeat:
		ifTrue: [ ^ self inlineTimesRepeat ].
	(selector beginsWith: #or:)
		ifTrue: [ ^ self inlineOr ].
	(selector beginsWith: #and:)
		ifTrue: [ ^ self inlineAnd ].
	selector = #andNot:
		ifTrue: [ ^ self inlineAndNot ].
	selector = #orNot:
		ifTrue: [ ^ self inlineOrNot ].
	self assert: false! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:26:34'!
inlineOr 
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineOrCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ skip! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:26:51'!
inlineOrBlock: b skip: skip 
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	b statements acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithTrue;
		jumpIfEqualTo: skip;
		compareRwithFalse;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:27:03'!
inlineOrCondition: anSExpression skip: skip 
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	
	anSExpression acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithTrue;
		jumpIfEqualTo: skip;
		compareRwithFalse;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:27:17'!
inlineOrNot 
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineOrCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	self negateBoolean.
	assembler @ skip! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:27:26'!
inlineRepeat 
	start := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler jumpTo: start! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:27:42'!
inlineTimesRepeat 
	| head block continue nonInteger nonDecrementable current |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonDecrementable := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := nativizer pushR.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonInteger;
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: continue;
		@ block.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer loadRwithStack: current.
	assembler
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonDecrementable;
		subFromRconstant: 2.
	nativizer storeRInStack: current.
	assembler
		jumpTo: head;
		@ continue.
	nativizer
		dropTos;
		addFallback: [ assembler
				@ nonDecrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #-;
				storeRInStack: current.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushSmallInteger: 0.
			nativizer emitSend: #>.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:28:15'!
inlineToByDo 
	| head block continue nonInteger nonIncrementable overflow current limit by increment |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonIncrementable := assembler newLabel.
	overflow := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := message arguments third inlinedArgs first.
	nativizer temporaryInStackAtPut: current.
	message arguments first acceptVisitor: nativizer.
	limit := nativizer pushR.
	assembler loadAwithR.
	nativizer temporaryInStackAt: current.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regA8;
		jumpIfZeroTo: nonInteger;
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonInteger;
		compareRwithA.
	by := message arguments second value.
	by > 0
		ifTrue: [ assembler jumpIfGreaterSignedTo: continue ]
		ifFalse: [ assembler jumpIfLessSignedTo: continue ].
	increment := (assembler smallInteger: by) - 1.
	assembler @ block.
	message arguments third statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer temporaryInStackAt: current.
	assembler
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonIncrementable;
		addRconstant: increment;
		jumpIfOverflowTo: overflow.
	nativizer
		temporaryInStackAtPut: current;
		loadAwithStack: limit.
	assembler
		jumpTo: head;
		@ continue.
	nativizer dropTos;
		addFallback: [ assembler
				@ overflow;
				subFromRconstant: increment;
				@ nonIncrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #+;
				temporaryInStackAtPut: current;
				loadAwithStack: limit.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushA.
			nativizer emitSend: #<=.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:28:37'!
inlineToDo 
	| head block continue nonInteger nonIncrementable overflow current limit |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonIncrementable := assembler newLabel.
	overflow := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := message arguments second inlinedArgs first.
	nativizer temporaryInStackAtPut: current.
	message arguments first acceptVisitor: nativizer.
	limit := nativizer pushR.
	assembler loadAwithR.
	nativizer temporaryInStackAt: current.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regA8;
		jumpIfZeroTo: nonInteger;
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonInteger;
		compareRwithA;
		jumpIfGreaterSignedTo: continue;
		@ block.
	message arguments second statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer temporaryInStackAt: current.
	assembler
		testIntegerBitOf: assembler regR8;
		jumpIfZeroTo: nonIncrementable;
		addRconstant: 2;
		jumpIfOverflowTo: overflow.
	nativizer
		temporaryInStackAtPut: current;
		loadAwithStack: limit.
	assembler
		jumpTo: head;
		@ continue.
	nativizer dropTos;
		addFallback: [ assembler
				@ overflow;
				subFromRconstant: 2;
				@ nonIncrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #+;
				temporaryInStackAtPut: current;
				loadAwithStack: limit.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushA.
			nativizer emitSend: #<=.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:29:03'!
inlineUnitaryWhile: aBoolean 
	| continue failed |
	start := assembler newLabel.
	continue := assembler newLabel.
	failed := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler
		compareRwithBoolean: aBoolean;
		jumpIfEqualTo: start;
		compareRwithBoolean: aBoolean not;
		jumpIfNotEqualTo: failed;
		@ continue.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: continue ]! !

!InlinedMessageNativizer methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 08:30:05'!
negateBoolean 
	| retry failed done |
	retry := assembler newLabel.
	failed := assembler newLabel.
		done := assembler newLabel.
	assembler
		@ retry;
		loadAwithR;
		loadRwithFalse;
		compareRwithA;
		jumpIfEqualTo: done;
		loadRwithTrue;
		compareRwithA;
		jumpIfNotEqualTo: failed; @done.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 3/7/2021 08:21:40'!
assembler: anAssembler 

	assembler := anAssembler ! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 3/7/2021 08:29:18'!
message: aMessageAstcode 

	message := aMessageAstcode ! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 3/7/2021 08:29:26'!
nativizer: anAstcodeNativizer 

	nativizer := anAstcodeNativizer ! !

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

!HaltingSend methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:10:17'!
emitSend: aSymbol using: anAssembler 

	anAssembler breakpoint! !

!InlineMessageLinker methodsFor: 'accessing' stamp: 'KenD 3/7/2021 08:34:48'!
supported 
	| selectors |
	selectors := self organization selectorsFor: #'private - assemble'.
	^selectors collect: [:selector | | cm |
		cm := self >> selector.
		cm literals last -> selector]. ! !

!InlineMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 11:50:49'!
emitByteAtOffset: offset 

	assembler
		loadZeroExtendByteRwithRindex: offset + 1;
		convertRtoSmallInteger ! !

!InlineMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 11:51:25'!
emitByteAtOffsetPut: offset 
	| nonInteger |
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeByteAinRindex: offset + 1;
		@ nonInteger ! !

!InlineMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 11:51:38'!
emitSend: aSymbol using: anAssembler 
	| arity selector | 
	assembler := anAssembler.
	arity := aSymbol arity. 
	arity > 2 ifTrue: [assembler pop: assembler regS].
	arity > 1 ifTrue: [assembler pop: assembler regT].
	arity > 0 ifTrue: [assembler pop: assembler regA].
	self assert: arity <= 3 .
	selector := map at: aSymbol.
	self perform: selector! !

!InlineMessageLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/7/2021 11:51:53'!
emitSendDebuggable: aSymbol using: anAssembler 

	self emitSend: aSymbol using: anAssembler ! !

!InlineMessageLinker methodsFor: 'initialization' stamp: 'KenD 3/7/2021 11:52:17'!
initialize 

	map := self class supported asDictionary.
	self filter: map keys asIdentitySet! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:35:12'!
assembleAsFloatInto 

	#_asFloatInto:.
	assembler
		loadX0withRasDouble;
		storeLargeX0inA.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:35:26'!
assembleAsNative 
	| noninteger |
	#_asNative.
	noninteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ noninteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:35:40'!
assembleAsObject 
	#_asObject.
	assembler clearSafeRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:35:52'!
assembleAsPointer 
	| nonInteger |
	#_asPointer.
	nonInteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ nonInteger;
		ensureSafeRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:45:41'!
assembleAsSmallInteger 

	#_asSmallInteger.
	assembler convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:36:34'!
assembleBasicAt 
	| oop |
	#_basicAt:.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatA;
		@ oop! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:36:49'!
assembleBasicAtPut 
	| nonInteger |
	#_basicAt:put:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatA;
		@ nonInteger;
		loadRwithT! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:37:05'!
assembleBasicCopyFromToWith 

	#_basicCopyFrom:to:with:.
	assembler
		pushE;
		convertAtoNativeInteger;
		convertTtoNativeInteger;
		loadEwithAddressOfRatA;
		loadSwithAddressOfSatA;
		subAfromT;
		addToTconstant: 1;
		moveTslots;
		popE! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:37:21'!
assembleBasicFlags 

	#_basicFlags.
	self emitByteAtOffset: _Flags! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:37:32'!
assembleBasicFlagsPut 

	#_basicFlags:.
	self emitByteAtOffsetPut: _Flags! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:37:44'!
assembleBasicHash 

	#_basicHash.
	assembler
		loadZeroExtendShortRwithRoffset: _Hash;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:37:56'!
assembleBasicHashPut 
	| nonInteger |
	#_basicHash:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeShortAinRoffset: _Hash;
		@ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:38:25'!
assembleBasicSize 

	#_smallSize.
	self emitByteAtOffset: _SmallSize! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:38:21'!
assembleBasicSizePut 

	#_smallSize:.
	self emitByteAtOffsetPut: _SmallSize! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:38:35'!
assembleBasicULongAt 
	| nonInteger |
	#_basicULongAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendLongRwithRatA;
		@ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:38:48'!
assembleBasicULongAtPut 
	| nonInteger |
	#_basicULongAt:put:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeLongTinRatA;
		@ nonInteger;
		loadRwithT! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:39:00'!
assembleBeCurrent 

	#_beCurrent.
	assembler
		loadRwithRindex: 1;
		clearSafeRintegerBit;
		loadFPwithR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:39:11'!
assembleBeEnvironment 

	#_beEnvironment.
	assembler loadEwithR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:39:22'!
assembleBeFramePointer 

	#_beFramePointer.
	assembler storeRinFPindex: 1! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:39:34'!
assembleBitShiftLeft 
	| success |
	#_bitShiftLeft:.
	success := assembler newLabel.
	assembler
		loadTwithA;
		loadAwithR;
		clearSafeRintegerBit;
		convertTtoNativeInteger;
		shiftLeftRwithT;
		ensureSafeRintegerBit;
		pushR;
		shiftRightRwithT;
		ensureSafeRintegerBit;
		compareRwithA;
		popR;
		shortJumpIfEqualTo: success;
		loadRwithNil;
		@ success! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:39:51'!
assembleBitShiftRight 

	#_bitShiftRight:.
	assembler
		move: assembler regA to: assembler regT;
		convertToNativeInteger: assembler regT;
		shiftRight: assembler regR by: assembler regT b;
		setIntegerBit: assembler regR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:40:01'!
assembleBusyWait 
	| loop |
	#_busyWait.
	loop := assembler newLabel.
	assembler
		loadTwithImmediate: 0;
		@ loop;
		exchangeRindirectWithT;
		compareTwithImmediate: 0;
		shortJumpIfEqualTo: loop! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:40:15'!
assembleByteAt 
	| nonInteger |
	#_byteAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendByteRwithRatA;
		convertRtoSmallInteger;
		@ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:40:30'!
assembleByteAtPut 
	| nonInteger1 nonInteger2 |
	#_byteAt:put:.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	nonInteger2 := assembler labeledIntegerNativizationOfT.
	assembler
		storeByteTinRatA;
		@ nonInteger1;
		@ nonInteger2;
		loadRwithT;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:41:19'!
assembleCDeclCallWithArguments 

	#_cdeclCallWithArguments:.
	assembler
		loadZeroExtendByteTwithAindex: _SmallSize + 1;
		shiftTright: assembler wordSizeShift;
		pushS;
		saveCallerFrame;
		subTslotsToSP;
		assemble: 'and' with: assembler regSP with: -16;
		loopTtimes: [ assembler
				load: assembler regS
					from: assembler regA
					atIndexAt: assembler regT;
				store: assembler regS 
					in: assembler regSP 
					indexAt: assembler regT ].
	assembler addressSize = 8
		ifTrue: [ self loadArgumentsIntoRegisters ].
	assembler
		callR;
		restoreCallerFrame;
		popS! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:41:43'!
assembleCallWithArguments 

	#_stdcallWithArguments:.
	assembler
		loadZeroExtendByteTwithAindex: _SmallSize + 1;
		shiftTright: assembler wordSizeShift;
		loopTtimes: [ assembler pushAatToffset: 0 - assembler addressSize ].
	assembler addressSize = 8
		ifTrue: [ self loadArgumentsIntoRegisters ].
	assembler callR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:41:55'!
assembleEnvironment 

	#_environment.
	assembler loadRwithE! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:42:06'!
assembleExpandInStackSized 

	#_expandInStackSized:.
	assembler
		convertAtoNativeInteger;
		loadTwithA;
		loopTtimes: [ assembler
				pushIndirectR;
				addRconstant: assembler addressSize ]! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:42:17'!
assembleExtendedSize 

	#_largeSize.
	assembler
		loadZeroExtendLongRwithRindex: _ExtendedSize;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:42:37'!
assembleFloatEquals 
"
	first compare magnitudes to set error bit if NaN
"
	#_floatEquals:.
	assembler
		pushR;
		loadLargeX0withRindirect;
		compareLessThanLargeX0withAindirect;
		popR;
		loadLargeX0withRindirect;
		compareEqualLargeX0withAindirect;
		loadRwithX0;
		addRconstant: 1;
		convertRtoSmallInteger.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:42:53'!
assembleFloatFractionPartInto 

	#_floatFractionPartInto:.
	assembler
		loadLargeX0withRindirect;
		loadX1roundingX0;
		subDoubleX1fromX0;
		storeLargeX0inA.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:43:08'!
assembleFloatLessThan 

	#_floatLessThan:.
	assembler
		loadLargeX0withRindirect;
		compareLessThanLargeX0withAindirect;
		loadRwithX0;
		addRconstant: 1;
		convertRtoSmallInteger.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:43:17'!
assembleFloatMinusInto 

	#_floatMinus:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		subDoubleX1fromX0;
		storeLargeX0inT.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:43:30'!
assembleFloatMultiplyInto 

	#_floatMultiply:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		multiplyDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:43:42'!
assembleFloatPlusInto 

	#_floatPlus:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		addDoubleX1toX0;
		storeLargeX0inT.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:43:54'!
assembleFloatQuotientInto 

	#_floatQuotient:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		divideDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:44:09'!
assembleFloatSqrtInto 

	#_floatSqrtInto:.
	assembler
		loadLargeX0withRindirect;
		sqrtDoubleX0;
		storeLargeX0inA.
	self readFloatStatus! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:44:22'!
assembleFloatTruncated 

	#_floatTruncated.
	assembler loadRconvertingDoublePointedByR.
	self readFloatStatus.
	assembler convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:48:53'!
assembleFramePointer 

	#_framePointer.
	assembler loadRwithFPindex: 1! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:49:06'!
assembleGetTIBValue 
	| nonInteger |
	#_getThreadInformationBlockValue.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		loadRwithTIBatIndexR;
		@ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 08:49:31'!
assembleGetThreadValue 
	| nonInteger uninitialized |
		#_getThreadValue.
	nonInteger := assembler labeledIntegerNativizationOfR.
	uninitialized := assembler newLabel.
	assembler
		loadRwithThreadVariableAtIndexR;
		compareRwithImmediate: 0;
		shortJumpIfEqualTo: uninitialized.
	assembler
		jumpOver: [ assembler
				@ uninitialized;
				@ nonInteger;
				loadRwithNil ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:40:07'!
assembleHigh16 

	#_high16.
	assembler wordSize > 4
		ifTrue: [ assembler clearRhighHalf ].
	assembler
		shiftRright: 15;
		ensureSafeRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:40:20'!
assembleHigh32 

	#_high32.
	assembler
		shiftLogicalRright: 31;
		ensureSafeRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:40:32'!
assembleHoldRefererIfNeeded 

	#_holdRefererIfNeeded:.
	assembler
		pushA;
		loadAwithGlobal: #WriteBarrier;
		callIndirectA;
		popA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:40:47'!
assembleIntegerMultiplyByInto 

	#_integerMultiplyBy:into:.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		multiplyRbyA;
		storeRinTindex: 1;
		storeAinTindex: 2;
		loadRwithT! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:40:59'!
assembleInvoke 

	#_invoke:.
	assembler
		loadMwithA;
		callIndirectM! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:41:26'!
assembleLoadFloatStatusFrom 

	#_status:.
	assembler loadMXCSRfromA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:41:36'!
assembleLow16 

	#_low16.
	assembler
		andRwithImmediate: 16rFFFF;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:41:48'!
assembleLow32 

	#_low32.
	assembler wordSize > 4
		ifTrue: [ assembler
				andRwithImmediate: 16rFFFFFFFF;
				convertRtoSmallInteger ]! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:41:57'!
assembleNativeHalt 

	#_halt.
	assembler breakpoint! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:42:10'!
assembleNilSlots 

	#_nilSlots:.
	assembler
		pushE;
		loadEwithR;
		loadRwithNil;
		loadTwithA;
		convertTtoNativeInteger;
		writeTslots;
		popE! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:42:29'!
assembleObjectAtOffset 
	| nonInteger1 |
	#_objectAtOffset:.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatOffsetA;
		@ nonInteger1! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:42:41'!
assembleObjectAtOffsetPut 
	| oop |
	#_objectAtOffset:put:.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatOffsetA;
		@ oop;
		loadRwithT;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:42:55'!
assembleOop 

	#_oop.
	^ assembler convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:43:04'!
assembleQuotientTowardZero 

	#_quotientTowardZero:.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		divideRbyT;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:43:14'!
assembleRelease 

	#_release.
	assembler
		lock;
		decRindirect! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:43:28'!
assembleRemainderTowardZero 
	| adapt convert |
	#_remainderTowardZero:.
	adapt := assembler newLabel.
	convert := assembler newLabel.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		xorAwithR;
		jumpIfSignTo: adapt;
		divideRbyT;
		loadRwithA;
		jumpTo: convert;
		@ adapt;
		divideRbyT;
		loadRwithA;
		testRwithR;
		jumpIfZeroTo: convert;
		addTtoR;
		@ convert;
		convertRtoSmallInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:43:47'!
assembleRestore 

	#_restore.
	assembler loadEwithR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:44:02'!
assembleRestoreAndTransferControlWithContext 

	#_restoreAndTransferControlWithContext:.
	assembler
		clearSafeRintegerBit;
		loadFPwithR;
		loadSPwithFP;
		loadRwithA;
		clearSafeRintegerBit;
		loadFPwithR;
		popR;
		loadEwithR;
		restoreCallerSelf;
		restoreCallerM;
		loadRwithS;
		return: 0
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:44:20'!
assembleRestoreWithContext 

	#_restoreWithContext:.
	assembler
		clearSafeRintegerBit;
		loadFPwithR;
		loadSPwithFP;
		loadRwithA;
		clearSafeRintegerBit;
		loadFPwithR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:44:29'!
assembleSaveCurrentEnvironment 

	#_saveCurrentEnvironment.
	assembler
		clearSafeRintegerBit;
		pushE;
		popT;
		storeTinRindex: 1;
		ensureSafeRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:44:40'!
assembleSetTIBValue 

	#_setThreadInformationBlockValue:.
	assembler
		convertRtoNativeInteger;
		storeTIBwithAatIndexR! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:45:51'!
assembleSetThreadValue 
	| nonInteger |
	#_setThreadValue:.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		storeAinThreadVariableAtIndexR;
		convertRtoSmallInteger.
	assembler @ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:45:09'!
assembleSmallIntegerByteAt 
	| nonInteger |
	#_smallIntegerByteAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		convertRtoNativeInteger;
		pushR;
		loadZeroExtendByteRwithSPatA;
		convertRtoSmallInteger;
		popA;
		@ nonInteger! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:46:02'!
assembleStoreDoubleResult 

	#_storeDoubleResult.
	assembler storeDoubleResultInRindirect! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:46:12'!
assembleStoreFloatStatusInto 

	#_readStatusOn:.
	assembler storeMXCSRintoA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:46:22'!
assembleTestSmallInteger 
	| integer |
	#_isSmallInteger.
	integer := assembler newLabel.
	assembler
		testPropertyAt;
		loadRwithTrue;
		shortJumpIfNotZeroTo: integer;
		loadRwithFalse;
		@ integer! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:46:44'!
assembleThisContext 

	#_thisContext.
	assembler loadRwithFP ensureRintegerBit! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:48:00'!
assembleTimesTwoPower 

	#_timesTwoPower:.
	assembler clearFPUFlags scaleFloatOnRWithA clearFPUFlags! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:48:15'!
assembleTransferControlDiscardingLastArgTo 

	#_transferControlDiscardingLastArgTo:.
	assembler
		restoreCallerFrame;
		popSPindirect;
		loadMwithA;
		jumpToMindex: 1! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:48:29'!
assembleTransferControlTo 

	#_transferControlTo:.
	assembler restoreCallerFrame; loadMwithA; jumpToMindex: 1! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:48:48'!
assembleULargeAtOffset 
	| overflow1 overflow2 end |
	#_uLargeAtOffset:.
	overflow1 := assembler newLabel.
	overflow2 := assembler newLabel.
	end := assembler newLabel.
	assembler
		convertAtoNativeInteger;
		loadRwithRatOffsetA;
		shiftRleft: 1;
		shortJumpIfCarryTo: overflow1;
		shortJumpIfSignTo: overflow2;
		ensureRintegerBit;
		shortJumpTo: end.
	assembler
		@ overflow1;
		@ overflow2;
		loadRwithNil;
		@ end! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:49:12'!
assembleULargeAtOffsetInto 

	#_uLargeAtOffset:into:.
	assembler
		convertAtoNativeInteger;
		loadAwithRoffsetAtA;
		storeAinTindex: 1;
		loadRwithT! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:49:26'!
assembleULargeAtOffsetPut 
	| end notSmall |
	#_uLargeAtOffset:put:.
	notSmall := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end;
		@ notSmall;
		loadTwithTindex: 1;
		@ end;
		storeTinRatOffsetA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:49:41'!
assembleULongAtOffset 
	| overflow1 overflow2 end |
	#_uLongAtOffset:.
	overflow1 := assembler newLabel.
	overflow2 := assembler newLabel.
	end := assembler newLabel.
	assembler
		convertAtoNativeInteger;
		loadLongRwithRatOffsetA;
		shiftRleft: 1;
		shortJumpIfCarryTo: overflow1;
		shortJumpIfSignTo: overflow2;
		ensureRintegerBit;
		shortJumpTo: end.
	assembler
		@ overflow1;
		@ overflow2;
		loadRwithNil;
		@ end! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:49:57'!
assembleULongAtOffsetInto 

	#_uLongAtOffset:into:.
	assembler
		convertAtoNativeInteger;
		loadLongRwithRatOffsetA;
		storeRinTindex: 1;
		loadRwithT! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:50:10'!
assembleULongAtOffsetPut 
	| end oop |
	#_uLongAtOffset:put:.
	oop := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end;
		@ oop;
		loadTwithTindex: 1;
		@ end;
		storeLongTinRatOffsetA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:50:27'!
assembleUShortAtOffsetPut 
	| end notSmall |
	#_uShortAtOffset:put:.
	notSmall := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end.
	assembler
		@ notSmall;
		loadTwithTindex: 1;
		@ end;
		storeShortTinRatOffsetA! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 3/7/2021 11:50:38'!
assembleZeroSlots 
	#_zeroSlots:.
	assembler
		pushE;
		loadEwithR;
		loadRwithImmediate: 0;
		loadTwithA;
		convertTtoNativeInteger;
		writeTslots;
		popE! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 3/7/2021 11:56:05'!
loadArgumentsIntoRegisters 

	assembler
		load: RCX from: RSP atIndex: 1;
		load: RDX from: RSP atIndex: 2;
		load: R8 from: RSP atIndex: 3;
		load: R9 from: RSP atIndex: 4;
		assemble: 'movq' with: XMM0 with: RCX;
		assemble: 'movq' with: XMM1 with: RDX;
		assemble: 'movq' with: XMM2 with: R8;
		assemble: 'movq' with: XMM3 with: R9 ! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 3/7/2021 11:57:22'!
readFPUStatus 

	assembler
		loadAwithKnown: #FloatStatus;
		readFPUStatusOnA! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 3/7/2021 11:57:36'!
readFloatStatus 

	assembler
		loadAwithKnown: #FloatStatus;
		storeMXCSRintoA! !

!InvokeLinker methodsFor: 'accessing' stamp: 'KenD 3/8/2021 10:51:29'!
addMethod: aCompiledMethod 

	self addMethod: aCompiledMethod for: aCompiledMethod selector! !

!InvokeLinker methodsFor: 'accessing' stamp: 'KenD 3/8/2021 10:51:48'!
addMethod: aCompiledMethod for: aSymbol 
	| instructions send |
	filter add: aSymbol.
	instructions := invoker ifNil: [ aCompiledMethod nativeCode code ].
	send := SendSite new invoke: aCompiledMethod using: instructions.
	sends at: aSymbol put: send! !

!InvokeLinker methodsFor: 'accessing' stamp: 'KenD 3/8/2021 10:52:40'!
addMethods: aCollection 

	aCollection do: [:m | self addMethod: m]! !

!InvokeLinker methodsFor: 'accessing' stamp: 'KenD 3/8/2021 10:53:16'!
invoker: aNativeCode 

	invoker := aNativeCode! !

!InvokeLinker methodsFor: 'initialization' stamp: 'KenD 3/8/2021 10:51:01'!
initialize 

	super initialize.
	sends := Dictionary new.
	self filter: #()! !

!InvokeLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 10:52:59'!
emitSend: aSymbol using: anAssembler 
	| send |
	send := sends at: aSymbol.
	anAssembler
		loadAwithLiteral: send;
		callIndirectA;
		discardArguments: aSymbol arity! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:23:46'!
initializeFrom: aNativizationEnvironment 

	lookup := aNativizationEnvironment lookupStub.
	lookupSuper := aNativizationEnvironment lookupSuperStub.! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:24:04'!
lookup: aByteArray 

	lookup := aByteArray! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:24:16'!
lookupSuper: aByteArray 

	lookupSuper := aByteArray! !

!LookupLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/9/2021 07:22:11'!
emitSend: aSymbol using: anAssembler 
	| send |
	send := SendSite new lookup: aSymbol using: lookup.
	anAssembler
		loadAwithLiteral: send;
		callIndirectA;
		discardArguments: aSymbol arity.
	^send! !

!LookupLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/9/2021 07:22:45'!
emitSendSuper: aSymbol from: aClass using: anAssembler 
	| send behavior |
	send := SendSite new lookup: aSymbol using: lookupSuper; beSuperSend.
	behavior := aClass superclass map instanceBehavior.
	anAssembler
		loadAwithLiteral: send;
		loadTwithLiteral: behavior;
		callIndirectA;
		discardArguments: aSymbol arity.
	^send! !

!LazyLinker methodsFor: 'accessing' stamp: 'KenD 3/9/2021 07:26:20'!
sends 

	^sends
! !

!LazyLinker methodsFor: 'codeGeneration' stamp: 'KenD 3/9/2021 07:25:50'!
emitSend: aSymbol using: anAssembler 
	| send |
	send := super emitSend: aSymbol using: anAssembler.
	sends add: send! !

!LazyLinker methodsFor: 'initialization' stamp: 'KenD 3/9/2021 07:25:37'!
initialize 

	super initialize.
	sends := OrderedCollection new! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:24:33'!
abi 

	^ abi ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:24:41'!
abi: anAbi 

	abi := anAbi ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:25:08'!
addLinker: aLinker 

	messageLinker add: aLinker! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:26:01'!
globalNamed: aSymbol 
	| index |
	index := self class indexOfGlobal: aSymbol.
	^globals at: index! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:26:21'!
globalNamed: aSymbol put: anObject 
	| index |
	index := self class indexOfGlobal: aSymbol.
	globals at: index put: anObject! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:26:41'!
globals 

	^globals! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:26:50'!
globals: anArray 

	globals := anArray! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:27:43'!
inlinedMethods 

	^inlinedMethods! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:27:54'!
inlinedMethods: aCollection 

	inlinedMethods := aCollection! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:28:12'!
invokeStub 
	| index |
	index := self class indexOfGlobal: #Invoke.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:28:24'!
invokedMethods 

	^invokedMethods! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:28:41'!
invokedMethods: aCollection 

	invokedMethods := aCollection asOrderedCollection ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:28:53'!
lookup 
	| index |
	index := self class indexOfGlobal: #Lookup.
	^globals at: index! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:04'!
lookupDebuggableStub 
	| index |
	index := self class indexOfGlobal: #DebuggableLookup.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:15'!
lookupStub 
	| index |
	index := self class indexOfGlobal: #Lookup.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:26'!
lookupSuper 
	| index |
	index := self class indexOfGlobal: #LookupSuper.
	^ globals at: index! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:36'!
lookupSuperDebuggableStub 
	| index |
	index := self class indexOfGlobal: #DebuggableLookupSuper.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:47'!
lookupSuperStub 
	| index |
	index := self class indexOfGlobal: #LookupSuper.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:29:59'!
messageLinker

	^ messageLinker! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:30:10'!
messageLinker: aLinker 

	messageLinker := aLinker ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:30:19'!
methodNativizer 

	^ cachedNativizer ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:35:34'!
optimizedMethods 

	^optimizedMethods
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:35:43'!
optimizedMethods: aCollection 

	optimizedMethods := aCollection! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:35:53'!
optimizingNativizer 

	^OptimizingNativizer new environment: self! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:36:52'!
safepoint 
	| index |
	index := self class indexOfGlobal: #Safepoint.
	^(globals at: index) code! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:37:02'!
safepointCheck: anObject 

	safepointCheck := anObject ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:37:14'!
sexpressionOffsetsOf: code 
	| method |
	method := code method.
	(self shouldOptimize: method) ifTrue: [ ^ #(  ) ].
	^ self nativizerDuring: [ :nativizer | 
		  method nativeCode ifNotNil: [ method := method copy ]. 
		  nativizer compile: method.
		  nativizer sexpressionOffsetsOf: code ]! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:38:20'!
wordSize 

	^ abi wordSize ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:38:27'!
wordSizeShift 

	^ abi wordSizeShift ! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:38:39'!
writeBarrier

	^writeBarrier! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:38:49'!
writeBarrier: anSCompiledMethod 

	writeBarrier := anSCompiledMethod.
	invokedMethods add: writeBarrier ! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 3/20/2021 15:25:31'!
be32bits 

	abi := X86ABI new ! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 3/20/2021 15:25:44'!
completeInitialization 

	cachedNativizer := self newExpressionNativizer ! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 3/20/2021 15:27:04'!
initialize 

	busy := false.
	abi := ABI forCurrent.
	optimizedMethods := OrderedCollection new.
	invokedMethods := OrderedCollection new.
	inlinedMethods := OrderedCollection new.
	messageLinker := CompositeMessageLinker new
		add: InlineMessageLinker new.
	globals := Array new: self class globalNames size.! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:30:52'!
monomorphicCache 
	| asm lookup next |
	asm := TemplateAssembler64 new.
	asm wordSize: abi wordSize.
	lookup := asm newLabel.
	asm
		loadTwithAindex: 3;
		loadSwithGlobal: #SmallIntegerBehavior.
	next := asm labeledNonIntegerBitTestOfR.
	asm
		loadLongSwithRindex: 0;
		@ next;
		compareSwithTindex: 1;
		shortJumpIfNotEqualTo: lookup;
		loadMwithTindex: 2;
		jumpToMindex: 1;
		@ lookup;
		loadMwithGlobal: #Lookup;
		jumpToMindex: 1;
		applyFixups.
	^ asm nativeCode code! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:32:27'!
nativize: aCompiledMethod 

	^ (self shouldOptimize: aCompiledMethod)
		  ifTrue: [ self nativizeOptimizing: aCompiledMethod ]
		  ifFalse: [ self nativizeWithoutOptimizing: aCompiledMethod ] ! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:32:46'!
nativizeOptimizing: anSCompiledMethod 

	^self optimizingNativizer
		method: anSCompiledMethod;
		nativize ! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:32:59'!
nativizeWithoutOptimizing: aCompiledMethod 
	| method |
	method := self
		nativizerDuring: [ :nativizer | nativizer nativize: aCompiledMethod ].
	^ method ! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:34:33'!
nativizerDuring: aBlock 

	^ busy
		  ifFalse: [ 
			  busy := true.
			  [ aBlock value: cachedNativizer ] ensure: [ busy := false ] ]
		  ifTrue: [ 
			  | old |
			  old := cachedNativizer. 
			  [  cachedNativizer := self newExpressionNativizer.
			     aBlock value: cachedNativizer  
			  ]  ensure: [ cachedNativizer := old ] 
		  ]! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:34:51'!
newExpressionNativizer 

	^ SExpressionNativizer new environment: self! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 3/20/2021 15:36:31'!
polymorphicCache 
	| asm smi case2 case3 case4 case5 case6 case7 lookup |
	asm := TemplateAssembler64 new.
	asm wordSize: abi wordSize.
	smi := asm newLabel.
	case2 := asm newLabel.
	case3 := asm newLabel.
	case4 := asm newLabel.
	case5 := asm newLabel.
	case6 := asm newLabel.
	case7 := asm newLabel.
	lookup := asm newLabel.
	asm loadTwithAindex: 3.
	smi := asm labeledNonIntegerBitTestOfR.
	asm
		loadLongSwithRindex: 0;
		compareSwithTindex: 1;
		shortJumpIfNotEqualTo: case2;
		loadMwithTindex: 2;
		jumpToMindex: 1;
		@ case2;
		compareSwithTindex: 3;
		shortJumpIfNotEqualTo: case3;
		loadMwithTindex: 4;
		jumpToMindex: 1;
		@ case3;
		compareSwithTindex: 5;
		shortJumpIfNotEqualTo: case4;
		loadMwithTindex: 6;
		jumpToMindex: 1;
		@ case4;
		compareSwithTindex: 7;
		shortJumpIfNotEqualTo: case5;
		loadMwithTindex: 8;
		jumpToMindex: 1;
		@ case5;
		compareSwithTindex: 9;
		shortJumpIfNotEqualTo: case6;
		loadMwithTindex: 10;
		jumpToMindex: 1;
		@ case6;
		compareSwithTindex: 11;
		shortJumpIfNotEqualTo: case7;
		loadMwithTindex: 12;
		jumpToMindex: 1;
		@ case7;
		compareSwithTindex: 13;
		shortJumpIfNotEqualTo: lookup;
		loadMwithTindex: 14;
		jumpToMindex: 1;
		@ lookup;
		loadMwithGlobal: #Lookup;
		jumpToMindex: 1;
		@ smi;
		loadMwithTindex: 15;
		jumpToMindex: 1;
		applyFixups.
	^ asm nativeCode code! !

!NativizationEnvironment methodsFor: 'testing' stamp: 'KenD 3/20/2021 15:37:44'!
shouldInline: aSymbol 

	^ inlinedMethods anySatisfy: [ :m | m selector = aSymbol ]! !

!NativizationEnvironment methodsFor: 'testing' stamp: 'KenD 3/20/2021 15:38:09'!
shouldOptimize: method 
	| selector classname |
	selector := method selector.
	classname := method classBinding name.
	^ optimizedMethods anySatisfy: 
		[:m | m selector = selector and: [ m classBinding name = classname ]  ]! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:23:40'!
globalNames 

	^ #(Lookup LookupSuper
		WriteBarrier Safepoint 
		SmallIntegerBehavior Invoke 
		DebuggableLookup DebuggableLookupSuper
	     )! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 3/20/2021 15:23:56'!
indexOfGlobal: aSymbol 

	^self globalNames
		indexOf: aSymbol
		ifAbsent: [self error: 'global not found']! !

!NativizationEnvironment class methodsFor: 'instance creation' stamp: 'KenD 3/20/2021 15:22:04'!
forTesting 

	^ self forTesting: VirtualSmalltalkImage kernelSpec! !

!NativizationEnvironment class methodsFor: 'instance creation' stamp: 'KenD 3/20/2021 15:22:18'!
forTesting: anRGEnvironment 

	^ self new spec: anRGEnvironment! !

!Opcode methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 14:04:47'!
nativizeUsing: anAssembler for: messageNativizer

	self nativizeUsing: anAssembler! !

!StackOpcode class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 08:50:03'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

!PopRopcode methodsFor: 'codeGeneration' stamp: 'KenD 4/12/2021 10:38:46'!
nativizeUsing: anAssembler for: messageNativizer 

	messageNativizer popR! !

!PushRopcode methodsFor: 'codeGeneration' stamp: 'KenD 4/12/2021 10:47:11'!
nativizeUsing: anAssembler for: messageNativizer 

	messageNativizer pushR! !

!EnsureSmallIntegerOpcode class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 13:03:09'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!EnsureASmallInteger methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:05:02'!
nativizeUsing: anAssembler for: messageNativizer 

	anAssembler
		testIntegerBitOf: anAssembler regA8;
		jumpIfZeroTo: messageNativizer failLabel! !

!EnsureRSmallInteger methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:06:01'!
nativizeUsing: anAssembler for: messageNativizer 

	anAssembler
		testIntegerBitOf: anAssembler regR8;
		jumpIfZeroTo: messageNativizer failLabel! !

!LoadAvisitingArgument methodsFor: 'codeGeneration' stamp: 'KenD 3/9/2021 07:52:29'!
nativizeUsing: anAssembler for: messageNativizer 

	messageNativizer loadRvisitingArgument.
	anAssembler loadAwithR! !

!LoadAvisitingArgument class methodsFor: 'instance creation' stamp: 'KenD 3/9/2021 07:52:05'!
decodeUsing: anAstcodeDecoder 
	"@@FIXME:  anAstcodeDecoder IGNORED"
	^ self new! !

!LoadAwithFalse methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 07:59:22'!
nativizeUsing: anAssembler 

	anAssembler loadAwithFalse! !

!LoadAwithFalse class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 07:59:02'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

!LoadAwithInstVar methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:57:04'!
index: anInteger 

	index := anInteger! !

!LoadAwithInstVar methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 07:57:17'!
nativizeUsing: anAssembler 

	anAssembler loadAwithSindex: index! !

!LoadAwithInstVar class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 07:56:02'!
decodeUsing: anAstcodeDecoder 

	^self new index: anAstcodeDecoder nextInteger! !

!LoadAwithLiteralVar methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:48:24'!
index 

	^index! !

!LoadAwithLiteralVar methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:48:35'!
index: anInteger 

	index := anInteger! !

!LoadAwithLiteralVar class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 07:47:42'!
decodeUsing: anAstcodeDecoder 
	 
	^ self new index: anAstcodeDecoder nextInteger! !

!LoadAwithAssocVar methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:02:25'!
nativizeUsing: anAssembler for: messageNativizer 
	| assoc |
	assoc := messageNativizer methodLiteralAt: index.
	anAssembler
		loadAwithLiteral: assoc;
		loadAwithAindex: 2! !

!LoadAwithConstPoolVar methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:01:24'!
nativizeUsing: anAssembler for: messageNativizer 
	| literal |
	literal := messageNativizer methodLiteralAt: index.
	anAssembler loadAwithLiteral: literal! !

!LoadAwithLiteral methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:51:59'!
value: anObject 

	value := anObject! !

!LoadAwithLiteral methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 07:51:21'!
nativizeUsing: anAssembler for: messageNativizer 
	| literal |
	value
		ifNil: [ literal := messageNativizer methodLiteralAt: index.
			anAssembler loadAwithLiteral: literal ]
		ifNotNil: [ anAssembler loadAwithSmallInteger: value ]! !

!LoadAwithLiteral class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 07:50:45'!
decodeUsing: anAstcodeDecoder 
	| instance index  |
	instance := super decodeUsing: anAstcodeDecoder.
	index := instance index.
	index = 0
		ifTrue: [ instance value: anAstcodeDecoder next ].
	^ instance! !

!LoadAwithLocal methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:43:48'!
environment: anInteger 

	environment := anInteger! !

!LoadAwithLocal methodsFor: 'accessing' stamp: 'KenD 3/10/2021 07:43:58'!
index: anInteger 

	index := anInteger! !

!LoadAwithLocal class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 07:43:11'!
decodeUsing: anAstcodeDecoder 

	^self new
		index: anAstcodeDecoder nextInteger;
		environment: anAstcodeDecoder nextInteger! !

!LoadAwithArgument methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 07:45:40'!
nativizeUsing: anAssembler for: aBinaryMessageNativizer 

	aBinaryMessageNativizer loadAwithArgument: index in: environment! !

!LoadAwithTemporary methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:12:03'!
nativizeUsing: anAssembler for: aBinaryMessageNativizer 

	aBinaryMessageNativizer loadAwithTemporary: index in: environment! !

!LoadAwithNil methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:08:06'!
nativizeUsing: anAssembler 

	anAssembler loadAwithNil! !

!LoadAwithNil class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 08:07:49'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

!LoadAwithSelf methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:10:23'!
nativizeUsing: anAssembler 

	anAssembler loadAwithS! !

!LoadAwithSelf class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 08:10:04'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!LoadAwithTrue methodsFor: 'codeGeneration' stamp: 'KenD 3/10/2021 08:13:36'!
nativizeUsing: anAssembler 

	anAssembler loadAwithTrue! !

!LoadAwithTrue class methodsFor: 'instance creation' stamp: 'KenD 3/10/2021 08:13:11'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

!LoadRvisitingReceiver methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 07:53:22'!
nativizeUsing: anAssembler for: messageNativizer 

	messageNativizer loadRvisitingReceiver! !

!LoadRvisitingReceiver class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 07:53:04'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!LoadRwithFalse class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 08:46:14'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

!LoadRwithInstVar methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 08:47:32'!
nativizeUsing: anAssembler 

	anAssembler loadRwithSindex: index! !

!LoadRwithInstVar class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 08:47:19'!
decodeUsing: anAstcodeDecoder 

	^self new index: anAstcodeDecoder nextInteger! !

!LoadRwithLocal methodsFor: 'accessing' stamp: 'KenD 3/11/2021 07:57:29'!
environment: anInteger 

	environment := anInteger! !

!LoadRwithLocal methodsFor: 'accessing' stamp: 'KenD 3/11/2021 07:57:39'!
index: anInteger 

	index := anInteger! !

!LoadRwithLocal class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 07:56:18'!
decodeUsing: anAstcodeDecoder 

	^self new
		index: anAstcodeDecoder nextInteger;
		environment: anAstcodeDecoder nextInteger! !

!LoadRwithArgument methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 08:02:50'!
nativizeUsing: anAssembler for: aBinaryMessageNativizer 

	aBinaryMessageNativizer loadRwithArgument: index env: environment! !

!LoadRwithTemporary methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 08:01:51'!
nativizeUsing: anAssembler for: aBinaryMessageNativizer 

	aBinaryMessageNativizer loadRwithTemporary: index env: environment! !

!LoadRwithNil class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 07:58:24'!
decodeUsing: anAstcodeDecoder 

	^ self new
! !

!LoadRwithSelf methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 07:59:34'!
nativizeUsing: anAssembler 

	anAssembler loadRwithS! !

!LoadRwithSelf class methodsFor: 'instance creation' stamp: 'KenD 3/11/2021 07:59:17'!
decodeUsing: anAstcodeDecoder 

	^self new
! !

!LoadRwithTrue methodsFor: 'codeGeneration' stamp: 'KenD 3/11/2021 08:50:31'!
decodeUsing: anAstcodeDecoder 

	^ self new! !

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

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/3/2021 10:43:59'!
printOn: aStream indent: anInteger 

	self subclassResponsibility! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:43:15'!
contents 

	^contents! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:43:25'!
keyFor: aString 

	^self subclassResponsibility! !

!IdentifierBinder class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 10:42:51'!
new 
	^super new initialize! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:50:58'!
at: aString 

	^contents at: aString ifAbsent: nil! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:51:12'!
at: aString ifAbsentPut: aBlock 

	^contents at: aString ifAbsentPut: aBlock! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:51:23'!
at: aString put: aBinding 

	contents at: aString put: aBinding! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:51:36'!
define: aString as: aBinding 

	contents at: aString put: aBinding! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:53:09'!
select: aBlock 

	^contents select: aBlock! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:53:17'!
values 

	^contents values! !

!StaticBinder methodsFor: 'enumerating' stamp: 'KenD 4/8/2021 08:52:21'!
do: aBlock 

	contents do: aBlock! !

!StaticBinder methodsFor: 'enumerating' stamp: 'KenD 4/8/2021 08:53:31'!
withIndexDo: aBlock 

	contents withIndexDo: aBlock! !

!StaticBinder methodsFor: 'initialization' stamp: 'KenD 4/8/2021 08:52:38'!
initialize 

	super initialize.
	contents := OrderedDictionary new! !

!StaticBinder methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:52:56'!
printOn: aStream indent: anInteger 

	aStream tab: anInteger; nextPut: $<.
	contents keys
		do: [:name | name printOn: aStream]
		separatedBy: [aStream space].
	aStream nextPut: $>! !

!StaticBinder methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:51:57'!
defines: identifier 

	^contents includesKey: identifier! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:45:41'!
at: aString 
	| key assoc |
	key := self keyFor: aString.
	key ifNil: [ ^nil ].
	assoc := contents associationAt: key ifAbsent: [^nil].
	^(type on: assoc) name: key! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:45:59'!
at: aString ifPresent: aBlock 
	| binding |
	binding := self at: aString.
	^binding notNil ifTrue: [aBlock value: binding]! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:46:11'!
at: aString put: anObject 
	| key |
	key := self keyFor: aString.
	self assert: contents !!== Smalltalk.
	contents at: key put: anObject! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:46:25'!
contents: aDictionary 

	contents := aDictionary! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:46:37'!
keyFor: aString 

	^type usesSymbols ifTrue: [aString existingSymbol] ifFalse: [aString]! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 10:47:34'!
poolNamed: aSymbol ifPresent: aBlock 
	| pool |
	pool := contents at: aSymbol ifAbsent: nil.
	^pool notNil ifTrue: [aBlock evaluateWith: pool]! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:02:55'!
type: aClass 

	type := aClass! !

!DynamicBinder methodsFor: 'initialization' stamp: 'KenD 3/3/2021 10:46:50'!
on: aDictionary type: aClass 

	contents := aDictionary.
	type := aClass! !

!DynamicBinder methodsFor: 'printing' stamp: 'KenD 3/3/2021 11:02:14'!
printOn: aStream indent: anInteger 
	aStream
		tab: anInteger;
		nextPutAll: 'binder for ';
		nextPutAll: type name;
		nextPutAll: ': '.
	type == GlobalBinding
		ifTrue: [aStream nextPut: $G] "??? … ???"
		ifFalse: [contents keys asArray printOn: aStream]! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 10:44:52'!
of: type 

	^self new type: type! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 10:45:05'!
on: aPoolDictionary 
	| type |
	type := aPoolDictionary isConstant
		ifTrue: [ConstantPoolBinding]
		ifFalse: [PoolVarBinding].
	^self new on: aPoolDictionary type: type! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 10:45:21'!
on: aDictionary of: type 

	^self new on: aDictionary type: type! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:58:34'!
isInlinedArgument 

	^false! !

!StackEnvironment methodsFor: 'testing' stamp: 'KenD 2/25/2021 13:06:37'!
isStack 

	^true! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:06:18'!
index 

	^nil! !

!ArgumentEnvironment methodsFor: 'accessing' stamp: 'KenD 2/25/2021 13:07:51'!
environmentType 

	^LocalArgument! !

!InlinedArgEnvironment methodsFor: 'testing' stamp: 'KenD 3/7/2021 08:17:09'!
isInlinedArgument 

	^true! !

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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:47:04'!
inlineConditional 
	| arguments |
	arguments := message arguments.
	arguments size >= 1 ifFalse: [^self].
	arguments do: [:arg | arg isEvaluable ifFalse: [^self]].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:47:33'!
inlineIfNilIfNotNil 
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments first isEvaluable ifFalse: [^self].
	arg := arguments second.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:47:52'!
inlineIfNotNil 
	| arguments arg |
	arguments := message arguments.
	arguments size = 1 ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arg isBlockNode ifTrue: [arg beInlined]! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:48:07'!
inlineIfNotNilIfNil 
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments second isEvaluable ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:48:16'!
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
	receiver beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:48:35'!
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
	arg beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:48:46'!
inlineToDo 
	| arguments last |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	last := arguments at: 2.
	last isBlockNode ifFalse: [^self].
	last arguments size = 1 ifFalse: [^self].
	message beInlined.
	last beInlined! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/19/2021 16:49:15'!
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
		ifTrue: [ receiver beInlined ]! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/19/2021 16:46:20'!
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
	s == #to:by:do:
		ifTrue: [ ^ self inlineToByDo ].
	keywords := $: split: s.
	keywords last = '' ifTrue: [ keywords := keywords allButLast ].
	(keywords conform: [ :k | k = 'and' ])
		ifTrue: [ ^ self inlineConditional ].
	(keywords conform: [ :k | k = 'or' ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'and' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'or' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ self inlineConditional ]! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/19/2021 16:49:02'!
inlineUnitaryWhile 
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable ifFalse: [^self].
	arguments := message arguments.
	arguments size = 0 ifFalse: [^self].
	self inlineConditional.
	receiver isBlockNode ifTrue: [
		message beInlined.
		receiver beInlined]! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:47:43'!
ast 

	^ast! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:47:53'!
ast: aParseNode 

	ast := aParseNode! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:48:32'!
compiler: aSmalltalkCompiler 

	compiler := aSmalltalkCompiler! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:49:27'!
method 

	^method! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:49:38'!
method: aCompiledMethod 

	method := aCompiledMethod! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 4/7/2021 13:48:21'!
beSuccessful 

	error := nil! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 4/7/2021 13:48:58'!
error 

	^error! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 4/7/2021 13:49:10'!
error: aCompilationError 

	error := aCompilationError! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:54:45'!
argumentCount 

	^format bitsAt: ArgCount! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:54:57'!
argumentCount: anInteger 

	format := format bitsAt: ArgCount put: anInteger! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:55:32'!
capturesHome 

	^ format anyMask: CapturesHome! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:55:46'!
capturesHome: aBoolean 

	format := aBoolean
		          ifTrue: [ format bitOr: CapturesHome ]
		          ifFalse: [ format bitClear: CapturesHome ]! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:56:07'!
capturesSelf 

	^format anyMask: CapturesSelf! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:56:34'!
capturesSelf: aBoolean 

	format := aBoolean
		ifTrue: [ format bitOr: CapturesSelf ]
		ifFalse: [ format bitClear: CapturesSelf ]! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:56:52'!
environmentCount 

	^ format bitsAt: EnvCount! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:57:02'!
environmentCount: anInteger 

	format := format bitsAt: EnvCount put: anInteger! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:57:22'!
id 

	^format bitsAt: Id! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 13:57:31'!
id: anInteger 

	format := format bitsAt: Id put: anInteger! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:04:52'!
method 

	^method! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:05:02'!
method: aCompiledMethod 

	method := aCompiledMethod! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:05:21'!
nativeCode 

	^nativeCode! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:05:32'!
nativeCode: code 

	nativeCode := code! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:05:57'!
newClosure 
	| closure |
	closure := SClosure new: self environmentCount.
	^ closure block: self! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:06:17'!
tempCount 

	^format bitsAt: TempCount! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:06:27'!
tempCount: anInteger 

	format := format bitsAt: TempCount put: anInteger! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:06:47'!
value 

	self halt
"	<primitive: BlockValue>
	^ self primitiveFailed" ! !

!SCompiledBlock methodsFor: 'initialization' stamp: 'KenD 4/7/2021 13:58:07'!
initialize 

	super initialize.
	format := 0! !

!SCompiledBlock methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:04:41'!
isBlock 

	^true! !

!SCompiledBlockBuilder methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:08:19'!
argumentDescriptors 
	| parent |
	parent := node parent.
	^scope capturedArguments
		collect: [:arg | self descriptorForArgument: arg parent: parent]! !

!SCompiledBlockBuilder methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:09:45'!
node

	^node! !

!SCompiledBlockBuilder methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:09:35'!
node: aNode

	node :=  aNode! !

!SCompiledBlockBuilder methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:08:45'!
scope

	^scope! !

!SCompiledBlockBuilder methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:09:02'!
scope: aScope

	scope := aScope! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:34:17'!
newScope 

	^MethodScope new
		namespace: namespace;
		species: class;
		addPoolBinders: pools! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:34:35'!
parse: aString 

	result := self smalltalkCompiler parseMethod: aString.
	^result ast! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:35:15'!
smalltalkCompiler 

	^ SSmalltalkCompiler new frontend: self! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:35:33'!
smalltalkParser 

	^ self smalltalkCompiler parser! !

!SCompiler methodsFor: 'services' stamp: 'KenD 4/7/2021 14:35:43'!
smalltalkScanner 

	^ self smalltalkCompiler scanner! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:31:35'!
addPool: aPoolDictionary 
	| dict |
	dict := DynamicBinder on: aPoolDictionary.
	pools add: dict! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:31:52'!
addPool: aDictionary of: type 
	| dict |
	dict := DynamicBinder on: aDictionary of: type.
	pools add: dict! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:32:34'!
classBinding: aSpecies 
	| instance |
	class := aSpecies.
	instance := aSpecies instanceSide.
	(instance respondsTo: #configureCompiler)
		ifTrue: [instance configureCompiler: self]! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:34:03'!
namespace: aDictionary 

	namespace := aDictionary! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:34:51'!
peekForIdentifier: aStream 
	| char next |
	char := aStream peek.
	(self canBeInIdentifier: char) ifTrue: [
		aStream skip: 1.
		^true].
	char = $. ifFalse: [^false].
	aStream prev isLetter ifFalse: [
		aStream skip: 1.
		^false].
	next := aStream skip: 2; peek.
	next isNil ifTrue: [
		aStream skip: -1.
		^false].
	^next isLetter ifFalse: [aStream skip: -1]; yourself! !

!SCompiler methodsFor: 'accessing' stamp: 'KenD 4/7/2021 14:35:04'!
protect: aBlock 

	^aBlock value! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 4/7/2021 14:33:32'!
forClass: aClass 
	| c |
	c := aClass ifNil: [UndefinedObject].
	self classBinding: c! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 4/7/2021 14:33:45'!
initialize: aDictionary 

	namespace := aDictionary.
	class := aDictionary at: #UndefinedObject ifAbsent: nil.
	pools := OrderedCollection new! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:32:11'!
anBeInIdentifier: aCharacter 

	^aCharacter isLetter or: [aCharacter isDigit] or: [aCharacter = $_]! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 4/7/2021 14:32:21'!
canStartIdentifier: aCharacter 

	^aCharacter isLetter or: [aCharacter = $_]! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 4/7/2021 14:29:55'!
forClass: aClass 

	^self new forClass: aClass! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 4/7/2021 14:30:19'!
namespace: aDictionary 

	^self basicNew initialize: aDictionary! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 4/7/2021 14:30:36'!
new 

	^self namespace: Smalltalk globals! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 4/7/2021 14:29:33'!
compile: aString in: aClass 
	| compiler |
	compiler := self forClass: aClass.
	^compiler compile: aString! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 4/7/2021 14:30:52'!
parse: aString in: aClass 
	| compiler |
	compiler := self forClass: aClass.
	^compiler parse: aString! !

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

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:43:41'!
capturedEnvironmentIndexOf: aScriptNode 
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self assert: index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]! !

!BlockScope methodsFor: 'accessing' stamp: 'KenD 2/28/2021 12:44:16'!
capturedEnvironments 

	^environments! !

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

!BlockScope methodsFor: 'initialization' stamp: 'KenD 2/28/2021 12:47:45'!
initialize 

	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new! !

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

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:41:40'!
captureArgument: anArgumentBinding 
	| name |
	name := anArgumentBinding name.
	^captured at: name ifAbsentPut: [| transferred copy |
		transferred := self parent transferLocal: name.
		copy := self copyLocal: transferred.
		(anArgumentBinding isInlined and: [copy !!= anArgumentBinding])
			ifTrue: [anArgumentBinding beInArray].
		copy declaration: transferred declaration]! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:42:19'!
captureEnvironment: aScriptNode 

	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:42:37'!
captureLocal: aLocalBinding 

	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:42:52'!
captureSelf 

	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:43:07'!
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

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:43:27'!
capturedArguments 

	^captured select: [:b | b isArgument]! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:51:56'!
resolve: aString 

	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString! !

!BlockScope methodsFor: 'services' stamp: 'KenD 2/28/2021 12:53:01'!
resolveLocal: aString 

	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString! !

!BlockScope methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:44:37'!
capturesHome 

	^self home notNil! !

!BlockScope methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:45:06'!
capturesSelf 

	^captureSelf! !

!BlockScope methodsFor: 'testing' stamp: 'KenD 2/28/2021 12:47:01'!
hasMultipleBindingsFor: aString 
	"
	temporal compatibility
	"
	^self parent hasMultipleBindingsFor: aString! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/28/2021 12:45:42'!
copyLocal: binding 

	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]! !

!BlockScope methodsFor: 'private' stamp: 'KenD 2/28/2021 12:51:31'!
realParent 

	^script realParent scope! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:33:11'!
addPool: aPoolDictionary 
	| binder |
	binder := DynamicBinder on: aPoolDictionary .
	pools add: binder! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:33:22'!
addPool: aDictionary of: type 
	| dict |
	dict := DynamicBinder on: aDictionary of: type.
	pools add: dict! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:33:35'!
addPoolBinders: aCollection 

	pools addAll: aCollection
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:33:54'!
captureEnvironment: aScriptNode 

	self assert: aScriptNode == script! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:34:18'!
captureLocal: aLocalBinding 

	self assert: (self resolveLocal: aLocalBinding name) notNil.
	^aLocalBinding! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:39:13'!
captureSelf 

	captureSelf := true! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:46:06'!
resolve: aString 

	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self resolveShared: aString! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:46:21'!
resolveShared: aString 

	(pseudo at: aString) ifNotNil: [:binding | ^binding].
	(ivars at: aString) ifNotNil: [:binding | ^binding].
	cvars do: [:binder | binder at: aString ifPresent: [:binding | ^binding]].
	pools do: [:pool | pool at: aString ifPresent: [:binding | ^binding]].
	^(globals at: aString) ifNil: [UnresolvedBinding new name: aString]! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/20/2021 14:46:36'!
scriptDefining: aString 

	(self resolveLocal: aString) ifNotNil: [^script].
	(self resolveShared: aString) ifNotNil: [^script].
	self assert: false.
	^nil! !

!MethodScope methodsFor: 'testing' stamp: 'KenD 3/20/2021 14:41:14'!
hasMultipleBindingsFor: aString 
"
	temporal compatibility
"
	| count |
	count := 0.
	cvars
		do: [:binder | binder at: aString ifPresent: [:b | count := count + 1]].
	pools
		do: [:binder | binder at: aString ifPresent: [:b | count := count + 1]].
	^count > 1! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:39:37'!
classBinding 

	^species! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:40:39'!
environmentIndexOf: aScriptNode 

	self assert: aScriptNode == script.
	^nil! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:45:30'!
namespace 

	^globals! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:45:39'!
namespace: aDictionary 

	globals contents: aDictionary! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:45:53'!
poolFor: aString 

	cvars do: [:binder | binder at: aString ifPresent: [:b | ^binder contents]].
	pools do: [:pool | pool at: aString ifPresent: [:b | ^pool contents]].
	self error: 'not found'! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:46:58'!
species: aSpecies 

	species ifNotNil: [^self].
	species := aSpecies.
	self initializeInstVars; initializeClassVars; initializePoolVars.
	species superclass isNil ifTrue: [^self].
	pseudo at: 'super' put: SuperBinding new! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 3/20/2021 14:47:12'!
transferLocal: name 

	^self resolveLocal: name! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/20/2021 14:41:32'!
initialize 

	super initialize.
	globals := DynamicBinder on: Dictionary new of: GlobalBinding.
	ivars := StaticBinder new.
	cvars := OrderedCollection new. 
	pools := OrderedCollection new.
	self initializePseudoVars! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/20/2021 14:43:54'!
initializeClassVars 
"
	fixme: bootstrapping should be properly abstracted
	and not checked with isKindOf:
"
	| vars |
	species instanceSide withAllSuperclasses
		do: [ :class | 
			| binder |
			vars := class classPool.
			binder := DynamicBinder on: vars of: ClassVarBinding.
			cvars add: binder ]! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/20/2021 14:44:07'!
initializeInstVars 

	species allInstVarNames withIndexDo: [:name :i | | binding |
		binding := InstVarBinding new name: name; index: i.
		ivars at: name put: binding]! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/20/2021 14:44:19'!
initializePoolVars 
	| instance |
	instance := species instanceSide.
	(instance allSharedPoolsUsing: globals)
		do:
			[ :pool | self addPool: pool ] .
	instance withAllSuperclasses
		do: [ :class | class localPools do: [ :pool | self addPool: pool ] ]! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/20/2021 14:45:00'!
initializePseudoVars 

	pseudo := StaticBinder new.
	pseudo
		at: 'nil' put: NilBinding new;
		at: 'true' put: TrueBinding new;
		at: 'false' put: FalseBinding new;
		at: 'self' put: SelfBinding new! !

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

!UnresolvedBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:39:05'!
isUnresolved 

	^true! !

!UnresolvedBinding class methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:38:42'!
default 

	^Default ifNil: [Default := self new name: '<unresolved>']! !

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

!InstVarBinding methodsFor: 'accessing' stamp: 'KenD 3/8/2021 07:53:41'!
index 

	^index! !

!InstVarBinding methodsFor: 'accessing' stamp: 'KenD 3/8/2021 07:53:51'!
index: aNumber 

	index := aNumber! !

!InstVarBinding methodsFor: 'actions' stamp: 'KenD 3/8/2021 07:52:56'!
beReferencedFrom: aScriptNode 

	aScriptNode useSelf! !

!InstVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 07:53:13'!
emitLoadAusing: anSExpressionNativizer 

	anSExpressionNativizer encodeLoadAwithInstVar: index! !

!InstVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/8/2021 07:53:25'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeInstVar: index! !

!InstVarBinding methodsFor: 'testing' stamp: 'KenD 3/8/2021 07:54:09'!
isInstVar 

	^true! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 2/25/2021 12:53:29'!
isLiteral

	^true! !

!TrueBinding methodsFor: 'codeGeneration' stamp: 'KenD 4/8/2021 12:37:10'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeTrue! !

!TrueBinding methodsFor: 'evalutaing' stamp: 'KenD 4/8/2021 12:37:35'!
value 

	^true! !

!FalseBinding methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 13:07:44'!
value 

	^false! !

!FalseBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:07:22'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeFalse! !

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

!TemporaryBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:34:23'!
description 

	^'temporary ' , name! !

!TemporaryBinding methodsFor: 'codeGeneration' stamp: 'KenD 4/8/2021 12:34:35'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithTemp: index env: environment! !

!TemporaryBinding methodsFor: 'codeGeneration' stamp: 'KenD 4/8/2021 12:34:53'!
encodeUsing: anAstcodeEncoder 

	anAstcodeEncoder encodeTemporary: index env: environment! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 4/8/2021 12:35:10'!
initialize 

	super initialize.
	environment := StackEnvironment new! !

!TemporaryBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:35:25'!
isTemporary 

	^true! !

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

!SuperBinding methodsFor: 'emitCode' stamp: 'KenD 4/8/2021 12:32:04'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodeSuper! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:32:14'!
isSelf 

	^false! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:32:25'!
isSuper 

	^true
! !

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

!SLiteralBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 07:54:47'!
isLiteral 

	^true! !

!SLiteralBinding class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 07:55:18'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!STrueBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 12:19:04'!
value 

	^true! !

!STrueBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 12:19:16'!
valueWithin: evaluator 

	^evaluator trueLiteral! !

!SFalseBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 12:20:40'!
value 
	
	^false! !

!SFalseBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 12:20:49'!
valueWithin: evaluator 

	^evaluator falseLiteral! !

!SLocalBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:01:21'!
environment: anInteger 

	environment := anInteger! !

!SLocalBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:01:46'!
index 

	^position! !

!SLocalBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:01:55'!
index: anInteger 

	^position := anInteger! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:02:16'!
isInStack 

	self assert: false.
	^ environment = 0! !

!STemporaryBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:54:46'!
assign: value within: evaluator 

	evaluator temporaryAt: position in: environment put: value! !

!STemporaryBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 08:56:00'!
valueWithin: evaluator 

	^evaluator temporaryAt: position in: environment! !

!STemporaryBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:55:05'!
isInCurrentEnvironment 

	^environment = 1! !

!STemporaryBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:55:16'!
isTemporary 

	^true! !

!STemporaryBinding class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 08:54:28'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeTemporary! !

!SArgumentBinding methodsFor: 'evaluating' stamp: 'KenD 4/12/2021 13:15:10'!
assign: value within: evaluator 

	self halt! !

!SArgumentBinding methodsFor: 'evaluating' stamp: 'KenD 4/12/2021 13:16:08'!
valueWithin: evaluator 

	^evaluator argumentAt: position in: environment! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 4/12/2021 13:15:20'!
isArgument 

	^true! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 4/12/2021 13:15:30'!
isInlined 

	^ environment = -1! !

!SArgumentBinding class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 13:14:42'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeArgument! !

!SSelfBinding methodsFor: 'accessing' stamp: 'KenD 3/17/2021 15:57:54'!
valueWithin: evaluator 

	^evaluator receiver! !

!SSelfBinding methodsFor: 'testing' stamp: 'KenD 3/17/2021 15:57:08'!
isSelf 

	^true! !

!SSelfBinding class methodsFor: 'instance creation' stamp: 'KenD 3/17/2021 15:56:36'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!SSuperBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:44:02'!
isSelf 

	^false! !

!SSuperBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:44:10'!
isSuper 

	^true! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:38:19'!
association 

	^association! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:38:33'!
association: anAssociation 

	association := anAssociation! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:38:51'!
index 
	
	^ index! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:39:02'!
index: anInteger 

	 index := anInteger ! !

!SAssociationBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 07:38:04'!
assign: value within: evaluator 

	^ evaluator associationValueAt: index put: value! !

!SAssociationBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 07:39:38'!
valueWithin: evaluator 

	^evaluator associationValueAt: index! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 07:39:24'!
isAssociation 

	^true! !

!SPoolVarBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 07:42:14'!
value 

	^association value! !

!SPoolVarBinding methodsFor: 'testing' stamp: 'KenD 4/8/2021 07:42:01'!
isPoolVar 

	^true! !

!SPoolVarBinding class methodsFor: 'services' stamp: 'KenD 4/8/2021 07:41:20'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodePoolVar! !

!SConstantPoolBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 07:44:13'!
value 

	^association! !

!SConstantPoolBinding methodsFor: 'evaluating' stamp: 'KenD 4/8/2021 07:44:23'!
valueWithin: evaluator 

	^ evaluator constPoolValueAt: index! !

!SConstantPoolBinding class methodsFor: 'services' stamp: 'KenD 4/8/2021 07:43:43'!
decodeUsing: anAstcodeDecoder 

	^ anAstcodeDecoder decodeConstantPoolVar! !

!SClassVarBinding methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:23:42'!
isClassVar 

	^true! !

!SClassVarBinding class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 16:23:28'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeClassVar! !

!SGlobalBinding class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 12:22:02'!
decodeUsing: anAstcodeDecoder 

	^ anAstcodeDecoder decodeGlobalBinding! !

!SClassBinding methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:22:40'!
isClassBinding 

	^true! !

!SClassBinding class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 16:22:24'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeClassBinding! !

!SInstVarBinding methodsFor: 'accessing' stamp: 'KenD 4/13/2021 09:18:27'!
index 

	^index! !

!SInstVarBinding methodsFor: 'accessing' stamp: 'KenD 4/13/2021 09:18:44'!
index: anInteger 

	index := anInteger! !

!SInstVarBinding methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 09:17:46'!
assign: value within: evaluator 

	evaluator instanceVarAt: index put: value! !

!SInstVarBinding methodsFor: 'evaluating' stamp: 'KenD 4/13/2021 09:19:39'!
valueWithin: evaluator 

	^evaluator instanceVarAt: index! !

!SInstVarBinding methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:19:02'!
isInstVar 

	^true! !

!SInstVarBinding class methodsFor: 'instance creation' stamp: 'KenD 4/13/2021 09:15:59'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeInstVar! !

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

!SIdenitifier methodsFor: 'as yet unclassified' stamp: 'KenD 2/23/2021 14:17:16'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeIdentifier! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:28'!
index 

	^index! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 2/23/2021 14:31:39'!
index: anInteger 

	index := anInteger! !

!SLiteral methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:58:58'!
value 

	^value! !

!SLiteral methodsFor: 'accessing' stamp: 'KenD 4/8/2021 07:59:07'!
value: anObject 

	value := anObject! !

!SLiteral methodsFor: 'printing' stamp: 'KenD 4/8/2021 07:58:37'!
printOn: aStream indent: anInteger 

	aStream
		tab: anInteger;
		nextPutAll: '{LiteralId. ';
		print: value;
		nextPutAll: '}'! !

!SLiteral methodsFor: 'testing' stamp: 'KenD 4/8/2021 07:58:16'!
isLiteral 

	^true! !

!SLiteral methodsFor: 'visiting' stamp: 'KenD 4/8/2021 07:58:00'!
acceptVisitor: visitor 

	^ visitor visitLiteral: self! !

!SLiteral class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 07:57:31'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeLiteral! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:19:05'!
arguments 

	^arguments! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:19:13'!
arguments: aCollection 

	arguments := aCollection! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:20:23'!
opcodes 

	^opcodes! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:20:33'!
opcodes: aCollection 

	opcodes := aCollection! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:21:22'!
receiver 

	^receiver! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:21:32'!
receiver: anSExpression 

	receiver := anSExpression! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:21:40'!
selector 

	^selector! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:21:48'!
selector: aSelector 

	selector := aSelector! !

!SMessage methodsFor: 'initialization' stamp: 'KenD 4/8/2021 08:19:33'!
initialize 

	super initialize.
	arguments := #()! !

!SMessage methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:20:57'!
printOn: aStream indent: anInteger 

	aStream tab: anInteger; nextPutAll: '{MessageId. '; print: selector; nextPutAll: '. '; cr.
	receiver printOn: aStream indent: anInteger + 1.
	aStream nextPutAll: '.'; cr.
	arguments
		do: [:statement | statement printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '. '; cr].
	aStream nextPutAll: '}'! !

!SMessage methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:19:52'!
isInlined 

	^opcodes = #inlined! !

!SMessage methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:20:01'!
isMessage 

	^true! !

!SMessage methodsFor: 'testing' stamp: 'KenD 4/8/2021 08:20:09'!
isOptimized 

	^opcodes notNil! !

!SMessage methodsFor: 'visiting' stamp: 'KenD 4/8/2021 08:18:37'!
acceptVisitor: visitor 

	^visitor visitMessage: self! !

!SMessage class methodsFor: 'decoding' stamp: 'KenD 4/8/2021 08:18:01'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeMessage! !

!SAssignment methodsFor: 'accessing' stamp: 'KenD 4/12/2021 13:19:50'!
assign: anSIdentifier 

	assignees add: anSIdentifier! !

!SAssignment methodsFor: 'accessing' stamp: 'KenD 4/12/2021 13:19:58'!
assignees 

	^assignees! !

!SAssignment methodsFor: 'accessing' stamp: 'KenD 4/12/2021 13:20:07'!
expression 

	^expression! !

!SAssignment methodsFor: 'accessing' stamp: 'KenD 4/12/2021 13:20:15'!
expression: anSExpression 

	expression := anSExpression! !

!SAssignment methodsFor: 'initialization' stamp: 'KenD 4/12/2021 13:20:35'!
initialize 

	assignees := OrderedCollection new! !

!SAssignment methodsFor: 'printing' stamp: 'KenD 4/12/2021 13:21:14'!
printOn: aStream indent: anInteger 

	aStream tab: anInteger; nextPutAll: '{AssignmentId.'.
	assignees
		do: [:identifier | 
			aStream cr.
			identifier printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '.'].
	aStream nextPutAll: '.'; cr.
	expression printOn: aStream indent: anInteger + 1.
	aStream nextPutAll: '}'! !

!SAssignment methodsFor: 'testing' stamp: 'KenD 4/12/2021 13:20:51'!
isAssignment 

	^true! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 4/12/2021 13:19:22'!
acceptVisitor: visitor 

	^visitor visitAssignment: self! !

!SAssignment class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 13:19:02'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeAssignment! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:55:28'!
messages 
	
	^messages! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:55:39'!
messages: aCollection 

	messages := aCollection! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:55:48'!
receiver 

	^receiver! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 4/12/2021 14:55:58'!
receiver: anSExpression 

	receiver := anSExpression! !

!SCascade methodsFor: 'testing' stamp: 'KenD 4/12/2021 14:55:07'!
isCascade 

	^true! !

!SCascade methodsFor: 'visiting' stamp: 'KenD 4/12/2021 14:54:55'!
acceptVisitor: visitor 

	^visitor visitCascade: self! !

!SCascade class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 14:54:27'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeCascade! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:13:45'!
arguments 

	^arguments! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:13:54'!
arguments: aCollection 

	arguments := aCollection! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:14:22'!
selector 

	^selector! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 4/12/2021 16:14:31'!
selector: aSymbol 

	selector := aSymbol! !

!SCascadeMessage methodsFor: 'testing' stamp: 'KenD 4/12/2021 16:14:13'!
isCascadeMessage 

	^true! !

!SCascadeMessage methodsFor: 'visiting' stamp: 'KenD 4/12/2021 16:13:25'!
acceptVisitor: visitor 

	^ visitor visitCascadeMessage: self! !

!SCascadeMessage class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 16:12:58'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeCascadeMessage! !

!SIdentifier methodsFor: 'accessing' stamp: 'KenD 4/13/2021 08:59:13'!
binding: aBinding 

	binding := aBinding! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 08:59:31'!
isArgument 

	^binding isArgument! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 08:59:40'!
isAssociation 

	^binding isAssociation! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 08:59:48'!
isIdentifier 

	^true! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 08:59:58'!
isInstVar 

	^binding isInstVar! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:09:27'!
isLiteral 

	^binding isLiteral! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:09:37'!
isSelf 

	^binding isSelf! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:09:49'!
isSelfOrSuper 

	^binding isSelf or: [binding isSuper]! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:09:58'!
isSuper 

	^binding isSuper! !

!SIdentifier methodsFor: 'testing' stamp: 'KenD 4/13/2021 09:10:07'!
isTemporary 

	^binding isTemporary! !

!SIdentifier methodsFor: 'printing' stamp: 'KenD 4/13/2021 09:10:38'!
printOn: aStream indent: anInteger 

	aStream
		tab: anInteger;
		nextPutAll: '{IdentifierId. ';
		print: binding;
		nextPutAll: '}'! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 4/13/2021 08:58:51'!
acceptVisitor: visitor 

	^visitor visitIdentifier: self! !

!SIdentifier class methodsFor: 'instance creation' stamp: 'KenD 4/13/2021 08:58:07'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeIdentifier! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:31:48'!
argumentCount 

	^compiledCode argumentCount! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:31:56'!
compiledCode 

	^compiledCode! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:32:05'!
compiledCode: anObject 

	compiledCode := anObject! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:32:45'!
statements 

	^statements! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:32:54'!
statements: aCollection 

	statements := aCollection! !

!SScript methodsFor: 'accessing' stamp: 'KenD 4/8/2021 08:33:09'!
tempCount 

	^compiledCode tempCount! !

!SScript methodsFor: 'initialization' stamp: 'KenD 4/8/2021 08:32:22'!
initialize 

	statements := #()! !

!SScript methodsFor: 'printing' stamp: 'KenD 4/8/2021 08:32:34'!
printOn: aStream indent: anInteger 

	statements
		do: [:statement | statement printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '.'; cr]! !

!SBlock methodsFor: 'visiting' stamp: 'KenD 4/12/2021 14:34:39'!
acceptVisitor: visitor 

	^visitor visitBlock: self! !

!SBlock class methodsFor: 'instance creation' stamp: 'KenD 4/12/2021 14:34:18'!
decodeUsing: anAstcodeDecoder 

	^anAstcodeDecoder decodeBlock! !

!Subject methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:27:52'!
printString 

	^String streamContents: [ :s | self printOn: s ]! !

!Subject methodsFor: 'printing' stamp: 'KenD 4/8/2021 12:28:04'!
printString2 
	| message |
	message := MessageSend
		receiver: self
		selector: #printString
		arguments: #().
	^ self doesNotUnderstand: message! !

!Subject methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:24:29'!
_gate 

	^gate! !

!Subject methodsFor: 'accessing' stamp: 'KenD 4/8/2021 12:24:39'!
_gate: aMirageGate 

	gate := aMirageGate! !

!Subject methodsFor: 'inspector extensions' stamp: 'KenD 4/8/2021 12:26:12'!
gtDisplayString 

	^self printString! !

!Subject methodsFor: 'system' stamp: 'KenD 4/8/2021 12:25:52'!
doesNotUnderstand: aMessage 
	| send |
	send := MessageSend message: aMessage to: self.
			^ gate dispatch: send! !

!Subject methodsFor: 'system' stamp: 'KenD 4/8/2021 12:27:04'!
perform: aSymbol withArguments: anArray 
	| message |
	message := Message
		selector: #perform:withArguments:
		arguments: (Array with: aSymbol with: anArray).
	^ self doesNotUnderstand: message! !

!Subject methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:26:35'!
isKindOf: aClass 
	"Answer whether the class, aClass, is a superclass or class of the receiver.
	The current implemementation allows for a Trait to be used as argument"

	^ self class == aClass or: [ self class inheritsFrom: aClass ]! !

!Subject methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:26:45'!
isSelfEvaluating 

	^false! !

!Subject methodsFor: 'testing' stamp: 'KenD 4/8/2021 12:28:24'!
shouldBePrintedAsLiteral 

	^false! !

!Subject class methodsFor: 'initialization' stamp: 'KenD 4/8/2021 12:24:08'!
initialize 

	Counts := IdentityDictionary new! !

!Integer methodsFor: '*powerlang-core' stamp: 'KenD 3/8/2021 07:55:07'!
thru: anInteger 

	^Stretch from: self thru: anInteger! !

!String methodsFor: '*powerlang' stamp: 'Install-PowerLang 4/25/2021 07:43:45'!
includesString: subString

	^(self findString: subString) ~= 0! !
SFFIDescriptor initialize!
CharacterConstants initialize!
SpeciesFormatMasks initialize!
OperandTypeFlags initialize!
Prefixes initialize!
Registers initialize!
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
InlineMessageLinkerFlags initialize!
SendSiteFlags initialize!
SCompiledMethodFlags initialize!
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
SExpressionTypes initialize!
SCompiledBlockFlags initialize!
Register initialize!
InstructionEncoder initialize!
InstructionSpec initialize!
Assembler64 initialize!
JITAssembler64 initialize!
MethodEvaluator initialize!
VirtualSmalltalkRuntime initialize!
SmalltalkInterpreter initialize!
Subject initialize!
