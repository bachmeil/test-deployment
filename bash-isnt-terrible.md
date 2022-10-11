# Bash Isn't Terrible

I haven't done a lot of Bash programming. I've used Bash many times over a great number of years using Linux. It's just that I've never had a lot of reason to write Bash scripts. I decided to do that here because Bash is included in the default Ubuntu installation. Here's my build script (current as of this writing - maybe it will change in the future).

Remove the build directory if it exists. Then recreate it.

```
rm -f build
mkdir build
```

Iterate over all markdown files:

```
for f in ./*.md; do
```

Cut the first two characters since they are `./`.

```
  fmod="${f:2}"
```

Cut the extension `.md` from every filename.

```
  fmod2="${fmod::-3}"
```

Build the page. Build index.html differently (don't include a link at the bottom back to the index page). Multiple commands within a match are separated by a single `;`.

```
  case "$f" in
    ./index.md) cat page-top.html > build/index.html;cat index.md >> build/index.html;cat index-bottom.html >> build/index.html;;
    *) cat page-top.html > "build/${fmod2}.html";cat "${fmod2}.md" >> "build/${fmod2}.html";cat page-bottom.html >> "build/${fmod2}.html";;
  esac
```

Finish the loop.

```
done
```

I'm not going to move my programs to Bash. I may, however, be more open to writing Bash scripts in the future. The portability and lightweight nature of a Bash script is appealing.