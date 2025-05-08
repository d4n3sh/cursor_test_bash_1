# Bash Script Testing Example

This repository demonstrates a simple bash script with automated testing using both GitLab CI and GitHub Actions.

## Status

### GitLab CI
[![GitLab CI](https://gitlab.com/d4n3sh/cursor_test_bash_1/badges/main/pipeline.svg)](https://gitlab.com/d4n3sh/cursor_test_bash_1/-/commits/main)

### GitHub Actions
[![GitHub Actions](https://github.com/d4n3sh/cursor_test_bash_1/actions/workflows/test.yml/badge.svg)](https://github.com/d4n3sh/cursor_test_bash_1/actions/workflows/test.yml)

## Project Structure

- `hello.sh`: A simple bash script that prompts for a name and outputs a greeting
- `hello_test.bats`: Bats test file for the script
- `.gitlab-ci.yml`: GitLab CI configuration
- `.github/workflows/test.yml`: GitHub Actions workflow

## Running Tests Locally

1. Install bats:
   ```bash
   # On macOS
   brew install bats-core
   
   # On Ubuntu/Debian
   sudo apt-get install bats
   ```

2. Run the tests:
   ```bash
   bats hello_test.bats
   ```

## CI/CD

This project uses both GitLab CI and GitHub Actions for continuous integration:

- Linting: ShellCheck is used to check for common bash script issues
- Testing: Bats is used for automated testing
- Both pipelines run on Ubuntu latest 