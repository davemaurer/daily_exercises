NOTE: You will see methods referred to using the pound sign: `#`. This is the conventional 
way programmers can type out a method name and indicate it's a method, without 
accidentally invoking it if it's written out in a Ruby file. It's preferred over 
using a dot while writing documentation.

IN YOUR CONSOLE WHILE IN PRY/IRB:

1. Make a hash (assign it to the variable `pets`) with two keys, "dog", and "cat",
   that point to two values, "awesome", and "cool". You be the judge of which keys 
   get which values. It should look like this #=> `{"dog" => "awesome", "cat" => "cool"}`
   
2. Change either value to the integer `5`.

3. Change that value back to the original string.

4. Add a key/value pair: "turtle"/"fast"

5. Change "fast" to "slow"

6. Remove one of the key/value pairs from the hash so you end up with two

7. Call `#length` on the hash to see if it counts pairs or each key and value separately. 
 
8. Try to call `#to_a` on it to see if it works, and how Ruby decides to arrange the 
   array.
   
9. Call `h.keys` and `h.values`. After that try to chain `#map` onto one of those. Can you? And 
   when that happens are you still dealing with the actual keys and values in the hash, 
   or are you dealing with 'copies'? Answer: When you use `.keys`, or `.values`, Ruby 
   gives you a brand new data structure (an array), and the elements inside that data 
   array have nothing to do with the key/value pairs inside the hash. They are copies.
   
10. Call `#each_pair` on `h`. How many block variables do you need to give it? 
    Also call `#each_key`, and `#each_value` to see if those are actually methods.
    
11. Find all of the methods available to your `h` hash. Hint: `#methods` is a method 
    you can use on any object in Ruby.
    
12. Try chaining `#sort` onto `h.methods` to see if it will give you a better list to 
    sift through.
    
13. Take everything out of your hash and make it empty. What is the best/easiest way 
    to perform this task? (answer is below)



ANSWERS:

13. The easiest way to take everything out of a hash, or an array, or any data 
    structure, is to just reassign it to an empty version. `h = {}`. Don't worry 
    about how you would delete everything quickly, unless you want to try it just 
    for practice. 
