#!/bin/bash
# download necessary book files from project gutenberg

LIST="345 74 76 1232 1322 158 161 174 1952 2591 5200 844 8800 98"

# Optionally verify these books are in the public domain in your country of residence
# 345 - Dracula by Bram Stoker
# 74 - The Adventures of Tom Sawyer by Mark Twain
# 76 - Adventures of Huckleberry Finn by Mark Twain
# 1232 - The Prince by Nicolo Machiavelli
# 1322 - Leaves of Grass by Walt Whitman
# 158 - Emma by Jane Austen
# 161 - Sense and Sensibility by Jane Austen
# 174 - The Picture of Dorian Gray by Oscar Wilde
# 1952 - The Yellow Wallpaper by Charlotte Perkins Gilman
# 2591 - Grimms’ Fairy Tales by Jacob Grimm and Wilhelm Grimm
# 5200 - Metamorphosis by Franz Kafka
# 844 - The Importance of Being Earnest -- A Trivial Comedy for Serious People by Oscar Wilde
# 8800 - The Divine Comedy -- The Vision of Hell, Purgatory and Paradise by Dante Alighieri
# 98 - A Tale of Two Cities -- A Story of the French Revolution by Charles Dickens

# select a mirror from https://www.gutenberg.org/MIRRORS.ALL
# as requested in https://www.gutenberg.org/policy/terms_of_use.html
MIRROR=http://www.mirrorservice.org/sites/ftp.ibiblio.org/pub/docs/books/gutenberg/

#----

return_url() {
	#$1: id
	local URL=$MIRROR
	for ((i=0;i<${#1}-1;++i)) {
		URL="$URL/${1:$i:1}"
	}
	echo "$URL/$1/$1-0.txt"
}

verbose_sleep() {
	local WAIT_TIME=$1
	for ((;WAIT_TIME > 0; WAIT_TIME--)); do
		printf "\rSleeping for %5i secs." "${WAIT_TIME}"
		sleep 1
	done
	printf "\r"
}

for book in $LIST; do
	wget --continue $(return_url $book) -O "pg$book.txt"
	verbose_sleep $((5+RANDOM%10))
done
