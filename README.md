# Test Comparator CLI

The **Test Comparator CLI** is a Bash script designed to compare the outputs of two C++ programs given different inputs. This tool assists in validating correctness between a correct and a potentially erroneous implementation of an algorithm or code snippet.

## Features

- **Automated Comparison:** Quickly test and compare the outputs of two C++ programs with generated test cases.
- **Error Identification:** Instantly detect discrepancies between expected and actual outputs.
- **Customizable:** Accepts different filenames for the generator, correct code, and erroneous code.

## Installation

1. **Clone the repository:**

    ```bash
    git clone [https://github.com/your_username/test-comparator.git](https://github.com/SinghAtithi/Stress-Test-CLI.git)
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
