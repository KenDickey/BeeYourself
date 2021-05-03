'From Cuis 5.0 [latest update: #4579] on 3 May 2021 at 3:25:21 pm'!
'Description RISC-V Instruction opcodes for RV64G'!
!provides: 'RISC5-Instructions' 1 10!
SystemOrganization addCategory: #'RISC5-Instructions'!


!classDefinition: #RISC5Regs category: #'RISC5-Instructions'!
SharedPool subclass: #RISC5Regs
	instanceVariableNames: ''
	classVariableNames: 'Arg0 Arg1 Arg2 Arg3 Arg4 Arg5 Arg6 Arg7 F0 F1 F10 F11 F12 F13 F14 F15 F16 F17 F18 F19 F2 F20 F21 F22 F23 F24 F25 F26 F27 F28 F29 F3 F30 F31 F4 F5 F6 F7 F8 F9 FArg0 FArg1 FArg2 FArg3 FArg4 FArg5 FArg6 FArg7 FSav0 FSav1 FSav10 FSav11 FSav2 FSav3 FSav4 FSav5 FSav6 FSav7 FSav8 FSav9 FTmp0 FTmp1 FTmp10 FTmp11 FTmp2 FTmp3 FTmp4 FTmp5 FTmp6 FTmp7 FTmp8 FTmp9 FramePtr GlobalPtr ReturnAddr Sav0 Sav10 Sav11 Sav2 Sav3 Sav4 Sav5 Sav6 Sav7 Sav8 Sav9 StackPtr ThreadPtr Tmp0 Tmp1 Tmp2 Tmp3 Tmp4 Tmp5 Tmp6 X0 X1 X10 X11 X12 X13 X14 X15 X16 X17 X18 X19 X2 X20 X21 X22 X23 X24 X25 X26 X27 X28 X29 X3 X30 X31 X4 X5 X6 X7 X8 X9 Zero'
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Regs class' category: #'RISC5-Instructions'!
RISC5Regs class
	instanceVariableNames: ''!

!classDefinition: #RISC5Instructions category: #'RISC5-Instructions'!
Object subclass: #RISC5Instructions
	instanceVariableNames: 'destReg'
	classVariableNames: 'FRegs IRegs'
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Instructions class' category: #'RISC5-Instructions'!
RISC5Instructions class
	instanceVariableNames: ''!

!classDefinition: #RV64B category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64B
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64B class' category: #'RISC5-Instructions'!
RV64B class
	instanceVariableNames: ''!

!classDefinition: #RV64I category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64I
	instanceVariableNames: 'sourceReg immediate12'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64I class' category: #'RISC5-Instructions'!
RV64I class
	instanceVariableNames: ''!

!classDefinition: #RV64ADDI category: #'RISC5-Instructions'!
RV64I subclass: #RV64ADDI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADDI class' category: #'RISC5-Instructions'!
RV64ADDI class
	instanceVariableNames: ''!

!classDefinition: #RV64J category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64J
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64J class' category: #'RISC5-Instructions'!
RV64J class
	instanceVariableNames: ''!

!classDefinition: #RV64R category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64R
	instanceVariableNames: 'regA regB'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64R class' category: #'RISC5-Instructions'!
RV64R class
	instanceVariableNames: ''!

!classDefinition: #RV64ADD category: #'RISC5-Instructions'!
RV64R subclass: #RV64ADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADD class' category: #'RISC5-Instructions'!
RV64ADD class
	instanceVariableNames: ''!

!classDefinition: #RV64AND category: #'RISC5-Instructions'!
RV64R subclass: #RV64AND
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64AND class' category: #'RISC5-Instructions'!
RV64AND class
	instanceVariableNames: ''!

!classDefinition: #RV64OR category: #'RISC5-Instructions'!
RV64R subclass: #RV64OR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64OR class' category: #'RISC5-Instructions'!
RV64OR class
	instanceVariableNames: ''!

!classDefinition: #RV64SLL category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLL class' category: #'RISC5-Instructions'!
RV64SLL class
	instanceVariableNames: ''!

!classDefinition: #RV64SLT category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLT class' category: #'RISC5-Instructions'!
RV64SLT class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTU category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLTU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTU class' category: #'RISC5-Instructions'!
RV64SLTU class
	instanceVariableNames: ''!

