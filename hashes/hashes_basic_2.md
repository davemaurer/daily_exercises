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
   
9. Call `pets.keys` and `pets.values`. After that try to chain `#map` onto one of those. Can you? And 
   when that happens are you still dealing with the actual keys and values in the hash, 
   or are you dealing with 'copies'? (answer below)
   
10. Call `#each_pair` on `pets`. How many block variables do you need to give it? 
    Also call `#each_key`, and `#each_value` to see if those are actually methods.
    
11. Find all of the methods available to your `pets` hash. Hint: `#methods` is a method 
    you can use on any object in Ruby.
    
12. Try chaining `#sort` onto `pets.methods` to see if it will give you a better list to 
    sift through.
    
13. Take everything out of your hash and make it empty. What is the best/easiest way 
    to perform this task? (answer below)
    
14. Make the `pets` hash again, using the Hash class with bracket notation this time.
    (answer bellow). Note that when you use bracket notation to create a hash object, 
    you need only provide commas between pairs and Ruby figures out that each two elements 
    are a key/value pair.

15. Try to make a hash using Hash[] syntax, but give it an odd number of elements.
    Does it work, or does it give you a very accurate error message?
    
16. Can you make a hash with key/value pairs in it using Hash.new, or is Hash.new used to 
    indicate what you want all values in the hash to default to? (answer below)


ANSWERS:

9. When you use `.keys`, or `.values`, Ruby gives you a brand new data structure
   (an array), and the elements inside that data array have nothing to do with the
   key/value pairs inside the hash. They are copies.

13. The easiest way to take everything out of a hash, or an array, or any data 
    structure, is to just reassign it to an empty version. `h = {}`. Don't worry 
    about how you would delete everything quickly, unless you want to try it just 
    for practice. 

14. `pets = Hash["dog", "bark", "cat", "meow", "turtle", "not a talker"]`

16. When using Hash.new, the first argument provided will always be the default value for any 
    key you try to access in the hash, regardless of whether it exists in the hash or not.
    ```ruby
    h = Hash.new("wut")
    h["nonexistant key"] #=> "wut"
    h["another key not in there"] #=> "wut"

    ```
    This is useful when you have a hash you want to add numeric values to, but want it to give you 
    0 if you ask for a key that isn't in the hash. Like so: 
    ```ruby
    weapons = Hash.new(0)
    weapons['water balloons'] += 1 # += would not work if the default value wasn't 0. If it's nil, you can't += it.
    weapons['death-ray'] #=> 0. If the default were not 0, you would get nil for this when asking how many death rays you have. So
    # if you wanted to dominate the world only if you had > 5 death rays, you couldn't write a conditional that would trigger your 
    # world domination. Because if the default were nil, which it is if you don't give a default as an argument using Hash.new, 
    # nil can't use the > operator. 
    ```
