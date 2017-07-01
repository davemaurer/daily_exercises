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

###Adding keys and changing values in a Hash

- If we have our shopping list, and now we want to add spinach to it, to offset all of the chocolate we are going to buy, 
  we can use the assignment operator: `=`, to add a new key to our hash. Like so:

  `shopping_list = { "tomatoes" => 3, "milk" => 1, "chocolate" => 100 }`<br>
  `shopping_list["spinach"] = 100`<br>
  When we do this, if we don't have a "spinach" key in our hash (and we didn't yet), Ruby will add that key to the hash, and 
  set that key's value to whatever we put after the `=` operator. In this case, Ruby adds `"spinach" => 100"` to the end of 
  our hash, so now it looks like this if you call it in the console:<br>
  `shopping_list`<br>
  And Ruby returns for you: `{"tomatoes"=>3, "milk"=>1, "chocolate"=>100, "spinach"=>100}`
  
- But what if we just want to change a value in our shopping_list, like we know we will eat all of the chocolate and 
  maybe go into a sugar coma. So we now only want our "chocolate" key to have a value of 5. Well, the `=` operator is 
  still exactly what you want. Just like you can use `=` to assign something to variable (`x = 5`), then use it again
  to REASSIGN (`x = 10`), you can do that same thing with a hash. So use your existing `shopping_list` in 
  your terminal, or just make it again, then:<br>
  `shopping_list["chocolate"] = 5`<br>
  What happens here is if a key already exists inside of a Hash object, Ruby REASSIGNS that key's value. This is because 
  you can't have more than one key with the same name at any level of a hash object. So Ruby has code under the hood that 
  accounts for this situation, and instead of yelling at you that the key already exists, it says "ah, I think this programmer 
  wants me to change the value associated with this key", and viola. Changed.
  
- You can also use Ruby's BUILT IN `.store` method, which will take in the key and value as arguments. Like this:<br>
  `shopping_list.store("bananas", 5)`<br>
  `.store` can be used to both add a key/value pair to hash, or change as existing key's value to a new value, just like 
  bracket notation: `[]`, and the assignment operator: `=`, can.

###Removing something from a Hash

If you want to keep a key in a hash, but not have it point to a usable value, you could always set that value to nil.

- `shopping_list = { "tomatoes" => 3, "milk" => 1, "chocolate" => 100 }`<br>
  `shopping_list["tomatoes"] = nil`
  
But if you want to REMOVE a key/value pair altogether from a hash, Ruby has a BUILT IN method called `.delete` that 
works on a lot of different things, hashes being one of those things. Let's check it out. In your terminal:

- `shopping_list.delete("tomatoes")`<br>
  As we can see if we then call our shopping list (do that now), the key of "tomatoes" is gone, along with its value. So 
  the `.delete` method just needs to be given an argument, which is the key you want to remove. When specifying this key, remember you 
  need to give Ruby the exact data type that the key is. So doing: `shopping_list.delete(tomatoes)` (no quotes around the 
  word tomatoes this time) will give you an error, because Ruby doesn't know what tomatoes is, unless you happen to assign 
  something to a local variable named `tomatoes`. But Ruby does know what `"tomatoes"` is, because when you created that key 
  you made it a string.

###Changing the name of a key in a Hash

There are a couple of ways to do this by iterating over your hash and just returning a new hash with the key (or keys) 
you want changed, but there is also a kind of simple way to do this if you just have, say one key you named wrong. In your 
terminal:

- `typo_list = { "sugar" => 3, "beets" => 1, "brockalie" => 100 }`<br>
  Uhoh, that's not the way you spell broccoli! Red alert, we need to fix this stat! We could just delete the bad key, then 
  add a new key spelled correctly, but because of what Ruby actually RETURNS for you when you call delete, you can kill two 
  birds with one stone. Ruby returns you the VALUE of the key you deleted when you use the `.delete` method. This is 
  programmed under the hood so don't think too much about why right now. Just know that that's the way `.delete` works. So 
  if that's true, and (DON'T DO THIS, IT'S JUST AN EXAMPLE): `typo_list.delete("brockalie")` would give us back the number 
  `100`, can't we just do this? (yes, we can): OK NOW do this in your terminal:<br>
  `typo_list["broccoli"] = typo_list.delete("brockalie")`<br>
  If that makes you cross-eyed don't worry too much about it right now. Things gain more clarity the more you are exposed 
  to them. Basically it boils down to methods being able to both DO a thing, and RETURN a thing, and what a method returns 
  does not have to represent exactly what it does. So `.delete` when used on a hash removes the key you tell it to remove, 
  then returns you the value of the key it just took out for you. Hence, being able to do what we did up there.
