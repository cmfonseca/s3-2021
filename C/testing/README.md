# Add and Test a New Problem

- Create a source file in the `problem_init` folder, implementing the function `struct problem * initProblem(int argc, char ** argv);` from `problem_init.h` (see, in that folder, the examples for other problems). For example, create the file `fakeproblem_init.c`

- Create a file in the `mk`folder with the name of the problem, e.g., `fakeproblem.mk`
	- Set all variables (see the examples in that folder)
		- `PROBPATH`: path to the source code of the new problem
 		- `PROBOBJ`: name of the `.o` file
		- `PROBINIT`: path to the problem init file (e.g. `problem_init/fakeproblem_init.c`)
	- Set all the other variables to `1` or `0` to indicate whether the function with the same name should be tested or not, respectively.

- Run the Makefile indicating the problem name (must be the name given to the `.mk` file), e.g.: 
```
make PROBNAME=fakeproblem
```

This will create an executable file named `test-fakeproblem`.
- Run the tests (and provide any additional arguments required, as defined in `initProblem()`):
```
`./test-fakeproblem
```
