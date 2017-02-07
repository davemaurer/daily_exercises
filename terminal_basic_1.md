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
  
10. Make some files in the sub_directories you've created, using `touch`.
   
11. Let's get rid of one of the sub-directories to terminal_practice we've created, since we have
    two now (test, and another_test). The another_test directory is longer to type, so let's nix it, 
    along with all of the sub-directories and files in it. Try `rm terminal_practice/another_test`
    to see what happens. 
   
