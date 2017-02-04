IN CONSOLE:

1. Create an array with five strings in it using %w #=> `["dog", "cat", "tree", "house", "car"]`

2. Attach that array to a local variable if you didn't already. `things = _`

3. Reverse the `"house"` element. #=> `["dog", "cat", "tree", "esuoh", "car"]` (Hint: use !)

4. Remove the `"cat"` element. #=> `["dog", "tree", "esuoh", "car"]`

5. Add the string `"cat"` back into the array, in the front. #=> `["cat", "dog", "tree", "esuoh", "car"]`

6. Make `"esuoh"` normal again.

7. Add an array of elements to the end of `things` #=> `["dog", "cat", "tree", "house", "car", ["bat", "hat"]]`

8. That's not what we wanted. Remove the inside array using delete, not pop.

9. Add `"bat"` to the end of the array using the index, not push or <<. (Hint: you can set an index that doesn't 
   exist yet equal to something in an array.)

10. Your array should look like this. `["dog", "cat", "tree", "house", "car", "bat"]` If it doesn't,
   don't recopy the array. Fix the wrong elements using `things[indexofmessedupelement] =`. If your array does
   look good, break it, then fix it.

11. Add an array of numbers #=> `[1, 2, 3, 4, 5]` to your `things` array. #=>
    `["dog", "cat", "tree", "house", "car", "bat", 1, 2, 3, 4, 5]`. Call `things` to make sure you added them 
    to the actual array. If you didn't, you will need assign. Do `things = yourwayofaddingthetwotogether`

12. Now take the numbers out again. Using the minus operator, then using .reverse and .drop.

13. Put the numbers back on and use an easier way of getting rid of the numbers: `.pop(5)`

14. Add another `"dog"` element to the end of your `things` array. #=>
    `["dog", "cat", "tree", "house", "car", "bat", "dog"]`

15. Use .select to grab the "dog" elements in the array. `things.select { |e| e == "dog" }`

16. Call `things` to see if select removed the `"dogs"`. If you are new to enums, or want the practice, use 
    select on all of the other elements in the array (repetition).

17. Go to or create a directory called daily_exercises or something similar. Create a file in that directory
    (maybe called arrays_basic_1.rb, or similar). Now perform some of the exercises you just did in the terminal 
    to see the differences between console code and code in a file. Notice that without puts, p, or print, you will 
    not see any feedback when you run the file. Example:
    
    Inside of your file <br>
    `things = %w(dog cat tree house car)` <br>
    `things[-2].reverse!` <br>
    `puts things` <br>
    and then keep going with others. <br>
    In the terminal/console, run your file by being in the directory where your file is and typing:
    `Ruby thenameofmyfile` including the .rb at the end.
