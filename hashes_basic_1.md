IN YOUR CONSOLE/TERMINAL (SAME THING), paste this hash:

```
cars = {toyota: 'corolla', :honda => 'civic', 'ford' => :F150, RocketCar: true}
```
NOTE: Notice a few things. A key, or a value, in a hash can be any legal Ruby value/object. 
They could be an integer, a string, symbol, class, struct, boolean, even nil.
Try `h = {true: false}`, and `new_hash = {nil => nil}`
NOTE: Doing this `{a: 'b'}` is the same as doing this: `{:a => 'b'}`. The first way 
is just easier to type for a programmer, so it's now a thing in Ruby. Either way 
Ruby puts the colon on the left side of the symbol when storing it.
One thing you can't do is have two keys that are the same. They must be 
unique in order for the hash to return the correct value. So nil doesn't make 
a lot of sense for a key name. You could have a hash with different instantiations 
of a class as keys if you wanted. Ex: Assuming you have a Dog class built. 
```
dog_one = Dog.new('fido')
dog_two = Dog.new('fido')
dogs = {dog_one => dog_one.name, dog_two => dog_two.name}
dogs[dog_one] #=> (remember that thing #=> means "would give you") 'fido'
```
As you can see. Values don't need to be unique. Just keys.

1. Use bracket notation to get the value of the `:toyota` key in your cars hash.

2. Use `.key(your_argument_here)` to get the key for the value `'civic'`
   (Hint: Call the key method on the cars hash and provide the name of the 
   value as the argument. This would be problematic if you had a hash with 
   multiple values that are the same, because only the first matching key 
   would be returned.)
   
3. Use `.keys` on your cars hash to get a list, given to you in array form, 
   of all the keys in your hash. #=> `[:toyota, :honda, "ford", :RocketCar]`

4. Use `.values` to get the values. #=> `["corolla", "civic", :F150, true]` Note 
   that these are also in array form, so if you wanted the first value in the 
   hash, you could do: `cars.values.first`