!classDefinition: #RV64SRA category: #'RISC5-Instructions'!
RV64R subclass: #RV64SRA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRA class' category: #'RISC5-Instructions'!
RV64SRA class
	instanceVariableNames: ''!

!classDefinition: #RV64SRL category: #'RISC5-Instructions'!
RV64R subclass: #RV64SRL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRL class' category: #'RISC5-Instructions'!
RV64SRL class
	instanceVariableNames: ''!

!classDefinition: #RV64SUB category: #'RISC5-Instructions'!
RV64R subclass: #RV64SUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SUB class' category: #'RISC5-Instructions'!
RV64SUB class
	instanceVariableNames: ''!

!classDefinition: #RV64XOR category: #'RISC5-Instructions'!
RV64R subclass: #RV64XOR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64XOR class' category: #'RISC5-Instructions'!
RV64XOR class
	instanceVariableNames: ''!

!classDefinition: #RV64S category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64S
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64S class' category: #'RISC5-Instructions'!
RV64S class
	instanceVariableNames: ''!

!classDefinition: #RV64U category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64U
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64U class' category: #'RISC5-Instructions'!
RV64U class
	instanceVariableNames: ''!

!classDefinition: #RISC5InstructionsTests category: #'RISC5-Instructions'!
TestCase subclass: #RISC5InstructionsTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5InstructionsTests class' category: #'RISC5-Instructions'!
RISC5InstructionsTests class
	instanceVariableNames: ''!


!RV64I commentStamp: '<historical>' prior: 0!
Immediate instructions

	destReg := regA OP immed12
	
Instruction Pattern:
  [immed12][regA][func3][destReg][opcode]!

!RV64ADDI commentStamp: '<historical>' prior: 0!
Add Immediate
	destReg := sourceReg OP immediate12

Instruction Pattern:
  [immed12][sourceReg][func3][destReg][opcode]!

!RV64R commentStamp: '<historical>' prior: 0!
R => 3 Register opcode; Register to Register

  destReg := regA OP regB

Instruction Pattern:
  [func7][regB][regA][func3][destReg][opcode]!

!RV64OR commentStamp: '<historical>' prior: 0!
Inclusive OR {distinguish XOR)!

!RV64SLL commentStamp: '<historical>' prior: 0!
Shift Left Logical -- destReg := regA << regB
!

!RV64SLT commentStamp: '<historical>' prior: 0!
Set if Less Than (Signed): 
  if regA < regB then destReg := 1 else destReg := 0!

!RV64SLTU commentStamp: '<historical>' prior: 0!
Set if Less Than (Unsigned): 
  if regA < regB then destReg := 1 else destReg := 0!

!RV64SRA commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic -- destReg := regA >> regB; most significant bit duplicated!

!RV64SRL commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic -- destReg := regA >> regB!

!RV64XOR commentStamp: '<historical>' prior: 0!
eXclusive OR {distinguish OR)!

!RISC5Regs class methodsFor: 'class initialization' stamp: 'KenD 5/3/2021 12:07:36'!
initialize
"
	self initialize
