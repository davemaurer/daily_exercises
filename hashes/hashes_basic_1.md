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
of a class as keys if you wanted. Ex: This is assuming you have a Dog class built. 
```
dog_one = Dog.new("Fido")
dog_two = Dog.new("Rex")
dogs = {dog_one => dog_one.name, dog_two => dog_two.name}
dogs[dog_one] #produces "Fido"
```
As you can see, the values are both going to be "fido". Values don't need to be unique. Just keys.

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
   
5. Make another hash, and set the default value for any key that doesn't exist in the hash 
   to 0. `my_hash = Hash.new(0)`. By providing and argument, in this case `0`, to `Hash.new`, 
   any time you check key that isn't in the hash, you get back `0` instead of the default of 
   `nil`. This can be useful if you don't want to use nil as the "it's not there" return value.
   Get the value for `"lightsaber"` in your `my_hash` hash: `my_hash["lightsaber"]` and see that 
   it's `0`. Once you set a key equal to something in the hash, the default is overwritten. 
   
6. You can use bracket notation (that's these guys: `[]`) not only to retrieve the value of a key in 
   a hash, but also to assign values. Add a `"lightsaber"` key to `my_hash`, with a value of 
   `"awesome"`: `my_hash["lightsaber"] = "awesome"`. Now get the value of the `"lightsaber"` key,
    and see that it's `"awesome"`, which it totally is.
    
7. When using bracket notation to assign a key/value pair to a hash, if the key already exists in the 
   hash, Ruby will just overwrite the value. Our lightsaber really is totally awesome, so let's make 
   it that way. Do this: `my_hash["lightsaber"] = "totally awesome"`. Now get the value for your 
   `"lightsaber"` key, and see that it's changed.
   
8. If you want to remove a key/value pair from a hash, you can use `.delete`, providing the name of the 
   key you want removed as an argument. Lightsabers don't exist...yet. Delete the key/value pair who's key 
   is `"lightsaber"` from your `my_hash` hash. Like this: `my_hash.delete("lightsaber")`. Now check your 
   `my_hash` hash to see that it's empty.
   
9. Add a key, `:chevy` that points to a value, `"volt!!!"` in your `cars` hash.

10. Change the value of the `"ford"` key to `"escape"` in `cars`.

11. Add a `:honda` key, with a value of `"accord"`. Check to see if you have two `:honda` keys in your 
    hash now. You shouldn't of course, because you can't have duplicate key names. You COULD have a `"honda"` 
    key if you wanted, because `:honda` and `"honda"` are two totally different things to Ruby. One is a 
    symbol and one is a string.
    
12. Add a `[1, 2, 3]` key to `cars` with a value of `[1, 2, 3]`. Totally legal. Hash keys, and hash values, 
    can be anything you can assign to a variable. Since you can assign an array to a variable, you can make 
    an array a hash key, or a hash value.
    
13. This is a cars array. Numbers have no place here. Use `.delete` to remove the `[1, 2, 3]` key along with it's value.
 
 
14. Build a few hashes from scratch, using both this style with the shorthand symbols: `h = {a: "b", c: "d"}`
    and this style using hashrockets: `nums = {1 => 2, 3 => 4}`. Note that you can build a hash using 
    symbols that hashrocket way also. It's just easier to type the shortand way: `h = {:a => "b", :c => "d"}`.
    Pay attention to how Ruby returns those hashes for you after it makes them. They all have hashrockets 
    when Ruby stores them for you.
   
15. Play around. Add 5 things to your `cars` hash. Get the keys. Get just the first key (`.first`). Get the 
    values. Make sure you are comfortable with the way hashes should look when making them, and the way they 
    look when Ruby returns them for you.
