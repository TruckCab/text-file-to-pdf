# Text File to PDF

[<img src="https://img.shields.io/badge/GitHub-TruckCab%2Ftext--file--to--pdf-blue.svg?logo=Github">](https://github.com/TruckCab/text-file-to-pdf)
[![text-file-to-pdf-ci](https://github.com/TruckCab/text-file-to-pdf/actions/workflows/ci.yml/badge.svg)](https://github.com/TruckCab/text-file-to-pdf/actions/workflows/ci.yml)
[![Supported Python Versions](https://img.shields.io/pypi/pyversions/text-file-to-pdf)](https://pypi.org/project/text-file-to-pdf/)
[![PyPI version](https://badge.fury.io/py/text-file-to-pdf.svg)](https://badge.fury.io/py/text-file-to-pdf)
[![PyPI Downloads](https://img.shields.io/pypi/dm/text-file-to-pdf.svg)](https://pypi.org/project/text-file-to-pdf/)

## Install package
You can install `text-file-to-pdf` from source.

### Option 1 - from PyPi
```shell
# Create the virtual environment
python3 -m venv .venv

# Activate the virtual environment
. .venv/bin/activate

pip install text-file-to-pdf
```

### Option 2 - from source - for development
```shell
git clone https://github.com/TruckCab/text-file-to-pdf.git

cd text-file-to-pdf

# Create the virtual environment
python3 -m venv .venv

# Activate the virtual environment
. .venv/bin/activate

# Upgrade pip, setuptools, and wheel
pip install --upgrade pip setuptools wheel

# Install text-file-to-pdf - in editable mode with dev dependencies
pip install --editable .[dev]
```

### Note
For the following commands - if you running from source and using `--editable` mode (for development purposes) - you will need to set the PYTHONPATH environment variable as follows:
```shell
export PYTHONPATH=$(pwd)/src
```

## Usage
### Help
```shell
text-file-to-pdf --help
```

## Handy development commands

#### Version management

##### Bump the version of the application - (you must have installed from source with the [dev] extras)
```bash
bumpver update --patch
```
