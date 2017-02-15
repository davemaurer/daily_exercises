IN YOUR CONSOLE:

Given an array: `nums = [1, 2, 3, 4, 5]`

(Optional warmup)
a. Get the number `3` using `.select`

b. Reverse the array using !. Reverse it back.

c. `.shuffle` it using reassignment: `nums = nums.shuffle`
 
d. `.sort` it using ! to put it back the way it was.

NOTE: A quick thought on naming. Clarity in code is very important. When using block variables, it's easy to 
just do something like this: `thing.map { |e| e + 1 }` where your `e` stands for element in your head. In console 
while messing around that's fine, but in your program code, you should be as clear as possible. Someone else 
reading that line up there can probably figure out it's numbers we are dealing with, but if that `e` were `num`, 
it would be completely transparent. Always strive to name things clearly, while keeping descriptions short of course. 

NOTE: Ruby's `!` operator can be used to signify "not" if used in front of a thing you are evaluating, or it 
can signify "do this and mutate/destroy the original thing I'm using this on" when used at the end of a method, 
but when using it in a method name you are defining: `def make_changes!` it's just part of the method name, and 
holds no significance to Ruby. Same with the `?` operator. Ruby doesn't care that you have a bang or question 
mark at the end of a method name you define. You are doing it solely because you want yourself and other 
programmers to understand that your method either `?` is comparing and returning true/false, or `!` is changing 
something but doesn't have a relevant return value (like incrementing an instance variable counter).

1. Iterate over the `nums` array and add 1 to each element. Use `.map` and reassign instead of using !. (See
   c. above for reassignment explanation)
    
2. Map over the array again, using reassignment to a new variable `higher_nums`. Add 1 to each element `>` 3.
   
3. Make sure `higher_nums` looks like this: `[2, 3, 5, 6, 7]`. If it looks like this: `[nil, nil, 5, 6, 7]`, it's
   because map only returns what you tell it to, so when using an if statement inside of a block with `.map`, you
   need to tell Ruby what to do with elements that don't meet the conditional. Try to make if work, and if you get 
   stuck see the answer key at the bottom for help.
   
4. Map over `higher_nums`, reassigning (repetition) to `nums_over_four`. Simply grab the numbers `>` 4, and use
   `.compact` to remove those pesky nils left over.
   
5. Repeat 4. above, but this time use `.select` to do it with less fuss. Sometimes there is an easier way. It's 
   not always better, but many times you can use one convenience/built-in method to do what you would have to 
   do in multiple steps otherwise.
   
6. Shuffle `higher_nums`, select the numbers `>` 2, and sort them. Use method chaining to do it all on one line.
   How many bang operators (this thing: `!`) do you have to use if you do not reassign?

7. Using %w, make an array named `dogs` with five elements in it: "fido", "benji", "lassie", "rex", and "banjo".
   Remember not to use commas or quotes when using %w.
   
8. Reassign `dogs` to `sorted_dogs`, using `.sort`. How did Ruby determine where to put banjo and benji?

9. Use `.sort_by` on `dogs` to sort by the last letter in each dog's name, reassigning to `dogs_by_last_letter`.
   You could shorten that name if you wanted. Try to make it shorter and still maintain clarity, or not.

NO REASSIGNMENT NECESSARY FROM HERE. JUST REPS.

10. Sort by the second letter in each name.
 
11. Use `.insert` to add "Lady" at index 2.

12. Use `.insert` to add "Toyota" at index -2.

13. Call `dogs` to see that `.insert` mutates the array, adding without needing to reassign.

14. Toyota is a car (unless the owner has a fixation). Delete "Toyota" from `dogs`.

15. Use `.delete_if` to remove all of the elements that `.end_with?` the letter "o". `delete_if` takes a block.

16. Use `.select` to get all of the elements that `.start_with?` the letter "r". Use `.map` and `.compact` to do 
    the same thing.
    
17. Use `.map` to iterate over `dogs` and capitalize each dog's name. Do it twice, once using `.capitalize` and once 
    using `.sub` with `.upcase`.
    
18. Create another array using %w, but purposely add commas: `things = %w(tree, house, car, lawn)`. Iterate and 
    use `.sub` to take the commas out.
    
19. Do the same as 18 above, but use `.join` and `.split`. No `.map` needed.
    
19. Play around.

   
ANSWER KEY:

For 3. Using ternary: `higher_nums = nums.map { |e| e > 3 ? e + 1 : e }`<br>
   Using multiple lines:<br> 
```
   higher_nums = nums.map do |num|
     if num > 3
       num + 1
     else
       num
     end
   end
```

For 4. `nums_over_four = higher_nums.map { |num| num if num > 4 }.compact`

For 5. `nums_over_four = higher_nums.select { |num| num > 4 }`

For 6. `higher_nums.shuffle!.select! { |num| num > 2 }.sort!` or `higher_nums = higher_nums.shuffle.select { |num| num > 2 }.sort`

For 9. `dogs_by_last_letter = dogs.sort_by { |name| name[-1] }` 
 
For 18. `things.map { |thing| thing.sub(",", """)`
