# This file is sourced by all shell scripts.
# Put common variables and code here.

awk=awk
fgrep=fgrep
grep=grep
httpget=curl
sed=sed
xargs=xargs
bc='bc -l'
cc='cc -O2 -lm'

umask 002

# srcdir is the directory where this script resides
srcdir="$(cd `dirname "$0"` && pwd)"
# resultdir is the directory where to put the complete results
resultdir="${srcdir}/results"
# briefdir is the directory where to put the summarized results
briefdir="${srcdir}/summary"

# create the directory that holds the results if it does not exist yet
[ ! -d $resultdir ] && mkdir "${resultdir}"

# create the index file if it does not exist
touch ${resultdir}/index
