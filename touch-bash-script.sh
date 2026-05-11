#!/usr/bin/env bash

filename=$1

if [ -z "$filename" ];
then
	echo "Give me a name for the script."
	exit 1
fi

if [ -f $filename ];
then
	echo "Sorry, I can't replace an existing file."
	exit 1
fi

if [ -d $filename ];
then
	echo "I don't know what you're thinking, but I can't replace an existing directory."
	exit 1
fi

if [ -e $filename ];
then
	echo "WHAT ARE YOU DOING?"
	exit 1
fi

cat << EOF > $filename && chmod +x $filename
#!/usr/bin/env bash


EOF

# Added to immediately set the cursor position on vim 
# on line 3 column 1
which vim 2>&1 >/dev/null
found_vim=$?

if [[ $found_vim -eq 0 ]];
then
	vim +3 -c "q" $filename
fi

# Tried to do the same with nano, but it seems it doesn't
# remember the last position.
# You can add your favorite terminal editor down here if it can
# remember the last registered position.

