#!/bin/bash

# SABnzbd Post Processing Script - www.Filebot.net "AMC" Script

FILE_PATH=$1
FILE_NAME=$3

filebot -script \
   fn:amc \
   --output "/FileServer/Media" \
   --log-file amc.log \
   --action move \
   --conflict auto \
   --def music=n \
   --def xbmc=192.168.11.21 \
   --def plex=192.168.11.18 \
   --def pushover=0bCZ8aVGC3YWxU2eGBsn9uB81RY1BA \
   --def artwork=y \
   --def subtitles=en \
   --def clean=y \
   --def "exts=jpg|nfo|srv|srr|nzb|sfv|idx|sub|txt|part01|part02|par1|par2" \
   --def "terms=sample|trailer|etc" \
   --def "ut_dir=$FILE_PATH" \
   --def "ut_kind=multi" \
   --def "ut_title=$FILE_NAME" \
