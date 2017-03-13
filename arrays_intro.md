### Arrays: Those crazy Indexed, Ordered, Data Structures

- Arrays are data structures which are BUILT IN to Ruby, just like Hashes and Structs. They are also indexed 
  and ordered, as we will see below.

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
So if you can do x = `the thing I'm wondering about`, then you can put it into an array.

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

1. Make an array `nums = [1, 2, 3, 4, 5]`

2. Get the first element in the array by using bracket notation. `nums[0]` #=> `1`

3. Get the third element in the array. `nums[2]` #=> `3`

4. Get the last element using the negative index. `nums[-1]` #=> 5

5. Get the element whose value is `4` using negative index. `nums[-2]` #=> 4
