'From Cuis6.3 [latest update: #6245] on 1 March 2024 at 3:47:50 pm'!
'Description Compiler from Bee/Egg

Test case for Cuis Bootstrap'!
!provides: 'FromBee' 1 5!
!requires: 'Cuis-Base' 63 6245 nil!
!requires: 'BeeCompatibility' 1 49 nil!
SystemOrganization addCategory: 'FromBee-Core-SCompiler'!
SystemOrganization addCategory: 'FromBee-Core-SCompiler-Bindings'!
SystemOrganization addCategory: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SystemOrganization addCategory: 'FromBee-Core-SCompiler-Smalltalk'!
SystemOrganization addCategory: 'FromBee-Core-SExpressions'!
SystemOrganization addCategory: 'FromBee-Core-LMR'!
SystemOrganization addCategory: 'FromBee-SCompiler-Backend'!
SystemOrganization addCategory: 'FromBee-SCompiler-Tests'!


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

!classDefinition: #SFFIDescriptor category: 'FromBee-Core-SCompiler'!
ByteArray variableByteSubclass: #SFFIDescriptor
	instanceVariableNames: ''
	classVariableNames: 'FFICallingConventions FFITypes'
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SFFIDescriptor class' category: 'FromBee-Core-SCompiler'!
SFFIDescriptor class
	instanceVariableNames: 'FFICallingConventions FFITypes'!

!classDefinition: #SCompilationError category: 'FromBee-Core-SCompiler'!
Error subclass: #SCompilationError
	instanceVariableNames: 'compiler resumable retryable stretch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SCompilationError class' category: 'FromBee-Core-SCompiler'!
SCompilationError class
	instanceVariableNames: ''!

!classDefinition: #SInvalidPragmaError category: 'FromBee-Core-SCompiler'!
SCompilationError subclass: #SInvalidPragmaError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SInvalidPragmaError class' category: 'FromBee-Core-SCompiler'!
SInvalidPragmaError class
	instanceVariableNames: ''!

!classDefinition: #SUndeclaredIdentifierError category: 'FromBee-Core-SCompiler'!
SCompilationError subclass: #SUndeclaredIdentifierError
	instanceVariableNames: 'identifier assigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SUndeclaredIdentifierError class' category: 'FromBee-Core-SCompiler'!
SUndeclaredIdentifierError class
	instanceVariableNames: ''!

!classDefinition: #ScriptScopeTest category: 'FromBee-SCompiler-Tests'!
TestCase subclass: #ScriptScopeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Tests'!
!classDefinition: 'ScriptScopeTest class' category: 'FromBee-SCompiler-Tests'!
ScriptScopeTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkParserTest category: 'FromBee-SCompiler-Tests'!
TestCase subclass: #SmalltalkParserTest
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Tests'!
!classDefinition: 'SmalltalkParserTest class' category: 'FromBee-SCompiler-Tests'!
SmalltalkParserTest class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkScannerTest category: 'FromBee-SCompiler-Tests'!
TestCase subclass: #SmalltalkScannerTest
	instanceVariableNames: 'scanner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-SCompiler-Tests'!
!classDefinition: 'SmalltalkScannerTest class' category: 'FromBee-SCompiler-Tests'!
SmalltalkScannerTest class
	instanceVariableNames: ''!

!classDefinition: #CompilerModule category: 'FromBee-Core-LMR'!
Module subclass: #CompilerModule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-LMR'!
!classDefinition: 'CompilerModule class' category: 'FromBee-Core-LMR'!
CompilerModule class
	instanceVariableNames: ''!

!classDefinition: #IdentifierBinder category: 'FromBee-Core-SCompiler'!
Object subclass: #IdentifierBinder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'IdentifierBinder class' category: 'FromBee-Core-SCompiler'!
IdentifierBinder class
	instanceVariableNames: ''!

!classDefinition: #StaticBinder category: 'FromBee-Core-SCompiler'!
IdentifierBinder subclass: #StaticBinder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'StaticBinder class' category: 'FromBee-Core-SCompiler'!
StaticBinder class
	instanceVariableNames: ''!

!classDefinition: #LocalEnvironment category: 'FromBee-Core-SCompiler'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'LocalEnvironment class' category: 'FromBee-Core-SCompiler'!
LocalEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArrayEnvironment category: 'FromBee-Core-SCompiler'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'ArrayEnvironment class' category: 'FromBee-Core-SCompiler'!
ArrayEnvironment class
	instanceVariableNames: ''!

!classDefinition: #StackEnvironment category: 'FromBee-Core-SCompiler'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'StackEnvironment class' category: 'FromBee-Core-SCompiler'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArgumentEnvironment category: 'FromBee-Core-SCompiler'!
StackEnvironment subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'ArgumentEnvironment class' category: 'FromBee-Core-SCompiler'!
ArgumentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #InlinedArgEnvironment category: 'FromBee-Core-SCompiler'!
StackEnvironment subclass: #InlinedArgEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'InlinedArgEnvironment class' category: 'FromBee-Core-SCompiler'!
InlinedArgEnvironment class
	instanceVariableNames: ''!

!classDefinition: #MessageInliner category: 'FromBee-Core-SCompiler'!
Object subclass: #MessageInliner
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'MessageInliner class' category: 'FromBee-Core-SCompiler'!
MessageInliner class
	instanceVariableNames: ''!

!classDefinition: #SCompilationResult category: 'FromBee-Core-SCompiler'!
Object subclass: #SCompilationResult
	instanceVariableNames: 'compiler error ast method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SCompilationResult class' category: 'FromBee-Core-SCompiler'!
SCompilationResult class
	instanceVariableNames: ''!

!classDefinition: #SCompiler category: 'FromBee-Core-SCompiler'!
Object subclass: #SCompiler
	instanceVariableNames: 'errorHandler result class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SCompiler class' category: 'FromBee-Core-SCompiler'!
SCompiler class
	instanceVariableNames: ''!

!classDefinition: #SParseTreeVisitor category: 'FromBee-Core-SCompiler'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SParseTreeVisitor class' category: 'FromBee-Core-SCompiler'!
SParseTreeVisitor class
	instanceVariableNames: ''!

!classDefinition: #SSemanticVisitor category: 'FromBee-Core-SCompiler'!
SParseTreeVisitor subclass: #SSemanticVisitor
	instanceVariableNames: 'inliner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'SSemanticVisitor class' category: 'FromBee-Core-SCompiler'!
SSemanticVisitor class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'FromBee-Core-SExpressions'!
SParseTreeVisitor subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: 'BindingIds ClosureElementIds TreecodeIds'
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'FromBee-Core-SExpressions'!
!classDefinition: 'AstcodeEncoder class' category: 'FromBee-Core-SExpressions'!
AstcodeEncoder class
	instanceVariableNames: ''!

!classDefinition: #ScriptScope category: 'FromBee-Core-SCompiler'!
Object subclass: #ScriptScope
	instanceVariableNames: 'script arguments temporaries stackSize envSize captureSelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'ScriptScope class' category: 'FromBee-Core-SCompiler'!
ScriptScope class
	instanceVariableNames: ''!

!classDefinition: #BlockScope category: 'FromBee-Core-SCompiler'!
ScriptScope subclass: #BlockScope
	instanceVariableNames: 'environments captured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'BlockScope class' category: 'FromBee-Core-SCompiler'!
BlockScope class
	instanceVariableNames: ''!

!classDefinition: #MethodScope category: 'FromBee-Core-SCompiler'!
ScriptScope subclass: #MethodScope
	instanceVariableNames: 'pseudo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler'!
!classDefinition: 'MethodScope class' category: 'FromBee-Core-SCompiler'!
MethodScope class
	instanceVariableNames: ''!

!classDefinition: #Binding category: 'FromBee-Core-SCompiler-Bindings'!
Object subclass: #Binding
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'Binding class' category: 'FromBee-Core-SCompiler-Bindings'!
Binding class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinding category: 'FromBee-Core-SCompiler-Bindings'!
Binding subclass: #DynamicBinding
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'DynamicBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
DynamicBinding class
	instanceVariableNames: 'Default'!

!classDefinition: #NestedDynamicBinding category: 'FromBee-Core-SCompiler-Bindings'!
DynamicBinding subclass: #NestedDynamicBinding
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'NestedDynamicBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
NestedDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #LiteralBinding category: 'FromBee-Core-SCompiler-Bindings'!
Binding subclass: #LiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'LiteralBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
LiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #FalseBinding category: 'FromBee-Core-SCompiler-Bindings'!
LiteralBinding subclass: #FalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'FalseBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
FalseBinding class
	instanceVariableNames: ''!

!classDefinition: #NilBinding category: 'FromBee-Core-SCompiler-Bindings'!
LiteralBinding subclass: #NilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'NilBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
NilBinding class
	instanceVariableNames: ''!

