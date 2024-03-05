'From Cuis6.3 [latest update: #6247] on 4 March 2024 at 12:14:03 pm'!
'Description Bootstrap test: Bee Compiler -> ast codes'!
!provides: 'FromBee' 1 1!
!requires: 'Cuis-Base' 63 6247 nil!
!requires: 'BeeCompatibility' 1 58 nil!
!requires: 'Bootstrap' 1 38 nil!
SystemOrganization addCategory: 'FromBee-SCompiler-Frontend'!
SystemOrganization addCategory: 'FromBee-SCompiler-Backend'!
SystemOrganization addCategory: 'FromBee-SCompiler-Parser'!
SystemOrganization addCategory: 'FromBee-SCompiler'!
SystemOrganization addCategory: 'FromBee-SCompiler-Bindings'!
SystemOrganization addCategory: 'FromBee-Compatibility-Pharo'!
SystemOrganization addCategory: #FromBee!


!classDefinition: #AstBindingTypes category: 'FromBee-SCompiler-Backend'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'AstBindingTypes class' category: 'FromBee-SCompiler-Backend'!
AstBindingTypes class
	instanceVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'!

!classDefinition: #AstNodeTypes category: 'FromBee-SCompiler-Backend'!
PSharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'AstNodeTypes class' category: 'FromBee-SCompiler-Backend'!
AstNodeTypes class
	instanceVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'!

!classDefinition: #ClosureElementTypes category: 'FromBee-SCompiler-Backend'!
PSharedPool subclass: #ClosureElementTypes
	instanceVariableNames: ''
	classVariableNames: 'Environment EnvironmentValue LocalArgument Self'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'ClosureElementTypes class' category: 'FromBee-SCompiler-Backend'!
ClosureElementTypes class
	instanceVariableNames: 'Environment EnvironmentValue LocalArgument Self'!

!classDefinition: #SCompiledBlockFlags category: 'FromBee-SCompiler-Backend'!
PSharedPool subclass: #SCompiledBlockFlags
	instanceVariableNames: ''
	classVariableNames: 'BlockArgCount BlockCapturesHome BlockCapturesSelf BlockEnvCount BlockId BlockTempCount'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCompiledBlockFlags class' category: 'FromBee-SCompiler-Backend'!
SCompiledBlockFlags class
	instanceVariableNames: 'BlockArgCount BlockCapturesHome BlockCapturesSelf BlockEnvCount BlockId BlockTempCount'!

!classDefinition: #SCompiledMethodFlags category: 'FromBee-SCompiler-Backend'!
PSharedPool subclass: #SCompiledMethodFlags
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCompiledMethodFlags class' category: 'FromBee-SCompiler-Backend'!
SCompiledMethodFlags class
	instanceVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'!

!classDefinition: #SCompiledMethod category: 'FromBee-SCompiler-Backend'!
Array variableSubclass: #SCompiledMethod
	instanceVariableNames: 'format optimizedCode astcodes class selector source'
	classVariableNames: ''
	poolDictionaries: 'SCompiledMethodFlags'
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCompiledMethod class' category: 'FromBee-SCompiler-Backend'!
SCompiledMethod class
	instanceVariableNames: ''!

!classDefinition: #SCallbackMethod category: 'FromBee-SCompiler-Backend'!
SCompiledMethod variableSubclass: #SCallbackMethod
	instanceVariableNames: 'receiver descriptor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCallbackMethod class' category: 'FromBee-SCompiler-Backend'!
SCallbackMethod class
	instanceVariableNames: ''!

!classDefinition: #SCalloutMethod category: 'FromBee-SCompiler-Backend'!
SCompiledMethod variableSubclass: #SCalloutMethod
	instanceVariableNames: 'descriptor symbol address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCalloutMethod class' category: 'FromBee-SCompiler-Backend'!
SCalloutMethod class
	instanceVariableNames: ''!

!classDefinition: #SFFIDescriptor category: 'FromBee-SCompiler-Parser'!
ByteArray variableByteSubclass: #SFFIDescriptor
	instanceVariableNames: ''
	classVariableNames: 'FFICallingConventions FFITypes'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SFFIDescriptor class' category: 'FromBee-SCompiler-Parser'!
SFFIDescriptor class
	instanceVariableNames: 'FFICallingConventions FFITypes'!

!classDefinition: #SCompilationError category: 'FromBee-SCompiler-Frontend'!
Error subclass: #SCompilationError
	instanceVariableNames: 'compiler resumable retryable stretch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SCompilationError class' category: 'FromBee-SCompiler-Frontend'!
SCompilationError class
	instanceVariableNames: ''!

!classDefinition: #SInvalidPragmaError category: 'FromBee-SCompiler-Frontend'!
SCompilationError subclass: #SInvalidPragmaError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SInvalidPragmaError class' category: 'FromBee-SCompiler-Frontend'!
SInvalidPragmaError class
	instanceVariableNames: ''!

!classDefinition: #SUndeclaredIdentifierError category: 'FromBee-SCompiler-Frontend'!
SCompilationError subclass: #SUndeclaredIdentifierError
	instanceVariableNames: 'identifier assigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SUndeclaredIdentifierError class' category: 'FromBee-SCompiler-Frontend'!
SUndeclaredIdentifierError class
	instanceVariableNames: ''!

!classDefinition: #ScriptScopeTest category: #FromBee!
TestCase subclass: #ScriptScopeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee'!
!classDefinition: 'ScriptScopeTest class' category: #FromBee!
ScriptScopeTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkParserTest category: #FromBee!
TestCase subclass: #SmalltalkParserTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee'!
!classDefinition: 'SmalltalkParserTest class' category: #FromBee!
SmalltalkParserTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkScannerTest category: #FromBee!
TestCase subclass: #SmalltalkScannerTest
	instanceVariableNames: 'scanner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee'!
!classDefinition: 'SmalltalkScannerTest class' category: #FromBee!
SmalltalkScannerTest class
	instanceVariableNames: ''!

!classDefinition: #SCompilationResult category: 'FromBee-SCompiler-Frontend'!
Object subclass: #SCompilationResult
	instanceVariableNames: 'compiler error ast method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SCompilationResult class' category: 'FromBee-SCompiler-Frontend'!
SCompilationResult class
	instanceVariableNames: ''!

!classDefinition: #SCompiler category: 'FromBee-SCompiler-Frontend'!
Object subclass: #SCompiler
	instanceVariableNames: 'errorHandler result class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SCompiler class' category: 'FromBee-SCompiler-Frontend'!
SCompiler class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkCompiler category: 'FromBee-SCompiler-Frontend'!
Object subclass: #SSmalltalkCompiler
	instanceVariableNames: 'frontend source ast result headless blocks leaf activeScript'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SSmalltalkCompiler class' category: 'FromBee-SCompiler-Frontend'!
SSmalltalkCompiler class
	instanceVariableNames: ''!

!classDefinition: #SCompiledBlock category: 'FromBee-SCompiler-Backend'!
Object subclass: #SCompiledBlock
	instanceVariableNames: 'format optimizedCode method'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags'
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'SCompiledBlock class' category: 'FromBee-SCompiler-Backend'!
SCompiledBlock class
	instanceVariableNames: ''!

!classDefinition: #IdentifierBinder category: 'FromBee-SCompiler-Parser'!
Object subclass: #IdentifierBinder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'IdentifierBinder class' category: 'FromBee-SCompiler-Parser'!
IdentifierBinder class
	instanceVariableNames: ''!

!classDefinition: #StaticBinder category: 'FromBee-SCompiler-Parser'!
IdentifierBinder subclass: #StaticBinder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'StaticBinder class' category: 'FromBee-SCompiler-Parser'!
StaticBinder class
	instanceVariableNames: ''!

!classDefinition: #SParseTreeVisitor category: 'FromBee-SCompiler-Parser'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SParseTreeVisitor class' category: 'FromBee-SCompiler-Parser'!
SParseTreeVisitor class
	instanceVariableNames: ''!

!classDefinition: #SSemanticVisitor category: 'FromBee-SCompiler-Frontend'!
SParseTreeVisitor subclass: #SSemanticVisitor
	instanceVariableNames: 'inliner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Frontend'!
!classDefinition: 'SSemanticVisitor class' category: 'FromBee-SCompiler-Frontend'!
SSemanticVisitor class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'FromBee-SCompiler-Backend'!
SParseTreeVisitor subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'FromBee-SCompiler-Backend'!
!classDefinition: 'AstcodeEncoder class' category: 'FromBee-SCompiler-Backend'!
AstcodeEncoder class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkParser category: 'FromBee-SCompiler-Parser'!
Object subclass: #SSmalltalkParser
	instanceVariableNames: 'compiler scanner token next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SSmalltalkParser class' category: 'FromBee-SCompiler-Parser'!
SSmalltalkParser class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkScanner category: 'FromBee-SCompiler-Parser'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SSmalltalkScanner class' category: 'FromBee-SCompiler-Parser'!
SSmalltalkScanner class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'FromBee-SCompiler-Parser'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SToken class' category: 'FromBee-SCompiler-Parser'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'FromBee-SCompiler-Parser'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SEndToken class' category: 'FromBee-SCompiler-Parser'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'FromBee-SCompiler-Parser'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SParseNode class' category: 'FromBee-SCompiler-Parser'!
SParseNode class
	instanceVariableNames: ''!

!classDefinition: #SAssignmentNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SAssignmentNode
	instanceVariableNames: 'assignees expression operators'
	classVariableNames: 'Token'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SAssignmentNode class' category: 'FromBee-SCompiler-Parser'!
SAssignmentNode class
	instanceVariableNames: 'Token'!

!classDefinition: #SBraceNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SBraceNode
	instanceVariableNames: 'elements message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SBraceNode class' category: 'FromBee-SCompiler-Parser'!
SBraceNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SCascadeNode
	instanceVariableNames: 'receiver messages optimized'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SCascadeNode class' category: 'FromBee-SCompiler-Parser'!
SCascadeNode class
	instanceVariableNames: ''!

!classDefinition: #SCommentNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SCommentNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SCommentNode class' category: 'FromBee-SCompiler-Parser'!
SCommentNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SIdentifierNode class' category: 'FromBee-SCompiler-Parser'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SLiteralNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SLiteralNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SLiteralNode class' category: 'FromBee-SCompiler-Parser'!
SLiteralNode class
	instanceVariableNames: ''!

!classDefinition: #SNumberNode category: 'FromBee-SCompiler-Parser'!
SLiteralNode subclass: #SNumberNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SNumberNode class' category: 'FromBee-SCompiler-Parser'!
SNumberNode class
	instanceVariableNames: ''!

!classDefinition: #SStringNode category: 'FromBee-SCompiler-Parser'!
SLiteralNode subclass: #SStringNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SStringNode class' category: 'FromBee-SCompiler-Parser'!
SStringNode class
	instanceVariableNames: ''!

!classDefinition: #SMessageNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SMessageNode
	instanceVariableNames: 'selector receiver arguments inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SMessageNode class' category: 'FromBee-SCompiler-Parser'!
SMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessageNode category: 'FromBee-SCompiler-Parser'!
SMessageNode subclass: #SCascadeMessageNode
	instanceVariableNames: 'cascade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SCascadeMessageNode class' category: 'FromBee-SCompiler-Parser'!
SCascadeMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SReturnNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SReturnNode
	instanceVariableNames: 'expression return'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SReturnNode class' category: 'FromBee-SCompiler-Parser'!
SReturnNode class
	instanceVariableNames: ''!

!classDefinition: #SScriptNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SScriptNode
	instanceVariableNames: 'statements arguments temporaries children scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SScriptNode class' category: 'FromBee-SCompiler-Parser'!
SScriptNode class
	instanceVariableNames: ''!

!classDefinition: #SBlockNode category: 'FromBee-SCompiler-Parser'!
SScriptNode subclass: #SBlockNode
	instanceVariableNames: 'inlined index parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SBlockNode class' category: 'FromBee-SCompiler-Parser'!
SBlockNode class
	instanceVariableNames: ''!

!classDefinition: #SMethodNode category: 'FromBee-SCompiler-Parser'!
SScriptNode subclass: #SMethodNode
	instanceVariableNames: 'selector pragma'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SMethodNode class' category: 'FromBee-SCompiler-Parser'!
SMethodNode class
	instanceVariableNames: ''!

!classDefinition: #SSelectorNode category: 'FromBee-SCompiler-Parser'!
SParseNode subclass: #SSelectorNode
	instanceVariableNames: 'symbol keywords'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SSelectorNode class' category: 'FromBee-SCompiler-Parser'!
SSelectorNode class
	instanceVariableNames: ''!

!classDefinition: #SPragmaNode category: 'FromBee-SCompiler-Parser'!
SToken subclass: #SPragmaNode
	instanceVariableNames: 'type name info'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SPragmaNode class' category: 'FromBee-SCompiler-Parser'!
SPragmaNode class
	instanceVariableNames: ''!

!classDefinition: #SSymbolicToken category: 'FromBee-SCompiler-Parser'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SSymbolicToken class' category: 'FromBee-SCompiler-Parser'!
SSymbolicToken class
	instanceVariableNames: ''!

!classDefinition: #SDelimiterToken category: 'FromBee-SCompiler-Parser'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SDelimiterToken class' category: 'FromBee-SCompiler-Parser'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SStringToken category: 'FromBee-SCompiler-Parser'!
SSymbolicToken subclass: #SStringToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'SStringToken class' category: 'FromBee-SCompiler-Parser'!
SStringToken class
	instanceVariableNames: ''!

!classDefinition: #ScriptScope category: 'FromBee-SCompiler-Parser'!
Object subclass: #ScriptScope
	instanceVariableNames: 'script arguments temporaries stackSize envSize captureSelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'ScriptScope class' category: 'FromBee-SCompiler-Parser'!
ScriptScope class
	instanceVariableNames: ''!

!classDefinition: #BlockScope category: 'FromBee-SCompiler-Parser'!
ScriptScope subclass: #BlockScope
	instanceVariableNames: 'environments captured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'BlockScope class' category: 'FromBee-SCompiler-Parser'!
BlockScope class
	instanceVariableNames: ''!

!classDefinition: #MethodScope category: 'FromBee-SCompiler-Parser'!
ScriptScope subclass: #MethodScope
	instanceVariableNames: 'pseudo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Parser'!
!classDefinition: 'MethodScope class' category: 'FromBee-SCompiler-Parser'!
MethodScope class
	instanceVariableNames: ''!

!classDefinition: #MessageInliner category: 'FromBee-SCompiler'!
Object subclass: #MessageInliner
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler'!
!classDefinition: 'MessageInliner class' category: 'FromBee-SCompiler'!
MessageInliner class
	instanceVariableNames: ''!

!classDefinition: #Binding category: 'FromBee-SCompiler-Bindings'!
Object subclass: #Binding
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'Binding class' category: 'FromBee-SCompiler-Bindings'!
Binding class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinding category: 'FromBee-SCompiler-Bindings'!
Binding subclass: #DynamicBinding
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'DynamicBinding class' category: 'FromBee-SCompiler-Bindings'!
DynamicBinding class
	instanceVariableNames: 'Default'!

!classDefinition: #NestedDynamicBinding category: 'FromBee-SCompiler-Bindings'!
DynamicBinding subclass: #NestedDynamicBinding
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'NestedDynamicBinding class' category: 'FromBee-SCompiler-Bindings'!
NestedDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #LiteralBinding category: 'FromBee-SCompiler-Bindings'!
Binding subclass: #LiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'LiteralBinding class' category: 'FromBee-SCompiler-Bindings'!
LiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #FalseBinding category: 'FromBee-SCompiler-Bindings'!
LiteralBinding subclass: #FalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'FalseBinding class' category: 'FromBee-SCompiler-Bindings'!
FalseBinding class
	instanceVariableNames: ''!

!classDefinition: #NilBinding category: 'FromBee-SCompiler-Bindings'!
LiteralBinding subclass: #NilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'NilBinding class' category: 'FromBee-SCompiler-Bindings'!
NilBinding class
	instanceVariableNames: ''!

!classDefinition: #TrueBinding category: 'FromBee-SCompiler-Bindings'!
LiteralBinding subclass: #TrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'TrueBinding class' category: 'FromBee-SCompiler-Bindings'!
TrueBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalBinding category: 'FromBee-SCompiler-Bindings'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'LocalBinding class' category: 'FromBee-SCompiler-Bindings'!
LocalBinding class
	instanceVariableNames: ''!

!classDefinition: #ArgumentBinding category: 'FromBee-SCompiler-Bindings'!
LocalBinding subclass: #ArgumentBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'ArgumentBinding class' category: 'FromBee-SCompiler-Bindings'!
ArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #TemporaryBinding category: 'FromBee-SCompiler-Bindings'!
LocalBinding subclass: #TemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'TemporaryBinding class' category: 'FromBee-SCompiler-Bindings'!
TemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SelfBinding category: 'FromBee-SCompiler-Bindings'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'SelfBinding class' category: 'FromBee-SCompiler-Bindings'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SuperBinding category: 'FromBee-SCompiler-Bindings'!
SelfBinding subclass: #SuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'SuperBinding class' category: 'FromBee-SCompiler-Bindings'!
SuperBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalEnvironment category: 'FromBee-SCompiler-Bindings'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'private'
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'LocalEnvironment class' category: 'FromBee-SCompiler-Bindings'!
LocalEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArrayEnvironment category: 'FromBee-SCompiler-Bindings'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'ArrayEnvironment class' category: 'FromBee-SCompiler-Bindings'!
ArrayEnvironment class
	instanceVariableNames: ''!

