IN CONSOLE:

1. Create an array with five strings in it using %w #=> `["dog", "cat", "tree", "house", "car"]`
2. Attach that array to a local variable if you didn't already. `things = _`
2. Reverse the `"house"` element. #=> `["dog", "cat", "tree", "esuoh", "car"]` (Hint: use !)
3. Remove the `"cat"` element. #=> `["dog", "tree", "esuoh", "car"]`
4. Add the string `"cat"` back into the array, in the front. #=> `["cat", "dog", "tree", "esuoh", "car"]`
5. Make `"esuoh"` normal again.
6. Add an array of elements to the end of `things` #=> `["dog", "cat", "tree", "house", "car", ["bat", "hat"]]`
7. That's not what we wanted. Remove the inside array using delete, not pop.
8. Add `"bat"` to the end of the array using the index, not push or <<. (Hint: you can set an index that doesn't 
   exist yet equal to something in an array.)
9. Your array should look like this. `["dog", "cat", "tree", "house", "car", "bat"]` If it doesn't,
   don't recopy the array. Fix the wrong elements using `things[indexofmessedupelement] =`. If your array does
   look good, break it, then fix it.
10. Add an array of numbers #=> `[1, 2, 3, 4, 5]` to your `things` array. #=>
    `["dog", "cat", "tree", "house", "car", "bat", 1, 2, 3, 4, 5]`. Call `things` to make sure you added them 
    to the actual array. If you didn't, you will need assign. Do `things = yourwayofaddingthetwotogether`
11. Now take the numbers out again. Using the minus operator, then using .reverse and .drop.
12. Put the numbers back on and use an easier way of getting rid of the numbers: `.pop(5)`
13. Add another `"dog"` element to the end of your `things` array. #=>
    `["dog", "cat", "tree", "house", "car", "bat", "dog"]`
14. Use .select to grab the "dog" elements in the array. `things.select { |e| e == "dog" }`
15. Call `things` to see if select removed the `"dogs"`. If you are new to enums, or want the practice, use 
    select on all of the other elements in the array (repetition).