!classDefinition: #TrueBinding category: 'FromBee-Core-SCompiler-Bindings'!
LiteralBinding subclass: #TrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'TrueBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
TrueBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalBinding category: 'FromBee-Core-SCompiler-Bindings'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'LocalBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
LocalBinding class
	instanceVariableNames: ''!

!classDefinition: #ArgumentBinding category: 'FromBee-Core-SCompiler-Bindings'!
LocalBinding subclass: #ArgumentBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'ArgumentBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
ArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #TemporaryBinding category: 'FromBee-Core-SCompiler-Bindings'!
LocalBinding subclass: #TemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'TemporaryBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
TemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SelfBinding category: 'FromBee-Core-SCompiler-Bindings'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'SelfBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SuperBinding category: 'FromBee-Core-SCompiler-Bindings'!
SelfBinding subclass: #SuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Bindings'!
!classDefinition: 'SuperBinding class' category: 'FromBee-Core-SCompiler-Bindings'!
SuperBinding class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkParser category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SSmalltalkParser
	instanceVariableNames: 'compiler scanner token next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSmalltalkParser class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSmalltalkParser class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkScanner category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSmalltalkScanner class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSmalltalkScanner class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SToken class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SEndToken class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SParseNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode class
	instanceVariableNames: ''!

!classDefinition: #SAssignmentNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SAssignmentNode
	instanceVariableNames: 'assignees expression operators'
	classVariableNames: 'Token'
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SAssignmentNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SAssignmentNode class
	instanceVariableNames: 'Token'!

!classDefinition: #SBraceNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SBraceNode
	instanceVariableNames: 'elements message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBraceNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SBraceNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCascadeNode
	instanceVariableNames: 'receiver messages optimized'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SCascadeNode class
	instanceVariableNames: ''!

!classDefinition: #SCommentNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCommentNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCommentNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SCommentNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SIdentifierNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SLiteralNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SLiteralNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SLiteralNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode class
	instanceVariableNames: ''!

!classDefinition: #SNumberNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode subclass: #SNumberNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SNumberNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SNumberNode class
	instanceVariableNames: ''!

!classDefinition: #SStringNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode subclass: #SStringNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SStringNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SStringNode class
	instanceVariableNames: ''!

!classDefinition: #SMessageNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SMessageNode
	instanceVariableNames: 'selector receiver arguments inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SMessageNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessageNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SMessageNode subclass: #SCascadeMessageNode
	instanceVariableNames: 'cascade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeMessageNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SCascadeMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SReturnNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SReturnNode
	instanceVariableNames: 'expression return'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SReturnNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SReturnNode class
	instanceVariableNames: ''!

!classDefinition: #SScriptNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SScriptNode
	instanceVariableNames: 'statements arguments temporaries children scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SScriptNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SScriptNode class
	instanceVariableNames: ''!

!classDefinition: #SBlockNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SScriptNode subclass: #SBlockNode
	instanceVariableNames: 'inlined index parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBlockNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SBlockNode class
	instanceVariableNames: ''!

!classDefinition: #SMethodNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SScriptNode subclass: #SMethodNode
	instanceVariableNames: 'selector pragma'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SMethodNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SMethodNode class
	instanceVariableNames: ''!

!classDefinition: #SSelectorNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SSelectorNode
	instanceVariableNames: 'symbol keywords'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSelectorNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSelectorNode class
	instanceVariableNames: ''!

!classDefinition: #SPragmaNode category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SPragmaNode
	instanceVariableNames: 'type name info'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SPragmaNode class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SPragmaNode class
	instanceVariableNames: ''!

!classDefinition: #SSymbolicToken category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSymbolicToken class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken class
	instanceVariableNames: ''!

!classDefinition: #SDelimiterToken category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SDelimiterToken class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SStringToken category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken subclass: #SStringToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SStringToken class' category: 'FromBee-Core-SCompiler-Smalltalk-Parser'!
SStringToken class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkCompiler category: 'FromBee-Core-SCompiler-Smalltalk'!
Object subclass: #SSmalltalkCompiler
	instanceVariableNames: 'frontend source ast result headless blocks leaf activeScript'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FromBee-Core-SCompiler-Smalltalk'!
!classDefinition: 'SSmalltalkCompiler class' category: 'FromBee-Core-SCompiler-Smalltalk'!
SSmalltalkCompiler class
	instanceVariableNames: ''!


!CompilerModule commentStamp: '<historical>' prior: 0!
Copyright (c) 2022, Javier Pimás. 
    See (MIT) license in root directory.
!

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:36:12'!
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

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:36:15'!
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

!ClosureElementTypes class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:36:15'!
initialize
	Self := 0.
	LocalArgument := 1.
	Environment := 2.
	EnvironmentValue := 3
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/1/2024 08:18:39'!
arguments: aCollection
	self replaceFrom: 3 to: 3 + aCollection size -1 with: aCollection
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/1/2024 08:18:39'!
callingConvention: anInteger
	self at: 1 put: anInteger
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 3/1/2024 08:18:39'!
return: anInteger
	self at: 2 put: anInteger
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	self initializeFFITypes; initializeCallingConventions
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initializeCallingConventions
	FFICallingConventions := Dictionary new.
	FFICallingConventions
		at: 'cdecl' put: 20;
		at: 'com' put: 21;
		at: 'callback' put: 22
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SFFIDescriptor class methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
beFatal
	resumable := retryable := false
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
beResumable
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
beWarning
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler
	^compiler
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aCompiler
	compiler := aCompiler.
	compiler result error: self
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
description: aString
	description := aString
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
isResumable
	^resumable

! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
proceed
	retryable := false.
	compiler result beSuccessful.
	self isResumable ifTrue: [ self resume ] ifFalse: [ self return ]
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
stretch
	^stretch
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
stretch: aStretch
	stretch := aStretch
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isUndeclaredAccess
	^false
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isUndeclaredAssignment
	^ false
! !

!SUndeclaredIdentifierError methodsFor: 'accessing-token' stamp: 'KenD 3/1/2024 08:18:39'!
assignment: aBoolean
	assigned := aBoolean
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
identifier
	^ identifier
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isUndeclaredAccess
	^assigned not
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isUndeclaredAssignment
	^assigned
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 15:38:42'!
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

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 15:43:04'!
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

!SmalltalkParserTest methodsFor: 'messages' stamp: 'KenD 3/1/2024 15:43:23'!
testUnarySelector
	| source ast |
	source := 'm a notNil'.
	ast := parser parse: source.
	self
		assert: (ast nodeWithLiteral: #notNil) positions first
			= (source findString: 'notNil')
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

!SmalltalkParserTest methodsFor: 'unicode' stamp: 'KenD 3/1/2024 15:45:37'!
testUnicode
	| source ast |
	source := (Character codePoint: 8855) asString , ' aFreeTensor'.
	ast := parser parse: source.
	self
		assert: ast selectorNode position
			= (source findString: (Character codePoint: 8855) asString);
		assert: ast selector == (Character codePoint: 8855) asString asSymbol
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

!SmalltalkParserTest methodsFor: 'setup' stamp: 'KenD 3/1/2024 09:50:42'!
setUp
	super setUp.
	parser := SCompiler new smalltalkParser
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

!SmalltalkScannerTest methodsFor: 'unicode' stamp: 'KenD 3/1/2024 15:46:53'!
testUnicodeScanning
	| next three tensor |
	scanner on: '3 + 4' .
	self assert: scanner next value = 3.
	next := scanner next.
	self
		assert: next value == #'+';
		assert: scanner next value = 4.
	scanner on: '3'  , (Character codePoint: 8855) asString , '4' .
	three := scanner next.
	self assert: three value = 3.
	tensor := scanner next.
	self assert: tensor value = (Character codePoint: 8855)  asString asSymbol
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

!SmalltalkScannerTest methodsFor: 'setup' stamp: 'KenD 3/1/2024 09:50:26'!
setUp
	super setUp.
	scanner := SCompiler new smalltalkScanner
! !

!CompilerModule methodsFor: 'initializing' stamp: 'KenD 3/1/2024 08:18:39'!
justLoaded
	super justLoaded.
	AstcodeEncoder initializeBindingIds; initializeTreecodeIds; initializeClosureElementIds
! !

!CompilerModule methodsFor: 'spec' stamp: 'KenD 3/1/2024 08:18:39'!
imports
	^{
		#Kernel -> #Error. #Kernel -> #ByteArray. #Kernel -> #Module. #Kernel -> #NumberParser. #Kernel -> #Species.
		#Kernel -> #OrderedDictionary
	}
! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
contents
	^contents
! !

!IdentifierBinder methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
keyFor: aString
	^self subclassResponsibility
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
printOn: aStream
	self printOn: aStream indent: 0
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
printOn: aStream indent: anInteger
	self subclassResponsibility
! !

!IdentifierBinder class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	^super new initialize
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
at: aString
	^contents at: aString ifAbsent: nil
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
at: aString ifAbsentPut: aBlock
	^contents at: aString ifAbsentPut: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
at: aString put: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
define: aString as: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
defines: identifier
	^contents includesKey: identifier
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
do: aBlock
	contents do: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
select: aBlock
	^contents select: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
values
	^contents values
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
withIndexDo: aBlock
	contents withIndexDo: aBlock
! !

!StaticBinder methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	contents := OrderedDictionary new
! !

!StaticBinder methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPut: $<.
	contents keys
		do: [:name | name printOn: aStream]
		separatedBy: [aStream space].
	aStream nextPut: $>
! !

!StaticBinder class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInlinedArgument
	^false
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
environmentType
	^EnvironmentValue
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
index
	^index
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
index: anInteger
	index := anInteger
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isCurrent
	^index isNil
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isIndirect
	^self isCurrent not
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isStack
	^false
! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
index
	^nil
! !

!StackEnvironment methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
isStack
	^true
! !

!ArgumentEnvironment methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
environmentType
	^LocalArgument
! !

!InlinedArgEnvironment methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
isInlinedArgument
	^true
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
inlineConditional
	| arguments |
	arguments := message arguments.
	arguments size >= 1 ifFalse: [^self].
	arguments do: [:arg | arg isEvaluable ifFalse: [^self]].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
ast
	^ast
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
ast: aParseNode
	ast := aParseNode
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
method
	^method
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
beSuccessful
	error := nil
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error
	^error
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aCompilationError
	error := aCompilationError
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
canBeInIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter isDigit] or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
canStartIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
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

