NF==3 {
	prefix=$1 "." $2 ".url"
	print $3 > prefix
	close(prefix)
}
