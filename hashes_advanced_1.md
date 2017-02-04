In your console (irb,pry), paste this hash:

```
my_hash = {dogs: [:d_one => {name: 'fido', age: 3, color: 'red'}, d_two: {name: :lassie, age: 7, color: 'golden'}],
 'cats' => {'cat one' => {'name' => 'fluffy', age: 10, color: 'blue'}, cat_two: {name: 'fuzzy', age: '5', color: :pink}}}
 ```

1. Get the hash that :d_one is associated with (You want #=> `{name: 'fido', age: 3, color: 'red'}`)

2. Get the 'fido' value. #=> `"fido"`

3. Get fluffy the cat's age. #=> `10`

4. Get the entire cats object. #=> `{'cat one' => {'name' => 'fluffy', age: 10, color: 'blue'}, 
   cat_two: {name: 'fuzzy', age: '5', color: :pink}}`
   
5. Change fido's name to 'Benji'.

6. Change fuzzy's color to the symbol blue.

7. Get the keys for the hash two different ways. (.keys, then a different way, build your own array?)

8. Get the values for the hash and note how the values aren't the individual raw/literal values
   ('golden', 7, '5', etc.)
