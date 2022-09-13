# Continuity-and-Differentiability
![Julia](https://img.shields.io/static/v1?label=Language%20Used&message=The%20Julia%20Programming%20Language&color=purple&logo=julia&logoColor=white)<br>
A repository for checking the continuity or differentiability of a mathematical function<br>
Suppose we have a mathematical function in one variable and we'd like to find if it is continuous at a certain point or not. This program does exactly that and tries to find the answer for you.<br>
The background is the simple fact of basic mathematics where we find out the left hand limits and the right hand limits and check if they are equal or not. In short, a function is continuous, if both the left hand and the right hand limits are the same. Mathematically, this can be defined as:<br>
![Equation](https://latex2png.com/pngs/ecd3d8e13746a82127f4eed1f79de818.png)<br>
The function `lim` contains three arguments:
- `f`: The function to check the continuity
- `x=0`:  The point where you'd want to check the continuity of `f` (by default its 0)
- `eps=1.0e-7`: The tolerance (or epsilon as we'd like to call it) of the accepted neighbourhood, inside which we'll call the function is continuous (by default its 1.0e-7)

###  Usage
The file `limit.jl` is the file that you'd want to run. The program prompts for a user an input function. Enter the function and the program returns a DataFrame as the output which has:
- `Expression`: The input expression
- `x`:  The point where the function needs to be checked (by default its 0)
- `h`:  The final value of `h` such that<br> ![](https://latex2png.com/pngs/2c66ebef660f8b73d9b193b7461e16a2.png)
- `UpperLimit`: The value of the upper limit of the function at `x`
- `LowerLimit`: The value of the lower limit of the function at `x`
- `Summary`:  Either `Discontinuous` or `Continuous` according as the upper and lower limits are same or not
- `Limit`:  If the function is discontinuous, this returns `Undefined` else this returns the limit of the function at `x`
- `Iterations`: Number of iterations taken for attaining convergence, if any (Note that this will stop at 100 if the function is discontinuous)


Note that only functions of single variable are supported, as of now. Also, manually fabricated functions with jump discontinuity will not be accepted.
### Example runs

```
1×8 DataFrame
 Row │ Expression  x      h        UpperLimit  LowerLimit  Summary     Limit    Iterations 
     │ String      Int64  Float64  Float64     Float64     String      Float64  Int64      
─────┼─────────────────────────────────────────────────────────────────────────────────────
   1 │ sin(x)/x        0      0.1    0.998334    0.998334  Continuous      1.0           1
```

```
1×8 DataFrame
 Row │ Expression  x      h         UpperLimit  LowerLimit  Summary        Limit      Iterations 
     │ String      Int64  Float64   Float64     Float64     String         String     Int64      
─────┼───────────────────────────────────────────────────────────────────────────────────────────
   1 │ abs(x)/x        0  1.0e-199         1.0        -1.0  Discontinuous  Undefined         100
```

### Future Implementations
Coming soon to this is the differentiabiity checker, multi-variable support and many bug-fixes and improvements. An improved and updated documentation will also be given.

### Updates in this new version
- Now you can finally enter the function without having to change `f`.
- Output now consists of a DataFrame.

### Bugs
- Found a weird bug that causes the input to behave differently from expectation. Fix coming soon.

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
