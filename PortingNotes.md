# Porting Notes

Three enironments to consider:
-  [A] Host (Cuis/Pharo/SmalltalkX/..)
-  [B] Cross Platform Toolset (running in A)
-  [C] Virtual Namespace for Product/DMR (maintained by B)


## CURRENT STATUS:

My basic goal was to port the Bee/Powerlang code into Cuis to be able to use the code browsing and lookup tools.

I did this manually by cut 'n paste, which was slow but meant that I read the code I was porting.

This was also a motivator for me to do code to import/transliterate the Tonel format files into Chunk format so that I never have to do that again!

As you note from the BeeYourself README.md, you can compile Bee code into ASTs.  Quite a number of the unit tests also pass -- however quite a number of important ones fail as well.

In particular, the Pharo Powerlang code makes use of the Ring2 abstraction in Pharo.  Ring2 is a huge port which I would prefer to avoid if I can.

There is also the full Tonel codebase which could be ported.

The big chunks are: [A] make a Tonel database to hoover up the DMR Kernel code, [B] Do the RING (or separate environment/namespace to implement #VirtualSmalltalkImage) tracking to be able to cross-compile the DMT Kernel to bake a runtime, and of course [C] back end to Linux Aarch64/Arm64 and RISC-V G64.

In the mean time, Javier has been updating the code base, so the Bee/Powerlang code I ported is no longer current.

Also, my old Intel iMac is in parts as I fix the display HW.  I have some component soldering to do. I typically use Raspberry Pi 4 which is great for Cuis but this does not run Pharo and so I cannot turn the crank on the Powerlang-in-Pharo code to see how things should properly behave.

So the synopsis is: the machinery is largely in pieces on the floor, but you can look at the parts and get some idea of the mechanical details and how things fit together.


Ring: as with Tonel, Javier has started a replacement
  https://github.com/melkyades/transliterator

The idea being that [A] source for code and its shape is tracked (as with Ring) and [B] we should share code between Smalltalk dialects using rewrite/transliteration rules.

My port of Javier's transliterator is
   BeeYourself/CodeSpecs.pck.st

I think it would be easier to expand this a bit to get the benefits of Ring without the Bloat.

==================================
```Smalltalk
Feature require: 'ExchangeFormat-Tonel-Lite'.
Feature require: 'CodeSpecs'.
Feature require: 'PowerLang'.
```
==================================