!SCompiler methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
protect: aBlock
	^aBlock value
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:40'!
classBinding
	 ^class
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:40'!
classBinding: aSpecies
	| instance |
	class := aSpecies.
	instance := aSpecies instanceClass.
	(instance respondsTo: #configureCompiler)
		ifTrue: [instance configureCompiler: self]
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:40'!
initialize: aDictionary
	class := aDictionary at: #UndefinedObject ifAbsent: nil
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
compile: aString
	result := self smalltalkCompiler compileMethod: aString.
	^result method
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
parse: aString
	result := self smalltalkCompiler parseMethod: aString.
	^result ast
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
smalltalkCompiler
	^ SSmalltalkCompiler new frontend: self
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
smalltalkParser
	^ self smalltalkCompiler parser
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
smalltalkScanner
	^ self smalltalkCompiler scanner
! !

!SCompiler methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:40'!
forClass: aClass
	| c |
	c := aClass ifNil: [UndefinedObject].
	self classBinding: c
! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
compile: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler compile: aString
! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:40'!
parse: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler parse: aString
! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:40'!
forClass: aClass
	^self new forClass: aClass
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visit: aParseNode
	^aParseNode notNil ifTrue: [aParseNode acceptVisitor: self] 
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitAssignment: anAssignmentNode
	^self visitParseNode: anAssignmentNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitBlock: aBlockNode
	^self visitParseNode: aBlockNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitBraceNode: aBraceNode
	^self visitParseNode: aBraceNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitCascade: aCascadeNode
	^self visitParseNode: aCascadeNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitCascadeMessage: aCascadeMessageNode
	^self visitMessage: aCascadeMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitForeignNode: anForeignNode
	self visitLiteral: anForeignNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitIdentifier: anIdentifierNode
	^self visitParseNode: anIdentifierNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitLiteral: aLiteralNode
	^self visitParseNode: aLiteralNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitMessage: aMessageNode
	^self visitParseNode: aMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitMethod: aMethodNode
	^self visitParseNode: aMethodNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitNumberNode: aNumberNode
	^self visitLiteral: aNumberNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitParseNode: aParseNode
	^self subclassResponsibility
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitPragma: aPragmaNode
	^self visitParseNode: aPragmaNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitReturn: aReturnNode
	^self visitParseNode: aReturnNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitSelector: aSelectorNode
	^self visitParseNode: aSelectorNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitString: aStringNode
	^self visitLiteral: aStringNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitSymbolicPragma: aPragmaNode
	^self visitPragma: aPragmaNode
! !

!SParseTreeVisitor class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	^super new initialize
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeAssignment: anAssignmentNode
	anAssignmentNode assignees
		do: [:v | self analyzeIdentifier: v assignee: true]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeBlock: aBlockNode while: aBlock
	aBlockNode isInlined
		ifFalse: [aBlockNode index: aBlockNode compiler blockIndex].
	self analyzeScript: aBlockNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode assignee: false
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeMessage: aMessageNode
	inliner inline: aMessageNode.
	aMessageNode isInlined ifFalse: [aMessageNode compiler noticeSend]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeMethod: aMethodNode while: aBlock
	self analyzeScript: aMethodNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeReturn: aReturnNode
	aReturnNode compiler activeScript realScript captureHome
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 3/1/2024 08:18:39'!
analyzeScript: aScriptNode while: aBlock
	aScriptNode compiler activate: aScriptNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	inliner := MessageInliner new
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitAssignment: anAssignmentNode
	| c |
	self analyzeAssignment: anAssignmentNode.
	anAssignmentNode expression acceptVisitor: self.
	c := anAssignmentNode compiler.

! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitBlock: aBlockNode
	self
		analyzeBlock: aBlockNode
		while: [aBlockNode statements do: [:node | node acceptVisitor: self]]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifFalse: [aBraceNode asMessageNode acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitCascade: aCascadeNode
	aCascadeNode receiver acceptVisitor: self.
	aCascadeNode messages do: [:msg | msg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitMessage: aMessageNode
	self analyzeMessage: aMessageNode.
	aMessageNode receiver acceptVisitor: self.
	aMessageNode arguments do: [:arg | arg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitMethod: aMethodNode
	self analyzeMethod: aMethodNode while: [
		aMethodNode bindLocals.
		aMethodNode statements do: [:s | s acceptVisitor: self].
		aMethodNode positionLocals]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitParseNode: aParseNode
	"
	do nothing
	"
	
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitReturn: aReturnNode
	aReturnNode expression acceptVisitor: self.
	self analyzeReturn: aReturnNode
! !

!SSemanticVisitor class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
compiledBlockIndexOf: aBlockNode
	| index |
	index := method
		findFirst: [:literal | literal isBlock
			and: [literal id == aBlockNode index]].
	^index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:20:07'!
encodeArgument: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: (BindingIds at: #ArgumentId);
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:41:36'!
encodeClosureElements: aBlockNode
	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^Array streamContents: [:s |
		scope capturesSelf ifTrue: [ s nextPut: self ].
		scope capturedEnvironments do: [:e | | index |
			e == parent ifTrue: [s nextPut: (ClosureElementIds at: #Environment)] ifFalse: [
				index := aBlockNode environmentIndexOf: e.
				self assert: index notNil.
				s nextPut: (ClosureElementIds at: #EnvironmentValue); nextPut: index]].
		scope capturedArguments do: [:a | | binding |
			binding := aBlockNode parent scope resolve: a name.
			s 	nextPut: binding environmentType; nextPut: binding index]]
	
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:21:48'!
encodeDynamicVar: name
	stream nextPut: (BindingIds at: #DynamicVarId).
	self nextSymbolPut: name
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:22:12'!
encodeFalse
	stream nextPut: (BindingIds at: #FalseId)
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
encodeLoadRvisitingReceiver
	stream nextPut: LoadRvisitingReceiverId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
encodeNestedDynamicVar: name
	stream nextPut: NestedDynamicVarId.
	self nextLiteralPut: name 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:25:18'!
encodeNil
	stream nextPut: (BindingIds at: #NilId)
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
encodePopR
	stream nextPut: PopRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
encodePushR
	stream nextPut: PushRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:25:44'!
encodeSelf
	stream nextPut: (BindingIds at: #SelfId)
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:25:59'!
encodeSuper
	stream nextPut: (BindingIds at: #SuperId)
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:26:14'!
encodeTemporary: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: (BindingIds at: #TemporaryId);
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:26:27'!
encodeTrue
	stream nextPut: (BindingIds at: #TrueId)
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
encodedEnvironment: aLocalEnvironment
	aLocalEnvironment isStack
		ifTrue: [ ^ aLocalEnvironment isInlinedArgument
				ifTrue: [ -1 ]
				ifFalse: [ -2 ] ].
	aLocalEnvironment isCurrent
		ifTrue: [ ^ 0 ].
	^ aLocalEnvironment index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextBigIntegerPut: anInteger
	stream
		nextPut: 16r80;
		int64: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextBooleanPut: aBoolean
	stream nextPut: aBoolean asParameter

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextIntegerPut: anInteger
	| value |
	(anInteger > 127 or: [ anInteger < -127 ])
		ifTrue: [ ^ self nextBigIntegerPut: anInteger ].
	value := anInteger >= 0
		ifTrue: [ anInteger ]
		ifFalse: [ anInteger + 16r100 ].
	stream nextPut: value
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:26:54'!
nextLiteralPut: anObject
	| index |
	index := method
		indexOf: anObject
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextPut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextPutAll: aCollection
	stream nextPut: aCollection size; nextPutAll: aCollection
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:27:07'!
nextSymbolPut: aSymbol
	| index |
	index := method
		indexOf: aSymbol asSymbol
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
nextTypePut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:27:24'!
visitAssignment: anAssignmentNode
	| assignees |
	self nextTypePut: (BindingIds at: #AssignmentId).
	assignees := anAssignmentNode assignees.
	self nextIntegerPut: assignees size.
	assignees do: [ :node | node acceptVisitor: self ].
	anAssignmentNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:27:51'!
visitBlock: aBlockNode
	| args inlined |
	self nextTypePut: (TreecodeIds at: #BlockId).
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifTrue: [self visitLiteral: aBraceNode asLiteralNode]
		ifFalse: [self visitCascade: aBraceNode asMessageNode]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:28:18'!
visitCascade: aCascadeNode
	| messages |
	self nextTypePut: (TreecodeIds at: #CascadeId).
	aCascadeNode receiver acceptVisitor: self.
	messages := aCascadeNode messages.
	self nextIntegerPut: messages size.
	messages do: [ :node | self visitCascadeMessage: node ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitCascadeMessage: aCascadeMessageNode
	| arguments |
	self nextSymbolPut: aCascadeMessageNode selector symbol.
	arguments := aCascadeMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:28:36'!
visitIdentifier: anIdentifierNode
	self nextTypePut: (TreecodeIds at: #IdentifierId).
	anIdentifierNode binding encodeUsing: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:28:51'!
visitLiteral: aLiteralNode
	| index |
	index := method indexOf: aLiteralNode value.
	self
		nextTypePut: (TreecodeIds at: #LiteralId);
		nextIntegerPut: index.
	index = 0
		ifTrue: [ self nextIntegerPut: aLiteralNode value ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:29:05'!
visitMessage: aMessageNode
	| arguments |
	self
		nextTypePut: (TreecodeIds at: #MessageId);
		nextBooleanPut: aMessageNode isInlined;
		nextSymbolPut: aMessageNode selector symbol.
	aMessageNode receiver acceptVisitor: self.
	arguments := aMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:29:32'!
visitMethod: aMethodNode
	| pragma |
	self nextTypePut: (TreecodeIds at: #MethodId).
	pragma := aMethodNode pragma.
	pragma isUsed
		ifTrue: [ self nextTypePut: (TreecodeIds at: #PragmaId).
			pragma name
				ifNotNil: [ self nextSymbolPut: pragma name ]
				ifNil: [ self nextPut: 0 ] ].
	self visitScript: aMethodNode.
	^ stream contents 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:29:40'!
visitParseNode: aParseNode
	^self assert: false
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 09:29:54'!
visitReturn: aReturnNode
	self
		nextTypePut: (TreecodeIds at: #ReturnId);
		nextBooleanPut: script realScript isMethod.
	
		aReturnNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
visitScript: aScriptNode
	| prev statements |
	prev := script.
	script := aScriptNode.
	statements := aScriptNode statements.
	self nextIntegerPut: statements size.
	statements do: [ :node | node acceptVisitor: self ].
	script := prev
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	stream := #[] writeStream
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!AstcodeEncoder class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeEncoder class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:17:09'!
initializeBindingIds	
"
	self initializeBindingIds.
"
	BindingIds := Namespace new.
	BindingIds
		at: #NilId put: 1;
		at: #TrueId put: 2;
		at: #FalseId put: 3;
		at: #ArgumentId put: 4;
		at: #TemporaryId put: 5;
		at: #SelfId put: 6;
		at: #SuperId put: 7;
		at: #DynamicVarId put: 14;
		at: #NestedDynamicVarId put: 15;
		at: #PushRid put: 50;
		at: #PopRid put: 51
! !

!AstcodeEncoder class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:17:19'!
initializeClosureElementIds
"
	self initializeClosureElementIds.
"
	ClosureElementIds := Namespace new.
	ClosureElementIds
		at: #Self put: 0;
		at: #LocalArgument put: 1;
		at: #Environment put: 2;
		at: #EnvironmentValue put: 3
! !

!AstcodeEncoder class methodsFor: 'class initialization' stamp: 'KenD 3/1/2024 09:17:45'!
initializeTreecodeIds
"
	self initializeTreecodeIds.
"	
	TreecodeIds := Namespace new.
	TreecodeIds
		at: #MethodId put: 101;
		at: #BlockId put: 102;
		at: #IdentifierId put: 103;
		at: #LiteralId put: 104;
		at: #MessageId put: 105;
		at: #CascadeId put: 106;
		at: #BraceId put: 107;
		at: #AssignmentId put: 108;
		at: #ReturnId put: 109;
		at: #PragmaId put: 110
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
capturesSelf
	^ captureSelf
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
describe: identifier
	| binding type |
	binding := self resolve: identifier.
	type := self class name asLowercase allButLast: 'scope' size.
	^binding description , ' of ' , type
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
environmentSize
	^envSize
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
scopeOf: aString
	| s |
	s := self scriptDefining: aString.
	^s notNil ifTrue: [s scope]
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
stackSize
	^stackSize
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
defineArgument: identifier
	| binding |
	(self resolves: identifier) ifTrue: [self redefinitionError: identifier].
	binding := ArgumentBinding new name: identifier.
	arguments define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
defineTemporary: identifier
	| binding |
	(temporaries defines: identifier)
		ifTrue: [self redefinitionError: identifier].
	binding := TemporaryBinding new name: identifier.
	temporaries define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
defines: aString
	^(temporaries defines: aString) or: [arguments defines: aString]
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
localBindings
	^arguments values , temporaries values
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
resolveLocal: aString
	(temporaries at: aString) ifNotNil: [:binding | ^binding].
	^arguments at: aString
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
resolves: aString
	^(self resolve: aString) isDynamic not
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
growEnvironment
	^envSize := envSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
growStack
	^stackSize := stackSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionDefinedArguments
	arguments withIndexDo: [:binding :index | binding index: index]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionDefinedLocals
	self positionDefinedTemporariesIn: self; positionDefinedArguments
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionDefinedTemporariesIn: aScriptScope
	temporaries do: [:binding | | position |
		position := binding isInStack
			ifTrue: [aScriptScope growStack]
			ifFalse: [aScriptScope growEnvironment].
		binding index: position]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionLocals
	self positionDefinedLocals
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
realScope
	^script realScript scope
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
redefinitionError: name
	| scope description |
	scope := self scopeOf: name.
	description := scope describe: name.
	script compiler
		warning: name , ' already declared as ' , description
		at: script stretch
! !

!ScriptScope methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	arguments := StaticBinder new.
	temporaries := StaticBinder new.
	stackSize := envSize := 0.
		captureSelf := false.
! !

!ScriptScope methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
script: aScriptNode
	script := aScriptNode
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	^super new initialize
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
on: aScriptNode
	^self new script: aScriptNode
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
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

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
localBindings
	^super localBindings , captured values
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
captureEnvironment: aScriptNode
	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 09:42:55'!
capturedEnvironmentIndexOf: aScriptNode
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self assert: index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
copyLocal: binding
	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 09:43:02'!
environmentIndexOf: aScriptNode
	"
	temporal compatibility
	"
	(aScriptNode isKindOf: SScriptNode)
		ifFalse: [ self assert: false. ^nil ].
	^self capturedEnvironmentIndexOf: aScriptNode
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
environmentSizeUpToCapturedArguments
	^self environmentSizeUpToEnvironments + self capturedArguments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
environmentSizeUpToEnvironments
	| receiver |
	receiver := self capturesSelf ifTrue: [ 1 ] ifFalse: [ 0 ].
	^receiver + environments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
parent
	^script parent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionCapturedArgument: anArgumentBinding
	anArgumentBinding index: self growEnvironment
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionCapturedLocals
	script isInlined ifTrue: [^self].
	envSize := self environmentSizeUpToEnvironments.
	captured do: [:binding | 
		binding isArgument
			ifTrue: [self positionCapturedArgument: binding]
			ifFalse: [self positionCapturedTemporary: binding]]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 09:43:07'!
positionCapturedTemporary: aTemporaryBinding
	| outest index declaration |
	outest := self scriptDefining: aTemporaryBinding name.
	index := self capturedEnvironmentIndexOf: outest realScript.
	aTemporaryBinding environmentIndex: index.
	declaration := outest scope resolve: aTemporaryBinding name.
	self assert: declaration index isInteger.
	aTemporaryBinding index: declaration index
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionDefinedArgumentsIn: aScriptScope
	arguments do: [:binding | | index |
		index := binding isInArray
			ifTrue: [aScriptScope growEnvironment]
			ifFalse: [aScriptScope growStack].
		binding index: index]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
positionLocals
	self positionCapturedLocals.
	super positionLocals
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
realParent
	^script realParent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
transferLocal: name
	| binding copy |
	(self resolveLocal: name) ifNotNil: [:b | ^b].
	binding := self parent transferLocal: name.
	copy := self copyLocal: binding.
	captured at: name put: copy.
	^copy
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
captureLocal: aLocalBinding
	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
captureSelf
	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
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

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
capturedArguments
	^captured select: [:b | b isArgument]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
capturedEnvironments
	^environments
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
capturesHome
	^self home notNil
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
environments
	"
	compatibility, removes the home environment
	"
	| first |
	environments isEmpty ifTrue: [^#()].
	first := environments first.
	^first isMethod ifTrue: [environments allButFirst] ifFalse: [environments]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
home
	| first |
	environments isEmpty ifTrue: [^nil].
	first := environments first.
	^first isMethod ifTrue: [first]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
resolveLocal: aString
	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
scriptDefining: aString
	(self defines: aString) ifTrue: [^script].
	^self parent scriptDefining: aString
! !

!BlockScope methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 3/1/2024 09:43:12'!
captureEnvironment: aScriptNode
	self assert: aScriptNode == script
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
transferLocal: name
	^self resolveLocal: name
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/1/2024 09:43:18'!
captureLocal: aLocalBinding
	self assert: (self resolveLocal: aLocalBinding name) notNil.
	^aLocalBinding
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
captureSelf
	captureSelf := true.

! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/1/2024 09:43:22'!
environmentIndexOf: aScriptNode
	self assert: aScriptNode == script.
	^nil
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [ :binding | ^ binding ].
	(self resolvePseudo: aString) ifNotNil: [ :binding | ^ binding ].
	^ DynamicBinding named: aString
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 3/1/2024 09:43:31'!
scriptDefining: aString
	(self resolveLocal: aString) ifNotNil: [^script].
	self assert: false.
	^nil
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	self initializePseudoVars
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initializePseudoVars
	pseudo := StaticBinder new.
	pseudo
		at: 'nil' put: NilBinding new;
		at: 'true' put: TrueBinding new;
		at: 'false' put: FalseBinding new;
		at: 'self' put: SelfBinding new;
		at: 'super' put: SuperBinding new
! !

!MethodScope methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
resolvePseudo: aString
	^pseudo at: aString

! !

!Binding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
beReferencedFrom: aScriptNode
	
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
canBeAssigned
	^true
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
declaration
	^self
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 09:43:36'!
encodeUsing: anAstcodeEncoder
	self assert: false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isArgument
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isClassBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isClassVariable
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isConstantBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isDynamic
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isGlobal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInStack
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInstVar
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLiteral
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLocal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isPoolVariableBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelf
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelfOrSuper
	^self isSelf or: [self isSuper]
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSuper
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isTemporary
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
literal
	^nil
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^name
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name: aString
	name := aString
! !

!Binding methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
printNameOn: aStream
		aStream
		print: name

! !

!Binding methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
printOn: aStream
	self printNameOn: aStream.
	aStream
		nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
beReferencedFrom: aScriptNode
	"a dynamic binding could refer to an ivar, so we have to be conservative"
	aScriptNode useSelf
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeDynamicVar: name
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isDynamic
	^true
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
literal
	^name asSymbol
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
default
	^Default ifNil: [Default := self new name: '<unresolved>']
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
named: aString
	| index first second |
	index := aString indexOf: $..
	index = 0 ifTrue: [ ^self new name: aString ].
	first := aString copyFrom: 1 to: index - 1.
	second := aString copyFrom: index + 1 to: aString size.
	^NestedDynamicBinding new name: { first. second }
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNestedDynamicVar: name
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
literal
	^name collect: [ :n | n asSymbol]
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
printNameOn: aStream
	name do: [ :n | aStream nextPutAll: n ] separatedBy: [ aStream nextPut: $. ]
! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLiteral
	^true
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeFalse
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^'false'
! !

!FalseBinding methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^false
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNil
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^'nil'
! !

!NilBinding methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^nil
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeTrue
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^'true'
! !

!TrueBinding methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^true
! !

!LocalBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
beInArray
	environment := ArrayEnvironment new
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
declaration
	^declaration
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
declaration: anIdentifierNode
	declaration := anIdentifierNode
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environment
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentIndex
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentIndex: anInteger
	environment index: anInteger
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentObject
	^environment
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentType
	^environment environmentType
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
index
	^index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
index: aNumber
	index := aNumber
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInArray
	^self isInStack not
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInStack
	^environment isStack
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLocal
	^true
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
beInlined
	environment := InlinedArgEnvironment new
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
description
	^'argument ' , name
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeArgument: index env: environment
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
isInlined
	^environment isInlinedArgument
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
canBeAssigned
	^false
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
index: aNumber
	index := aNumber.

! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isArgument
	^true
! !

!ArgumentBinding methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	environment := ArgumentEnvironment new
! !

!ArgumentBinding class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!TemporaryBinding methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
description
	^'temporary ' , name
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeTemporary: index env: environment
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	environment := StackEnvironment new
! !

!TemporaryBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isTemporary
	^true
! !

!TemporaryBinding class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SelfBinding methodsFor: 'actions' stamp: 'KenD 3/1/2024 08:18:39'!
beReferencedFrom: aScriptNode
	aScriptNode useSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
canBeAssigned
	^false
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelf
	^true
! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^'self'
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSuper
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^'super'
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelf
	^false
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSuper
	^true
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
addBodyTo: aMethodNode
	self
		addTemporariesTo: aMethodNode;
		addPragmaTo: aMethodNode;
		addStatementsTo: aMethodNode
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
addStatementsTo: aMethodNode
	aMethodNode
		position: token position;
		addStatements: self statements;
		end: token position;
		moveCommentsFrom: token.
	token isEnd
		ifFalse: [^self unexpectedStatementError: aMethodNode statements]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
addTemporariesTo: aMethodNode
	aMethodNode temporaries: self temporaries
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
methodPragma
	self step.
	^[| method |
		method := self methodSignature.
		self addTemporariesTo: method; attachPragmaTo: method.
		method pragma]
		on: SCompilationError
		do: [:ex | ex return: compiler pragmaNode]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
methodSignature
	self keywordSignature ifNotNil: [:m | ^m].
	self binarySignature ifNotNil: [:m | ^m].
	self unarySignature ifNotNil: [:m | ^m].
	self error: 'method signature expected'
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
statement
	| expression |
	((token is: $^) or: [token is: $↑]) ifTrue: [^self return].
	expression := self expression.
	token moveCommentsTo: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 10:56:08'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
unaryMessage: aMessageNode
	| selector |
	selector := self unarySelector.
	aMessageNode
		selector: selector;
		end: selector end;
		arguments: #();
		moveCommentsFrom: selector
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
unarySignature
	self hasUnarySelector ifFalse: [^nil].
	^self buildMethodNode: self unarySelector arguments: #()
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
addByteTo: aCollection
	| byte |
	byte := token isLiteral ifTrue: [token value] ifFalse: [token literalValue].
	byte isInteger ifFalse: [self nonIntegerToken].
	(byte between: 0 and: 255) ifFalse: [self invalidByteValue].
	aCollection add: byte
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildBraceNode: elements at: position
	| node |
	node := self buildNode: compiler braceNode at: position.
	^node elements: elements
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildCascadeMessageNode: receiver
	| node |
	node := self buildNode: compiler cascadeMessageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildMessageNode: receiver
	| node |
	node := self buildNode: compiler messageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildMethodNode: selector arguments: arguments
	| node |
	node := self buildNode: compiler methodNode at: selector position.
	compiler activeScript: node.
	^node selector: selector; arguments: arguments
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildNode: aParserNode at: anInteger
	^aParserNode position: anInteger; end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildNode: aParseNode at: anInteger with: anObject
	| node |
	node := scanner buildToken: aParseNode at: anInteger with: anObject.
	^node end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
hasKeywordSelector
	^token isKeyword
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
hasUnarySelector
	^token isNameToken
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
invalidPragma
	| position stretch |
	position := token position.
 	stretch := position thru: position.
	^SInvalidPragmaError new stretch: stretch; signal
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
keywordArgument
	| arg |
	arg := self primary ifNil: [self missingArgument].
	arg := self unarySequence: arg.
	^self binarySequence: arg
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
keywordSequence: aParseNode
	| expression |
	self hasKeywordSelector ifFalse: [^aParseNode].
	expression := self buildMessageNode: aParseNode.
	self keywordMessage: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
literalKeyword
	| keyword |
	keyword := token value , scanner nextKeyword value.
	^keyword reduced asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
namedPrimitive
	| name pragma |
	token isNameToken
		ifFalse: [ self invalidPragma ].
	name := token value.
	pragma := self buildNode: compiler pragmaNode at: token position.
	^ pragma primitive: 0 name: name asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
negativeNumber
	token := nil.
	^self negativeNumberOrBinary; step
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
numberedPrimitive
	| number pragma |
	number := token value.
	number isInteger ifFalse: [self invalidPragma].
	pragma := self buildNode: compiler pragmaNode at: token position.
	^pragma primitive: number name: nil
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
primitive
	| primitive |
	self step.
	primitive := token isNumberNode
		ifTrue: [self numberedPrimitive]
		ifFalse: [self namedPrimitive].
	self step.
	^primitive
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
pseudoLiteralValue
	| value |
	token isPoolLiteral ifTrue: [^token literalValue].
	value := token value.
	value = 'nil' ifTrue: [^nil].
	value = 'true' ifTrue: [^true].
	value = 'false' ifTrue: [^false].
	^token isPoolLiteral ifTrue: [token literalValue] ifFalse: [value asSymbol]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
skipDots
	[token is: $.] whileTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
validateLocalName: aSmalltalkToken
	aSmalltalkToken isDelimitedIdentifier ifTrue: [^self].
	(aSmalltalkToken value includes: $.)
		ifTrue: [self error: 'invalid embedded dot']
! !

!SSmalltalkParser methodsFor: 'api support' stamp: 'KenD 3/1/2024 08:18:39'!
addPragmaTo: aMethodNode
	(self attachPragmaTo: aMethodNode) ifTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
bracedArray
	| array |
	array := self braceBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
literalArray
	| array |
	array := self arrayBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
literalByteArray
	| node |
	node := self byteArrayBody.
	self step.
	^node
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 3/1/2024 08:18:39'!
negativeNumberOrBinary
	self peek isNumberNode
		ifTrue: [token := self next negate position: token position - 1].
	^token value
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 3/1/2024 08:18:39'!
hasBinarySelector
	^(token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:]
! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler
	^compiler
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	scanner := compiler scanner
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
next
	token := next.
	next := nil.
	^token ifNil: [token := scanner next]
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
on: aString
	scanner on: aString
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 15:39:11'!
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

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
token
	^token
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString
	self error: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString at: position
	^compiler error: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
invalidArrayToken
	self error: 'invalid literal entry'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
invalidByteValue
	self error: 'value not between 0 and 255'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
missingArgument
	self error: 'argument missing'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
missingExpression
	self error: 'missing expression'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
missingLiteral
	self error: 'missing literal or named literal'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
missingToken: aString
	self error: 'missing ' , aString
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
nonIntegerToken
	self error: 'non-integer token'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
notify: aString
	compiler notify: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
notify: aString at: position
	compiler notify: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
warning: aString
	compiler warning: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
warning: aString at: position
	compiler warning: aString at: position
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/1/2024 08:18:39'!
headlessMethod
	| method |
	self step.
	method := compiler methodNode.
	compiler activeScript: method.
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/1/2024 08:18:39'!
method
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/1/2024 08:18:39'!
methodFragment
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	[self addBodyTo: method] on: SCompilationError do: [].
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 3/1/2024 08:18:39'!
methodSelector
	self step.
	^self methodSignature ifNotNil: [:m | m selectorNode]
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parse: aString
	^self on: aString; method
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseExpression: aString
	^self on: aString; headlessMethod
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseTemporaries: aString
	self on: aString; step.
	^self methodSignature notNil ifTrue: [self temporaries]
! !

!SSmalltalkParser methodsFor: 'ffi support' stamp: 'KenD 3/1/2024 08:18:39'!
symbolicPragma
	| position symbol pragma |
	position := token position.
	symbol := self step value.
	pragma := self buildNode: compiler pragmaNode at: position.
	^pragma symbol: symbol
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildToken: aSmalltalkToken
	^self buildToken: aSmalltalkToken at: stream position
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildToken: aSmalltalkToken at: anInteger
	| string |
	string := stream copyFrom: anInteger to: stream position.
	^self buildToken: aSmalltalkToken at: anInteger with: string
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
buildToken: aSmalltalkToken at: anInteger with: anObject
	^aSmalltalkToken
		position: anInteger;
		value: anObject;
		end: stream position
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
canBeInIdentifier: aCharacter
	^compiler frontend canBeInIdentifier: aCharacter
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
canStartIdentifier: aCharacter
	(compiler frontend canStartIdentifier: aCharacter) ifFalse: [^false].
	aCharacter = $_
		ifTrue: [^stream peek ifNil: [false] ifNotNil: [:ch | ch asInteger >= 33]].
	^true
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler
	^compiler
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	compiler sourceCode ifNotNil: [:s | self sourceCode: s]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
on: aString
	stream := aString readStream.
	compiler notNil ifTrue: [compiler sourceCode: aString]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
sourceCode: aString
	stream := aString readStream
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 13:28:07'!
end
	self flag: #withEmptyString.
	^self buildToken: compiler endToken at: stream position + 1 with: ''
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 11:02:17'!
isBinary: aCharacter
	| code |
	aCharacter isNil ifTrue: [^false].
	code := aCharacter codePoint .
	code < 128 ifTrue: [
		^#($+ $- $< $> $= $* $/ $\ $| $& $~ $, $@ $% $? $!! $: $^)
			includes: aCharacter].
	^code > 255
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
next
	^self nextToken
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextArrayPrefix
	| string |
	string := stream copyFrom: stream position - 1 to: stream position.
	^self
		buildToken: compiler delimiterToken
		at: stream position - 1
		with: string
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextAssignment
	^self buildToken: compiler delimiterToken at: stream position with: #':='
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextBinarySelector
	stream back.
	^self
		buildToken: compiler stringToken
		at: stream position + 1
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextBinarySymbol
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 10:55:30'!
nextComment
	| start comment |
	start := stream position.
	[ stream atEnd not and:[stream peek !!= $"] ] whileTrue: [stream next].
	stream atEnd ifTrue: [self error: 'unfinished comment' at: start].
	stream position: start.
	comment := stream upTo: $".
	^self buildToken: compiler commentNode at: start with: comment

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextIdentifierOrKeyword
	| start |
	start := stream position.
	self skipIdentifier.
	((stream peekFor: $:) and: [stream peekFor: $=]) ifTrue: [stream skip: -2].
	^self buildToken: compiler stringToken at: start
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextKeyword
	| start string |
	start := stream position + 1.
	self skipKeyword.
	string := stream copyFrom: start to: stream position.
	^self buildToken: compiler literalNode at: start - 1 with: string asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextLiteralCharacter
	stream atEnd ifTrue: [^self error: 'character expected'].
	^self
		buildToken: compiler literalNode
		at: stream position
		with: stream next
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextLiteralString
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanString reduced
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextNumber
	| parser assoc |
	stream skip: -1.
	parser := NumberParser new on: stream.
	assoc := parser next.
	parser error ifNotNil: [:e | ^self error: e key at: e value].
	^self
		buildToken: compiler numericLiteralNode
		at: assoc value start
		with: assoc key
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextQuotedSymbol
	| node |
	node := self nextLiteralString.
	^node beSymbol; position: node position - 1
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
nextSpecialCharacter
	| token |
	token := self buildToken: compiler delimiterToken.
	^token beCharacter
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
scanBinarySymbol
	| start symbol |
	start := stream position.
	self skipBinary.
	symbol := stream copyFrom: start + 1 to: stream position.
	^symbol asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
scanChar
	^(stream skipSeparators; atEnd) ifFalse: [stream next]

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
skipBinary
	[self isBinary: stream peek] whileTrue: [stream next]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
skipIdentifier
	| frontend |
	frontend := compiler frontend.
	[stream atEnd]
		whileFalse: [(frontend peekForIdentifier: stream) ifFalse: [^self]]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString
	^self error: aString at: stream position
! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString at: anInteger
	^compiler error: aString at: anInteger
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
comment
	^comments notNil ifTrue: [comments anyOne]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
comments
	^comments
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
comments: aCollection
	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
moveCommentsTo: aParseNode
	aParseNode comments: comments.
	comments := nil
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compileWarning: aString
	compiler notify: aString at: self stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler
	^compiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
end
	^stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
end: aNumber
	stretch end: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
position
	^stretch start
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
position: aNumber
	stretch start: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
prevPosition
	^stretch start - 1
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
stretch
	^stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
stretch: aStretch
	stretch := aStretch
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
endsExpression
	^self isEnd
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasSymbol
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
is: anObject
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isAssignment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBar
	^(self is: #'|') or: [self is: #'/']
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBlockNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isComment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isDelimiter
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isEnd
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isIdentifier
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isKeyword
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isNameToken
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isNumberNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isPoolLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isStringToken
	^false
! !

!SToken methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	stretch := 1 thru: 0
! !

!SToken methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
isDelimitedIdentifier
	^false
! !

!SToken class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SEndToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isEnd
	^true
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
position: aNumber
	super position: aNumber - 1
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
prevPosition
	^stretch start
! !

!SEndToken methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value: aString
	''
! !

!SParseNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitParseNode: self
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
allNodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: true
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodeWithLiteral: anObject
	^self nodesDetect: [:n | (n isLiteral or: [n isSelector]) and: [n value = anObject]] ifAbsent: nil

! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDetect: aBlock ifAbsent: absentBlock
	self nodesDo: [:node | (aBlock value: node) ifTrue: [ ^node ] ] includingDeclarations: false.
	^absentBlock value
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: false
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock value: self
! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
ast
	^compiler ast
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBraceNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isCascade
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isCascadeMessage
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isEvaluable
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isImmediate
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMessageNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMethod
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMethodArgument
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMethodTemporary
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isReturn
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelector
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelf
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSuper
	^false
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
moveCommentsFrom: aParseNode
	aParseNode moveCommentsTo: self
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 3/1/2024 08:18:39'!
variableNamed: aString
	self
		allNodesDo: [:node | (node isIdentifier and: [node name = aString])
			ifTrue: [^node]].
	^nil
! !

!SAssignmentNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitAssignment: self
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 3/1/2024 08:18:39'!
assign: anIdentifierNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 3/1/2024 08:18:39'!
assign: anIdentifierNode with: aParseNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken.
	expression := aParseNode
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
assignees
	^assignees
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
expression
	^expression
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
operators
	^operators
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasAssign
	^true
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isAssign
	^true
! !

!SAssignmentNode methodsFor: 'initialization' stamp: 'KenD 3/1/2024 11:02:49'!
initialize
	super initialize.
	assignees := OrderedCollection new.
	operators := OrderedCollection new
! !

!SAssignmentNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	assignees do: [:v | v nodesDo: aBlock includingDeclarations: aBoolean].
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SBraceNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitBraceNode: self
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
asMessageNode
	message notNil ifTrue: [^message].
	^message := self expanded
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBraceNode
	^true
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
elements
	^elements
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
elements: aCollection
	elements := aCollection asArray
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SBraceNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	elements do: [:n | n nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:40'!
acceptVisitor: visitor
	^visitor visitCascade: self
! !

!SCascadeNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	messages detect: [:msg | msg hasAssign] ifNone: [^false].
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:40'!
isCascade
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:40'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	messages do: [:msg | msg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
messages
	^messages
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
messages: aCollection
	messages := aCollection
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
receiver
	^receiver
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
receiver: rcvr
	receiver := rcvr
! !

!SCommentNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isComment
	^true
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^value
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
value: aString
	value := aString
! !

!SIdentifierNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:40'!
acceptVisitor: visitor
	^visitor visitIdentifier: self
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:40'!
beAssigned
	| immutable |
	binding canBeAssigned ifTrue: [^self].
	immutable := binding isClassBinding
		ifTrue: ['class']
		ifFalse: [compiler activeScope describe: binding name].
	self compileError: 'cannot assign to ' , immutable
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:40'!
resolveAssigning: aBoolean
	binding := compiler activeScope resolve: name.
	^binding

! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
binding
	^binding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
binding: aBinding
	binding := aBinding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
initialize
	super initialize.
	binding := DynamicBinding default
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:40'!
name
	^name
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
checkLowercase
	| char |
	char := name first.
	(char isLetter and: [char isUppercase]) ifFalse: [^self].
	self compileWarning: name storeString , ' should start with lowercase'
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isEvaluable
	^self isIdentifierLiteral
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isIdentifier
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isIdentifierLiteral
	binding isDynamic ifFalse: [^binding isLiteral].
	^self ast ifNil: [false] ifNotNil: [:ast | | b |
		b := ast scope resolve: name.
		b isLiteral]
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isImmediate
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isLocal
	^binding isLocal
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isMethodArgument
	| ast |
	binding isArgument ifFalse: [^false].
	ast := self ast ifNil: [^false].
	^ast arguments includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isMethodTemporary
	^self ast temporaries includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isSelf
	^binding isSelf
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
isSuper
	^binding isSuper
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:40'!
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

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:40'!
declaration
	^binding declaration
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:40'!
defineArgumentIn: aScriptScope
	binding := aScriptScope defineArgument: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:40'!
defineTemporaryIn: scope
	binding := scope defineTemporary: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:40'!
printOn: aStream
	aStream nextPut: $<;
	nextPutAll: name;
	nextPutAll: '> ('.
	super printOn: aStream.
	aStream nextPut: $)
! !

!SIdentifierNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:40'!
name: aString
	name := aString reduced
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitLiteral: self
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasSymbol
	^value isSymbol
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isEvaluable
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isImmediate
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isLiteral
	^true
! !

!SLiteralNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
beSymbol
	value := value asSymbol
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^value
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value: anObject
	value := anObject
! !

!SNumberNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitNumberNode: self
! !

!SNumberNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isNumberNode
	^true
! !

!SNumberNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
negate
	value := value negated
! !

!SStringNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitString: self
! !

!SMessageNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitMessage: self
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
arguments
	^arguments
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
arguments: aCollection
	arguments := aCollection
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
receiver
	^receiver
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
receiver: node
	receiver := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
selector
	^selector
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
selector: node
	selector := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
symbol
	^selector symbol
! !

!SMessageNode methodsFor: 'emitting - inlined' stamp: 'KenD 3/1/2024 08:18:39'!
beInlined
	inlined := true
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	^arguments anySatisfy: [:arg | arg hasAssign]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasVolatileArguments
	^arguments anySatisfy: [:arg | 
		arg isIdentifier
			ifTrue: [arg binding canBeAssigned]
			ifFalse: [arg isBlockNode not andNot: [arg isLiteral]]]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasVolatileReceiver
	^ compiler hasBlocks
		  or: [ receiver isMethodTemporary not ]
		  or: [ arguments anySatisfy: [ :arg | arg hasAssign ] ]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	inlined := false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isCascadeMessage
	^false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInlined
	^inlined
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMessageNode
	^true
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SMessageNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean].
	selector nodesDo: aBlock includingDeclarations: aBoolean
! !

!SCascadeMessageNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitCascadeMessage: self
! !

!SCascadeMessageNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
cascade: aCascadeNode
	cascade := aCascadeNode.
	receiver := cascade receiver
! !

!SCascadeMessageNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
from: aMessageNode
	arguments := aMessageNode arguments.
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	inlined := aMessageNode isInlined.
	stretch := aMessageNode stretch.
	comments := aMessageNode comments
! !

!SCascadeMessageNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isCascadeMessage
	^true
! !

!SCascadeMessageNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock value: self.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SReturnNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitReturn: self
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
expression
	^expression
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
expression: node
	expression := node
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
return: aSmalltalkToken
	return := aSmalltalkToken
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasAssign
	^expression hasAssign
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isReturn
	^true
! !

!SReturnNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SScriptNode methodsFor: 'add/remove' stamp: 'KenD 3/1/2024 08:18:39'!
addChild: aBlockNode
	children add: aBlockNode
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
addStatements: anOrderedCollection
	statements addAll: anOrderedCollection
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
identifiers
	| result |
	result := OrderedCollection new.
	self nodesDo: [:node | node isIdentifier ifTrue: [result add: node]].
	^result withoutDuplicates
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	statements := OrderedCollection new.
	arguments := #().
	temporaries := #().
	children := OrderedCollection new
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
arguments
	^arguments
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
arguments: aCollection
	arguments := aCollection
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
children
	^children
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentSize
	^scope environmentSize
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
realScript
	self subclassResponsibility
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
statements
	^statements
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
temporaries
	^temporaries
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
temporaries: aCollection
	temporaries := aCollection
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
bindLocals
	arguments do: [:arg | arg defineArgumentIn: scope].
	temporaries do: [:temp | temp checkLowercase; defineTemporaryIn: scope].
	children do: [:block | block bindLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
positionLocals
	scope positionLocals.
	children do: [:b | b positionLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
reference: aBinding
	aBinding beReferencedFrom: self
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 3/1/2024 08:18:39'!
scope
	^scope
! !

!SScriptNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasAssign
	statements do: [:s | s hasAssign ifTrue: [^true]].
	^false
! !

!SScriptNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	aBoolean ifTrue: [
		arguments do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean].
		temporaries do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean]].
	statements do: [:s | s nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SScriptNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
useSelf
	scope captureSelf
! !

!SBlockNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitBlock: self
! !

!SBlockNode methodsFor: 'emitting - inlined' stamp: 'KenD 3/1/2024 08:18:39'!
beInlined
	inlined := true.
	arguments do: [:arg | arg binding beInlined]
! !

!SBlockNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SBlockNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
captureHome
	scope captureEnvironment: self ast
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
environmentIndexOf: aParseNode
	^scope environmentIndexOf: aParseNode
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBlockNode
	^true
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isEvaluable
	^self isNullary
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isInlined
	^inlined
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isNullary
	^arguments isEmpty
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
usesHome
	^inlined
		ifTrue: [children anySatisfy: [:block | block usesHome]]
		ifFalse: [scope capturesHome]
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
index
	^index
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
index: aNumber
	index := aNumber
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
parent
	^parent
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
parent: aScriptNode
	parent := aScriptNode addChild: self
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
realParent
	^parent realScript
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
realScript
	^inlined ifTrue: [parent realScript] ifFalse: [self]
! !

!SBlockNode methodsFor: 'initialization' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	super initialize.
	inlined := false.
	scope := BlockScope on: self
! !

!SMethodNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitMethod: self
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
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
		sourceObject: compiler sourceCode;
		classBinding: compiler frontend classBinding.
	cm pragma: pragma.
	cm blocks do: [ :block | block method: cm ].
	encoder := AstcodeEncoder new method: cm.
	astcodes := self acceptVisitor: encoder.
	^ cm astcodes: astcodes
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
captureHome
	
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/1/2024 14:30:02'!
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
	^ literals withoutDuplicates
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 3/1/2024 08:18:39'!
methodClass
	| type |
	type := pragma type.
	type = #callback
		ifTrue: [ ^ CallbackMethod ].
	type = #callout
		ifTrue: [ ^ CalloutMethod ].
	^ CompiledMethod
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
compiler: aSmalltalkCompiler
	super compiler: aSmalltalkCompiler.
	scope := MethodScope new script: self.
	pragma := aSmalltalkCompiler pragmaNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
pragma
	^pragma
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
pragma: anObject
	pragma := anObject
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
realScript
	^self
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
selector
	^selector value
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
selector: aSelectorNode
	selector := aSelectorNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
selectorNode
	^selector
! !

!SMethodNode methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
environmentIndexOf: aParseNode
	^nil
! !

!SMethodNode methodsFor: 'inquiries' stamp: 'KenD 3/1/2024 08:18:39'!
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

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isHeadless
	^selector isNil
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isMethod
	^true
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
needsEnvironment
	^scope environmentSize > 0
		or: [children anySatisfy: [:block | block usesHome]]
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
needsFrame
	scope stackSize > 0 ifTrue: [ ^ true ].
	arguments size > 16 ifTrue: [ ^ true ].
	compiler hasSends ifTrue: [ ^ true ].
	compiler hasBlocks ifTrue: [ ^ true ].
	^ false
! !

!SMethodNode methodsFor: 'enumerating' stamp: 'KenD 3/1/2024 08:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	(aBoolean and: [selector notNil]) ifTrue: [aBlock value: selector]
! !

!SSelectorNode methodsFor: 'visiting' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: visitor
	^visitor visitSelector: self
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 11:03:06'!
addKeyword: aSelectorNode
	keywords isNil ifTrue: [keywords := OrderedCollection new].
	keywords add: aSelectorNode
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
end
	stretch end ifNotNil: [:e | ^e].
	^keywords notNil ifTrue: [keywords last end]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
keywords
	^keywords isNil ifTrue: [{self}] ifFalse: [keywords]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
positions
	^self keywords collect: [:node | node position]
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasSymbol
	^symbol isSymbol
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isSelector
	^true
! !

!SSelectorNode methodsFor: 'queries' stamp: 'KenD 3/1/2024 15:36:56'!
isBinary
	^symbol isValidBinarySelector
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
symbol
	^symbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
symbol: aString
	symbol := aString asSymbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^symbol
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
acceptVisitor: aVisitor
	self isFFI ifTrue: [^aVisitor visitFFIPragma: self].
	self isPrimitive ifTrue: [^aVisitor visitPrimitivePragma: self].
	self isSymbolic ifTrue: [^aVisitor visitSymbolicPragma: self]
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
ffi: cc name: aString with: anFFIDescriptor
	type := cc.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
ffi: aString with: anFFIDescriptor
	type := #ffi.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
info
	^info
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
isUsed
	^type notNil
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
name
	^name
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
primitive: anInteger name: aString
	type := #primitive.
	name := aString.
	info := anInteger
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 3/1/2024 08:18:39'!
type
	^type
! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
is: anObject
	^value == anObject
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
value
	^value
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
value: anObject
	value := anObject
! !

!SDelimiterToken methodsFor: 'converting' stamp: 'KenD 3/1/2024 08:18:39'!
asSelectorNode
	^compiler selectorNode symbol: value asString; stretch: stretch
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
beCharacter
	value := value isCharacter ifTrue: [value] ifFalse: [value first]
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 3/1/2024 08:18:39'!
value: aString
	super value: aString asSymbol
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
endsExpression
	^value = $. or: [value = $]] or: [value = $)] or: [value = $}]
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isAssignment
	^self is: #':='
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isDelimiter
	^true
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/1/2024 08:18:39'!
asIdentifierNode
	^compiler identifierNode
		name: value;
		stretch: stretch;
		comments: comments
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/1/2024 08:18:39'!
asSelectorNode
	^compiler selectorNode symbol: value; stretch: stretch
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 3/1/2024 08:18:39'!
isStringToken
	^true
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
hasSymbol
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isBinary
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isDelimitedIdentifier
	^value first = ${
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
isKeyword
	^value last = $:
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 3/1/2024 15:38:09'!
isNameToken
	^(self isKeyword or: [self isBinary]) not
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
activate: aScriptNode while: aBlock
	| current |
	current := activeScript.
	activeScript := aScriptNode.
	aBlock value.
	activeScript := current
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
activeScope
	^activeScript scope
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
activeScript
	^activeScript
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
activeScript: aParseNode
	activeScript := aParseNode
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
ast
	^ast
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
frontend
	^frontend
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
frontend: aCompiler
	frontend := aCompiler
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
parser
	^SSmalltalkParser new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
result
	^result
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
scanner
	^SSmalltalkScanner new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
sourceCode
	^source
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 3/1/2024 08:18:39'!
sourceCode: aString
	source := aString
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
assignmentNode
	^SAssignmentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
blockNode
	^SBlockNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
braceNode
	^SBraceNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
buildMethod
	result method: ast buildMethod
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
cascadeMessageNode
	^SCascadeMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
cascadeNode
	^SCascadeNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
commentNode
	^SCommentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
compileMethod: aString
	source := aString.
	frontend protect: [
		self
			parseMethod;
			resolveSemantics;
			buildMethod].
	^result
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
delimiterToken
	^SDelimiterToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
endToken
	^SEndToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
hasBlocks
	^ blocks > 0
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
hasSends
^ leaf not
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
identifierNode
	^SIdentifierNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
initialize
	self reset

! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
literalNode
	^SLiteralNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
messageNode
	^SMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
methodNode
	^SMethodNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
noticeSend
	leaf := false
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
numericLiteralNode
	^SNumberNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
pragmaNode
	^SPragmaNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
reset
	self resetResult.
	leaf := true.
	blocks := 0.
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
returnNode
	^SReturnNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
selectorNode
	^SSelectorNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 3/1/2024 08:18:39'!
stringToken
	^SStringToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/1/2024 08:18:39'!
blockCount
	^blocks
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 3/1/2024 08:18:39'!
blockIndex
	blocks := blocks + 1.
	^blocks - 1
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
compilationError: aString stretch: aStretch
	^SCompilationError new
		compiler: self;
		stretch: aStretch;
		description: aString
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString at: anInteger
	| stretch |
	stretch := anInteger thru: anInteger.
	^self error: aString stretch: stretch
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
error: aString stretch: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	^error beFatal; signal
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 3/1/2024 08:18:39'!
warning: aString at: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	error beWarning; signal
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseFragment
	headless := false.
	self reset.
	ast := self parser methodFragment.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseFragment: aString
	source := aString.
	[self parseFragment; resolveSemantics] on: SCompilationError do: [].
	^ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseMethod
	headless := false.
	self reset.
	ast := self parser method.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
parseMethod: aString
	source := aString.
	frontend protect: [self parseMethod; resolveSemantics].
	^result
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 3/1/2024 08:18:39'!
resolveSemantics
	ast acceptVisitor: SSemanticVisitor new
! !

!SSmalltalkCompiler methodsFor: 'private' stamp: 'KenD 3/1/2024 08:18:39'!
resetResult
	result := SCompilationResult new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 3/1/2024 08:18:39'!
supportsBraceNodes
	^true
! !

!SSmalltalkCompiler class methodsFor: 'instance creation' stamp: 'KenD 3/1/2024 08:18:39'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
SFFIDescriptor initialize!
