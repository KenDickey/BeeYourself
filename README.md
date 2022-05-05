# BeeYourself

Experiments in porting Powerlang/Bee-DMR bootstrap to Cuis

Nota Bene: _very_ pre-Alpha [Broken, but package now loads with: "Feature require: 'PowerLang'"]

Background:
- http://esug.org/data/ESUG2014/IWST/Papers/iwst2014_Design%20and%20implementation%20of%20Bee%20Smalltalk%20Runtime.pdf [Bee Runtime]
- http://stefan-marr.de/downloads/dls17-pimas-et-al-garbage-collection-and-efficiency-in-dynamic-metacircular-runtimes.pdf [Bee GC]
- https://www.slideshare.net/esug/bee-smalltalk-runtime-anchors-aweigh
- https://2017.splashcon.org/details/meta-2017/3/Metaphysics-Towards-a-Robust-Framework-for-Remotely-Working-with-Potentially-Broken- [Bee Remote Debug]
- https://powerlang.readthedocs.io/en/latest/index.html
- https://github.com/powerlang [Bee Bootstrap]
- https://www.youtube.com/watch?v=ZWPMBSvYrs8 [Smalltalk VM Hackathon]
- http://www.smalltalksystems.com/publications/avmarch.pdf [A Smalltalk Virtual Machine Architectural Model]

![Bee Yourself](BeeGraphic.png)

## Scattered Thoughts

We explain the world through stories.

- In pushing compute interface from a virtual machine down into actual hardware, we need to (re)present the HW compute context in the runtime. ["Stories all the way down" => "Comprehensible all the way down"].
- In particular the Debug Context needs to be improved [also: REPL backstop Debugger].
- We need to present runtime services as telling _stories_, stories written in Smalltalk.
- Compiler optimization by program transformation is optimization by stories with measurement to see what pays for itself. [Efficient => apt metaphor]
- Smalltalk is a self-presenting mediator between hardware and software.

Where does this lead us?

Thread as VCPU (Virtual CPU), when running is assigned to real CPU (core). VCPU object follows Bee pattern: OOP points just past header to register/CPU-state save area, followed by Thread Local Storage (e.g. per-thread dynamic context).

When a Debug Thread is running, the debugged thread is not, so VCPU registers are directly inspectable as VCPU instance variables.

The natural model is to think of the runtime like a RTOS (Real Time OS) Kernel.  Starting an image is spawning a Primordial/Home/Mother thread which spawns worker threads (including UI, debugger(s), ?timer?, ?gc?).  HW interrupt reflected through Mother Thread to events. Mother thread spawns and cares for workers.

Smalltalk is the mediator between raw HW and its SW presentation.

Smalltalk is a system that knows itself.**

The stories written in Smalltalk explain the computational world view.

## Machine <<==Smalltalk==>> Presentation

Stack <<=========>> Linked Contexts

Regs+Mem <<=====>> Objects+ivars/slots

Instructions <<=====>> Operations/[Macro]Opcodes

## Possible Register Usage
````
Bee      Aarch64     RISCV
---      -------     -----
IP        -           -
SP        SP*        X2
FP        R29        X8
R         R0/R1      X10/X11
M         R19        X19
S         R20        X20
E         R21        X21
A         R2-7       X12-17
T         R9-12      X28-31
V         R22        X22
G         R23        X23
nil       R24        X24
true      R25        X25
false     R26        X26

````

## Visualize & Explain Runtime Structures & Strategies

- Hash & Cache
  - PICs
  - Symbol interning
  - Dictionaries
- Constat Propagation
- Object Layouts
- Horizontal (bitstring) vs Vertical (index) Encoding
- Control flow
  - Interrupts; exceptions
- GC
  - Storage allocation; tagging
  - Pinned objects
  - When is it stable?
  - What needs to be pinned? [VCPUs;GC code;..]

## Find Still/Save Points

- Don't change the code for a method while the method is being executed
[ e.g. during message-send; library loading ]
- Don't add/remove elements of a collection as it is being traversed
- Don't move (gc) objects while they are being referenced
- Note live-update rubrics; atomics; lock-free/wait-free

## Learn Smalltalk = Learn all of Computer Science

- Recursion
- Color
- Time(r)
- Mappings (colors;floats;integers;chars;..)
- Compile; runtime-libs; gc; multicore; iNet;..
- Emergent Properties

## Look, Ma, no compiler

Should be able to port by cross-compiling nativizer for new platform and cross/pre-nativise the loader.  Let loader nativise methods during load.  Simple port w/o running a compiler.


## Playtime:

```Smalltalk
Feature require: 'PowerLang'.

SCompiler compile:  'foo [true ifTrue: [^self]]' in: UndefinedObject.
(SCompiler forClass: UndefinedObject) smalltalkCompiler  compileMethod:   'foo [true ifTrue: [^self]]' .


````
## Browsing Tonel Source Files

````
cd Cuis-Smalltalk
git clone https://github.com/KenDickey/Cuis-Smalltalk-Tonel-Browser
```
Then
```Smalltalk
Feature require: 'ExchangeFormat-Tonel-Lite'.
````
You should be able to open a File List, select a Tonel file, and click on the _code_ button to view in a Code Browser.


## Licences

- See LICENCES directory: Acuerna, JavierPimas (Quorum Software) and Cuis -- all MIT.
- Packages typically specify copyright but unspecified => Cuis.

** "What is a System?  Simply a set of things that are interconnected in ways that produce distinct patterns of behavior." _Doughnut Economics_, Kate Raworth.

