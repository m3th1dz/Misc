#!/bin/bash

# SABnzbd Post Processing Script - www.Filebot.net "AMC" Script

FILE_PATH=$1
FILE_NAME=$3

filebot -script \
   fn:amc \
   --output "/path/to/your/media" \
   --log-file amc.log \
   --action move \
   --conflict auto \
   --def music=n \
   --def xbmc=127.0.0.1 \
   --def plex=127.0.0.1 \
   --def pushover= \
   --def artwork=y \
   --def subtitles=en \
   --def clean=y \
   --def "exts=jpg|nfo|srv|srr|nzb|sfv|idx|sub|txt|part01|part02|par1|par2" \
   --def "terms=sample|trailer|etc" \
   --def "ut_dir=$FILE_PATH" \
   --def "ut_kind=multi" \
   --def "ut_title=$FILE_NAME" 
