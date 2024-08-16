#!/bin/bash

# Load the Default Profile
. ~/.bash_profile

# Set the pipefail option so the "tee" commands do not mask errors
set -o pipefail

# Set-up misc. variables
PID=$$
PGM=`basename $0`
PGM_DIR=`dirname $0`
SCRIPT_USER=`whoami`
LOG_DIR="${PGM_DIR}/logs"
LOG_FILE=${LOG_DIR}/${PGM}_${PID}_`date +%m%d%y_%H%M%S`.log

echo -e "Script: ${0} was called with arguments: ${1} ${2} ${3} ${4} ${5} ${6} ${7}" | tee -a ${LOG_FILE}

cd ${PGM_DIR}
source .venv/bin/activate

text-file-to-pdf \
    --input-file="input/${1}" \
    --output-file="output/${2}" \
    --orientation="${3}" \
    --unit="${4}" \
    --format="${5}" \
    --font-name="${6}" \
    --font-size="${7}" \
    | tee -a ${LOG_FILE}

PYTHON_RC=$?

echo -e "\nPython exit code: ${PYTHON_RC}" | tee -a ${LOG_FILE}

exit ${PYTHON_RC}
