examplepackage.torch
====================

A hello-world for torch packages

You can install the package by opening a terminal, changing directory into the folder and typing:

luarocks make

pstoynn
=======
My code to play around. A toy nn.module which multiplies a scalar for the input tensor.
* Pure lua code (all torch.Tensor)
* Pure C code (torch.FloatTensor only)
* Pure CUDA-C code (torch.CudaTensor only)
Purpose: get familiar with the typical recipies of a package
* lua code built on top of "nn" package (add functions to the "nn" namespace)
  * init.lua
  * test code
* C code library that joins the namespace of lua code
* CMakeLists.txt and rock specs