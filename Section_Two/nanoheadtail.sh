function openTut2(){
    ponygo raritycomplaining "You already know how to find files using ${b}find, ls,${r} and ${b}ls -lah${r}."
    ponygo fillyrarity "To see inside a file, you can do one of two things - print the file to the screen, or use a program that lets you navigate inside a file. Let's start with printing file contents to the screen."
    ponygo raritycomplaining "Try not to hit the \"v\" key while in ${b}less${r}. You can accidentally fall into ${b}vim${r} mode.${n2}If you do this, you'll see INSERT mode or some weird stuff on the bottom. Don't panic, just type ${b}escape+:${r}, then type in ${b}q!${r} and you will be back in normal mode."    
    ponygo raritycomplaining "${b}Less${r} ususally wraps long lines of text, which can make it a little hard to read certain files. You may notice a backslash (${b}\\${r}) on the right hand side of the screen in Unix - this means that the text continues to the next line.${n2}If you type a ${b}\ ${r}on the command line and hit enter, you will notice that bash is waiting for you to finish your thoughts before it does anything."
    ponygo rarityfly "In ${b}less${r}, you can tell lines not to wrap. You would open it like this:${n2}${b}less -S starbucks.txt${r}."
    ponygo rarity "It's helpful to start looking at a file by getting a sneak preview. You can take a look at the first few lines of the file using the ${b}head${r} command. You can look at the last few lines of a file using the ${b}tail${r} command."
    ponygo fillyrarity "By default, ${b}head${r} prints the first 10 or so lines of a file. You can specify how many lines to display with ${b}-n${r} like this:${n2}${b}head -n 5 starbucks.txt${r}${n2}Sometime you just need the first line, for example, or maybe the first hundred."
    ponygo rarityponder "${b}Tail${r} is the same way; you can specify how many lines to grab from the end of the file. One other great use for ${b}tail${r} is to have it to watch a file that is changing. The ${b}-f${r} flag tells ${b}tail${r} to keep showing an update of the last lines of the file."
    ponygo rarityelite "Lots of files are updated by appending text to the end, so ${b}tail -f${r} can watch it grow in real time. This is useful if you need to see outputs right away, or are watching a log file for errors."
    ponygo raritycomplaining "It can look like the computer is hanging after you run ${n}${b}tail -f starbucks.txt${r}${n}because it is sitting there waiting for changes. When you are ready to stop watching the file, you can hit ${b}ctrl+c${r}."
    ponygo rarityfly "${b}Head${r} and ${b}tail${r} give you previews, but for small files you can get away with printing the whole file. It's useful to know how many lines are in a file - to do this, you would use the word count command, ${b}wc${r}. Specify lines with the ${b}-l${r} flag, like:${n2}${b}wc -l starbucks.txt${r}"
    ponygo fillyrarity "If the file doesn't have too many lines, you can print the whole thing to the screen using the ${b}cat${r} command."
    ponygo opal "Meow? Not that kind of cat. The ${b}cat${r} command is short for concatenate. It can be used to put multiple files together, but is also fine for viewing a small file. To open a file called starbucks.txt, you would do:${n}${b}cat starbucks.txt${r}."    
        ponygo rarity "For a larger file, you might not want all of that output on your window. The ${b}less${r} program will create a new sub-window for you to look over your file."
        
            ponygo rarity "${b}Less${r} shows you the contents of the file, and it only loads a small chunk at a time. This means you can open files that are hundreds of gigabytes without crashing your machine."
    ponygo rarityponder "The downside, though, is that you can only read the file, not change it in any way."
    ponygo rarity "To open a file so that you can change its contents, you will need an editor such as ${b}nano/pico, vim,${r} or ${b}emacs${r}.${n2}Nano and pico are similar, though you are more likely to find nano. Vim is similar to vi and you'll probably run into it more often."
    ponygo rarity "${b}Vim${r} and ${b}emacs${r} are not the most beginner friendly, so I'll be teaching you about ${b}nano${r} for now."
    ponygo fillyrarity "You open ${b}nano${r} like so:${n2}${b}nano starbucks.txt${r}"
    ponygo rarityelite "Once inside, you will see a screen kinda like ${b}less${r}, but with a handy bar at the bottom with commands you can perform."
    ponygo raritygala "The full help menu for ${b}nano${r} can be brought up using ${b}ctrl+G${r}. ${b}Nano${r} is the easiest editor to learn for Unix beginners, but it is a good idea to play around for a while until you get the hang of things."
    ponygo rarityponder "Here are a few quick pointers for nano:${nt}To search, ${b}ctrl+w${r} will prompt you for text to find.${nt}Use ${b}ctrl+o${r} to save your file. It behaves like a \"save as\" and will always ask you for a name to save it.${nt}${b}ctrl+x${r} lets you exit out of ${b}nano${r}."
    
    
}
# This is added in case the script is invoked instead of sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    me="$( cd "$(dirname "$0")" ; cd ../ ; pwd -P )"
    source ${UNIXTUT:-$me}/Utilities.sh
    if [[ -z $PONYUSER ]]; then
        checkProgress
    fi
    openTut2
fi