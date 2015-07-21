This is a script that pushes all files in a local directory to an already created, remote repo. I'm still learning the ropes of git and github so this is experimental. This script must be located inside the directory of the desired local repo. ORIGINALLY, it was self checking in that, it iterated through the directory and added all files to a commit other than itself. NOW, it makes use of a simple one-liner that I hadn't thought of before in a file creation (.gitignore) writing "git.sh" for files to be ignored. Tilde files are also ignored. Whitespace in commit names seem to be cause it to trip up. One word named commits seem to be fine. Underscore naming works as well. 



Contact me with any questions: @ZWeed4U
