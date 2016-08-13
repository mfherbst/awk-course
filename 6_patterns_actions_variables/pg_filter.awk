#!/usr/bin/awk
/^\*\*\* START OF THIS PROJECT GUTENBERG EBOOK/, /\*\*\* END OF THIS PROJECT GUTENBERG EBOOK/ { print tolower($0) }
