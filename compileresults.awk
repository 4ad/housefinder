{
	print $3
	system("cat "$1".*.url")
	print $1
	system("cat "$1".*.price")
	system("sh -c '[ -f "$1".*.provision ] && cat "$1".*.provision || echo yes'")
	system("cat "$2".*.url")
	print $2
	system("cat "$2".*.price")
	system("sh -c '[ -f "$2".*.provision ] && cat "$2".*.provision || echo yes'")
	print ""
}

NR % 100 == 0{
	print NR > "/dev/tty"
}
