# ifx + llvm combinations

|IFX       | LLVM      | WORKS      | NOTES |
|----------|-----------|------------|-------|
2023.0.0   | 15.0.7    | yes, CI    | N/A 
2023.0.0   | 16.0.6    | no         | bin-llvm/llvm-ar (shipped with IFX) is v16.0.0
2023.2.0   | 17.0.6    | yes, CI    | bin-llvm/llvm-ar --version is v17.0.0
2023.2.1   | 17.0.6    | yes        | minor version makes no difference here
2025.2.1   | 20.1.8    | no         | easiest to install via spack, prototype with this, 1/6 passed fortran tests
2025.2.1   | 21.0.0    | no         | bin-llvm/llvm-ar --version is 21.0.0
2025.2.1   | 21.1.1    | no         | 2/6 passed tests 
2025.2.1   | 21.1.8    | no         | latest llvm v21, 2/6 passed tests 
2025.3.2   | 21.1.1    | N/A        | ICON newest, bin-llvm/llvm-ar --version is 21.1.1, no spack pack ifx, latest v21 is 21.1.8
2025.3.3   | 21.1.8    | no         | ran in docker container, not possible with spack, 2/6 passed fortran tests 
