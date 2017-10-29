IN YOUR CONSOLE (Irb, Pry):

Q&A - Q: What does this weird `#=>` thing mean?: A: It means 'this is what you should get back' when running code.
Example: `5 + 5` #=> `10`  

1. Create an array with the numbers 1-5 in it. It will look like this: `[1, 2, 3, 4, 5]`
   Attach it to the variable `a`. (Ex: `a = [1, 2, 3, 4, 5]`)

2. Use BRACKET NOTATION to get the element at the zero index: #=> `1` Ex: `a[0]`

3. Get the elements at each other index in the array (repetition). As you do this, say out loud what you will get as you 
   access each index. This trains your brain to think about arrays like Ruby does, instead of how you think it should be .
   The third thing in an array should, intuitively, be index 3, but it is not. It is index 2. You need repetition to get 
   that across to your noggin. Try to get index 5 (`a[5]`)

4. Reverse the array. Call the array to see that it hasn't changed. Assign the reversed array to a
   local variable, `b` <br>
   Ex: ( `b = a.reverse` ) <br> 
   Now you have access to both normal and reversed arrays.
   You could also use the `!` operator to mutate the value and destroy the original 
   value: `a.reverse!` #=> `[5, 4, 3, 2, 1]`. If you do this, reverse `a` back to #=> `[1, 2, 3, 4, 5]`

5. Use `.times` and `!` to `.reverse!` the `b` array three times. (Hint: You can use `.times do` to 
   repeat any block of code execution multiple times. Ex: `x = 1`, then: <br>
   `3.times { x += 1 }` would change `x` to equal 3. `3.times do`, and `3.times {`, are 
    the same thing. `do` and `{` both stand for "do this thing" in Ruby). Call your b array again to see that it was changed. 
    Note that the return value you got from using `.times` is not the `b` array. It's the number of times the `.times` method 
    iterated. Answer at the bottom. <br>
  5a. After finishing that, use `.times` to push the letter `"a"` onto the `b` array 4 times, then use `.times` to pop off 
      those `"a"` elements from the `b` array 4 times, to end up with your `b` array looking like this again: `[1, 2, 3, 4, 5]`
    
6. Use the `.index` method to get the index position of the number 3 in `a`. [Info](http://apidock.com/ruby/Array/index) 
   You should get `2`. IF you didn't, make sure you are doing it right, and the `a` array looks like: `[1, 2, 3, 4, 5]`

7. Use that `.index` method to find the index positions of every other number, one at a time (repetition). As you do 
   this, tell yourself what you will get as you are using the method each time. This trains your brain to see the `.index` 
   method the way it works in Ruby, instead of the way intuitively you may think it works.

8. Add your `a` array and your `b` array together. Now do it again but assign it to the variable `a_b`.
   (Hint: The `+` operator will combine two arrays into one using concatenation, which is just tacking the 
   second thing onto the first thing.) #=> `[1, 2, 3, 4, 5, 1, 2, 3, 4, 5]`

9. Subtract the `b` array from the `a_b` array (which should now be a combination of a and b). What did you
   get, and why? Answer at the bottom.

10. Make a new array with the integers 1-3 in it (`[1, 2, 3]`). Assign it to the variable `arr`.

11. Subtract `arr` from `a_b`. What did you get this time? (Hint: The `-` operator will take out ALL matching 
    elements, not just the first one it finds. If you have an array of `x = [3, 3, 3]` and you do: `x - [3]`, 
    you get an empty array.)

12. Check that `a_b` is still the same by calling it. Concatenation and subtraction of arrays is
    non-destructive, meaning it doesn't mutate the original objects.
    
  You can use the Range class in Ruby to represent a consecutive sequence of numbers from x to y, where
  x is the first number and y is the number after the dots. Like so: r = (1..5) #=> `1..5`. Two dots
  means including the last number, three dots means up to but NOT including the last number. 
  r_two = (1...5) #=> `1...5`. r.count #=> `5`. r_two.count #=> `4`. Note also that parentheses are optional 
  when assigning a range (and in a lot of other cases). rng = 1..5 #=> `1..5`

13. Use a range to get the first two elements in the `a_b` array. #=> `[1, 2]` (Hint: Use the range inside
    of bracket notation). Answer in the ANSWER KEY below if you get stuck.

14. Do that again for the first three elements in the array. Note that you aren't asking for the elements 
    themselves, you are asking for the index positions.

15. Get the last element in the `a_b` array. Do it using bracket notation two different ways (Hint: use 
    the negative index the second time), then use a built-in Ruby method to do it. Google is your friend 
    if you don't know. I would Google "ruby find the last element in an array".

16. Get the first element in the `a_b` array using a built-in Ruby method.

17. Get the last and second to last elements in the `a_b` array. #=> `[5, 4]`. (Hint: You may need to build 
    your own array for this. Example: If I wanted to get the first and second elements, but didn't want to 
    use a range, I could do this: `new_arr = [a_b[0], a_b[1]]` #=> `[1, 2]`).

18. Get the last, third, and second-to-last elements in your `a_b` array, in that order. #=> `[5, 3, 4]`. (Hint: 
    refer to the "build your own array" part in 17 above.) Answer is at the bottom if you get stuck.

ALTERNATE DAYS: Instead of numbers, use strings. Example: `["dog", "cat", "person", "house", "tree"]`

AFTER 3-5 repetitions: Do these exercises in a .rb file in your IDE/text editor, using puts, p, and
print to output the result to the screen. Run the file each time to see the result. You can keep stacking 
up the output or you can comment out each previous exercise as you do new ones (just remember not to 
comment out your local variables or your code won't run).


ANSWER KEY:

For 5. `3.times { b.reverse! }` 

OR:
```
3.times do
  b.reverse!
end
```
^^ Both of the above answers do the same thing.
 
For 6. `a.index(3)` - You are using the built-in `.index` method, often referred to as #index in documentation. The method 
takes an argument, which is the actual value stored in the array. In this case the value is the integer `3`. What you get 
back is the index position of that value. A more clear example: `a = ["bat", "cat"]`, `a.index("bat")` #=> `0`

For 9. You should get an empty array, `[]`, because the subtraction operator, `-`, when used with arrays, 
       will subtract EVERY element from the array you are taking away from, that matches something in the 
       array you are using to do the subtracting. <br> 
Examples: <br> 
`a = [1, 1, 1, 1]`, `b = [1]`, `a - b` #=> `[]` <br>
`a = ["ant", "bat", "cat"]`, `b = ["ant"]`, `a - b` #=> `["bat", "cat"]` <br>
`a = ["ant", "bat", "cat"]`, `b = ["ant", "bat", "shark"]`, `a - b` #=> `["cat"]`. Here the `"shark"` is ignored 
because it isn't in the `a` array.

For 13. `a_b[0..1]`

For 18. `[a_b[-1], a_b[]`
