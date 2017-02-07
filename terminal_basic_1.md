### Basic exercises to get familiar with using the terminal for:
- Making directories, making files, moving files, deleting directories and files, 
  using irb/pry.

IN THE CONSOLE/TERMINAL:

1. Go to your root directory: `cd ~`

2. Use `ls` to see a list of the directories and files one level deep in 
   your directory structure. Directories will be identifiable by looking 
   for the items that don't have a `.somthing` after them. Anything that
   does have a `.something` after it (ex: `my_ruby_file.rb`) is a file. 
    
3. Use `ls -a` to see all of the files, including those your mac hides by 
   default for your own good. The files that are hidden are usually things 
   that a typical user won't want to mess with, but the -a flag exists so 
   people can mess with the secret stuff. Options that start with a dash `-`
   are commonly referred to as flags. Using `-a` in this case says show me 
   "all" the files. `-a` = `-all`. Don't think you can actually put in `-all` 
   though. This will give you something else.
   
4. Unless a specific order is needed, you can use multiple options after flags 
   in any order you want. Do `ls -l` to give you more information about the 
   "non-secret" files in your directory. Now do `ls -al` to see ALL of the 
   directories and files, along with more information about each of them. 
   Then do `ls -la` to see that the `a` and `l` flag options can be given 
   in either order to produce the same result. Also notice that just `l`, 
   though it looks like it is giving the same info as `-al`, is excluding all 
   of the things that are hidden by default.
   
5. Use `mkdir` (make directory) to make a new directory called terminal_practice

6. Try using `mkdir terminal_practice/test/temp` to make a practice directory inside
   of terminal_practice, and a temp directory inside of practice. Notice that you can't make 
   (create) two directories at once this way. So just use `mkdir terminal_practice/test`.

7. Use `mkdir terminal_practice/test/temp` to make the temp directory inside of test.

8. It would be nice if we could create nested directories all at once. Use the `-p` flag 
   to do just that. `mkdir -p terminal_practice/another_test/temp/cool`.

9. To make sure you have the structure you want, use `ls` to look down one level and find the 
   terminal_practice directory. Now use `ls terminal_practice/` to look at what's in the 
   terminal_practice directory (`ls terminal_practice` without the / works also).
   `ls terminal_practice/another_test` will show you what's in the another_test directory. So you 
   can see that you don't need to be one level above where you want to look, as long as you indicate 
   the directory structure to start the command with. 
  
10. Make some files in the sub-directories you've created, using `touch`. `touch terminal_practice/my_file.md`,
    `touch terminal_practice/another_test/my_test.rb`, `touch terminal_practice/another_test/temp/temp.txt`,
    `touch terminal_practice/another_test/temp/cool/cool_file.rb`. Now use ls to check out the contents of 
    each sub-directory to see the files you just made.
   
11. Let's get rid of one of the sub-directories to terminal_practice we've created, since we have
    two now (test, and another_test). The another_test directory is longer to type, so let's nix it, 
    along with all of the sub-directories and files in it. FIRST, cd into `terminal_practice` then try
    `rm another_test/` to see what happens. Linux should tell you no, because it's a directory. This
    is supposed to be a failsafe to prevent you from accidentally erasing a bunch of work. To override
    it, you can use `rm -r another_test/`. This says "remove the specified directory, and all sub-directories 
    and files nested inside of it, and prompt me to confirm if it has certain permissions on it". Read the notes 
    at the bottom of this file for another, more HAZARDOUS way of removing a directory and everything in it.
    
12. If you used `rm -r another_test/`, you should now only have one directory one level deep inside of your 
    `terminal practice` dir. Use `touch` to put some files inside of the sub-directories.
    
13. You should now have a `terminal_practice` dir, inside of which is a `test` dir, inside of which is a `temp` 
    dir. There should also be at least one file inside of each of those directories. Your `pwd` (this is how you 
    see what directory you are in) should be `terminal_practice`. Let's rename the `temp` dir to `temp_stuff`. 
    The same command for moving a file or directory is used to rename a file or directory. It's `mv`. So let's 
    do `mv test/temp test/temp_stuf` to change it's name, but keep it in the same place. Had we done 
    `mv test/temp temp_stuff`, it would have renamed `temp` to `temp_stuff`, and then moved it to the present 
    directory, which is `terminal_practice`. Don't do that though. You should now have the directory `temp_stuff` 
    nested in/under your `test` directory.
    
14. Move the `temp_stuff` directory up into the `terminal_practice` directory using `mv`.

15. Move some files around in between directories using `mv`

16. Play around a bit, then remove your `terminal_practice` directory, so you can repeat this exercise from 
    scratch later.
   


WARNING: DO NOT TRY THIS NEXT PART UNLESS YOU KNOW WHAT YOU ARE DOING, AND YOU ARE NOT IN YOUR ROOT DIRECTORY.

IF you are absolutely sure you want to get rid of a directory and everything in it, and you don't want 
to bother with possibly having to confirm things (say you have 1000 files inside), you can use 
```rm -rf directory_i_want_to_destroy``` The f is for FORCE, as in, "I don't really care about your stupid
warnings and prompts, burn it down." Just make sure of two things when you use rm -rf. One, you are sure
you want to get rid of everything inside the directory all the way down. Two, you are very careful about
where you are when you type it, and potential hazards that would lead to the enter key being hit at the
wrong time. If you were in your root, and you accidentally hit enter at the wrong time, you could erase
everything in your computer. Got a time-machine backup handy? DO NOT use rm -rf in this tutorial, and if
you still do, I am not responsible for lost data.
