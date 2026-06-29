# ifx + llvm combinations

IFX         LLVM        WORKS       NOTES 
2023.0.0    15.0.7      yes, CI     N/A
2023.0.0    16.0.6      no          bin-llvm/llvm-ar (shipped with IFX) is v16.0.0
2023.2.0    17.0.6      yes, CI     bin-llvm/llvm-ar --version is v17.0.0
2025.2.1    21.0.0      no          bin-llvm/llvm-ar --version is 21.0.0
2025.3.2    21.1.1      no          ICON newest, bin-llvm/llvm-ar --version is 21.1.1, no spack pack, latest v21 is 21.1.8

