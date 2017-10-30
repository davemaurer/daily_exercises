### Arrays: Those crazy Indexed, Ordered, Data Structures

- Arrays are data structures which are BUILT IN to Ruby, just like Hashes and Structs. They are also indexed 
  and ordered, as we will see below.
  
- Arrays are meant to store values, but one array is itself, one value. That's why you can 
  do: `letters = ['a', 'b', 'c']` and expect letters to point to ONE value, the letters array.

- Arrays hold multiple values. So, they are used when you have more than one value you want to 
  keep in the same place. If you have a group of 12 numbers(or strings, or symbols, or whatever),
  and they are all used together to do something in your program, it makes sense to keep them in 
  the same <em>box</em>. The <em>box</em> can be any data structure, and in the case of many single 
  values that don't really make sense as pairs, an Array works great.

- Arrays can hold ANY legal Ruby value. So they can hold:
  * Raw values (literal values, basic values, whatever you want to call any of the 5 basic data types,
    which are: Strings, Integers, Booleans, Symbols, Nil). Example: `[1, nil, "a", :prince, true]`
  * Other arrays. Example: `mixed_values = [[1, 2, 3], ["Frog", "Bat", "Hat"], [6, 10, 4]]`
  * Hashes. Example: `my_hashes = [{:dog => "Woof", :cat => "Meow"}, {:Bob => "Hello", :Lucy => "Wohoo!"}]`
  * Class instances(class objects): `dog = Dog.new`, `kitty = Cat.new` Then: `animals = [dog, cat]`
    NOTE: Storing the dog and cat class objects in the array does not limit them in any way. You 
    can still call methods on them by accessing them. If you have a `.name` method on your Dog class 
    that returned `"Fido"`, you could do this: `animals[0].name`, or: `animals.first.name` (Here we are 
    not asking for the first name of the animal, as reading comprehension would want us to think. Instead 
    we use the `.first` method on the `animals` array to get the first element, `dog`, then we call `.name` 
    on that to get the dog's name)
  * Other structures that hold other structures. If you wanted to you could have an array, `my_array` that 
    held 1000 hashes, that each held 1000 arrays, that each held 50 class objects, that would be used to 
    output sentences, words, calculations, whatever.

The key to remembering what can be stored in an array is to ask yourself, can this be stored by a variable? 
So if you can do x = `the thing I'm wondering about`, then you can put it into an array. This means you can 
have arrays hold other arrays: `[[1,2], [3,4], ["cat", "dog"]]`, or arrays can hold hashes: `[{:dog => "awesome", 
:cat => 0}, {"one" => 1, "two" => 2}]`, or arrays can even hold class instances:
```ruby
dog_one = Dog.new # this assumes you've already made a Dog class
cat_one = Cat.new # same as above
cat_two = Cat.new # a different instance of cat from cat_one. Ruby now has TWO different 
                  # cat objects stored in memory for you.
cats_and_dogs = [dog_one, cat_one, cat_two]
```

###Making Arrays
There are several ways to make an Array in Ruby. These are built in for you, and you just need to follow the convention.

Using "literal" syntax: `nums = [1, 2, 3, 4, 5]` will give you an array with 1 through 5 in it. 
- We say "literal" because we use the actual form it will be displayed as to make it (brackets with stuff in it.)
  You could also just make an empty array if you wanted: `my_collection = []`

Calling the to_a method: `nums = (1..5).to_a` will return the same result as above. 
- Here we call .to_a on a range, which takes each thing in the range and adds it to an array, which is assigned 
  to the local variable nums. Giving us `[1, 2, 3, 4, 5]`. You can call .to_a on other things (like hashes) to get 
  different results. The docs can give you more info, but for now knowing a range can be turned into an array quickly 
  is handy.
  
Using a percent literal when you want a group of single word strings: `words = %w(dog cat tree house)` will give you:
`["dog", "cat", "tree", "house"]`
- The percent literal is  just a phrase coined to mean using the `%` sign followed by a letter (w here) to tell Ruby 
  to execute some BUILT IN stuff. `%w %r %i %s %x` are all ways of using the percent literal, but concern yourself with 
  the word array making one right now. That's `%w`
  NOTE: `%w(dog cat)` and `%w[dog, cat]` will do the same thing. Just a style choice here between parens or brackets.

Using Array.new: `nums = Array.new()` will give us `[]` (an empty array.)
- Array is just a class in Ruby, and can be instantiated just like other classes you make. And like other classes you
  can make, Array has an initialize that takes arguments and does something with them. Read the docs for more details, but 
  for now just remember that `Array.new(1,2,3,4,5)` will not act like you might think. A common way `Array.new` could 
  be used is for making an array of n objects. n being the number of objects you want. Example:
  
  `nested_collections = Array.new(5, [])` gives you: `[[], [], [], [], []]`<br>
  `nested_pairs = Array.new(5, {})` giving you an array of five empty hashes.
  
###Accessing the stuff in Arrays

If you want to get to a specific element in your array: We have `nums = [1, 2, 3, 4, 5]` and we want `4`.
- You can use the index: `nums[3]` Will give you the element at index 3. Since arrays start at index 0 and go up one 
  for each element to the right, the number `4` is at index `3`. More on this below in the INDEXED AND ORDERED section.

- You can use a BUILT IN Ruby method like `.find` or `.select`. So we can do:<br> `nums.find { |element| element == 4 }`


###Mutating the stuff in Arrays
- Mutating is a programmer way of saying "changing a value". If I have `x = 5`, then we use reassignment: `x = 10`, we've 
  just "mutated" my value.

- Just like in the example above, you can use reassignment to mutate something in an array. Reassignment simply means
using the assignment operator: `=`, on something that is already defined. So, if we already have an array: `nums = [1, 2, 4, 4, 5]` 
and we then realize there are two fours in it, and that first four should be a 3, we can just use the `=` operator to change 
it. BUT, first we have to ACCESS it. So we do this: <br>
`nums[2]`<br>
to access my first `4` value in my array. Then we add on this part.<br>
`= 3`<br>
to reassign the value. The whole thing put together looks like this:<br>
`nums[2] = 3`<br>
Here we've told Ruby where to go `nums[3]`, and then told it what to do `= 3`

- Ruby also has BUILT IN methods for changing things inside of arrays. `.map` being the big method on campus. More on those 
  later.

###INDEXED AND ORDERED

- The values stored in an array are referred to individually as <em>elements</em>. So with `[1, 2, 3]` you have the
  first element, which is `1`, the second element, which is `2`, and the third element, which `3`. They are still values 
  but the programming community refers to them as elements to help with context (knowing that you are dealing with a collection 
  of some kind).

- Arrays are accessed by index. In other words, Ruby uses numbers in order to find things inside of the array. 
  This goes hand in hand with the ordered trait of arrays, in that all values in the array will have the same 
  index parking space every time you access them, unless you change the order manually. This design makes for easy
  traversal of an array in order to iterate. 
  Iteration is when you have some code you want to run on each thing in your array, one at a time. Because 
  each position has an index number assigned to it, Ruby can just start at the first index, which is always `0`, 
  and count up from there as it moves from value to value. Example: You make an array,`strings = ["frog", "dog", "bat", "rat"]`, 
  When you do this Ruby will create the data structure for you. It doesn't care that `"frog"` was first, it simply has a built   
  in index of `0` for whatever is first in the array, and then goes up one number for each other thing.
  If you then put something else in the array: `strings << "shark"`, that thing gets tacked on to the end automatically, and 
  the index is just whatever is one greater than the index of the last thing that was in the array. In this case, if 
  you start at zero, and count up one till you get to "rat", you are at index `3` (0..1..2..3), so `"shark"` gets index `4`.
  NOTE: It's important to realize that indexes, such as `0` for `"frog"`, don't get somehow attached to that value. `0` 
  simply represents whatever was first in the array. If you used `.shift` to take the first thing out of the array, `"frog"` 
  would now be gone, and the `0` index position would be `"dog"`.
  
- Indexing works from front to back, but also from back to front. To do this you would use the NEGATIVE INDEX. Negative 
  indexing starts with `-1` at the end of the array, and goes down one when moving backwards in the array from right to left. 
  So in `[1, 2, 3, 4, 5]`, the last element in the array, `5` can be accessed using either index position `4`, or index 
  position `-1`. Both are the same. The negative index position of the element `4` would be `-2`. `3` is position `-3`, 
  two is position `-4`, and `1` is position `-5`.
  
###BRACKET NOTATION:

- The standard way to access a value you have stored in an array is to use the index position to retrieve it. This 
  requires you to know where it is in the array of course. If you don't, there are plenty of ways to look it up that 
  will be covered later. For now, let's say we know we want to very first thing in the array. To get it, we will use 
  bracket notation, which looks like you're making an array: `[]`. The difference, and the way Ruby knows you want 
  to look up an index instead of make an array, is that you use the bracket notation right after an object. Example: 
  If you want Ruby to know you are making an array, you can put the brackets on their own, `[1, 2, 3]`, or use
  the assignment operator, `=`. So if you do: `numbers = [1, 2, 3, 4, 5]` Ruby knows to make you an array. Then 
  if you do: `numbers[0]`. Here we nest the starting bracket `[` right up against the `numbers` local variable, 
  and that tells Ruby how to handle the brackets. In this case Ruby knows you want to access an index on the
  `numbers` array.
  
###PRACTICE

Open your terminal/console and start up pry or irb. Either one. They both do the same thing.

1. Make an array `nums = [1, 2, 3, 4, 5]`

2. Get the first element in the array by using bracket notation. `nums[0]` #=> `1`

3. Get the third element in the array. `nums[2]` #=> `3`

4. Get the last element using the negative index. `nums[-1]` #=> `5`

5. Get the element whose value is `4` using the negative index. `nums[-2]` #=> `4`

6. Use a built in Ruby method to get the number `3` out of the array. `nums.find { |num| num == 3 }`
 - NOTE: If using the `find` method above was confusing, don't worry about it for now. You'll get plenty of practice.

7. Get the first two elements out of `nums` using Ruby's `range` operator. `nums[0..2]` #=> `[1, 2]`
  - Ruby's Range class and it's operators, `..` and `...` is covered in more detail in another arrays exercise.

8. Make another array, this time with strings in it. `pets = ["dog", "cat", "ferret", "turtle"]` 

9. Remake that same array, but use Ruby's built in `%w` operator to make it easier to type out. `pets = %w(dog cat ferret turtle)`

10. Whether an array has strings or numbers, or symbols, or whatever in it, you can use indexes to access it's elements. 
Get the first element in `pets`. `pets[0]` #=> `"dog"` Same result as with the numbers above, we get the first element when 
we ask for the zero index.

11. Get the first element in `pets` using Ruby's built in `first` method. `pets.first` #=> `"dog"`
  - Lots of times Ruby will give you more than one way to do something. You can get the first thing in an array using the 
  zero index, or using the `#first` method. (You will see the pound sign `#` in front of methods a lot when they are being 
  explained in documentation. That's just a way of not using the dot so you will know when a method is being referred to by 
  name `#first`, and when a method is being called `.first`)
  
12. Get the last element using the built in `#last` method. 'pets.last' #=> `"turtle"`

13. See if you can use `pets.second` or `pets.third`. You can't in Ruby. Remember you can in Rails though, as it will help 
you out later.

14. Make array with only `nil` values in it. `nothings = [nil, nil nil, nil, nil]`
  - Be careful here if trying to use `%w`. `nil`, and `"nil"` are two different things to Ruby. One (`"nil"`) is a string, like any 
   other string, and the other (`nil`) without quotes around it, is a representation of the absence of value.

15. Use bracket notation to get the element at the zero index from your `nothings` array. `nothings[0]` #=> nil

16. Make an array with all pf Ruby's five basic data types in it. `types = [1, "one", :one, true, nil]`
  - Mixing data types inside of arrays, hashes or any other data structure is totally fine in Ruby.
  
17. Advanced stuff preview: Use the `find` method again, but this time find the element in the array that belongs to Ruby's 
built in `String` class. `types.find { |element| element.is_a?(String) }` #=> `"one"`
  - Here we just use one built in Ruby method to iterate (`find`) and one built in Ruby method to make a comparison (`is_a?`).
  `is_a?` takes an argument, in the above case we give is `String` as an argument so it can use that to determine whether the 
  element it's looking at is part of the `String` class or not.
