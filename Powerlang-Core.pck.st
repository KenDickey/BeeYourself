'From Cuis 5.0 [latest update: #4530] on 21 February 2021 at 2:03:07 pm'!
'Description Powerlang Core code to manage Cuis hosted Bee runtime code'!
!provides: 'Powerlang-Core' 1 5!
!requires: 'BeeCompatibility' 1 0 nil!
!requires: 'Ring2' 1 1 nil!
!requires: 'BeePParser' 1 17 nil!
SystemOrganization addCategory: 'Powerlang-Core'!


!classDefinition: #SParseTreeVisitor category: 'Powerlang-Core'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'SParseTreeVisitor class' category: 'Powerlang-Core'!
SParseTreeVisitor class
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


!SToken methodsFor: 'printing' stamp: 'KenD 2/21/2021 13:17:05'!
comment 

	^comments notNil ifTrue: [comments anyOne]! !

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

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 2/21/2021 14:02:31'!
visitForeignNode: anForeignNode 

	^self visitLiteral: anForeignNode "Bee code lacks $^ ??"! !

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
