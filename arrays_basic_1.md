IN YOUR CONSOLE (Irb, Pry):

1. Create an array with the numbers 1-5 in it. It will look like this: `[1, 2, 3, 4, 5]`
   Attach it to the variable `a`. (`a = [1, 2, 3, 4, 5]`)

2. Use BRACKET NOTATION to get the element at the zero index: #=> `1` Ex: `a[0]`

Q&A - Q: What does this mean?: #=> A: It means 'this is what you should get back' when running code.
Example: `5 + 5` #=> `10`  

3. Get the elements at each other index in the array (repetition).

4. Reverse the array. Call the array to see that it hasn't changed. Assign the reversed array to a
   local variable, `b` ( `b = a.reverse` ). Now you have access to both normal and reversed arrays.
   You could also use the `!` operator to mutate the value and destroy the original 
   value: `a.reverse!` #=> `[5, 4, 3, 2, 1]`. If you do this, reverse `a` back to #=> `[1, 2, 3, 4, 5]`

5. Use `.times do` and `!` to `.reverse!` the `b` array three times. (Hint: You can use `.times do` to 
   do any block of code execution multiple times. Ex: `x = 1`, then: <br>
   `3.times { x += 1 }` would change `x` to equal 3. 3.times do, and 3.times {, are 
    the same thing. `do` and `{` both stand for "do this thing" in Ruby). Answer at the bottom.
    
6. Use the index method to get the index position of the number 3 in `a`. [Info](http://apidock.com/ruby/Array/index)

7. Use that index method to find the index positions of every other number, one at a time (repetition).

8. Add your `a` array and your `b` array together. Now do it again but assign it to the variable `a_b`.

9. Subtract the `c` array from the `a_b` array (which should now be a combination of a and b). What did you
   get, and why?

10. Make a new array with the integers 1-3 in it (`[1, 2, 3]`). Assign it to the variable `arr`.

11. Subtract `arr` from `a_b`. What did you get this time?

12. Check that `a_b` is still the same by calling it. Concatenation and subtraction of arrays is
    non-destructive, meaning it doesn't mutate the original objects.
    
You can use the Range class in Ruby to represent a consecutive sequence of numbers from x to y, where
x is the first number and y is the number after the dots. Like so: r = (1..5) #=> `1..5`. Two dots
means including the last number, three dots means up to but NOT including the last number. 
r_two = (1...5) #=> `1...5`. r.count #=> `5`. r_two.count #=> `4`. Note also that parentheses are optional 
when assigning a range (and in a lot of other cases). rng = 1..5 #=> `1..5`

13. Use a range to get the first two elements in the `a_b` array. #=> `[1, 2]` (Hint: Use the range inside
    of bracket notation) 

14. Do that again for the first three elements in the array. Note that you aren't asking for the elements 
    themselves, you are asking for the index positions.

15. Get the last element in the `a_b` array. Do it using bracket notation two different ways (Hint: use 
    the negative index the second time), then use a built-in Ruby method to do it. Google is your friend 
    if you don't know. I would Google "ruby find the last element in an array".

16. Get the first element in the `a_b` array using a built-in Ruby method.

17. Get the last and second to last elements in the `a_b` array. #=> `[5, 4]`. (Hint: You may need to build 
    your own array for this. Example: If I wanted to get the first and second elements, but didn't want to 
    use a range, I could do this: `new_arr = [a_b[0], a_b[1]]` #=> `[1, 2]`).

18. Get the last, third, and second-to-last elements in your `a_b` array, in that order. #=> `[1, 3, 2]`

ALTERNATE DAYS: Instead of numbers, use strings. Example: `["dog", "cat", "person", "house", "tree"]`

AFTER 3-5 repetitions: Do these exercises in a .rb file in your IDE/text editor, using puts, p, and
print to output the result to the screen. Run the file each time to see the result. You can keep stacking 
up the output or you can comment out each previous exercise as you do new ones (just remember not to 
comment out your local variables or your code won't run).


ANSWER KEY:

For 5. `3.times { a.reverse! }` 