"
	"Register Encoding
	 Note the non-uniform name ordering.
	 See #RISC5Instructions class>>initialize"
 	 X0 := Zero := 0.
 	 X1 := ReturnAddr := 1.
	 X2 := StackPtr:= 2.
 	 X3 := GlobalPtr:= 3.
 	 X4 := ThreadPtr := 4.
 	 X5 :=  Tmp0 := 5.
 	 X6 :=  Tmp1 := 6.
 	 X7 :=  Tmp2 := 7.
 	 X8 :=  FramePtr := 8.
 	 X9 :=  Sav0 := 9.
	X10 :=  Arg0 :=  10.
	X11 :=  Arg1 := 11.
	X12 :=  Arg2 := 12.
	X13 :=  Arg3 := 13.
	X14 :=  Arg4 := 14.
	X15 :=  Arg5 := 15.
	X16 :=  Arg6 := 16.
	X17 :=  Arg7 := 17.
	X18 := Sav2 := 18.
	X19 := Sav3 := 19.
	X20 := Sav4 := 20.
	X21 := Sav5 := 21.
	X22 := Sav6 := 22.
	X23 := Sav7 := 23.
	X24 := Sav8 := 24.
	X25 := Sav9 := 25.
	X26 := Sav10 := 26.
	X27 := Sav11 := 27.
	X28 := Tmp3 := 28.
	X29 := Tmp4 := 29.
	X30 := Tmp5 := 30.
	X31 := Tmp6 := 31.
	
	 F0 := FTmp0 := 0.
	 F1 := FTmp1 := 1.
	 F2 := FTmp2 := 2.
	 F3 := FTmp3 := 3.
	 F4 := FTmp4 := 4.
	 F5 := FTmp5 := 5.
	 F6 := FTmp6 := 6.
	 F7 := FTmp7 := 7.
	 F8 := FSav0 := 8.
	 F9 := FSav1 := 9.
	F10 := FArg0 := 10.
	F11 := FArg1 := 11.
	F12 := FArg2 := 12.
	F13 := FArg3 := 13.
	F14 := FArg4 := 14.
	F15 := FArg5 := 15.
	F16 := FArg6 := 16.
	F17 := FArg7 := 17.
	F18 := FSav2 := 18.
	F19 := FSav3 := 19.
	F20 := FSav4 := 20.
	F21 := FSav5 := 21.
	F22 := FSav6 := 22.
	F23 := FSav7 := 23.
	F24 := FSav8 := 24.
	F25 := FSav9 := 25.
	F26 := FSav10 := 26.
	F27 := FSav11 := 27.
	F28 := FTmp8 := 28.
	F29 := FTmp9 := 29.
	F30 := FTmp10 := 30.
	F31 := FTmp11 := 31.
! !

!RISC5Instructions methodsFor: 'initialization' stamp: 'KenD 5/1/2021 08:48:23'!
destReg: regDest

	destReg := regDest ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:03:50'!
floatRegName: regIntEncoding
	"Float register name from 5 bit integer encoding"
	^FRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 08:46:37'!
opcode

	self subclassResponsibility ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:03:17'!
regName: regIntEncoding
	"Integer register name from 5 bit integer encoding"
	^IRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'class initialization' stamp: 'KenD 5/3/2021 12:06:56'!
initialize
"
	self initialize.
"
	"Register Names at index+1; 
	  I.e. #Zero is register 0 at index 1.
	  Note the non-uniform name ordering.
	  See #RISC5Regs class>>initialize"
	IRegs := 
		#(Zero ReturnAddr 
		  StackPtr GlobalPtr ThreadPtr   
		  Tmp0 Tmp1 Tmp2 FramePtr Sav1 "Sav0 is FramePtr"
		  Arg0 Arg1 Arg2 Arg3 Arg4 Arg5 Arg6 Arg7
		  Sav2 Sav3 Sav4 Sav5 Sav6 Sav7 Sav8 Sav9 Sav10 Sav11
		  Tmp3 Tmp4 Tmp5 Tmp6).
	FRegs :=
		#(FTmp0 FTmp1 FTmp2 FTmp3 FTmp4 FTmp5 FTmp6 FTmp7
	 	  FSav0 FSav1  FArg0 FArg1
		  FArg2 FArg3 FArg4 FArg5 FArg6 FArg7 
		  FSav2 FSav3 FSav4 FSav5 FSav6 FSav7 FSav8 FSav9 FSav10 FSav11 
		  FTmp8 FTmp9 FTmp10 FTmp11).! !

!RV64I methodsFor: 'initialization' stamp: 'KenD 5/3/2021 15:16:54'!
destReg: regDest regSource: reg1 imm12: immediateInt12

	super destReg: regDest .
	sourceReg := reg1.
	immediate12 := immediateInt12 ! !

!RV64I methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:16:54'!
instruction
	
	^self class
		assembleImmediate: immediate12 
		rSource: sourceReg 
		func3: self func3
		rDest: destReg 
		op: self class opcode! !

!RV64I methodsFor: 'printing' stamp: 'KenD 5/3/2021 15:18:24'!
printString
	"E.g.: 'addi  rd,r1s,36' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: sourceReg), ', ', 
		'16r', (immediate12 printStringBase: 16).  "FIXME: 0x??"! !

!RV64I class methodsFor: 'instance creation' stamp: 'KenD 5/3/2021 15:25:13'!
regDest: destReg regSource: reg1 imm12: immediate12

	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].
		
	^self new destReg: destReg regSource: reg1  imm12: immediate12 ! !

