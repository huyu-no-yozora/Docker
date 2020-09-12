#!/bin/bash
# 
# MIT License
# 
# tool/setup.sh
# 
# Copyright (c) 2020 冬ノ夜空
# 

# = settings ==============================
OUTNAME="example"  # basename of output pdf
SUBDIR="note"      # directory name(jsarticle->[SUBDIR])
# =========================================


# =========================================
# function

function replaceName() {
    
    # definition original string
    local target_str="template"
    local subdir="jsarticle"

    # change directory name
    mv "${subdir}" "${SUBDIR}" || true
    mv "${SUBDIR}/${target_str}.tex" "${SUBDIR}/${OUTNAME}.tex" || true

    # definition target files of Replacement
    local target_files=("Makefile" "${SUBDIR}/Makefile")
    
    # Replacement
    for file in "${target_files[@]}"
    do
        sed -i -e "s@${target_str}@${OUTNAME}@g" ${file} \
          || { echo -e "Error: fail to replace file name\n"; exit; }
        sed -i -e "s@${subdir}@${SUBDIR}@g" ${file} \
          || { echo -e "Error: fail to replace subdirectory name in some Makefile\n"; exit; }
    done

}

# =========================================

# =========================================
# Main Processing
PARENTDIR=".."

cd ${PARENTDIR}
replaceName

# =========================================
exit


