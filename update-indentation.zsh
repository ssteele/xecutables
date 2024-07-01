#!/bin/zsh

# gather list of files
# find . -type f -iname "*.js" > file-list.txt

# run
# updateIndentation.zsh file-list.txt

safeMode=false

while read filename; do
    if ! [[ -r "$filename" ]]; then
        echo "Skipping '$filename' because not readable"
        continue
    fi
    tempfile="$(mktemp)"

    # 4 spaces => 2 spaces
    if perl -ne '$_ =~ s|^((    )+)|"  " x (length($1)/4)|eg; print $_' < "$filename" > "$tempfile"; then
        if $safeMode; then
            mv "$filename" "$filename".orig
        fi
        mv "$tempfile" "$filename"
        echo "Success processing '$filename'"
    else
        echo "Failure processing '$filename'"
    fi
done < "$1"
