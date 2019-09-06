#!/bin/bash
comment_1=$1
comment_2=$2

git pull
git add -A

if [[ -n $comment_1 ]]; then
	git commit -m "${comment_1}"
elif [[ -n $comment_2 ]]; then
		git commit -m "${comment_1}" "${comment_2}"
	else 
		git commit -m "increment"
	fi

git push