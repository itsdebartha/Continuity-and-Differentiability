# Continuity-and-Differentiability
![Julia](https://img.shields.io/static/v1?label=Language%20Used&message=The%20Julia%20Programming%20Language&color=purple&logo=julia&logoColor=white)<br>
A repository for checking the continuity or differentiability of a mathematical function<br>
Suppose we have a mathematical function in one variable and we'd like to find if it is continuous at a certain point or not. This program does exactly that and tries to find the answer for you.<br>
###  Usage
The file `limit.jl` is the file that you'd want to run. Change the function defined inside `f`, and find out if the function is continuous or not. For continuous functions, it returns:
```
Continuous at x=    #the point where you check for the function's continuity
Limit value:     #value of the limit round off to two decimal places
h=    #value of the limiting epsilon
Iterations=    #number of iterations upon converging
```
Upon being discontinuous, the program only returns `Discontinuous`.<br>

Note that only functions of single variable are supported, as of now.
### Example runs
```
f(x)=3x+2
lim(f)

Continuous at x=0
Limit value: 2.0
h=1.0e-9
Iterations=5
```
```
f(x)=3x+2
lim(f,2)

Continuous at x=2
Limit value: 8.0
h=1.0e-9
Iterations=5
```
```
f(x)=1/x
lim(f)

Discontinuous
```

### Future Implementations
Coming soon to this is the differentiabiity checker, and the ability to input your own function without changing `f` and multi-variable support and many bug-fixes and improvements. An improved and updated documentation will also be given.

----
The program was implemented in:
```
Julia Version 1.7.2
Commit bf53498635 (2022-02-06 15:21 UTC)
Platform Info:
  OS: Windows (x86_64-w64-mingw32)
  CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
  WORD_SIZE: 64
  LIBM: libopenlibm
  LLVM: libLLVM-12.0.1 (ORCJIT, tigerlake)
Environment:
  JULIA_EDITOR = code
  JULIA_NUM_THREADS =
```
