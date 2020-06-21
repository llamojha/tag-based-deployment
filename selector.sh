#!/bin/bash

set -e

PREVIOUS_COMMIT=$(git log -n 1 --skip=1  --pretty=format:"%H")
LIST=$(git diff ${PREVIOUS_COMMIT}  --name-only)
PACKAGES=$(ls packages/ )
ENV="qa"

git log -n 1 --skip=1  --pretty=format:"%H"
echo "Files changing"
echo "${LIST}"
echo "##################################################"
for FILE in ${LIST}
do
  for PACKAGE in ${PACKAGES}
  do
    if [[ ${FILE} =~ "packages/${PACKAGE}"* ]]
        then
        echo "==> Adding TAG ${PACKAGE}-${ENV}"
        git tag ${PACKAGE}-${ENV} --force
        git push origin ${PACKAGE}-${ENV} --force
        PACKAGES=$( echo ${PACKAGES} | sed -e "s/${PACKAGE}//")
    fi
  done
done
