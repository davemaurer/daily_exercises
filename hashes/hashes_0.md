###Hashes: Key => Value pairs. A way to organize and nest named values.

- Just like the Array class, the Hash class is built BUILT IN to Ruby. That means when you use 
  the proper convention (you tell Ruby in the right way), you can make, read, and change/mutate 
  hashes in order to organize your values.
  
- Up in the headline, when I said "named values", what I meant was when you have a group of values you don't want to 
  just shove into an array a big glob, you need to structure that group of values in such a way that you can access 
  what you want whenever you need it. Say we have a data-set that is a group of employees, and each of those 
  employees has a NAME, an ADDRESS, and a PHONE NUMBER. One way we could put this group of values into a structure we 
  can easily use is by created a Ruby Hash. We need to think in terms of key => value pairs, so maybe we have each 
  employee NAME be a key in our Hash. So mentally we are thinking something like this:
  
  `employees = {:bob => bob's stuff here, :jane => jane's stuff here, etc., etc.}`
  
  Cool, but now how do we get both the ADDRESS and PHONE NUMBER to be the value that 
  each employee name points to? Remember each key in a Hash can only point to ONE value. Well, a key in a Hash can point 
  to ANY value we decide to make, so we can have each ADDRESS and PHONE NUMBER be another, NESTED Hash. So our mental model 
  now looks like this in our heads:
  
  `employees = { :bob => {:address => "123 bob street", :phone => "555-333-1111"}, :jane => {:address => "main ave", :phone =>
  "555-333-2222"} }`

  In our `employees` Hash, the key of `:bob` points to a value that is just another Hash. The value each key pointed to
  could have been an array instead of a hash if we wanted it to be, but this would have gotten complicated to reason about, 
  forcing us to use an array of arrays: 

  `employees = { :bob => [[:address, "123 bob street"], [:phone, "555-333-1111"]] }`

OK that's enough high level "hash-like thinking" for now. More of this will follow. Let's dive down closer and look at 
what makes Hashes tick.

###The curly braces: {}

Ruby uses {} hold all of the key/value pairs in a hash, and these can be nested just like you can nest parens in math, or 
brackets with arrays, as we did in our employee example above.

This can be confusing because Ruby also uses {} to indicate `do` an `end`, such as in a block:<br>
`nums.map { |num| puts num }`

What tells Ruby how to handle things is the CONTEXT in which you use the {}. If Ruby sees just a starting `{`, 
followed by legal syntax for key/value pairs, then a closing `}`, it knows you are making a hash.

Open up your console/terminal and enter irb or pry or whatever you use for an interactive Ruby playground. Then type.<br>
`{:key_one => "value_one", :key_two => "value_two"}`

You should see that Ruby gives you a hash back. You can assign it to a variable also, so you an use it later.<br>
`my_pairs = {:key_one => "value_one", :key_two => "value_two"}`

Now try to make a hash, but don't use legal syntax, like:<br>
`bad_pairs = {"one", "two", "three"}`

Ruby should tell you no, by way of an error.

So the way Ruby determines how to use the `{}` you type, is by looking at what is around them, and what is in them. That's 
why you can do something like this, and Ruby knows you aren't trying to make a hash.<br>
`[1, 2, 3].map { |num| num + 1 }`

Here we use `{}` but Ruby picks up on what we are trying to do because of the CONTEXT in and around those curly braces.

###Ways to make Hashes

- The most basic way to make a hash is by constructing it literally.<br>
  `shopping_list = { "tomatoes" => 3, "milk" => 1, "chocolate" => 100 }`<br>
  NOTE: In this example there are spaces after the first curly brace and before the last brace. This is a style choice,
  and won't affect how Ruby makes the Hash. Some prefer it spaced out for readability. It's your choice.

- You can also make a hash using the BUILT IN `.new` method on Ruby's Hash class. Doing it this way lets you set a 
  default value for every key you try to access, or create<br>
 `shopping_list = Hash.new(0)`<br>
 `shopping_list["tomatoes"]` #=> `0` Even though "tomatoes" aren't in our shopping list hash.
 
- Bracket notation: `[]`, can be used along with the Hash class to make a hash using blocks, or just in a shorthand way.<br>
  `shopping_list = Hash["tomatoes", 3, "milk", 1]`<br>
  NOTE: Here Ruby sees four arguments separated by commas, so it just starts making key, value, key, value until it gets to 
  the end of the brackets. If you try this with an odd amount of arguments inside the brackets, Ruby will give you an error.
  Remember that in this example, even though it looks like an array, `["tomatoes", 3, "milk", 1]` is actually an arguments list 
  being passed to the Hash class. Again, Ruby just uses the CONTEXT around the `[]` to determine what you want.
  
For now, focus on the first, basic way to make a hash, just using literal syntax. `my_thing = {"a" => 1, "b" => 2}`

###Accessing the values in a Hash

So you have a hash with stuff in it. Awesome. But now you need to get at a particular value. Let's say you want the number of 
tomatoes that you need from your shopping list. In your terminal/console, do this:

`shopping_list = { "tomatoes" => 3, "milk" => 1, "chocolate" => 100 }`

To get to a value in a hash, you can:
- Provide it's key using bracket notation: `[]`<br>
  `shopping_list["tomatoes"]` will give you: `3`<br> 
  What we did here is ask Ruby, what is the value for the "tomatoes" key in my `shopping_list` hash?
  
- We can also use the BUILT IN `.fetch` method from Ruby.<br>
  `shopping_list.fetch("tomatoes")` gives us the same thing: `3`<br>
  NOTE: We use parens here to give the `.fetch` method the argument it needs to go find our value for us. So here we 
  are saying, hey Ruby, using your built-in `.fetch` method, and here is the key I want you to fetch the value for.
  
NOTE: Save `.fetch` for later unless you are super comfortable with this process already. You can use `[]` notation 
to access values all day long just fine. `.fetch` is only really useful in a handful of situations that won't matter 
often, if at all, when you are starting out.

###Removing something from a Hash





 