!RV64I class methodsFor: 'instruction assembly' stamp: 'KenD 5/3/2021 14:45:55'!
assembleImmediate: immed12  rSource: reg1 func3: f3 rDest: destReg op: opcode
	"[immed12 31:20][rSource1 19:15][func3 14:12][rd 11:7][opcode 6:0]"
	^(immed12 << 20) + (reg1 << 15) + (f3 << 12) + (destReg << 7) + opcode! !

!RV64I class methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:41:42'!
opcode
	"Opcode for all I-type instructions"
	^2r0010011! !

!RV64ADDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:02:11'!
func3

	^16r0! !

!RV64ADDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:07'!
opName

	^'addI'! !

!RV64R methodsFor: 'printing' stamp: 'KenD 5/3/2021 12:00:09'!
printString
	"E.g.: 'add  rd,r1,r2' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: regA), ',', 
		(self class regName: regB)! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:26'!
func3

	self subclassResponsibility ! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:30'!
func7

	self subclassResponsibility ! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:43'!
instruction
	
	^self class
		assembleFunc7: self func7 
		r2: regB
		r1: regA
		func3: self func3 
		rd: destReg 
		op: self class opcode! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:01:13'!
opName

	self subclassResponsibility ! !

!RV64R methodsFor: 'initialization' stamp: 'KenD 5/1/2021 08:48:48'!
destReg: regDest regA: reg1 regB: reg2

	super destReg: regDest .
	regA := reg1.
	regB := reg2! !

!RV64R class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 16:10:11'!
opcode
	"Opcode for all R-type instructions"
	^2r0110011! !

!RV64R class methodsFor: 'instance creation' stamp: 'KenD 5/1/2021 16:07:42'!
regDest: destReg regA: reg1 regB: reg2

	^self new destReg: destReg regA: reg1 regB: reg2! !

!RV64R class methodsFor: 'instruction assembly' stamp: 'KenD 5/1/2021 09:21:51'!
assembleFunc7: f7 r2: reg2 r1: reg1 func3: f3 rd: destReg op: opcode
	"[func7 31:25][rs2 24:20][rs1 19:15][func3 14:12][rd 11:7][opcode 6:0]"
	^(f7 << 25) + (reg2 << 20) + (reg1 << 15) + (f3 << 12) + (destReg << 7) + opcode! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:11:48'!
func3

	^16r0! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:13:28'!
func7

	^16r00! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 11:50:46'!
opName

	^'add'! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:47'!
func3

	^16r7! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:35'!
func7

	^16r00! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:14'!
opName

	^'and'! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:13:29'!
func3

	^16r6! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:13:12'!
func7

	^16r00! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:14:18'!
opName
	" 'ior' ?"
	^'or'! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:20:55'!
func3

	^16r1! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:21:10'!
func7

	^16r00! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:27'!
opName

	^'slL'! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:30:02'!
func3

	^16r2! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:29:48'!
func7

	^16r00! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:29:27'!
opName

	^'slt'! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:33:44'!
func3

	^16r2! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:33:32'!
func7

	^16r00! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:12'!
opName

	^'sltU'! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:26:54'!
func3

	^16r5! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:26:36'!
func7

	^16r20! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:00'!
opName

	^'srA'! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:23:23'!
func3

	^16r5! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:23:03'!
func7

	^16r00! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:52'!
opName

	^'srL'! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:07'!
func3

	^16r0! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:21'!
func7

	^16r20! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 11:57:50'!
opName

	^'sub'! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:11:09'!
func3

	^16r4! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:11:38'!
func7

	^16r00! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:33'!
opName

	^'Xor'! !

!RISC5InstructionsTests methodsFor: 'tests - RV64I' stamp: 'KenD 5/3/2021 12:09:47'!
testRV64I

	self assert: (RV64ADD regDest: X3 regA: X1 regB: X2) instruction 
		= 2r0000000001000001000000110110011.
	self assert: (RV64SUB regDest: 3 regA: 1 regB: 2) instruction
		= 2r1000000001000001000000110110011.
	self assert: (RV64SUB regDest: 3 regA: 1 regB: 2) printString 
		= 'sub  GlobalPtr, ReturnAddr,StackPtr' .
		
		
	! !
RISC5Instructions initialize!
RISC5Regs initialize!
