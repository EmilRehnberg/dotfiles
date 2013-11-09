#!/bin/bash 

function LsDirsZip {
  ChkRightNumOfArgs 1 $# \
    "Zip must be called. No other arguments allowed." \
    "Usage: $ LsDirsZip \${ZIP}"
  ZIP=$1
  ChkFileEnder $ZIP .zip
  unzip -l $ZIP | grep "  0  "
}

function ChkFileEnder {
  ChkRightNumOfArgs 2 $# \
    "ChkFileEnder requires two arguments. No other arguments allowed." \
    "Usage: $ ChkRightNumOfArgs \${FILE_NAME} \${ENDER}"
  FILE_NAME=$1
  ENDER=$2
  DIFF_LENGTH=$[${#FILE_NAME}-${#ENDER}]
  FILE_ENDER=${FILE_NAME:${DIFF_LENGTH}}
  if [ ! ${FILE_ENDER} == ${ENDER} ] ; then
    echo "$FILE_NAME does not have ender $ENDER. Exit!"
    sleep 5s
    exit 1
  fi
}

function ChkRightNumOfArgs {
  ExpectedNArg=$1
  ObservedNArg=$2
  FirstMsg=$3
  UsageMsg=$4
  if [ ! ${ObservedNArg} == ${ExpectedNArg} ] ; then 
    echo "Expected ${ExpectedNArg} argument(s). Got ${ObservedNArg} argument(s)."
    echo $FirstMsg 'EXITS in 5 sec.'
    echo $UsageMsg
    sleep 5s
    exit 1
  fi
}

function MkDirIfNonExistant {
  ChkRightNumOfArgs 1 $# \
    "Directory must be specified. No other arguments allowed." \
    "Usage: $ MkDirIfNonExistant \${DIR}"
  DIR=$1
  if [ ! -e $DIR ] ; then mkdir ${DIR} ; fi
}

function CdForce {
  ChkRightNumOfArgs 1 $# \
    'Directory ($1) must be specified. No other arguments allowed.' \
    'Usage: $ CdForce \${DIR}'
  DIR=$1
  MkDirIfNonExistant $DIR
  cd $DIR
}

function testArgs {
  echo "\$1=$1"
  echo "\$#=$#"
}

