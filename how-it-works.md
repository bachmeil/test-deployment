# How It Works

This is quite a simple site generator. It grabs all .md files in the directory, adds page-top.html at the top, the markdown content in the middle, and page-bottom.html at the bottom. The markdown content is placed inside a hidden textarea. It is converted to html using markdown-it.

A link back to the index page is added to every page other than index.html.

It is straightforward to make any customizations you want by editing the page-top.html, page-bottom.html, and index-bottom files. If you want to change the way it builds, make changes to the buildscript file. The Makefile is no longer used. Doing anything complex in a Makefile is not my cup of tea.