!classDefinition: #StackEnvironment category: 'FromBee-SCompiler-Bindings'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'StackEnvironment class' category: 'FromBee-SCompiler-Bindings'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArgumentEnvironment category: 'FromBee-SCompiler-Bindings'!
StackEnvironment subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'ArgumentEnvironment class' category: 'FromBee-SCompiler-Bindings'!
ArgumentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #InlinedArgEnvironment category: 'FromBee-SCompiler-Bindings'!
StackEnvironment subclass: #InlinedArgEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Bindings'!
!classDefinition: 'InlinedArgEnvironment class' category: 'FromBee-SCompiler-Bindings'!
InlinedArgEnvironment class
	instanceVariableNames: ''!

!classDefinition: #NumberParser2 category: 'FromBee-Compatibility-Pharo'!
Object subclass: #NumberParser2
	instanceVariableNames: 'stream error return'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Compatibility-Pharo'!
!classDefinition: 'NumberParser2 class' category: 'FromBee-Compatibility-Pharo'!
NumberParser2 class
	instanceVariableNames: ''!


!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:47'!
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

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:53'!
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

!ClosureElementTypes class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:59'!
initialize
	Self := 0.
	LocalArgument := 1.
	Environment := 2.
	EnvironmentValue := 3
! !

!SCompiledBlockFlags class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 07:15:46'!
initialize
"
	SCompiledBlockFlags initialize.
"
	BlockArgCount := 1 thru: 6.
	BlockTempCount := 7 thru: 14.
	BlockId := 15 thru: 22.
	BlockCapturesSelf := 1 bitShift: 23 - 1.
	BlockCapturesHome := 1 bitShift: 24 - 1.
	BlockEnvCount := 25 thru: 31
! !

!SCompiledMethodFlags class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:47'!
initialize
	ArgCount := 1 thru: 6.
	BlockCount := 7 thru: 13.
	TempCount := 14 thru: 21.
	CapturesSelf := 1 bitShift: 22 - 1.
	HasEnvironment := 1 bitShift: 23 - 1.
	HasFrame := 1 bitShift: 24 - 1.
	Debuggable := 1 bitShift: 25 - 1.
	EnvCount := 26 thru: 31
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
argumentCount
	^format bitsAt: ArgCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
argumentCount: anInteger
	format := format bitsAt: ArgCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
astcodes
	^astcodes
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
astcodes: aCollection
	astcodes := aCollection
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
beDebugabble
	format := format bitOr: Debuggable
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
blockCount
	^format bitsAt: BlockCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
blockCount: anInteger
	format := format bitsAt: BlockCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
blocks
	self hasBlocks ifFalse: [^#()].
	^self select: [:literal | literal isBlock]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
capturesSelf
	^ format anyMask: CapturesSelf
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
capturesSelf: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: CapturesSelf ]
				  ifFalse: [ format bitClear: CapturesSelf ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
classBinding
	^class
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
classBinding: aClass
	class := aClass
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
copyWithLiterals: aCollection
	| result |
	result := self species withAll: aCollection.
	^ result
		astcodes: astcodes;
		classBinding: class;
		format: format;
		optimizedCode: optimizedCode;
		selector: selector;
		source: source;
		yourself
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
dynamicVariableNamed: aSymbol
	^class dynamicVariableNamed: aSymbol
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
environmentCount
	^format bitsAt: EnvCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
environmentCount: anInteger
	format := format bitsAt: EnvCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
hasBlocks
	^self blockCount > 0
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
hasEnvironment
	^ format anyMask: HasEnvironment
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
hasEnvironment: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: HasEnvironment ]
				  ifFalse: [ format bitClear: HasEnvironment ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
hasFrame
	^ format anyMask: HasFrame
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
hasFrame: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: HasFrame ]
				  ifFalse: [ format bitClear: HasFrame ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
initialize
	super initialize.
	format := 0
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
isCallback
	^false
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
isCalloutMethod
	^ false
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
isDebuggable
	^ format anyMask: Debuggable
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
isFrameless
	^ self hasFrame not
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
literals
	^Array withAll: self
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
pragma: aPragmaNode

! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
selector
	^selector
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
selector: aSymbol
	selector := aSymbol
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
sexpressions
	| decoder |
	decoder := AstcodeDecoder new
		stream: astcodes readStream;
		method: self.
	^decoder decodeMethod
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
signature
	^class-> selector
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
source
	^source
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
source: aString
	source := aString
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
tempCount
	^format bitsAt: TempCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:48'!
tempCount: anInteger
	format := format bitsAt: TempCount put: anInteger
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
format
	^format
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
format: anInteger
	format := anInteger
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
optimizedCode
	^optimizedCode
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
optimizedCode: anObject
	optimizedCode := anObject
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
prepareForExecution
	optimizedCode ifNil: [ optimizedCode := self sexpressions ].
	^ optimizedCode
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:48'!
gtDisplayOn: stream
stream
		nextPutAll: self classBinding name;
		nextPutAll: '>>';
		print: selector
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:48'!
printOn: aStream
	aStream
		print: self classBinding;
		nextPutAll: '>>';
		print: selector;
		cr.
	source
		ifNotNil: [ aStream
				cr;
				nextPutAll: source ]
! !

!SCompiledMethod class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:48'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SCompiledMethod class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:48'!
new: anInteger
	^ (self basicNew: anInteger) initialize
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
descriptor
	^descriptor
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
descriptor: anFFIDescriptor
	descriptor := anFFIDescriptor 
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
isCallback
	^true
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
pragma: anSPragmaNode
	descriptor := anSPragmaNode info
! !

!SCallbackMethod class methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:49'!
behaviorNativeCodeSlot
	"callback methods have a special machine code. Its bytes are of
	class ByteArray, but the behavior of this ByteArray is special:
	it has an extra slot that allows to find the native code object
	corresponding to this callback"
	^4
! !

!SCalloutMethod methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:59'!
pragma: anSPragmaNode
	descriptor := anSPragmaNode info.
	symbol := anSPragmaNode name
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/4/2024 06:55:48'!
arguments: aCollection
	self replaceFrom: 3 to: 3 + aCollection size -1 with: aCollection
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/4/2024 06:55:48'!
callingConvention: anInteger
	self at: 1 put: anInteger
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/4/2024 06:55:48'!
return: anInteger
	self at: 2 put: anInteger
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:48'!
initialize
	self initializeFFITypes; initializeCallingConventions
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:48'!
initializeCallingConventions
	FFICallingConventions := Dictionary new.
	FFICallingConventions
		at: 'cdecl' put: 20;
		at: 'com' put: 21;
		at: 'callback' put: 22
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/4/2024 06:55:48'!
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
		at: 'double' put: 14
! !

!SFFIDescriptor class methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:48'!
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
		arguments: args
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
beFatal
	resumable := retryable := false
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
beResumable
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
beWarning
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
compiler
	^compiler
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
compiler: aCompiler
	compiler := aCompiler.
	compiler result error: self
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
description: aString
	messageText := aString
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
isResumable
	^resumable

! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
proceed
	retryable := false.
	compiler result beSuccessful.
	self isResumable ifTrue: [ self resume ] ifFalse: [ self return ]
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
stretch
	^stretch
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
stretch: aStretch
	stretch := aStretch
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isUndeclaredAccess
	^false
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isUndeclaredAssignment
	^ false
! !

!SUndeclaredIdentifierError methodsFor: 'accessing-token' stamp: 'KenD 3/4/2024 06:55:51'!
assignment: aBoolean
	assigned := aBoolean
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
identifier
	^ identifier
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isUndeclaredAccess
	^assigned not
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isUndeclaredAssignment
	^assigned
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
stretch: aStretch
	super stretch: aStretch.
	identifier := self source
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
assert: binding isEnvArg: name at: index
	self
		assert: binding isArgument;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding isInArray;
		assert: binding environmentIndex = nil
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
assert: binding isEnvTemp: name at: environment index: index
	self
		assert: binding isTemporary;
		assert: binding isInArray;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding environment = environment
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
assert: binding isStackArg: name at: index
	self
		assert: binding isArgument;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
assert: binding isStackInlineArg: name at: index
	self
		assert: binding isArgument;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding environmentObject class = InlinedArgEnvironment
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
assert: binding isStackTemp: name at: index
	self
		assert: binding isTemporary;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkArgs: names in: scope
	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isArgument;
			assert: binding name = name;
			assert: binding index = index]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkClassVarsOf: aSpecies in: scope
	aSpecies withAllSuperclasses do: [:c | 
		c classPool associationsDo: [:assoc | | name binding |
			name := assoc key.
			binding := scope resolve: name.
			self
				assert: binding isClassVariable;
				assert: binding name = name;
				assert: binding association == assoc]]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkClosureEnvTemps: names in: scope at: environment
	| offset |
	offset := scope environmentSizeUpToCapturedArguments.
	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isTemporary;
			assert: binding isInArray;
			assert: binding name = name;
			assert: binding index = (index + offset);
			assert: binding environment = environment]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkEnvTemps: names in: scope at: environment
	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isTemporary;
			assert: binding isInArray;
			assert: binding name = name;
			assert: binding index = index;
			assert: binding environment = environment]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkInstVarsOf: aSpecies in: scope
	aSpecies allInstVarNames withIndexDo: [:name :i | | binding |
		binding := scope resolve: name.
		self
			assert: binding isInstVar;
			assert: binding name = name;
			assert: binding index = i]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
