# Test Comparator CLI

The **Test Comparator CLI** is a Bash script designed to compare the outputs of two C++ programs given different inputs. This tool assists in validating correctness between a correct and a potentially erroneous implementation of an algorithm or code snippet.

## I have given **my generator code** snippet in generator.cpp, you can use it or write your own generator code

## Features

- **Automated Comparison:** Quickly test and compare the outputs of two C++ programs with generated test cases.
- **Error Identification:** Instantly detect discrepancies between expected and actual outputs.
- **Customizable:** Accepts different filenames for the generator, correct code, and erroneous code.

## Installation

1. **Clone the repository:**

    ```bash
    git clone https://github.com/SinghAtithi/Stress-Test-CLI.git
    cd Stress-Test-CLI
    ```

2. **Make the script executable:**

    ```bash
    chmod +x stressTest.sh
    ```

3. **Usage:**

    Run the script by providing the generator, correct code, and wrong code filenames as arguments.

    ```bash
    ./stressTest.sh -g generator.cpp -c correctCode.cpp -w wrongCode.cpp
    ```

## Examples

### Comparing Outputs

Running the script to compare outputs of C++ programs:

```bash
./test_script.sh -g generator.cpp -c correctProgram.cpp -w wrongProgram.cpp

### Flag Explanation

- `-g generator.cpp`: Specifies the file containing the code to generate test cases.
- `-c correctProgram.cpp`: Indicates the correct C++ program for output comparison.
- `-w wrongProgram.cpp`: Specifies the potentially erroneous C++ program to compare against the correct one.
