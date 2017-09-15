IN YOUR CONSOLE:

Ruby's `.each_with_index` and `.with_index` methods are handy for when you need to compare two collections element 
by element. When using these methods the block expects to be given two block variable names (or some people call 
these block arguments. It's the same thing). Example:
```ruby
nums = [1, 3, 4, 4, 5]

#normal map, one block variable we call num
nums.map { |num| num + 1 }

#map.with_index, using two block variables (between the ||) called num and idx
nums.map.with_index { |num, idx| num + idx }

```
One way to use the index inside the block is to refer to another collection, at THAT index. Because each time the 
block iterates, the index is automatically incremented by one, it's easy to "traverse" the other collection.

1. Make an array of numbers 1 through 10 by using a Range object. Assign it to a variable `nums`.

- `nums #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

2. Make an array of the letters (strings of) "a" through "j", again using a Range. Assign it to `letters`

- `letters #=> ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]`

3. Using `.each_with_index` first, then `.map.with_index` second, get all of the letters in the `letters` array who's 
   "twin", or element in the corresponding index location, in the `nums` array is an even number. So we want:

- `["b", "d", "f", "h", "j"]`
  
   remember you will need to somehow get rid of the nils when using `.map`