checkTemps: names in: scope
	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self assert: binding isStackTemp: name at: index]
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
compile: aString
	^self compile: aString in: UndefinedObject
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
compile: aString in: aClass
	^SCompiler parse: aString in: aClass
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
precondition: aBoolean
	self assert: aBoolean description: 'Precondition for this test is not met'
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
scopeFor: aSpecies
	^MethodScope new
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test010resolveClass
	| binding |
	binding := SCompiler new smalltalkCompiler methodNode scope resolve: 'Point'.
	self
		assert: binding isDynamic;
		assert: binding name = #Point
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test010resolveSelf
	| scope receiver sup |
	scope := self scopeFor: Object.
	receiver := scope resolve: 'self'.
	sup := scope resolve: 'super'.
	self
		assert: receiver isSelf;
		assert: receiver name = 'self';
		assert: sup isSuper;
		assert: sup name = 'super'
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test011resolveUnknownGlobal
	| binding point |
	self precondition: (Smalltalk includesKey: 'Foo678' existingSymbol) not.
	binding := MethodScope new resolve: 'Foo678'.
	self assert: binding isDynamic.
	point := self scopeFor: Point.
	binding := point resolve: 'Foo678'.
	self assert: binding isDynamic
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test020resolveMethodArguments
	| scope |
	scope := self scopeFor: Point.
	scope
		defineArgument: 'arg1';
		defineArgument: 'arg2';
		positionDefinedLocals.
	self checkArgs: #('arg1' 'arg2') in: scope
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test021resolveMethodTemporaries
	| scope |
	scope := self scopeFor: Point.
	scope defineTemporary: 't1'; defineTemporary: 't2'; positionDefinedLocals.
	self checkTemps: #('t1' 't2') in: scope
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test030resolveNestedTemporaryConflictingWithIvar
	| ast b3 x |
	ast := self compile: 'foo  [ | x | [[x]] ]' in: Point.
	b3 := ast children first children first children first.
	x := b3 statements first binding.
	self
		assert: x
		isEnvTemp: 'x'
		at: 1
		index: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test040declareMethodArguments
	| ast scope |
	ast := self compile: 'foo: anArg bar: anotherArg' in: Point.
	scope := ast scope.
	self checkArgs: #('anArg' 'anotherArg') in: scope
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test041declareMethodTemporaries
	| ast scope |
	ast := self compile: 'foo | t1 t2 | ' in: Point.
	scope := ast scope.
	self checkTemps: #('t1' 't2') in: scope
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test042declareMethodTempsWithArgs
	| ast scope |
	ast := self compile: 'foo: arg1 bar: arg2 | t1 t2 | ' in: Point.
	scope := ast scope.
	self
		checkArgs: #('arg1' 'arg2') in: scope;
		checkTemps: #('t1' 't2') in: scope
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test050useMethodTemps
	| ast scope t1 t2 |
	ast := self compile: 'foo | t1 t2 | t1. t2' in: Point.
	scope := ast scope.
	t1 := ast statements first binding.
	t2 := ast statements second binding.
	self
		checkTemps: #('t1' 't2') in: scope;
		assert: t1 isTemporary;
		assert: t1 isInStack;
		assert: t1 name = 't1';
		assert: t1 index = 1;
		assert: t2 isTemporary;
		assert: t2 isInStack;
		assert: t2 name = 't2';
		assert: t2 index = 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test051useMethodArgs
	| ast scope a1 a2 |
	ast := self compile: 'foo: a1 bar: a2 a1. a2' in: Point.
	scope := ast scope.
	a1 := ast statements first binding.
	a2 := ast statements second binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		assert: a1 isArgument;
		assert: a1 isInStack;
		assert: a1 name = 'a1';
		assert: a1 index = 1;
		assert: a2 isArgument;
		assert: a2 isInStack;
		assert: a2 name = 'a2';
		assert: a2 index = 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test052useMethodTempsAndArgs
	| ast scope a1 a2 t1 t2 |
	ast := self compile: 'foo: a1 bar: a2 | t1 t2 | t1. t2. a1. a2' in: Point.
	scope := ast scope.
	t1 := ast statements first binding.
	t2 := ast statements second binding.
	a1 := ast statements third binding.
	a2 := ast statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		checkTemps: #('t1' 't2') in: scope;
		assert: t1 isTemporary;
		assert: t1 isInStack;
		assert: t1 name = 't1';
		assert: t1 index = 1;
		assert: t2 isTemporary;
		assert: t2 isInStack;
		assert: t2 name = 't2';
		assert: t2 index = 2;
		assert: a1 isArgument;
		assert: a1 isInStack;
		assert: a1 name = 'a1';
		assert: a1 index = 1;
		assert: a2 isArgument;
		assert: a2 isInStack;
		assert: a2 name = 'a2';
		assert: a2 index = 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test053useBlockArgs
	| ast block scope a1 a2 |
	ast := self compile: 'foo [:a1 :a2 | a1. a2]' in: Point.
	block := ast children first.
	scope := block scope.
	a1 := block statements first binding.
	a2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test053useSiblingBlockArgs
	| ast block1 block2 a1 a2 |
	ast := self compile: 'foo [:a1 | a1]. [:a2 | a2]' in: Point.
	block1 := ast children first.
	block2 := ast children second.
	a1 := block1 statements first binding.
	a2 := block2 statements first binding.
	self
		checkArgs: #('a1') in: block1 scope;
		checkArgs: #('a2') in: block2 scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test054useBlockTemps
	| ast block scope t1 t2 |
	ast := self compile: 'foo [| t1 t2 | t1. t2]' in: Point.
	block := ast children first.
	scope := block scope.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1' 't2') in: scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test055methodUseGlobal
	| ast global |
	ast := self compile: 'foo Collection' in: Point.
	global := ast statements first binding.
	self
		assert: global isDynamic;
		assert: global name = #Collection
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test060useNestedMethodArgs
	| ast block ma1 ma2 ba1 ba2 |
	ast := self compile: 'foo: a1 bar: a2  a1. a2. [a1. a2]' in: Object.
	block := ast children first.
	ma1 := ast statements first binding.
	ma2 := ast statements second binding.
	ba1 := block statements first binding.
	ba2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: ma1 isStackArg: 'a1' at: 1;
		assert: ma2 isStackArg: 'a2' at: 2;
		assert: ba1 isEnvArg: 'a1' at: 1;
		assert: ba2 isEnvArg: 'a2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test061useNestedMethodSiblingBlockTemps
	| ast block1 block2 b1t1 b2t2 |
	ast := self compile: 'foo | t1 t2 | [t1]. [t2]' in: Object.
	block1 := ast children first.
	block2 := ast children second.
	b1t1 := block1 statements first binding.
	b2t2 := block2 statements first binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test061useNestedMethodTemps
	| ast block bt1 bt2 |
	ast := self compile: 'foo | t1 t2 | [t1. t2]' in: Object.
	block := ast children first.
	bt1 := block statements first binding.
	bt2 := block statements second binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: bt1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: bt2
			isEnvTemp: 't2'
			at: 1
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test062useNestedBlockArgs
	| ast block1 block2 b1a1 b1a2 b2a1 b2a2 |
	ast := self compile: 'foo [:a1 :a2 | [a1. a2] ]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	self
		checkArgs: #('a1' 'a2') in: block1 scope;
		assert: b1a1 isStackArg: 'a1' at: 1;
		assert: b1a2 isStackArg: 'a2' at: 2;
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b2a2 isEnvArg: 'a2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test063useNestedBlockTemps
	| ast block1 block2 b2t1 b2t2 |
	ast := self compile: 'foo [| t1 t2 | [t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkClosureEnvTemps: #('t1' 't2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test064useSiblingBlocksNestedTemps
	| ast block1 block2 block3 b2t1 b3t2 |
	ast := self compile: 'foo [| t1 t2 | [t1]. [t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block1 children second.
	b2t1 := block2 statements first binding.
	b3t2 := block3 statements first binding.
	self
		checkClosureEnvTemps: #('t1' 't2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b3t2
			isEnvTemp: 't2'
			at: 1
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test065useNestedBlockAndMethodTemps
	| ast block1 block2 b2t1 b2t2 |
	ast := self compile: 'foo | t1 | [| t2 | [t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkEnvTemps: #('t1') in: ast scope at: nil;
		checkClosureEnvTemps: #('t2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 2
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test070useDoublyNestedMethodArgs
	| ast block1 block2 b1a1 b1a2 b2a1 b2a2 |
	ast := self compile: 'foo: a1 bar: a2  [[a1. a2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b1a2 isEnvArg: 'a2' at: 2;
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b2a2 isEnvArg: 'a2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test071useDoublyNestedMethodTemps
	| ast block1 block2 b1t1 b1t2 b2t1 b2t2 |
	ast := self compile: 'foo | t1 t2 | [[t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1t1 := block1 scope resolve: 't1'.
	b1t2 := block1 scope resolve: 't2'.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b1t2
			isEnvTemp: 't2'
			at: 1
			index: 2;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test075useDoublyNestedMethodArgsWithTemps
	| ast block1 block2 b1a1 b1a2 b1t1 b1t2 b2a1 b2a2 b2t1 b2t2 |
	ast := self
		compile: 'foo: a1 bar: a2 | t1 | [| t2 | [a1. a2. t1. t2]]'
		in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b1t1 := block1 scope resolve: 't1'.
	b1t2 := block1 scope resolve: 't2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	b2t1 := block2 statements third binding.
	b2t2 := block2 statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: b1a1 isEnvArg: 'a1' at: 2;
		assert: b1a2 isEnvArg: 'a2' at: 3;
		assert: b1t2
			isEnvTemp: 't2'
			at: nil
			index: 4;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 2
			index: 4;
		assert: b2a1 isEnvArg: 'a1' at: 3;
		assert: b2a2 isEnvArg: 'a2' at: 4
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test080captureSelf
	| ast block receiver |
	ast := self compile: 'foo [self]' in: Object.
	block := ast children first.
	receiver := block statements first binding.
	self
		assert: receiver isSelf;
		assert: ast environmentSize = 0;
		assert: block scope capturesSelf;
		assert: block environmentSize equals: 1;
		assert: block scope home == nil
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test090useNonLocalReturn
	| ast block |
	ast := self compile: 'foo [^1]' in: Object.
	block := ast children first.
	self
		assert: ast environmentSize = 0;
		assert: ast needsEnvironment;
		assert: block environmentSize = 1;
		assert: block scope home == ast
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test091nonLocalReturnSelf
	| ast block |
	ast := self compile: 'foo [^self]' in: Object.
	block := ast children first.
	self
		assert: ast environmentSize = 0;
		assert: ast needsEnvironment;
		assert: block environmentSize = 2;
		assert: block scope home == ast
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test100inlineUseMethodArgs
	| ast block a1 a2 |
	ast := self compile: 'foo: a1 bar: a2  1 ifTrue: [a1. a2]' in: Point.
	block := ast children first.
	a1 := block statements first binding.
	a2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test101inlineUseMethodTemps
	| ast t1 t2 block |
	ast := self compile: 'foo | t1 t2 | 1 ifTrue: [t1. t2]' in: Point.
	block := ast children first.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1' 't2') in: ast scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test102inlineUseMethodArgsAndTemps
	| ast block a1 a2 t1 t2 |
	ast := self
		compile: 'foo: a1 bar: a2  | t1 t2 | 1 ifTrue: [a1. a2. t1. t2]'
		in: Point.
	block := ast children first.
	a1 := block statements first binding.
	a2 := block statements second binding.
	t1 := block statements third binding.
	t2 := block statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test110inlineUseMixedMethodTemps
	| ast t1 t2 block |
	ast := self compile: 'foo | t1 | 1 ifTrue: [ | t2 | t1. t2]' in: Point.
	block := ast children first.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1') in: ast scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test120inlineEnvironmentTemp
	| ast block1 block2 mt1 mt2 b1t1 b1t2 b2t2 |
	ast := self
		compile: 'foo | t1 | 1 ifTrue: [ | t2 | t1. [t2]]'
		in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	mt1 := ast scope resolve: 't1'.
	mt2 := ast scope resolve: 't2'.
	b1t1 := block1 statements first binding.
	b1t2 := block1 scope resolve: 't2'.
	b2t2 := block2 scope resolve: 't2'.
	self
		checkTemps: #('t1') in: ast scope;
		assert: mt2 isDynamic;
		assert: mt1 isStackTemp: 't1' at: 1;
		assert: b1t1 isStackTemp: 't1' at: 1;
		assert: b1t2
			isEnvTemp: 't2'
			at: nil
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 1;
		assert: ast scope environmentSize = 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test130inlineBlockArg
	| ast block a1 |
	ast := self compile: 'foo  1 ifNotNil: [:a1 | 1 ]' in: Point.
	block := ast children first.
	a1 := block scope resolve: 'a1'.
	self assert: a1 isStackInlineArg: 'a1' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test131inlineBlockArgWithTemp
	| ast block t1 a1 |
	ast := self compile: 'foo | t1 | 1 ifNotNil: [:a1 | 1 ]' in: Point.
	block := ast children first.
	t1 := ast scope resolve: 't1'.
	a1 := block scope resolve: 'a1'.
	self
		assert: t1 isStackTemp: 't1' at: 1;
		assert: a1 isStackInlineArg: 'a1' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test132inlineBlockArgWithTemps
	| ast block t1 a1 t2 |
	ast := self compile: 'foo | t1 | 1 ifNotNil: [:a1 | | t2 | 1 ]' in: Point.
	block := ast children first.
	t1 := ast scope resolve: 't1'.
	a1 := block scope resolve: 'a1'.
	t2 := block scope resolve: 't2'.
	self
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2;
		assert: a1 isStackInlineArg: 'a1' at: 3
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test133inlineBlockArgWithEnvTemps
	| ast block1 mt1 b1a1 b1t2 |
	ast := self
		compile: 'foo | t1 | 1 ifNotNil: [:a1 | | t2 | 1. [t2] ]'
		in: Point.
	block1 := ast children first.
	mt1 := ast scope resolve: 't1'.
	b1a1 := block1 scope resolve: 'a1'.
	b1t2 := block1 scope resolve: 't2'.
	self
		assert: mt1 isStackTemp: 't1' at: 1;
		assert: b1t2 isEnvTemp: 't2' at: nil index: 1;
		assert: b1a1 isStackInlineArg: 'a1' at: 2
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test134inlineBlockArgNestedAccess
	| ast block1 block2 b1a1 b2a1 |
	ast := self compile: 'foo  1 ifNotNil: [:a1 | [a1] ]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b2a1 := block2 scope resolve: 'a1'.
	self
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b2a1 isEnvArg: 'a1' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test135inlineBlockWithArgInRealBlockCaptured
	| ast block1 block2 block3 b2a1 b3a1 |
	"Args of inlined blocks can go to the stack of the real block, unless captured. Because the
	 capture bytecode doesn't have a slot type for 'copy from stack temps' (it has capture from
	 stack in 	 args zone, capture the current env, and capture a value in the current env)"
	ast := self compile: 'foo  [1 ifNotNil: [:a1 | [a1] ]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b2a1 := block2 scope resolve: 'a1'.
	b3a1 := block3 scope resolve: 'a1'.
	self
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b3a1 isEnvArg: 'a1' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test136inlineBlockWithArgCapturedByInlinedBlock
	| ast block1 block2 b1a1 b2a1 |
	ast := self compile: 'foo 1 ifNotNil: [:a1 | a1. 2 ifTrue: [a1]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b2a1 := block2 scope resolve: 'a1'.
	self
		assert: b1a1 isStackInlineArg: 'a1' at: 1;
		assert: b2a1 isStackInlineArg: 'a1' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test137inlineBlockWithArgCapturedByInlinedBlockInRealBlock
	| ast block1 block2 block3 b1a1 b3a1 |
	ast := self
		compile: 'foo 1 ifNotNil: [:a1 | [2 ifTrue: [a1]]]'
		in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b3a1 := block3 scope resolve: 'a1'.
	self
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b3a1 isEnvArg: 'a1' at: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test138blockWithInlinedBlockWithTempCaptured
	| ast block1 block2 block3 b2t1 b3t1 block |
	ast := self compile: 'foo [true ifTrue: [| t1 | [t1]]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b2t1 := block2 scope resolve: 't1'.
	b3t1 := block3 scope resolve: 't1'.
	self
		assert: b2t1
			isEnvTemp: 't1'
			at: nil
			index: 1;
		assert: b3t1
			isEnvTemp: 't1'
			at: 1
			index: 1
! !

!ScriptScopeTest methodsFor: 'private' stamp: 'KenD 3/1/2024 09:51:00'!
test140blockWithInlinedBlockHasEnv
	| ast |
	ast := self compile: 'foo [true ifTrue: [^self]]'.
	self assert: ast needsEnvironment
! !

!SmalltalkParserTest methodsFor: 'setup' stamp: 'KenD 3/1/2024 09:50:42'!
setUp
	super setUp.
	parser := SCompiler new smalltalkParser
! !

!SmalltalkParserTest methodsFor: 'other' stamp: 'KenD 3/1/2024 09:50:42'!
testAllNodesDo
	| source nodes |
	source := 'rcvr msg1; msg2'.
	parser on: source.
	parser step.
	nodes := OrderedCollection new.
	parser expression allNodesDo: [:n | nodes add: n].
	self assert: nodes size = 4
! !

!SmalltalkParserTest methodsFor: 'assignments' stamp: 'KenD 3/1/2024 09:50:42'!
testAssignment
	| assignment |
	parser on: 'a := nil + 4'.
	parser step.
	assignment := parser expression.
	self
		assert: assignment isAssign;
		assert: assignment assignees size = 1;
		assert: assignment assignees anyOne source = 'a';
		assert: assignment expression source = 'nil + 4'
! !

!SmalltalkParserTest methodsFor: 'assignments' stamp: 'KenD 3/1/2024 09:50:42'!
testAssignment2
	| assignment |
	parser on: 'a := b := nil + 4'.
	parser step.
	assignment := parser expression.
	self
		assert: assignment isAssign;
		assert: assignment assignees size = 2;
		assert: assignment assignees first name = 'b';
		assert: assignment assignees second name = 'a'
! !

!SmalltalkParserTest methodsFor: 'assignments' stamp: 'KenD 3/1/2024 09:50:42'!
testAssignment3
	| node |
	node := parser parseExpression: 'a : = 1'.
	self
		assert: node statements anyOne isAssign.
	node := parser parseExpression: 'a :	= 1'.
	self
		assert: node statements anyOne isAssign
! !

!SmalltalkParserTest methodsFor: 'assignments' stamp: 'KenD 3/1/2024 09:50:42'!
testUnderscoreAssignment
	| assignment |
	parser on: 'a _ 3 + 4'.
	parser step.
	assignment := parser expression.
	self assert: assignment isAssign
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testBinaryColon
	| statements binary |
	parser on: '3:4'.
	parser step.
	statements := parser statements.
	self assert: statements size = 1.
	binary := statements anyOne.
	self
		assert: binary receiver source = '3';
		assert: binary symbol = #':';
		assert: binary arguments anyOne source = '4'
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testBinaryColon2
	| m |
	m := parser parse: ': b ^self / b'.
	self assert: m selector = #':'.
	self assert: m arguments anyOne source = 'b'
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testBinaryPower
	| statements binary |
	parser on: '2^3'.
	parser step.
	statements := parser statements.
	self assert: statements size = 1.
	binary := statements anyOne.
	self
		assert: binary receiver source = '2';
		assert: binary symbol = #'^';
		assert: binary arguments anyOne source = '3'
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testBinaryPower2
	| m |
	m := parser parse: '^ n ^self raisedTo: n'.
	self assert: m selector = #'^'.
	self assert: m arguments anyOne source = 'n'
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testCascade
	| cascade statements |
	parser on: 'r m1; m2'.
	parser step.
	statements := parser statements.
	self assert: statements size = 1.
	cascade := statements anyOne.
	self
		assert: cascade receiver source = 'r';
		assert: cascade messages size = 2;
		assert: cascade messages first source = 'r m1';
		assert: cascade messages first selector source = 'm1';
		assert: cascade messages second selector source = 'm2'
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testCascade2
	| cascade statements |
	parser on: 'r m: 1; + 2'.
	parser step.
	statements := parser statements.
	self assert: statements size = 1.
	cascade := statements anyOne.
	self
		assert: cascade receiver source = 'r';
		assert: cascade messages size = 2;
		assert: cascade messages first selector keywords size = 1;
		assert: cascade messages first arguments anyOne value = 1;
		assert: cascade messages second selector isBinary;
		assert: cascade messages second arguments anyOne value = 2
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 09:50:42'!
testMissingPrimary
	| source |
	source := 'pendingReservesAtTime: time well: index
	i0 := startings at: index.
	ti := self timeAt: i0.
	dt := time - ti.
	c := single primaryCurve.
	^c reserves - (cumAtTime: dt)'.
	self should: [parser parse: source] raise: Error
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/4/2024 12:03:42'!
testSelector
	| source ast |
	source := 'k1: arg1 k2: arg2'.
	ast := parser parse: source.
	self
		assert: ast selectorNode positions first
			= (source findString: 'k1:');
		assert: ast selectorNode positions second
			= (source findString: 'k2:');
		assert: ast selector == #k1:k2:
! !

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/4/2024 12:03:59'!
testUnarySelector
	| source ast |
	source := 'm a notNil'.
	ast := parser parse: source.
	self
		assert: (ast nodeWithLiteral: #notNil) positions first
			= (source findString: 'notNil')
! !

!SmalltalkParserTest methodsFor: 'method headers' stamp: 'KenD 3/1/2024 09:50:42'!
testBinaryHeader
	| method selector |
	parser on: '+++ x'.
	parser step.
	method := parser binarySignature.
	self
		assert: method notNil;
		assert: method class == SMethodNode;
		assert: method selector keywords size = 1;
		assert: method selector value == #'+++';
		assert: method arguments size = 1.
	parser on: 'a'.
	parser step.
	selector := parser binarySignature.
	self assert: selector isNil.
	parser on: 'a: x'.
	parser step.
	selector := parser binarySignature.
	self assert: selector isNil
! !

!SmalltalkParserTest methodsFor: 'method headers' stamp: 'KenD 3/1/2024 09:50:42'!
testKeywordHeader
	| method selector |
	parser on: 'x: x y: y z: z'.
	parser step.
	method := parser keywordSignature.
	self
		assert: method notNil;
		assert: method class == SMethodNode;
		assert: method selector keywords size = 3;
		assert: method selector value == #x:y:z:;
		assert: method arguments size = 3.
	parser on: 'a'.
	parser step.
	selector := parser keywordSignature.
	self assert: selector isNil.
	parser on: '+ x'.
	parser step.
	selector := parser keywordSignature.
	self assert: selector isNil
! !

!SmalltalkParserTest methodsFor: 'method headers' stamp: 'KenD 3/1/2024 09:50:42'!
testKeywordHeader2
	| method |
	parser on: 'x: xx y: yy z: zz'.
	parser step.
	method := parser methodSignature.
	self
		assert: method class == SMethodNode;
		assert: method header = 'x: xx y: yy z: zz'.
	parser on: 'x'.
	parser step.
	method := parser methodSignature.
	self assert: method header = 'x'.
	parser on: '+= arg value := value + arg'.
	parser step.
	method := parser methodSignature.
	self assert: method header = '+= arg'
! !

!SmalltalkParserTest methodsFor: 'method headers' stamp: 'KenD 3/1/2024 09:50:42'!
testUnaryHeader
	| selector |
	parser on: 'a'.
	parser step.
	self assert: parser token isNameToken.
	selector := parser unarySelector.
	self
		assert: selector notNil;
		assert: selector class == SSelectorNode;
		assert: selector keywords size = 1;
		assert: selector value == #a.
	parser on: 'a: x'.
	parser step.
	self deny: parser token isNameToken.
	parser on: '+ x'.
	parser step.
	self deny: parser token isNameToken
! !

!SmalltalkParserTest methodsFor: 'blocks' stamp: 'KenD 3/1/2024 09:50:42'!
testBlock
	| block |
	parser on: '[]'.
	parser compiler activeScript: parser compiler methodNode.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[]'.
	parser on: '[x]'.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[x]';
		assert: block temporaries isEmpty;
		assert: block arguments isEmpty;
		assert: block statements size = 1;
		assert: block statements anyOne isIdentifier
! !

!SmalltalkParserTest methodsFor: 'blocks' stamp: 'KenD 3/1/2024 09:50:42'!
testBlock2
	| block |
	parser on: '[:i | i]'.
	parser compiler activeScript: parser compiler methodNode.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[:i | i]';
		assert: block arguments size = 1.
	parser on: '[:i :j |]'.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[:i :j |]';
		assert: block temporaries isEmpty;
		assert: block arguments size = 2;
		assert: block statements isEmpty;
		assert: block arguments first isIdentifier;
		assert: block arguments second isIdentifier
! !

!SmalltalkParserTest methodsFor: 'blocks' stamp: 'KenD 3/1/2024 09:50:42'!
testBlock3
	| block |
	parser on: '[:i | | a b | a + b]'.
	parser compiler activeScript: parser compiler methodNode.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[:i | | a b | a + b]';
		assert: block arguments size = 1;
		assert: block temporaries size = 2.
	parser on: '[:i ||a b|a|b]'.
	parser step.
	block := parser primary.
	self
		assert: block isBlockNode;
		assert: block source = '[:i ||a b|a|b]';
		assert: block temporaries size = 2;
		assert: block arguments size = 1;
		assert: block statements size = 1;
		assert: block statements anyOne selector value = #'|'
! !

!SmalltalkParserTest methodsFor: 'blocks' stamp: 'KenD 3/1/2024 09:50:42'!
testParseFragment
	| source ast |
	source := 'm
	self do: [:x | Object'.
	ast := parser compiler parseFragment: source.
	self
		assert: ast selector == #m;
		assert: ast statements isEmpty
! !

!SmalltalkParserTest methodsFor: 'braces' stamp: 'KenD 3/1/2024 09:50:42'!
testBraceNode
	| ast brace sum |
	ast := parser parseExpression: '{1. 3 + 4}'.
	brace := ast statements anyOne.
	sum := parser parseExpression: '3 + 4'.
	self
		assert: brace elements size = 2;
		assert: brace elements first value = 1;
		assert: brace elements second class = sum statements anyOne class;
		assert: brace elements second arguments anyOne value = 4
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testByteArray
	| node |
	node := parser parseExpression: '#[16rFE]'.
	self assert: node statements anyOne source = '#[16rFE]'.
	node := parser parse: 'b #[16rFE]'.
	self assert: node statements anyOne source = '#[16rFE]'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testByteArray2
	| array |
	parser on: '#[16rFE]'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = #[16rFE];
		assert: array source = '#[16rFE]'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testByteArray3
	| array |
	parser on: '#[16rFE 2]'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = #[16rFE 2];
		assert: array source = '#[16rFE 2]'.
	parser on: '#[16rFE 256 2]'.
	parser step.
	self should: [array := parser primary] raise: Exception
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testDashStartingSymbol1
	| array |
	parser on: '#(#++)'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = (Array with: #'++').
	parser on: '#(#-- )'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = (Array with: #'--')
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testDashStartingSymbol2
	| symbol |
	parser on: '#++'.
	parser step.
	symbol := parser primary.
	self
		assert: symbol isLiteral;
		assert: symbol value = #'++'.
	parser on: '#--'.
	parser step.
	symbol := parser primary.
	self
		assert: symbol isLiteral;
		assert: symbol value = #'--'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testExpression
	| expression |
	parser on: '(x)'; step.
	expression := parser primary.
	self
		assert: expression isIdentifier;
		assert: expression source = 'x'.
	parser on: '(x + 1)'; step.
	expression := parser primary.
	self
		assert: expression class == SMessageNode;
		assert: expression selector isBinary;
		assert: expression source = '(x + 1)'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testFloat
	| source node |
	source := '3.14159265358979323846'.
	node := parser parseExpression: source.
	self assert: node statements anyOne source = source.
	node := parser parse: 'm ' , source.
	self assert: node statements anyOne source = source
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testLiteralArray
	| array |
	parser on: '#(16rFE)'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = #(16rFE);
		assert: array source = '#(16rFE)'.
	parser on: '#(16rFE $a ''hello'' #s #(1 2))'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = #(16rFE $a 'hello' #s #(1 2));
		assert: array source = '#(16rFE $a ''hello'' #s #(1 2))'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testLiteralArray2
	| array |
	parser on: '#(a:b:)'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = #(#a:b:);
		assert: array source = '#(a:b:)'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testLiteralKeywordArray
	| ast literal |
	ast := parser parseExpression: '#(a:b: c: d:)'.
	literal := ast statements anyOne value.
	self
		assert: literal isArray;
		assert: literal size = 3;
		assert: literal first == #a:b:;
		assert: literal second == #c:;
		assert: literal third == #d:
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testNegativeElementInArray
	| array |
	parser on: '#(-21)'.
	parser step.
	array := parser primary.
	self assert: array isLiteral.
	parser on: '#(-21 1 -5 4)'.
	parser step.
	array := parser primary.
	self
		assert: array isLiteral;
		assert: array value = (Array
			with: -21
			with: 1
			with: -5
			with: 4)
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testNegativeNumber
	| number |
	parser on: '-3'.
	parser step.
	number := parser primary.
	self
		assert: number isLiteral;
		assert: number value = -3;
		assert: number source = '-3'.
	parser on: '-3.14'.
	parser step.
	number := parser primary.
	self
		assert: number isLiteral;
		assert: number value = -3.14;
		assert: number source = '-3.14'.
	parser on: '-3.14e-10'.
	parser step.
	number := parser primary.
	self
		assert: number isLiteral;
		assert: number value = -0.000000000314;
		assert: number source = '-3.14e-10'
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testNotAFloat
	| method |
	method := parser parseExpression: '0.a'.
	self
		assert: method statements size = 2;
		assert: method statements first value = 0
! !

!SmalltalkParserTest methodsFor: 'literals' stamp: 'KenD 3/1/2024 09:50:42'!
testScientificNotation
	| method |
	method := parser parseExpression: '
	0.1e-2.
	0.1E2'.
	self
		assert: method statements size = 2;
		assert: method statements first value = 0.001;
		assert: method statements second value = 10
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment1
	| node |
	node := parser parse: 'unary
	"comment"
	^true'.
	self assert: node selectorNode comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment10
	| node |
	node := parser parse: 'unary
	1 "comment1".
	[2. "comment3" 3]'.
	self
		assert: node statements first comment value = 'comment1';
		assert: node statements second statements second comment value = 'comment3'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment11
	| node |
	node := parser parse: 'unary
	1. "comment"'.
	self assert: node comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment12
	| node |
	node := parser parse: 'unary
	[1. "comment"]'.
	self assert: node statements anyOne comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment2
	| node |
	node := parser parse: '+ binary
	"comment"
	^true'.
	self assert: node selectorNode comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment3
	| node |
	node := parser parse: 'keyword: arg
	"comment"
	^true'.
	self assert: node selectorNode comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment4
	| node |
	node := parser parse: 'unary
	^true "comment"'.
	self
		assert: node statements anyOne expression comment value = 'comment';
		deny: node comment value = 'comment';
		assert: node comment isNil
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment5
	| node |
	node := parser parse: '+ binary
	^true "comment"'.
	self assert: node statements anyOne expression comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment6
	| node |
	node := parser parse: 'keyword: arg
	^true "comment"'.
	self assert: node statements anyOne expression comment value = 'comment'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment7
	| node |
	node := parser parse: 'unary
	1 "comment1".
	2 "comment2"'.
	self
		assert: node statements first comment value = 'comment1';
		assert: node statements second comment value = 'comment2'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment8
	| node |
	node := parser parse: 'unary
	1 "comment1".
	^2 "comment2"'.
	self
		assert: node statements first comment value = 'comment1';
		assert: node statements second expression comment value = 'comment2'
! !

!SmalltalkParserTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:42'!
testComment9
	| node |
	node := parser parse: 'unary
	1. "comment2" 2'.
	self assert: node statements second comment value = 'comment2'
! !

!SmalltalkParserTest methodsFor: 'embedded dot' stamp: 'KenD 3/1/2024 09:50:42'!
testEmbeddedDots
	| node |
	node := parser parse: 'm
	A.B.C name.
	self m: A.B.C.
	^true'.
	self
		assert: node statements first receiver name = 'A.B.C';
		assert: node statements second arguments anyOne name = 'A.B.C'
! !

!SmalltalkParserTest methodsFor: 'embedded dot' stamp: 'KenD 3/1/2024 09:50:42'!
testEmbeddedDots2
	self
		should: [parser parse: '
	m
		#(1 2 3) do: [:funny.arg | funny.arg + 1]']
		raise: SCompilationError.
	self
		should: [parser
			parse: '
	m
		| funny.local |
		funny.local := 1.
		^funny.local']
		raise: SCompilationError.
	self
		should: [parser
			parse: '
	m
		#(1 2 3) do: [:e |  | funny.local | funny.local := e]']
		raise: SCompilationError
! !

!SmalltalkParserTest methodsFor: 'embedded dot' stamp: 'KenD 3/1/2024 09:50:42'!
testPeekForIdentifier
	| strm |
	strm := 'abc.de' readStream.
	self
		assert: (SCompiler new peekForIdentifier: strm);
		assert: strm position = 1.
	strm position: 3.
	self assert: (SCompiler new peekForIdentifier: strm).
	strm := 'a2.c' readStream.
	strm position: 2.
	self deny: (SCompiler new peekForIdentifier: strm)
! !

!SmalltalkParserTest methodsFor: 'temporaries' stamp: 'KenD 3/1/2024 09:50:42'!
testParseTemporaries
	| temporaries |
	temporaries := SCompiler new smalltalkParser
		parseTemporaries:
			'm: arg
	| t1 t2 t3 |
	^:= will not even parse'.
	self assert: (temporaries collect: #name) asArray = #('t1' 't2' 't3')
! !

!SmalltalkParserTest methodsFor: 'temporaries' stamp: 'KenD 3/1/2024 09:50:42'!
testTemporaries
	| temporaries |
	parser on: '||'.
	parser step.
	self assert: parser temporaries isEmpty.
	parser on: '| |'.
	parser step.
	self assert: parser temporaries isEmpty.
	parser on: '| a b c |'.
	parser step.
	temporaries := parser temporaries.
	self
		assert: temporaries size = 3;
		assert: temporaries first isIdentifier;
		assert: temporaries first name = 'a';
		assert: temporaries second isIdentifier;
		assert: temporaries second name = 'b';
		assert: temporaries third isIdentifier;
		assert: temporaries third name = 'c'
! !

!SmalltalkParserTest methodsFor: 'temporaries' stamp: 'KenD 3/1/2024 09:50:42'!
testTemporaryDeclarations
	| temporaries |
	parser on: '| | | a b |'.
	parser step.
	temporaries := parser temporaries.
	self assert: temporaries size = 0.
	parser on: '|| | a b |'.
	parser step.
	temporaries := parser temporaries.
	self assert: temporaries size = 0.
	parser on: 'a || b'.
	parser step.
	self assert: parser token value = 'a'.
	parser step.
	self assert: parser token value = #'||'.
	parser step.
	self assert: parser token value = 'b'
! !

!SmalltalkParserTest methodsFor: 'unicode' stamp: 'KenD 3/4/2024 12:04:20'!
testUnicode
	| source ast |
	source := 8855 asCharacter asString , ' aFreeTensor'.
	ast := parser parse: source.
	self
		assert: ast selectorNode position
			= (source findString: 8855 asCharacter asString);
		assert: ast selector == 8855 asCharacter asString asSymbol
! !

!SmalltalkScannerTest methodsFor: 'setup' stamp: 'KenD 3/1/2024 09:50:26'!
setUp
	super setUp.
	scanner := SCompiler new smalltalkScanner
! !

!SmalltalkScannerTest methodsFor: 'numbers' stamp: 'KenD 3/1/2024 09:50:26'!
test0xNotation
	| node |
	node := SCompiler new smalltalkParser parseExpression: '0x10'.
	self assert: node statements first value = 16.
	node := SCompiler new smalltalkParser parseExpression: '0X10'.
	self assert: node statements first value = 16
! !

!SmalltalkScannerTest methodsFor: 'numbers' stamp: 'KenD 3/1/2024 09:50:26'!
testFloat
	| node |
	scanner on: '0.1'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 0.1;
		assert: node source = '0.1'.
	scanner on: '0.1e-35'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 0.1e-35;
		assert: node source = '0.1e-35'
! !

!SmalltalkScannerTest methodsFor: 'numbers' stamp: 'KenD 3/1/2024 09:50:26'!
testInteger
	| node |
	scanner on: '0 12 -35'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 0;
		assert: node source = '0'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 12;
		assert: node source = '12'.
	node := scanner next.
	self
		deny: node isNumberNode;
		assert: (node is: #'-');
		assert: node source = '-'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 35;
		assert: node source = '35'
! !

!SmalltalkScannerTest methodsFor: 'numbers' stamp: 'KenD 3/1/2024 09:50:26'!
testIntegerRadix
	| node |
	scanner on: '16rFA2'.
	node := scanner next.
	self
		assert: node isNumberNode;
		assert: node value = 16rFA2;
		assert: node source = '16rFA2'
! !

!SmalltalkScannerTest methodsFor: 'arrays' stamp: 'KenD 3/1/2024 09:50:26'!
testArrayStart
	| node |
	scanner on: '#()'.
	node := scanner next.
	self
		assert: (node is: #'#(');
		assert: node source = '#('.
	scanner on: '#['.
	node := scanner next.
	self
		assert: (node is: #'#[');
		assert: node source = '#['.
	scanner on: '#''hello'''.
	node := scanner next.
	self
		assert: node value = #hello;
		assert: node source = '#''hello'''
! !

!SmalltalkScannerTest methodsFor: 'strings' stamp: 'KenD 3/1/2024 09:50:26'!
testBinary
	| node |
	scanner on: '-
		--
		---
		==>
		~!!|\/%&*+=><'.
	node := scanner next.
	self
		assert: node isBinary;
		assert: node value = #'-';
		assert: node source = '-'.
	node := scanner next.
	self
		assert: node isBinary;
		assert: node value = #'--';
		assert: node source = '--'.
	node := scanner next.
	self
		assert: node isBinary;
		assert: node value = #'---';
		assert: node source = '---'.
	node := scanner next.
	self
		assert: node isBinary;
		assert: node value = #'==>';
		assert: node source = '==>'.
	node := scanner next.
	self
		assert: node isBinary;
		assert: node value = #'~!!|\/%&*+=><';
		assert: node source = '~!!|\/%&*+=><'
! !

!SmalltalkScannerTest methodsFor: 'strings' stamp: 'KenD 3/1/2024 09:50:26'!
testCharacter
	| node |
	scanner on: '$a$b'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = $a;
		assert: node source = '$a'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = $b;
		assert: node source = '$b'
! !

!SmalltalkScannerTest methodsFor: 'strings' stamp: 'KenD 3/1/2024 09:50:26'!
testEmpty
	scanner on: ''.
	self assert: scanner next isEnd
! !

!SmalltalkScannerTest methodsFor: 'strings' stamp: 'KenD 3/1/2024 09:50:26'!
testString
	| node quote |
	scanner on: '' storeString.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = '';
		assert: node source = (String with: $' with: $').
	scanner on: 'Hello World!!' storeString.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = 'Hello World!!';
		assert: node source = 'Hello World!!' storeString.
	quote := String with: $'.
	scanner on: quote storeString.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = quote;
		assert: node source = quote storeString
! !

!SmalltalkScannerTest methodsFor: 'symbols' stamp: 'KenD 3/1/2024 09:50:26'!
testBinarySymbol
	| node |
	scanner on: '#='.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node hasSymbol;
		assert: node value = #'='
! !

!SmalltalkScannerTest methodsFor: 'symbols' stamp: 'KenD 3/1/2024 09:50:26'!
testDashStartingSymbol
	| node |
	scanner on: '#++'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'++';
		assert: node source = '#++'.
	scanner on: '#//'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'//';
		assert: node source = '#//'.
	scanner on: '#--'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'--';
		assert: node source = '#--'.
	scanner on: '#+-'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'+-';
		assert: node source = '#+-'
! !

!SmalltalkScannerTest methodsFor: 'symbols' stamp: 'KenD 3/1/2024 09:50:26'!
testNumericSymbol
	scanner on: '#35'.
	self assert: scanner next value = '35' asSymbol
! !

!SmalltalkScannerTest methodsFor: 'symbols' stamp: 'KenD 3/1/2024 09:50:26'!
testSymbol
	| node |
	scanner on: '#-'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'-';
		assert: node source = '#-'.
	scanner on: '#a:'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #a:;
		assert: node source = '#a:'.
	scanner on: '#-!!'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #'-!!';
		assert: node source = '#-!!'.
	scanner on: '#a:b:'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #a:b:;
		assert: node source = '#a:b:'.
	scanner on: '#a:b'.
	node := scanner next.
	self
		assert: node isLiteral;
		assert: node value = #a:;
		assert: node source = '#a:'.
	node := scanner next.
	self assert: node value = 'b'; assert: node source = 'b'
! !

!SmalltalkScannerTest methodsFor: 'colons' stamp: 'KenD 3/1/2024 09:50:26'!
testColon
	| node |
	scanner on: ':a'.
	node := scanner next.
	self
		assert: (node is: $:);
		assert: node source = ':'.
	node := scanner next.
	self
		assert: node value = 'a';
		assert: node source = 'a'.
	scanner on: ':='.
	node := scanner next.
	self
		assert: node isAssignment;
		assert: node source = ':='
! !

!SmalltalkScannerTest methodsFor: 'colons' stamp: 'KenD 3/1/2024 09:50:26'!
testColon2
	| node |
	scanner on: '::'.
	node := scanner next.
	self
		assert: node class = SStringToken;
		assert: node source = '::'
! !

!SmalltalkScannerTest methodsFor: 'comments' stamp: 'KenD 3/1/2024 09:50:26'!
testComment
	| node |
	scanner on: '"comment"a'.
	node := scanner next.
	self
		assert: node isComment;
		assert: node value = 'comment';
		assert: node source = '"comment"'.
	scanner on: '"comment"'.
	node := scanner next.
	self
		assert: node isComment;
		assert: node source = '"comment"';
		assert: node position = 1.
	scanner on: 'a"comment"'.
	node := scanner next.
	self
		assert: node isNameToken;
		assert: node value = 'a';
		assert: node source = 'a'.
	node := scanner next.
	self
		assert: node isComment;
		assert: node position = ('a' size + 1)
! !

!SmalltalkScannerTest methodsFor: 'identifiers' stamp: 'KenD 3/1/2024 09:50:26'!
testIdentifier
	| node |
	scanner on: 'a'.
	node := scanner next.
	self
		assert: node isNameToken;
		assert: node value = 'a';
		assert: node source = 'a'.
	scanner on: ' a1'.
	node := scanner next.
	self
		assert: node isNameToken;
		assert: node value = 'a1';
		assert: node source = 'a1'.
	scanner on: '_a'.
	node := scanner next.
	self
		assert: node isNameToken;
		assert: node value = '_a';
		assert: node source = '_a'.
	scanner on: 'a_1b'.
	node := scanner next.
	self
		assert: node isNameToken;
		assert: node value = 'a_1b';
		assert: node source = 'a_1b'
! !

!SmalltalkScannerTest methodsFor: 'identifiers' stamp: 'KenD 3/1/2024 09:50:26'!
testKeyword
	| node node2 |
	scanner on: 'a:'.
	node := scanner next.
	self
		assert: node isKeyword;
		assert: node value = 'a:';
		assert: node source = 'a:'.
	scanner on: 'ab:cd:'.
	node := scanner next.
	node2 := scanner next.
	self
		assert: node isKeyword;
		assert: node value = 'ab:';
		assert: node source = 'ab:';
		assert: node2 isKeyword;
		assert: node2 value = 'cd:';
		assert: node2 source = 'cd:'
! !

!SmalltalkScannerTest methodsFor: 'unicode' stamp: 'KenD 3/4/2024 11:58:35'!
testUnicodeScanning
	| next three tensor |
	scanner on: '3 + 4' asUnicodeString.
	self assert: scanner next value = 3.
	next := scanner next.
	self
		assert: next value == #'+';
		assert: scanner next value = 4.
	scanner on: '3' asUnicodeString , 8855 asCharacter asString , '4' asUnicodeString.
	three := scanner next.
	self assert: three value = 3.
	tensor := scanner next.
	self assert: tensor value = 8855 asCharacter asString asSymbol
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
ast
	^ast
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
ast: aParseNode
	ast := aParseNode
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
method
	^method
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:47'!
beSuccessful
	error := nil
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:47'!
error
	^error
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:47'!
error: aCompilationError
	error := aCompilationError
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:46'!
canBeInIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter isDigit] or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:46'!
canStartIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:46'!
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
	^next isLetter ifFalse: [aStream skip: -1]; yourself
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:46'!
protect: aBlock
	^aBlock value
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:46'!
classBinding
	 ^class
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:46'!
classBinding: aSpecies
	| instance |
	class := aSpecies.
	instance := aSpecies instanceSide.
	(instance respondsTo: #configureCompiler)
		ifTrue: [instance configureCompiler: self]
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:46'!
initialize: aDictionary
	class := aDictionary at: #UndefinedObject ifAbsent: nil
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
compile: aString
	result := self smalltalkCompiler compileMethod: aString.
	^result method
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
parse: aString
	result := self smalltalkCompiler parseMethod: aString.
	^result ast
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
smalltalkCompiler
	^ SSmalltalkCompiler new frontend: self
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
smalltalkParser
	^ self smalltalkCompiler parser
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
smalltalkScanner
	^ self smalltalkCompiler scanner
! !

!SCompiler methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:46'!
forClass: aClass
	| c |
	c := aClass ifNil: [UndefinedObject].
	self classBinding: c
! !

!SCompiler methodsFor: 'private' stamp: 'KenD 3/4/2024 11:29:36'!
setBogusClass
	self flag: #bogus. "for testing"
	class := #bogus! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
compile: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler compile: aString
! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:46'!
parse: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler parse: aString
! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:46'!
forClass: aClass
	^self new forClass: aClass
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
activate: aScriptNode while: aBlock
	| current |
	current := activeScript.
	activeScript := aScriptNode.
	aBlock value.
	activeScript := current
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
activeScope
	^activeScript scope
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
activeScript
	^activeScript
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
activeScript: aParseNode
	activeScript := aParseNode
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
ast
	^ast
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
frontend
	^frontend
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
frontend: aCompiler
	frontend := aCompiler
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
parser
	^SSmalltalkParser new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
result
	^result
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
scanner
	^SSmalltalkScanner new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
sourceCode
	^source
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
sourceCode: aString
	source := aString
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
assignmentNode
	^SAssignmentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
blockNode
	^SBlockNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
braceNode
	^SBraceNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
buildMethod
	result method: ast buildMethod
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
cascadeMessageNode
	^SCascadeMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
cascadeNode
	^SCascadeNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
commentNode
	^SCommentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
compileMethod: aString
	source := aString.
	frontend protect: [
		self
			parseMethod;
			resolveSemantics;
			buildMethod].
	^result
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
delimiterToken
	^SDelimiterToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
endToken
	^SEndToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
hasBlocks
	^ blocks > 0
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
hasSends
^ leaf not
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
identifierNode
	^SIdentifierNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
initialize
	self reset

! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
literalNode
	^SLiteralNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
messageNode
	^SMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
methodNode
	^SMethodNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
noticeSend
	leaf := false
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
numericLiteralNode
	^SNumberNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
pragmaNode
	^SPragmaNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
reset
	self resetResult.
	leaf := true.
	blocks := 0.
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
returnNode
	^SReturnNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
selectorNode
	^SSelectorNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/4/2024 06:55:49'!
stringToken
	^SStringToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/4/2024 06:55:49'!
blockCount
	^blocks
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/4/2024 06:55:49'!
blockIndex
	blocks := blocks + 1.
	^blocks - 1
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:49'!
compilationError: aString stretch: aStretch
	^SCompilationError new
		compiler: self;
		stretch: aStretch;
		description: aString
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:49'!
error: aString at: anInteger
	| stretch |
	stretch := anInteger thru: anInteger.
	^self error: aString stretch: stretch
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:49'!
error: aString stretch: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	^error beFatal; signal
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:49'!
warning: aString at: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	error beWarning; signal
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:49'!
parseFragment
	headless := false.
	self reset.
	ast := self parser methodFragment.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:49'!
parseFragment: aString
	source := aString.
	[self parseFragment; resolveSemantics] on: SCompilationError do: [].
	^ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:49'!
parseMethod
	headless := false.
	self reset.
	ast := self parser method.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:49'!
parseMethod: aString
	source := aString.
	frontend protect: [self parseMethod; resolveSemantics].
	^result
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:49'!
resolveSemantics
	ast acceptVisitor: SSemanticVisitor new
! !

!SSmalltalkCompiler methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:49'!
resetResult
	result := SCompilationResult new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:49'!
supportsBraceNodes
	^true
! !

!SSmalltalkCompiler class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
argumentCount
	^format bitsAt: BlockArgCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
argumentCount: anInteger
	format := format bitsAt: BlockArgCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
capturesHome
	^ format anyMask: BlockCapturesHome
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
capturesHome: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: BlockCapturesHome ]
				  ifFalse: [ format bitClear: BlockCapturesHome ]
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
capturesSelf
	^format anyMask: BlockCapturesSelf
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
capturesSelf: aBoolean
	format := aBoolean
		ifTrue: [ format bitOr: BlockCapturesSelf ]
		ifFalse: [ format bitClear: BlockCapturesSelf ]
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
environmentCount
	^ format bitsAt: BlockEnvCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
environmentCount: anInteger
	format := format bitsAt: BlockEnvCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
format
	^ format
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
id
	^format bitsAt: BlockId
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
id: anInteger
	format := format bitsAt: BlockId put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
initialize
	super initialize.
	format := 0
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
isBlock
	^true
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
method
	^method
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
newClosure
	| closure |
	closure := SClosure new: self environmentCount.
	^ closure block: self
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
optimizedCode
	^optimizedCode
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
optimizedCode: anObject
	optimizedCode := anObject
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
printOn: aStream
	aStream
		print: method classBinding;
		nextPutAll: '>>';
		print: method selector;
		nextPutAll: ' [block ';
		print: self id;
		nextPutAll: ']'

! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
tempCount
	^format bitsAt: BlockTempCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
tempCount: anInteger
	format := format bitsAt: BlockTempCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 3/4/2024 06:55:50'!
value
self halt
"	<primitive: BlockValue>
	^ self primitiveFailed" 
! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!SCompiledBlock class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:50'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:53'!
contents
	^contents
! !

!IdentifierBinder methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:53'!
keyFor: aString
	^self subclassResponsibility
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:53'!
printOn: aStream
	self printOn: aStream indent: 0
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:53'!
printOn: aStream indent: anInteger
	self subclassResponsibility
! !

!IdentifierBinder class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:53'!
new
	^super new initialize
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
at: aString
	^contents at: aString ifAbsent: nil
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
at: aString ifAbsentPut: aBlock
	^contents at: aString ifAbsentPut: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
at: aString put: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
define: aString as: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
defines: identifier
	^contents includesKey: identifier
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
do: aBlock
	contents do: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
select: aBlock
	^contents select: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
values
	^contents values
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
withIndexDo: aBlock
	contents withIndexDo: aBlock
! !

!StaticBinder methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:52'!
initialize
	super initialize.
	contents := OrderedDictionary new
! !

!StaticBinder methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:52'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPut: $<.
	contents keys
		do: [:name | name printOn: aStream]
		separatedBy: [aStream space].
	aStream nextPut: $>
! !

!StaticBinder class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:52'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visit: aParseNode
	^aParseNode notNil ifTrue: [aParseNode acceptVisitor: self] 
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitAssignment: anAssignmentNode
	^self visitParseNode: anAssignmentNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitBlock: aBlockNode
	^self visitParseNode: aBlockNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitBraceNode: aBraceNode
	^self visitParseNode: aBraceNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitCascade: aCascadeNode
	^self visitParseNode: aCascadeNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitCascadeMessage: aCascadeMessageNode
	^self visitMessage: aCascadeMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitForeignNode: anForeignNode
	self visitLiteral: anForeignNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitIdentifier: anIdentifierNode
	^self visitParseNode: anIdentifierNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitLiteral: aLiteralNode
	^self visitParseNode: aLiteralNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitMessage: aMessageNode
	^self visitParseNode: aMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitMethod: aMethodNode
	^self visitParseNode: aMethodNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitNumberNode: aNumberNode
	^self visitLiteral: aNumberNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitParseNode: aParseNode
	^self subclassResponsibility
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitPragma: aPragmaNode
	^self visitParseNode: aPragmaNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitReturn: aReturnNode
	^self visitParseNode: aReturnNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitSelector: aSelectorNode
	^self visitParseNode: aSelectorNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitString: aStringNode
	^self visitLiteral: aStringNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
visitSymbolicPragma: aPragmaNode
	^self visitPragma: aPragmaNode
! !

!SParseTreeVisitor class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:48'!
new
	^super new initialize
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeAssignment: anAssignmentNode
	anAssignmentNode assignees
		do: [:v | self analyzeIdentifier: v assignee: true]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeBlock: aBlockNode while: aBlock
	aBlockNode isInlined
		ifFalse: [aBlockNode index: aBlockNode compiler blockIndex].
	self analyzeScript: aBlockNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode assignee: false
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeIdentifier: anIdentifierNode assignee: aBoolean
	| script binding |
	anIdentifierNode resolveAssigning: aBoolean.
	aBoolean ifTrue: [anIdentifierNode beAssigned].
	script := anIdentifierNode compiler activeScript.
	binding := anIdentifierNode binding.
	script reference: binding.
	binding isLocal ifTrue: [binding := script scope captureLocal: binding].
	anIdentifierNode binding: binding
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeMessage: aMessageNode
	inliner inline: aMessageNode.
	aMessageNode isInlined ifFalse: [aMessageNode compiler noticeSend]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeMethod: aMethodNode while: aBlock
	self analyzeScript: aMethodNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeReturn: aReturnNode
	aReturnNode compiler activeScript realScript captureHome
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/4/2024 06:55:51'!
analyzeScript: aScriptNode while: aBlock
	aScriptNode compiler activate: aScriptNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
initialize
	super initialize.
	inliner := MessageInliner new
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitAssignment: anAssignmentNode
	| c |
	self analyzeAssignment: anAssignmentNode.
	anAssignmentNode expression acceptVisitor: self.
	c := anAssignmentNode compiler.

! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitBlock: aBlockNode
	self
		analyzeBlock: aBlockNode
		while: [aBlockNode statements do: [:node | node acceptVisitor: self]]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifFalse: [aBraceNode asMessageNode acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitCascade: aCascadeNode
	aCascadeNode receiver acceptVisitor: self.
	aCascadeNode messages do: [:msg | msg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitCascadeMessage: aCascadeMessageNode
	"we do not inline cascade messages for now"
	aCascadeMessageNode compiler noticeSend.
	aCascadeMessageNode receiver acceptVisitor: self.
	aCascadeMessageNode arguments do: [:arg | arg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitMessage: aMessageNode
	self analyzeMessage: aMessageNode.
	aMessageNode receiver acceptVisitor: self.
	aMessageNode arguments do: [:arg | arg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitMethod: aMethodNode
	self analyzeMethod: aMethodNode while: [
		aMethodNode bindLocals.
		aMethodNode statements do: [:s | s acceptVisitor: self].
		aMethodNode positionLocals]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitParseNode: aParseNode
	"
	do nothing
	"
	
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
visitReturn: aReturnNode
	aReturnNode expression acceptVisitor: self.
	self analyzeReturn: aReturnNode
! !

!SSemanticVisitor class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:51'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
compiledBlockIndexOf: aBlockNode
	| index |
	index := method
		findFirst: [:literal | literal isBlock
			and: [literal id == aBlockNode index]].
	^index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeArgument: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: ArgumentId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 11:46:17'!
encodeClosureElements: aBlockNode

	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^ Array streamContents: [ :s |
		  scope capturesSelf ifTrue: [ s nextPut: SelfId ].
		  scope capturedEnvironments do: [ :e |
			  | index |
			  e == parent
				  ifTrue: [ s nextPut: Environment ]
				  ifFalse: [
					  index := parent environmentIndexOf: e.
					  self assert: index notNil.
					  s
						  nextPut: EnvironmentValue;
						  nextPut: index ] ].
		  scope capturedArguments do: [ :a |
			  | binding |
			  binding := aBlockNode parent scope resolve: a name.
			  s
				  nextPut: binding environmentType;
				  nextPut: binding index ] ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeDynamicVar: name
	stream nextPut: DynamicVarId.
	self nextSymbolPut: name
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeFalse
	stream nextPut: FalseId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeLoadRvisitingReceiver
	stream nextPut: LoadRvisitingReceiverId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeNestedDynamicVar: name
	stream nextPut: NestedDynamicVarId.
	self nextLiteralPut: name 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeNil
	stream nextPut: NilId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodePopR
	stream nextPut: PopRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodePushR
	stream nextPut: PushRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeSelf
	stream nextPut: SelfId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeSuper
	stream nextPut: SuperId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeTemporary: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: TemporaryId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodeTrue
	stream nextPut: TrueId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
encodedEnvironment: aLocalEnvironment
	aLocalEnvironment isStack
		ifTrue: [ ^ aLocalEnvironment isInlinedArgument
				ifTrue: [ -1 ]
				ifFalse: [ -2 ] ].
	aLocalEnvironment isCurrent
		ifTrue: [ ^ 0 ].
	^ aLocalEnvironment index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextBigIntegerPut: anInteger
	stream
		nextPut: 16r80;
		int64: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextBooleanPut: aBoolean
	stream nextPut: aBoolean asBit

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextIntegerPut: anInteger
	| value |
	(anInteger > 127 or: [ anInteger < -127 ])
		ifTrue: [ ^ self nextBigIntegerPut: anInteger ].
	value := anInteger >= 0
		ifTrue: [ anInteger ]
		ifFalse: [ anInteger + 16r100 ].
	stream nextPut: value
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 11:47:26'!
nextLiteralPut: anObject
	| index |
	index := method
		indexOf: anObject
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextPut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextPutAll: aCollection
	stream nextPut: aCollection size; nextPutAll: aCollection
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 11:49:11'!
nextSymbolPut: aSymbol
	| index |
	index := method
		indexOf: aSymbol asSymbol
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
nextTypePut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitAssignment: anAssignmentNode
	| assignees |
	self nextTypePut: AssignmentId.
	assignees := anAssignmentNode assignees.
	self nextIntegerPut: assignees size.
	assignees do: [ :node | node acceptVisitor: self ].
	anAssignmentNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifTrue: [self visitLiteral: aBraceNode asLiteralNode]
		ifFalse: [self visitCascade: aBraceNode asMessageNode]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitCascade: aCascadeNode
	| messages |
	self nextTypePut: CascadeId.
	aCascadeNode receiver acceptVisitor: self.
	messages := aCascadeNode messages.
	self nextIntegerPut: messages size.
	messages do: [ :node | self visitCascadeMessage: node ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitCascadeMessage: aCascadeMessageNode
	| arguments |
	self nextSymbolPut: aCascadeMessageNode selector symbol.
	arguments := aCascadeMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitIdentifier: anIdentifierNode
	self nextTypePut: IdentifierId.
	anIdentifierNode binding encodeUsing: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitLiteral: aLiteralNode
	| index |
	index := method indexOf: aLiteralNode value.
	self
		nextTypePut: LiteralId;
		nextIntegerPut: index.
	index = 0
		ifTrue: [ self nextIntegerPut: aLiteralNode value ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 11:47:52'!
visitParseNode: aParseNode
	^self assert:  false
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitReturn: aReturnNode
	self
		nextTypePut: ReturnId;
		nextBooleanPut: script realScript isMethod.
	
		aReturnNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:49'!
visitScript: aScriptNode
	| prev statements |
	prev := script.
	script := aScriptNode.
	statements := aScriptNode statements.
	self nextIntegerPut: statements size.
	statements do: [ :node | node acceptVisitor: self ].
	script := prev
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
initialize
	stream := #[] writeStream
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!AstcodeEncoder class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
addBodyTo: aMethodNode
	self
		addTemporariesTo: aMethodNode;
		addPragmaTo: aMethodNode;
		addStatementsTo: aMethodNode
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
addStatementsTo: aMethodNode
	aMethodNode
		position: token position;
		addStatements: self statements;
		end: token position;
		moveCommentsFrom: token.
	token isEnd
		ifFalse: [^self unexpectedStatementError: aMethodNode statements]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
addTemporariesTo: aMethodNode
	aMethodNode temporaries: self temporaries
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^cascade messages: messages asArray; end: msg end
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^self buildMethodNode: node arguments: arguments
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
methodPragma
	self step.
	^[| method |
		method := self methodSignature.
		self addTemporariesTo: method; attachPragmaTo: method.
		method pragma]
		on: SCompilationError
		do: [:ex | ex return: compiler pragmaNode]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
methodSignature
	self keywordSignature ifNotNil: [:m | ^m].
	self binarySignature ifNotNil: [:m | ^m].
	self unarySignature ifNotNil: [:m | ^m].
	self error: 'method signature expected'
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^nil
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
		moveCommentsFrom: return
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
statement
	| expression |
	((token is: $^) or: [token is: $↑]) ifTrue: [^self return].
	expression := self expression.
	token moveCommentsTo: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
statements
	| statements |
	statements := OrderedCollection new.
	[
		token endsExpression ifTrue: [^statements].
		statements add: self statement.
		token is: $.]
		whileTrue: [self skipDots].
	^statements
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:57:35'!
step
	| save comments |
	save := token.
	self next isComment ifFalse: [^save].
	comments := OrderedCollection new.
	[
		comments add: token.
		self next isComment] whileTrue.
	token comments: comments.
	^save
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^temporaries
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
unaryMessage: aMessageNode
	| selector |
	selector := self unarySelector.
	aMessageNode
		selector: selector;
		end: selector end;
		arguments: #();
		moveCommentsFrom: selector
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
		moveCommentsFrom: token
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^node moveCommentsFrom: token
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:52'!
unarySignature
	self hasUnarySelector ifFalse: [^nil].
	^self buildMethodNode: self unarySelector arguments: #()
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
addByteTo: aCollection
	| byte |
	byte := token isLiteral ifTrue: [token value] ifFalse: [token literalValue].
	byte isInteger ifFalse: [self nonIntegerToken].
	(byte between: 0 and: 255) ifFalse: [self invalidByteValue].
	aCollection add: byte
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^assignment assign: variable with: expression operator: delimiter
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^true
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildBraceNode: elements at: position
	| node |
	node := self buildNode: compiler braceNode at: position.
	^node elements: elements
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildCascadeMessageNode: receiver
	| node |
	node := self buildNode: compiler cascadeMessageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildMessageNode: receiver
	| node |
	node := self buildNode: compiler messageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildMethodNode: selector arguments: arguments
	| node |
	node := self buildNode: compiler methodNode at: selector position.
	compiler activeScript: node.
	^node selector: selector; arguments: arguments
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildNode: aParserNode at: anInteger
	^aParserNode position: anInteger; end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
buildNode: aParseNode at: anInteger with: anObject
	| node |
	node := scanner buildToken: aParseNode at: anInteger with: anObject.
	^node end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
cascadeMessage: aMessageNode
	| msg |
	self hasUnarySelector ifTrue: [^self unaryMessage: aMessageNode].
	self hasBinarySelector ifTrue: [^self binaryMessage: aMessageNode].
	self hasKeywordSelector ifTrue: [^self keywordMessage: aMessageNode].
	msg := token value = ''
		ifTrue: ['unfinished cascade']
		ifFalse: [token value asString , ' not allowed in cascade'].
	self error: msg
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^ args
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^ compiler pragmaNode ffi: cc name: name with: descriptor
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
ffiOrPrimitive: aMethodNode
	| tag |
	tag := token value asLowercase.
	tag last = $: ifFalse: [self invalidPragma].
	tag := tag allButLast.
	token value: tag.
	tag = 'primitive' ifTrue: [^self primitive].
	tag = 'callback' ifTrue: [ ^self ffiCall: false method: aMethodNode ].
	tag = 'callout' ifTrue: [ ^self ffiCall: true method: aMethodNode ].	
	self invalidPragma
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
ffiType
	| type |
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].
	type := token value.
	type = 'struct' ifFalse: [ ^type].
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].	
	^token value
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
hasKeywordSelector
	^token isKeyword
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
hasUnarySelector
	^token isNameToken
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
invalidPragma
	| position stretch |
	position := token position.
 	stretch := position thru: position.
	^SInvalidPragmaError new stretch: stretch; signal
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
keywordArgument
	| arg |
	arg := self primary ifNil: [self missingArgument].
	arg := self unarySequence: arg.
	^self binarySequence: arg
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
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
		selector: node
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
keywordSequence: aParseNode
	| expression |
	self hasKeywordSelector ifFalse: [^aParseNode].
	expression := self buildMessageNode: aParseNode.
	self keywordMessage: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
literalKeyword
	| keyword |
	keyword := token value , scanner nextKeyword value.
	^keyword reduced asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
namedPrimitive
	| name pragma |
	token isNameToken
		ifFalse: [ self invalidPragma ].
	name := token value.
	pragma := self buildNode: compiler pragmaNode at: token position.
	^ pragma primitive: 0 name: name asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
negativeNumber
	token := nil.
	^self negativeNumberOrBinary; step
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
numberedPrimitive
	| number pragma |
	number := token value.
	number isInteger ifFalse: [self invalidPragma].
	pragma := self buildNode: compiler pragmaNode at: token position.
	^pragma primitive: number name: nil
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
primitive
	| primitive |
	self step.
	primitive := token isNumberNode
		ifTrue: [self numberedPrimitive]
		ifFalse: [self namedPrimitive].
	self step.
	^primitive
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
pseudoLiteralValue
	| value |
	token isPoolLiteral ifTrue: [^token literalValue].
	value := token value.
	value = 'nil' ifTrue: [^nil].
	value = 'true' ifTrue: [^true].
	value = 'false' ifTrue: [^false].
	^token isPoolLiteral ifTrue: [token literalValue] ifFalse: [value asSymbol]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
skipDots
	[token is: $.] whileTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:52'!
validateLocalName: aSmalltalkToken
	aSmalltalkToken isDelimitedIdentifier ifTrue: [^self].
	(aSmalltalkToken value includes: $.)
		ifTrue: [self error: 'invalid embedded dot']
! !

!SSmalltalkParser methodsFor: 'api support' stamp: 'KenD 3/4/2024 06:55:52'!
addPragmaTo: aMethodNode
	(self attachPragmaTo: aMethodNode) ifTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^self buildNode: compiler literalNode at: position with: literals asArray
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
arrayElement
	token isLiteral ifTrue: [^token value].
	token isNameToken ifTrue: [^self pseudoLiteralValue].
	token isKeyword ifTrue: [^self literalKeyword].
	(token is: #'-') ifTrue: [^self negativeNumberOrBinary].
	token hasSymbol ifTrue: [^token value].
	(token is: $() ifTrue: [^self arrayBody value].
	(token is: #'#(') ifTrue: [^self arrayBody value].
	(token is: #'#[') ifTrue: [^self byteArrayBody value].
	self invalidArrayToken
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^self buildBraceNode: elements at: position
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
bracedArray
	| array |
	array := self braceBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^node moveCommentsFrom: save
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
literalArray
	| array |
	array := self arrayBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
literalByteArray
	| node |
	node := self byteArrayBody.
	self step.
	^node
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/4/2024 06:55:52'!
negativeNumberOrBinary
	self peek isNumberNode
		ifTrue: [token := self next negate position: token position - 1].
	^token value
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/4/2024 06:55:52'!
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
		arguments: {argument}
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/4/2024 06:55:52'!
binarySequence: aParseNode
	| node rcvr |
	node := aParseNode.
	[
		rcvr := node.
		self hasBinarySelector]
		whileTrue: [
			node := self buildMessageNode: rcvr.
			self binaryMessage: node].
	^node
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/4/2024 06:55:52'!
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
	^self buildMethodNode: selector arguments: arguments
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/4/2024 06:55:52'!
hasBinarySelector
	^(token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:]
! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/4/2024 06:55:52'!
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

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/4/2024 06:55:52'!
blockArguments
	| arguments |
	(token is: $:) ifFalse: [^#()].
	arguments := OrderedCollection new.
	[
		self step.
		token isNameToken ifFalse: [self missingArgument].
		self validateLocalName: token.
		arguments add: self step asIdentifierNode.
		token is: $:] whileTrue.
	token isBar ifTrue: [self step] ifFalse: [
		(token is: #'||')
			ifTrue: [token value: #'|']
			ifFalse: [self missingToken: '|']].
	^arguments
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
compiler
	^compiler
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	scanner := compiler scanner
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
next
	token := next.
	next := nil.
	^token ifNil: [token := scanner next]
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
on: aString
	scanner on: aString
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 12:02:32'!
peek
	| comments |
	next ifNotNil: [^next].
	next := scanner next.
	next isComment ifFalse: [^next].
	comments := OrderedCollection new.
	[
		comments add: next.
		next := scanner next.
		next isComment] whileTrue.
	^next comments: comments
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
token
	^token
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
error: aString
	self error: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
error: aString at: position
	^compiler error: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
invalidArrayToken
	self error: 'invalid literal entry'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
invalidByteValue
	self error: 'value not between 0 and 255'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
missingArgument
	self error: 'argument missing'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
missingExpression
	self error: 'missing expression'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
missingLiteral
	self error: 'missing literal or named literal'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
missingToken: aString
	self error: 'missing ' , aString
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
nonIntegerToken
	self error: 'non-integer token'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
notify: aString
	compiler notify: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
notify: aString at: position
	compiler notify: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
warning: aString
	compiler warning: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:55:52'!
warning: aString at: position
	compiler warning: aString at: position
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/4/2024 06:55:52'!
headlessMethod
	| method |
	self step.
	method := compiler methodNode.
	compiler activeScript: method.
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/4/2024 06:55:52'!
method
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/4/2024 06:55:52'!
methodFragment
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	[self addBodyTo: method] on: SCompilationError do: [].
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/4/2024 06:55:52'!
methodSelector
	self step.
	^self methodSignature ifNotNil: [:m | m selectorNode]
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:52'!
parse: aString
	^self on: aString; method
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:52'!
parseExpression: aString
	^self on: aString; headlessMethod
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:52'!
parseFragment: aString
	| method |
	self on: aString; step.
	[
		method := self methodSignature.
		method notNil ifTrue: [self addBodyTo: method]]
		on: SCompilationError
		do: [].
	^method
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:52'!
parseTemporaries: aString
	self on: aString; step.
	^self methodSignature notNil ifTrue: [self temporaries]
! !

!SSmalltalkParser methodsFor: 'ffi support' stamp: 'KenD 3/4/2024 06:55:52'!
symbolicPragma
	| position symbol pragma |
	position := token position.
	symbol := self step value.
	pragma := self buildNode: compiler pragmaNode at: position.
	^pragma symbol: symbol
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/4/2024 06:56:01'!
buildToken: aSmalltalkToken
	^self buildToken: aSmalltalkToken at: stream position
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/4/2024 06:56:01'!
buildToken: aSmalltalkToken at: anInteger
	| string |
	string := stream copyFrom: anInteger to: stream position.
	^self buildToken: aSmalltalkToken at: anInteger with: string
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/4/2024 06:56:01'!
buildToken: aSmalltalkToken at: anInteger with: anObject
	^aSmalltalkToken
		position: anInteger;
		value: anObject;
		end: stream position
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:01'!
canBeInIdentifier: aCharacter
	^compiler frontend canBeInIdentifier: aCharacter
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:01'!
canStartIdentifier: aCharacter
	(compiler frontend canStartIdentifier: aCharacter) ifFalse: [^false].
	aCharacter = $_
		ifTrue: [^stream peek ifNil: [false] ifNotNil: [:ch | ch asInteger >= 33]].
	^true
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:01'!
compiler
	^compiler
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:01'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	compiler sourceCode ifNotNil: [:s | self sourceCode: s]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:01'!
on: aString
	stream := aString readStream.
	compiler notNil ifTrue: [compiler sourceCode: aString]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:01'!
sourceCode: aString
	stream := aString readStream
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
end
	^self buildToken: compiler endToken at: stream position + 1
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
isBinary: aCharacter
	| code |
	aCharacter isNil ifTrue: [^false].
	code := aCharacter asInteger.
	code < 128 ifTrue: [
		^#($+ $- $< $> $= $* $/ $\ $| $& $~ $, $@ $% $? $!! $: $^)
			includes: aCharacter].
	^code > 255
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
next
	^self nextToken
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextArrayPrefix
	| string |
	string := stream copyFrom: stream position - 1 to: stream position.
	^self
		buildToken: compiler delimiterToken
		at: stream position - 1
		with: string
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextAssignment
	^self buildToken: compiler delimiterToken at: stream position with: #':='
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextBinarySelector
	stream back.
	^self
		buildToken: compiler stringToken
		at: stream position + 1
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextBinarySymbol
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextColon
	| start char |
	start := stream position.
	char := stream peek.
	((char = Character space or: [char = Character tab]) and: [(stream peek: 2) second = $=]) ifTrue: [
		stream skip: 1.
		char := $=].
	char = $= ifTrue: [
		stream skip.
		^self nextAssignment position: start].
	^(self isBinary: stream peek)
		ifTrue: [self nextBinarySelector]
		ifFalse: [self nextSpecialCharacter]

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:35'!
nextComment
	| start comment |
	start := stream position.
	[ stream atEnd not and:[stream peek !!= $"] ] whileTrue: [stream next].
	stream atEnd ifTrue: [self error: 'unfinished comment' at: start].
	stream position: start.
	comment := stream upTo: $".
	^self buildToken: compiler commentNode at: start with: comment

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextIdentifierOrKeyword
	| start |
	start := stream position.
	self skipIdentifier.
	((stream peekFor: $:) and: [stream peekFor: $=]) ifTrue: [stream skip: -2].
	^self buildToken: compiler stringToken at: start
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextKeyword
	| start string |
	start := stream position + 1.
	self skipKeyword.
	string := stream copyFrom: start to: stream position.
	^self buildToken: compiler literalNode at: start - 1 with: string asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextLiteralCharacter
	stream atEnd ifTrue: [^self error: 'character expected'].
	^self
		buildToken: compiler literalNode
		at: stream position
		with: stream next
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextLiteralString
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanString reduced
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextNumber
	| parser assoc |
	stream skip: -1.
	parser := NumberParser2 new on: stream.
	assoc := parser next.
	parser error ifNotNil: [:e | ^self error: e key at: e value].
	^self
		buildToken: compiler numericLiteralNode
		at: assoc value start
		with: assoc key
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextQuotedSymbol
	| node |
	node := self nextLiteralString.
	^node beSymbol; position: node position - 1
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextSpecialCharacter
	| token |
	token := self buildToken: compiler delimiterToken.
	^token beCharacter
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextSymbolOrArrayPrefix
	| char |
	stream atEnd ifTrue: [self error: 'character expected'].
	char := stream peek.
	(self canBeInIdentifier: char) ifTrue: [^self nextKeyword].
	(self isBinary: char) ifTrue: [^self nextBinarySymbol].
	stream next.
	(char = $[ or: [char = $(]) ifTrue: [^self nextArrayPrefix].
	char = $' ifTrue: [^self nextQuotedSymbol].
	self error: 'character expected'
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
nextToken
	| first |
	first := self scanChar.
	first isNil ifTrue: [^self end].
	(self canStartIdentifier: first) ifTrue: [^self nextIdentifierOrKeyword].
	(first = $→ or: [first = $_]) ifTrue: [^self nextAssignment].
	first = $: ifTrue: [^self nextColon].
	first = $' ifTrue: [^self nextLiteralString].
	first = $$ ifTrue: [^self nextLiteralCharacter].
	first = $# ifTrue: [^self nextSymbolOrArrayPrefix].
	first = $" ifTrue: [^self nextComment].
	first isDigit ifTrue: [^self nextNumber].
	(first !!= $^ and: [first !!= $↑ and: [self isBinary: first]])
		ifTrue: [^self nextBinarySelector].
	^self nextSpecialCharacter
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
scanBinarySymbol
	| start symbol |
	start := stream position.
	self skipBinary.
	symbol := stream copyFrom: start + 1 to: stream position.
	^symbol asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
scanChar
	^(stream skipSeparators; atEnd) ifFalse: [stream next]

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
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
				current := stream position]]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
skipBinary
	[self isBinary: stream peek] whileTrue: [stream next]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
skipIdentifier
	| frontend |
	frontend := compiler frontend.
	[stream atEnd]
		whileFalse: [(frontend peekForIdentifier: stream) ifFalse: [^self]]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/4/2024 06:56:01'!
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
	pos isNil ifFalse: [stream position: pos]
! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:56:01'!
error: aString
	^self error: aString at: stream position
! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/4/2024 06:56:01'!
error: aString at: anInteger
	^compiler error: aString at: anInteger
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:56:02'!
comment
	^comments notNil ifTrue: [comments anyOne]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:56:02'!
comments
	^comments
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:56:02'!
comments: aCollection
	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:56:02'!
moveCommentsTo: aParseNode
	aParseNode comments: comments.
	comments := nil
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
compileWarning: aString
	compiler notify: aString at: self stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
compiler
	^compiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
end
	^stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
end: aNumber
	stretch end: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
position
	^stretch start
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
position: aNumber
	stretch start: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
prevPosition
	^stretch start - 1
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
stretch
	^stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:56:02'!
stretch: aStretch
	stretch := aStretch
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
endsExpression
	^self isEnd
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
hasSymbol
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
is: anObject
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isAssignment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isBar
	^(self is: #'|') or: [self is: #'/']
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isBlockNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isComment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isDelimiter
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isEnd
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isIdentifier
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isKeyword
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isNameToken
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isNumberNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isPoolLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:56:02'!
isStringToken
	^false
! !

!SToken methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:56:02'!
initialize
	super initialize.
	stretch := 1 thru: 0
! !

!SToken methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:56:02'!
isDelimitedIdentifier
	^false
! !

!SToken class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:56:02'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SEndToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isEnd
	^true
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
position: aNumber
	super position: aNumber - 1
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
prevPosition
	^stretch start
! !

!SEndToken methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:47'!
value: aString
	''
! !

!SParseNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
acceptVisitor: visitor
	^visitor visitParseNode: self
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
allNodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: true
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
nodeWithLiteral: anObject
	^self nodesDetect: [:n | (n isLiteral or: [n isSelector]) and: [n value = anObject]] ifAbsent: nil

! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
nodesDetect: aBlock ifAbsent: absentBlock
	self nodesDo: [:node | (aBlock value: node) ifTrue: [ ^node ] ] includingDeclarations: false.
	^absentBlock value
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
nodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: false
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock value: self
! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
ast
	^compiler ast
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
hasAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isBraceNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isCascade
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isCascadeMessage
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isEvaluable
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isImmediate
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isMessageNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isMethod
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isMethodArgument
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isMethodTemporary
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isReturn
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isSelector
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isSelf
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isSuper
	^false
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:51'!
moveCommentsFrom: aParseNode
	aParseNode moveCommentsTo: self
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:51'!
variableNamed: aString
	self
		allNodesDo: [:node | (node isIdentifier and: [node name = aString])
			ifTrue: [^node]].
	^nil
! !

!SAssignmentNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:47'!
acceptVisitor: visitor
	^visitor visitAssignment: self
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 3/4/2024 06:55:47'!
assign: anIdentifierNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 3/4/2024 06:55:47'!
assign: anIdentifierNode with: aParseNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken.
	expression := aParseNode
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
assignees
	^assignees
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
expression
	^expression
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
operators
	^operators
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
hasAssign
	^true
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isAssign
	^true
! !

!SAssignmentNode methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:57:56'!
initialize
	super initialize.
	assignees := OrderedCollection new.
	operators := OrderedCollection new
! !

!SAssignmentNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	assignees do: [:v | v nodesDo: aBlock includingDeclarations: aBoolean].
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SBraceNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:47'!
acceptVisitor: visitor
	^visitor visitBraceNode: self
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
asMessageNode
	message notNil ifTrue: [^message].
	^message := self expanded
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isBraceNode
	^true
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
elements
	^elements
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
elements: aCollection
	elements := aCollection asArray
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
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
		msg := compiler cascadeMessageNode position: elem position; end: elem end.
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
	^cascade messages: messages
! !

!SBraceNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	elements do: [:n | n nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:47'!
acceptVisitor: visitor
	^visitor visitCascade: self
! !

!SCascadeNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	messages detect: [:msg | msg hasAssign] ifNone: [^false].
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
isCascade
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	messages do: [:msg | msg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
messages
	^messages
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
messages: aCollection
	messages := aCollection
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
receiver
	^receiver
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
receiver: rcvr
	receiver := rcvr
! !

!SCommentNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
isComment
	^true
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
value
	^value
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
value: aString
	value := aString
! !

!SIdentifierNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
acceptVisitor: visitor
	^visitor visitIdentifier: self
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:48'!
beAssigned
	| immutable |
	binding canBeAssigned ifTrue: [^self].
	immutable := binding isClassBinding
		ifTrue: ['class']
		ifFalse: [compiler activeScope describe: binding name].
	self compileError: 'cannot assign to ' , immutable
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:48'!
resolveAssigning: aBoolean
	binding := compiler activeScope resolve: name.
	^binding

! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
binding
	^binding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
binding: aBinding
	binding := aBinding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
initialize
	super initialize.
	binding := DynamicBinding default
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
name
	^name
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
checkLowercase
	| char |
	char := name first.
	(char isLetter and: [char isUppercase]) ifFalse: [^self].
	self compileWarning: name storeString , ' should start with lowercase'
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isEvaluable
	^self isIdentifierLiteral
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isIdentifier
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isIdentifierLiteral
	binding isDynamic ifFalse: [^binding isLiteral].
	^self ast ifNil: [false] ifNotNil: [:ast | | b |
		b := ast scope resolve: name.
		b isLiteral]
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isImmediate
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isLocal
	^binding isLocal
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isMethodArgument
	| ast |
	binding isArgument ifFalse: [^false].
	ast := self ast ifNil: [^false].
	^ast arguments includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isMethodTemporary
	^self ast temporaries includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isSelf
	^binding isSelf
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isSuper
	^binding isSuper
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
sourceIntervals
	| stretchs declaration ast string code index |
	stretchs := OrderedCollection new.
	declaration := binding declaration.
	ast := self ast.
	ast allNodesDo: [:node | 
		(node class == self class and: [node binding declaration == declaration])
			ifTrue: [stretchs add: node stretch]].
	string := self source.
	code := compiler sourceCode.
	index := ast stretch end.
	[
		index := code indexOfString: string startingAt: index + 1.
		index > 0]
		whileTrue: [stretchs add: (index to: index + string size - 1)].
	^stretchs
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:48'!
declaration
	^binding declaration
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:48'!
defineArgumentIn: aScriptScope
	binding := aScriptScope defineArgument: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:48'!
defineTemporaryIn: scope
	binding := scope defineTemporary: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:48'!
printOn: aStream
	aStream nextPut: $<;
	nextPutAll: name;
	nextPutAll: '> ('.
	super printOn: aStream.
	aStream nextPut: $)
! !

!SIdentifierNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:48'!
name: aString
	name := aString reduced
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
acceptVisitor: visitor
	^visitor visitLiteral: self
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
hasSymbol
	^value isSymbol
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isEvaluable
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isImmediate
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isLiteral
	^true
! !

!SLiteralNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
beSymbol
	value := value asSymbol
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:51'!
value
	^value
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:51'!
value: anObject
	value := anObject
! !

!SNumberNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:53'!
acceptVisitor: visitor
	^visitor visitNumberNode: self
! !

!SNumberNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isNumberNode
	^true
! !

!SNumberNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:53'!
negate
	value := value negated
! !

!SStringNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:56:01'!
acceptVisitor: visitor
	^visitor visitString: self
! !

!SMessageNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
acceptVisitor: visitor
	^visitor visitMessage: self
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
arguments
	^arguments
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
arguments: aCollection
	arguments := aCollection
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
receiver
	^receiver
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
receiver: node
	receiver := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
selector
	^selector
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
selector: node
	selector := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
symbol
	^selector symbol
! !

!SMessageNode methodsFor: 'emitting - inlined' stamp: 'KenD 3/4/2024 06:55:48'!
beInlined
	inlined := true
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	^arguments anySatisfy: [:arg | arg hasAssign]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
hasVolatileArguments
	^arguments anySatisfy: [:arg | 
		arg isIdentifier
			ifTrue: [arg binding canBeAssigned]
			ifFalse: [arg isBlockNode not andNot: [arg isLiteral]]]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
hasVolatileReceiver
	^ compiler hasBlocks
		  or: [ receiver isMethodTemporary not ]
		  or: [ arguments anySatisfy: [ :arg | arg hasAssign ] ]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
initialize
	super initialize.
	inlined := false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isCascadeMessage
	^false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isInlined
	^inlined
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isMessageNode
	^true
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
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
	^self hasVolatileArguments
! !

!SMessageNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:48'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean].
	selector nodesDo: aBlock includingDeclarations: aBoolean
! !

!SCascadeMessageNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:47'!
acceptVisitor: visitor
	^visitor visitCascadeMessage: self
! !

!SCascadeMessageNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
cascade: aCascadeNode
	cascade := aCascadeNode.
	receiver := cascade receiver
! !

!SCascadeMessageNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
from: aMessageNode
	arguments := aMessageNode arguments.
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	inlined := aMessageNode isInlined.
	stretch := aMessageNode stretch.
	comments := aMessageNode comments
! !

!SCascadeMessageNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isCascadeMessage
	^true
! !

!SCascadeMessageNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock value: self.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SReturnNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:48'!
acceptVisitor: visitor
	^visitor visitReturn: self
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
expression
	^expression
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
expression: node
	expression := node
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
return: aSmalltalkToken
	return := aSmalltalkToken
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
hasAssign
	^expression hasAssign
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isReturn
	^true
! !

!SReturnNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:48'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SScriptNode methodsFor: 'add/remove' stamp: 'KenD 3/4/2024 06:55:51'!
addChild: aBlockNode
	children add: aBlockNode
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
addStatements: anOrderedCollection
	statements addAll: anOrderedCollection
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
identifiers
	| result |
	result := OrderedCollection new.
	self nodesDo: [:node | node isIdentifier ifTrue: [result add: node]].
	^result removeDuplicates
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
initialize
	super initialize.
	statements := OrderedCollection new.
	arguments := #().
	temporaries := #().
	children := OrderedCollection new
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
arguments
	^arguments
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
arguments: aCollection
	arguments := aCollection
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
children
	^children
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
environmentSize
	^scope environmentSize
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
realScript
	self subclassResponsibility
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
statements
	^statements
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
temporaries
	^temporaries
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
temporaries: aCollection
	temporaries := aCollection
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
bindLocals
	arguments do: [:arg | arg defineArgumentIn: scope].
	temporaries do: [:temp | temp checkLowercase; defineTemporaryIn: scope].
	children do: [:block | block bindLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
positionLocals
	scope positionLocals.
	children do: [:b | b positionLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
reference: aBinding
	aBinding beReferencedFrom: self
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
scope
	^scope
! !

!SScriptNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
hasAssign
	statements do: [:s | s hasAssign ifTrue: [^true]].
	^false
! !

!SScriptNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:51'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	aBoolean ifTrue: [
		arguments do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean].
		temporaries do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean]].
	statements do: [:s | s nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SScriptNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
useSelf
	scope captureSelf
! !

!SBlockNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:51'!
acceptVisitor: visitor
	^visitor visitBlock: self
! !

!SBlockNode methodsFor: 'emitting - inlined' stamp: 'KenD 3/4/2024 06:55:51'!
beInlined
	inlined := true.
	arguments do: [:arg | arg binding beInlined]
! !

!SBlockNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
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
			capturesHome: scope capturesHome
! !

!SBlockNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
captureHome
	scope captureEnvironment: self ast
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
environmentIndexOf: aParseNode
	^scope environmentIndexOf: aParseNode
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isBlockNode
	^true
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isEvaluable
	^self isNullary
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isInlined
	^inlined
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
isNullary
	^arguments isEmpty
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:51'!
usesHome
	^inlined
		ifTrue: [children anySatisfy: [:block | block usesHome]]
		ifFalse: [scope capturesHome]
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
index
	^index
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
index: aNumber
	index := aNumber
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
parent
	^parent
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
parent: aScriptNode
	parent := aScriptNode addChild: self
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
realParent
	^parent realScript
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:51'!
realScript
	^inlined ifTrue: [parent realScript] ifFalse: [self]
! !

!SBlockNode methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
initialize
	super initialize.
	inlined := false.
	scope := BlockScope on: self
! !

!SMethodNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:47'!
acceptVisitor: visitor
	^visitor visitMethod: self
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:47'!
buildMethod
	| cm encoder astcodes |
	cm := self methodClass withAll: self literals.
	cm
		blockCount: compiler blockCount;
		tempCount: scope stackSize;
		argumentCount: arguments size;
		environmentCount: scope environmentSize;
		capturesSelf: scope capturesSelf;
		hasEnvironment: self needsEnvironment;
		hasFrame: self needsFrame;
		selector: self selector;
		source: compiler sourceCode;
		classBinding: compiler frontend classBinding.
	cm pragma: pragma.
	cm blocks do: [ :block | block method: cm ].
	encoder := AstcodeEncoder new method: cm.
	astcodes := self acceptVisitor: encoder.
	^ cm astcodes: astcodes
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:47'!
captureHome
	
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/4/2024 07:25:16'!
literals
	| literals v l |
	literals := OrderedCollection new.
	pragma isUsed
		ifTrue: [ literals add: pragma name ].
	self
		nodesDo: [ :n | 
			n isLiteral
				ifTrue: [ v := n value.
					(v is: #SmallInteger)
						ifFalse: [ literals add: v ] ].
			n isMessageNode
				ifTrue: [ literals add: n symbol ].
			n isBraceNode
				ifTrue: [ n isLiteral
						ifTrue: [ self halt ]
						ifFalse: [ literals
								add: #Array;
								add: #new:;
								add: #at:put:;
								add: #yourself ] ].
			(n isIdentifier
				and: [ l := n binding literal.
					l notNil ])
				ifTrue: [ literals add: l ].
			(n isBlockNode andNot: [ n isInlined ])
				ifTrue: [ literals add: n buildBlock ] ].
	^ literals removeDuplicates
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/4/2024 06:55:47'!
methodClass
	| type |
	type := pragma type.
	type = #callback
		ifTrue: [ ^ SCallbackMethod ].
	type = #callout
		ifTrue: [ ^ SCalloutMethod ].
	^ SCompiledMethod
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
compiler: aSmalltalkCompiler
	super compiler: aSmalltalkCompiler.
	scope := MethodScope new script: self.
	pragma := aSmalltalkCompiler pragmaNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
pragma
	^pragma
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
pragma: anObject
	pragma := anObject
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
realScript
	^self
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
selector
	^selector value
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
selector: aSelectorNode
	selector := aSelectorNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
selectorNode
	^selector
! !

!SMethodNode methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
environmentIndexOf: aParseNode
	^nil
! !

!SMethodNode methodsFor: 'inquiries' stamp: 'KenD 3/4/2024 06:55:47'!
header
	"
	(Object >> #printOn:) ast header
	"
	| interval |
	interval := selector stretch.
	arguments notEmpty
		ifTrue: [interval := interval start thru: arguments last stretch end].
	^compiler sourceCode copyFrom: interval start to: interval end
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isHeadless
	^selector isNil
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isMethod
	^true
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
needsEnvironment
	^scope environmentSize > 0
		or: [children anySatisfy: [:block | block usesHome]]
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
needsFrame
	scope stackSize > 0 ifTrue: [ ^ true ].
	arguments size > 16 ifTrue: [ ^ true ].
	compiler hasSends ifTrue: [ ^ true ].
	compiler hasBlocks ifTrue: [ ^ true ].
	^ false
! !

!SMethodNode methodsFor: 'enumerating' stamp: 'KenD 3/4/2024 06:55:47'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	(aBoolean and: [selector notNil]) ifTrue: [aBlock value: selector]
! !

!SSelectorNode methodsFor: 'visiting' stamp: 'KenD 3/4/2024 06:55:50'!
acceptVisitor: visitor
	^visitor visitSelector: self
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:58:16'!
addKeyword: aSelectorNode
	keywords isNil ifTrue: [keywords := OrderedCollection new].
	keywords add: aSelectorNode
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
end
	stretch end ifNotNil: [:e | ^e].
	^keywords notNil ifTrue: [keywords last end]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
keywords
	^keywords isNil ifTrue: [{self}] ifFalse: [keywords]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:50'!
positions
	^self keywords collect: [:node | node position]
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
hasSymbol
	^symbol isSymbol
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isSelector
	^true
! !

!SSelectorNode methodsFor: 'queries' stamp: 'KenD 3/4/2024 12:01:40'!
isBinary
	^symbol isValidBinarySelector
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:50'!
symbol
	^symbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:50'!
symbol: aString
	symbol := aString asSymbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:50'!
value
	^symbol
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
acceptVisitor: aVisitor
	self isFFI ifTrue: [^aVisitor visitFFIPragma: self].
	self isPrimitive ifTrue: [^aVisitor visitPrimitivePragma: self].
	self isSymbolic ifTrue: [^aVisitor visitSymbolicPragma: self]
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
ffi: cc name: aString with: anFFIDescriptor
	type := cc.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
ffi: aString with: anFFIDescriptor
	type := #ffi.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
info
	^info
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
isUsed
	^type notNil
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
name
	^name
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
primitive: anInteger name: aString
	type := #primitive.
	name := aString.
	info := anInteger
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:52'!
type
	^type
! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
is: anObject
	^value == anObject
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
value
	^value
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
value: anObject
	value := anObject
! !

!SDelimiterToken methodsFor: 'converting' stamp: 'KenD 3/4/2024 06:55:50'!
asSelectorNode
	^compiler selectorNode symbol: value asString; stretch: stretch
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:50'!
beCharacter
	value := value isCharacter ifTrue: [value] ifFalse: [value first]
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:50'!
value: aString
	super value: aString asSymbol
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
endsExpression
	^value = $. or: [value = $]] or: [value = $)] or: [value = $}]
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isAssignment
	^self is: #':='
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isDelimiter
	^true
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/4/2024 06:55:48'!
asIdentifierNode
	^compiler identifierNode
		name: value;
		stretch: stretch;
		comments: comments
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/4/2024 06:55:48'!
asSelectorNode
	^compiler selectorNode symbol: value; stretch: stretch
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/4/2024 06:55:48'!
isStringToken
	^true
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
hasSymbol
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isBinary
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isDelimitedIdentifier
	^value first = ${
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isKeyword
	^value last = $:
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isNameToken
	^(self isKeyword or: [self isBinary]) not
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:47'!
capturesSelf
	^ captureSelf
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:47'!
describe: identifier
	| binding type |
	binding := self resolve: identifier.
	type := self class name asLowercase allButLast: 'scope' size.
	^binding description , ' of ' , type
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:47'!
environmentSize
	^envSize
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:47'!
scopeOf: aString
	| s |
	s := self scriptDefining: aString.
	^s notNil ifTrue: [s scope]
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:47'!
stackSize
	^stackSize
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
defineArgument: identifier
	| binding |
	(self resolves: identifier) ifTrue: [self redefinitionError: identifier].
	binding := ArgumentBinding new name: identifier.
	arguments define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
defineTemporary: identifier
	| binding |
	(temporaries defines: identifier)
		ifTrue: [self redefinitionError: identifier].
	binding := TemporaryBinding new name: identifier.
	temporaries define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
defines: aString
	^(temporaries defines: aString) or: [arguments defines: aString]
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
localBindings
	^arguments values , temporaries values
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
resolveLocal: aString
	(temporaries at: aString) ifNotNil: [:binding | ^binding].
	^arguments at: aString
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:47'!
resolves: aString
	^(self resolve: aString) isDynamic not
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
growEnvironment
	^envSize := envSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
growStack
	^stackSize := stackSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
positionDefinedArguments
	arguments withIndexDo: [:binding :index | binding index: index]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
positionDefinedLocals
	self positionDefinedTemporariesIn: self; positionDefinedArguments
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
positionDefinedTemporariesIn: aScriptScope
	temporaries do: [:binding | | position |
		position := binding isInStack
			ifTrue: [aScriptScope growStack]
			ifFalse: [aScriptScope growEnvironment].
		binding index: position]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
positionLocals
	self positionDefinedLocals
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
realScope
	^script realScript scope
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
redefinitionError: name
	| scope description |
	scope := self scopeOf: name.
	description := scope describe: name.
	script compiler
		warning: name , ' already declared as ' , description
		at: script stretch
! !

!ScriptScope methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:47'!
initialize
	super initialize.
	arguments := StaticBinder new.
	temporaries := StaticBinder new.
	stackSize := envSize := 0.
		captureSelf := false.
! !

!ScriptScope methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
script: aScriptNode
	script := aScriptNode
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:47'!
new
	^super new initialize
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:47'!
on: aScriptNode
	^self new script: aScriptNode
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
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

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
localBindings
	^super localBindings , captured values
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/4/2024 06:55:51'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
captureEnvironment: aScriptNode
	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 11:47:57'!
capturedEnvironmentIndexOf: aScriptNode
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self assert:  index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
copyLocal: binding
	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 11:48:02'!
environmentIndexOf: aScriptNode
	"
	temporal compatibility
	"
	(aScriptNode isKindOf: SScriptNode)
		ifFalse: [ self assert:  false. ^nil ].
	^self capturedEnvironmentIndexOf: aScriptNode
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
environmentSizeUpToCapturedArguments
	^self environmentSizeUpToEnvironments + self capturedArguments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
environmentSizeUpToEnvironments
	| receiver |
	receiver := self capturesSelf ifTrue: [ 1 ] ifFalse: [ 0 ].
	^receiver + environments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
parent
	^script parent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
positionCapturedArgument: anArgumentBinding
	anArgumentBinding index: self growEnvironment
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
positionCapturedLocals
	script isInlined ifTrue: [^self].
	envSize := self environmentSizeUpToEnvironments.
	captured do: [:binding | 
		binding isArgument
			ifTrue: [self positionCapturedArgument: binding]
			ifFalse: [self positionCapturedTemporary: binding]]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 11:48:06'!
positionCapturedTemporary: aTemporaryBinding
	| outest index declaration |
	outest := self scriptDefining: aTemporaryBinding name.
	index := self capturedEnvironmentIndexOf: outest realScript.
	aTemporaryBinding environmentIndex: index.
	declaration := outest scope resolve: aTemporaryBinding name.
	self assert:  declaration index isInteger.
	aTemporaryBinding index: declaration index
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
positionDefinedArgumentsIn: aScriptScope
	arguments do: [:binding | | index |
		index := binding isInArray
			ifTrue: [aScriptScope growEnvironment]
			ifFalse: [aScriptScope growStack].
		binding index: index]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
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

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
positionLocals
	self positionCapturedLocals.
	super positionLocals
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
realParent
	^script realParent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:51'!
transferLocal: name
	| binding copy |
	(self resolveLocal: name) ifNotNil: [:b | ^b].
	binding := self parent transferLocal: name.
	copy := self copyLocal: binding.
	captured at: name put: copy.
	^copy
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
captureLocal: aLocalBinding
	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
captureSelf
	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
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

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
capturedArguments
	^captured select: [:b | b isArgument]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
capturedEnvironments
	^environments
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
capturesHome
	^self home notNil
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
environments
	"
	compatibility, removes the home environment
	"
	| first |
	environments isEmpty ifTrue: [^#()].
	first := environments first.
	^first isMethod ifTrue: [environments allButFirst] ifFalse: [environments]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
home
	| first |
	environments isEmpty ifTrue: [^nil].
	first := environments first.
	^first isMethod ifTrue: [first]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
resolveLocal: aString
	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:51'!
scriptDefining: aString
	(self defines: aString) ifTrue: [^script].
	^self parent scriptDefining: aString
! !

!BlockScope methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:51'!
initialize
	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 3/4/2024 11:48:12'!
captureEnvironment: aScriptNode
	self assert:  aScriptNode == script
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:50'!
transferLocal: name
	^self resolveLocal: name
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/4/2024 11:48:30'!
captureLocal: aLocalBinding
	self assert: (self resolveLocal: aLocalBinding name) notNil.
	^aLocalBinding
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:50'!
captureSelf
	captureSelf := true.

! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/4/2024 11:48:38'!
environmentIndexOf: aScriptNode
	self assert: aScriptNode == script.
	^nil
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/4/2024 06:55:50'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [ :binding | ^ binding ].
	(self resolvePseudo: aString) ifNotNil: [ :binding | ^ binding ].
	^ DynamicBinding named: aString
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/4/2024 11:48:43'!
scriptDefining: aString
	(self resolveLocal: aString) ifNotNil: [^script].
	self assert: false.
	^nil
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:50'!
initialize
	super initialize.
	self initializePseudoVars
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:50'!
initializePseudoVars
	pseudo := StaticBinder new.
	pseudo
		at: 'nil' put: NilBinding new;
		at: 'true' put: TrueBinding new;
		at: 'false' put: FalseBinding new;
		at: 'self' put: SelfBinding new;
		at: 'super' put: SuperBinding new
! !

!MethodScope methodsFor: 'as yet unclassified' stamp: 'KenD 3/4/2024 06:55:50'!
resolvePseudo: aString
	^pseudo at: aString

! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
inlineConditional
	| arguments |
	arguments := message arguments.
	arguments size >= 1 ifFalse: [^self].
	arguments do: [:arg | arg isEvaluable ifFalse: [^self]].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/4/2024 06:55:50'!
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

!Binding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:53'!
beReferencedFrom: aScriptNode
	
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
canBeAssigned
	^true
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
declaration
	^self
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 11:48:47'!
encodeUsing: anAstcodeEncoder
	self assert: false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isArgument
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isClassBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isClassVariable
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isConstantBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isDynamic
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isGlobal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isInStack
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isInstVar
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isLiteral
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isLocal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isPoolVariableBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isSelf
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isSelfOrSuper
	^self isSelf or: [self isSuper]
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isSuper
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
isTemporary
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:53'!
literal
	^nil
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:53'!
name
	^name
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:53'!
name: aString
	name := aString
! !

!Binding methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:53'!
printNameOn: aStream
		aStream
		print: name

! !

!Binding methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:53'!
printOn: aStream
	self printNameOn: aStream.
	aStream
		nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
beReferencedFrom: aScriptNode
	"a dynamic binding could refer to an ivar, so we have to be conservative"
	aScriptNode useSelf
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeDynamicVar: name
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
isDynamic
	^true
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
literal
	^name asSymbol
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
default
	^Default ifNil: [Default := self new name: '<unresolved>']
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:52'!
named: aString
	| index first second |
	index := aString indexOf: $..
	index = 0 ifTrue: [ ^self new name: aString ].
	first := aString copyFrom: 1 to: index - 1.
	second := aString copyFrom: index + 1 to: aString size.
	^NestedDynamicBinding new name: { first. second }
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNestedDynamicVar: name
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
literal
	^name collect: [ :n | n asSymbol]
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:52'!
printNameOn: aStream
	name do: [ :n | aStream nextPutAll: n ] separatedBy: [ aStream nextPut: $. ]
! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isLiteral
	^true
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeFalse
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
name
	^'false'
! !

!FalseBinding methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:47'!
value
	^false
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNil
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
name
	^'nil'
! !

!NilBinding methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:48'!
value
	^nil
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeTrue
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
name
	^'true'
! !

!TrueBinding methodsFor: 'evaluating' stamp: 'KenD 3/4/2024 06:55:47'!
value
	^true
! !

!LocalBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:59'!
beInArray
	environment := ArrayEnvironment new
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
declaration
	^declaration
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
declaration: anIdentifierNode
	declaration := anIdentifierNode
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
environment
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
environmentIndex
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
environmentIndex: anInteger
	environment index: anInteger
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
environmentObject
	^environment
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
environmentType
	^environment environmentType
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
index
	^index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:59'!
index: aNumber
	index := aNumber
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:59'!
isInArray
	^self isInStack not
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:59'!
isInStack
	^environment isStack
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:59'!
isLocal
	^true
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:48'!
beInlined
	environment := InlinedArgEnvironment new
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:48'!
description
	^'argument ' , name
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:48'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeArgument: index env: environment
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:48'!
isInlined
	^environment isInlinedArgument
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
canBeAssigned
	^false
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
index: aNumber
	index := aNumber.

! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isArgument
	^true
! !

!ArgumentBinding methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:48'!
initialize
	super initialize.
	environment := ArgumentEnvironment new
! !

!ArgumentBinding class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:48'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!TemporaryBinding methodsFor: 'printing' stamp: 'KenD 3/4/2024 06:55:49'!
description
	^'temporary ' , name
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:49'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeTemporary: index env: environment
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 3/4/2024 06:55:49'!
initialize
	super initialize.
	environment := StackEnvironment new
! !

!TemporaryBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:49'!
isTemporary
	^true
! !

!TemporaryBinding class methodsFor: 'instance creation' stamp: 'KenD 3/4/2024 06:55:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SelfBinding methodsFor: 'actions' stamp: 'KenD 3/4/2024 06:55:48'!
beReferencedFrom: aScriptNode
	aScriptNode useSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
canBeAssigned
	^false
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:48'!
isSelf
	^true
! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:48'!
name
	^'self'
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSuper
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:49'!
name
	^'super'
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:49'!
isSelf
	^false
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:49'!
isSuper
	^true
! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:50'!
isInlinedArgument
	^false
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
environmentType
	^EnvironmentValue
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
index
	^index
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
index: anInteger
	index := anInteger
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isCurrent
	^index isNil
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isIndirect
	^self isCurrent not
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/4/2024 06:55:47'!
isStack
	^false
! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:47'!
index
	^nil
! !

!StackEnvironment methodsFor: 'private' stamp: 'KenD 3/4/2024 06:55:47'!
isStack
	^true
! !

!ArgumentEnvironment methodsFor: 'private' stamp: 'KenD 3/4/2024 06:56:02'!
environmentType
	^LocalArgument
! !

!InlinedArgEnvironment methodsFor: 'accessing' stamp: 'KenD 3/4/2024 06:55:53'!
isInlinedArgument
	^true
! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 3/4/2024 07:01:28'!
error
	^error
! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 3/4/2024 07:01:28'!
on: aString
	stream := aString readStream.
	return := nil
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
checkNumberEnd: position
	| char |
	stream atEnd ifTrue: [^self].
	char := stream peek.
	char = $. ifFalse: [^self].
	stream skip: 1.
	stream atEnd
		ifFalse: [stream peek isDigit
			ifTrue: [self error: 'invalid number' at: position]].
	stream skip: -1
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
completeFloat: anInteger
	| tenth |
	tenth := 10 raisedToInteger: self nextExponent.
	^(anInteger * tenth) asFloat
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
completeNumber: anInteger after: aCharacter
	aCharacter = $. ifTrue: [
		^(stream peekFor: $s)
			ifTrue: [self nextScaledFrom: anInteger fractionDigits: 0]
			ifFalse: [self nextFloat: anInteger]].
	(aCharacter = $e or: [aCharacter = $E])
		ifTrue: [^self completeFloat: anInteger].
	aCharacter = $r ifTrue: [^self nextIntegerRadix: anInteger].
	aCharacter = $s ifTrue: [^self nextScaledFrom: anInteger fractionDigits: 0].
	(anInteger = 0 and: [aCharacter = $x or: [aCharacter = $X]])
		ifTrue: [^self nextIntegerRadix: 16].
	stream skip: -1.
	^anInteger
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
completeNumber: anInteger at: start
	| number |
	stream atEnd ifTrue: [^anInteger].
	number := anInteger.
	number := self completeNumber: anInteger after: stream next.
	self checkNumberEnd: start.
	^number
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
digitFromChar: char base: radix
	| c |
	char isDigit ifTrue: [^char digitValue].
	char = $r ifTrue: [^nil].
	char = $x ifTrue: [^nil].
	char = $X ifTrue: [^nil].
	c := char asUppercase.
	(c asInteger between: $A asInteger and: $Z asInteger) ifFalse: [^nil].
	(c !!= $E and: [radix <= c digitValue]) ifTrue: [^nil].
	(c = $E and: [radix = 10]) ifTrue: [^nil].
	^c digitValue
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
endToken
	self error: 'end of stream' at: stream position
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
error: aString at: position
	error := aString -> position.
	return value: nil
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
negativeNumber
	| position |
	stream atEnd ifTrue: [^nil].
	stream peek isDigit ifFalse: [^nil].
	position := stream position.
	^self next key negated -> position
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
next
	| char |
	return isNil ifTrue: [return := [:value | ^value]].
	char := self nextChar.
	char isNil ifTrue: [^self endToken].
	char = $- ifTrue: [^self negativeNumber].
	char = $+ ifTrue: [^self positiveNumber].
	char isDigit ifTrue: [^self nextNumber: char].
	^nil
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextChar
	^stream skipSeparators atEnd ifFalse: [stream next]
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextDigit: radix
	| char digit |
	stream atEnd ifTrue: [^nil].
	char := stream next.
	digit := self digitFromChar: char base: radix.
	digit isNil ifTrue: [
		stream skip: -1.
		^nil].
	radix <= digit
		ifTrue: [self error: 'digit greater than radix' at: stream position].
	^digit
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextExponent
	| negated exp |
	negated := false.
	(stream peekFor: $+) ifFalse: [negated := stream peekFor: $-].
	exp := self nextIntegerRadix: 10.
	negated ifTrue: [exp := exp negated].
	^exp
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextFloat: aNumber
	| base digit e exp |
	digit := self nextDigit: 10.
	digit isNil ifTrue: [
		stream skip: -1.
		^aNumber].
	e := 1.
	base := aNumber * 10 + digit.
	[
		digit := self nextDigit: 10.
		digit isNil]
		whileFalse: [
			base := base * 10 + digit.
			e := e + 1].
	((stream peekFor: $E) or: [stream peekFor: $e]) ifTrue: [
		exp := self nextExponent.
		^(base * (10 raisedToInteger: exp - e)) asFloat].
	(stream peekFor: $s) ifTrue: [^self nextScaledFrom: base fractionDigits: e].
	^(base * (10 raisedToInteger: e negated)) asFloat
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextIntegerRadix: radix
	| value valid digit |
	value := 0.
	valid := false.
	[
		digit := self nextDigit: radix.
		digit isNil]
		whileFalse: [
			valid := true.
			value := value * radix + digit].
	valid ifFalse: [self error: 'digit missing' at: stream position + 1].
	^value
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextNumber: aCharacter
	| start number digit |
	start := stream position.
	number := aCharacter digitValue.
	[
		digit := self nextDigit: 10.
		digit isNil]
		whileFalse: [number := number * 10 + digit].
	number := self completeNumber: number at: start.
	^number -> (start thru: stream position)
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
nextScaledFrom: aNumber fractionDigits: digits
	| scale denominator sd |
	scale := (stream atEnd not and: [stream peek isDigit])
		ifTrue: [self nextIntegerRadix: 10].
	denominator := 10 raisedToInteger: digits.
	sd := ScaledDecimal
		numerator: aNumber
		denominator: denominator
		scale: scale.
	^sd reduced
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
positiveNumber
	| position |
	stream peek isDigit ifFalse: [^nil].
	position := stream position.
	^self next key -> position
! !

!NumberParser2 methodsFor: 'private' stamp: 'KenD 3/4/2024 07:01:28'!
reset
	stream reset.
	return := nil
! !

!NumberParser2 methodsFor: 'services' stamp: 'KenD 3/4/2024 07:01:28'!
nextValue
	^self next ifNil: [0] ifNotNil: [:assoc | assoc key]
! !
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
SCompiledBlockFlags initialize!
SCompiledMethodFlags initialize!
SFFIDescriptor initialize!
