## Passing arguments - OR - passing values (and argument that is passed to a method has to be an actual value)

### Learning the lingo: 
#### Argument vs. Value vs. Parameter:
 
When talking about passing arguments to methods, using the word argument, parameter, or value all mean the 
same thing. To reduce brain clutter, I'd stick to calling them arguments and keep in the back of your head that 
arguments are just another way to say values. In short, an argument is a parameter is a value.

#### Argument list:

A way to say "the arguments that are expected when a method is supposed to take arguments". Example: Below, the three 
things inside the parens, (arg_one, arg_two, arg_three), is/are the argument list. It's the list of arguments a method takes.

```ruby
def my_cool_method(arg_one, arg_two, arg_three)
  #cool code
end
```

#### Called, invoked, executed:

When talking about methods, all of these words mean the same thing. Running the method. When you call a method, invoke 
a method, or execute a method, you are just picking between three ways to say running the code inside the method.

#### Pass, accept, catch, receive

When you hear/see pass or passed in, it's referring to when an actual value is given during a method call/invocation/execution. 
When you hear accept, catch, receive, it's when the value that was PASSED is CAUGHT by the local variable name you decided on 
in the argument list. Example:

```ruby
def print_three_words(word_one, word_two, word_three)
  puts word_one + ' ' + word_two + ' ' + word_three
end

print_three_words("this", "that", "wut")
```
Above we first define our method `def print...`, then we call/invoke our method `print_three_words("this", "that", "wut")`. The 
method call passes three values to the method definition, where they are caught and now those three argument names, word_one, word_two, 
and word_three, equal the three values. So that inside the method:

```ruby
word_one = "this"
word_two = "that"
word_three = "wut'
```
Remember that when it's passed it has to be an actual value, and when it's caught/received, the value is attached to the name you gave it 
in your argument list.

### Why even bother passing arguments?

In almost every programming language, values need to be shared, or passed, between pieces of code in order to stay 
organized and not clutter up files with repeated stuff. If you had to make x = a very long hash 15 different times in 
a program, it would soon become tedious. Example: If you couldn't pass values in Ruby you might have to do this.

```ruby
def do_something_with_array
  x = %w(cat dog house mouse garage lawn tree branch sink jedi sith wut)
  # some other code that does cool stuff
end

def do_something_else_with_array
  x = %w(cat dog house mouse garage lawn tree branch sink jedi sith wut)
  # more code to do cool stuff, but this making the array every time sucks
end

do_something_with_array # call your method to see your cool code run
do_something_else_with_array
```

That's a very simple example, and it could easily be a lot more repetitive in a large program. But with the ability to 
pass values it becomes this:

```ruby
x = %w(cat dog house mouse garage lawn tree branch sink jedi sith wut)

def do_something_with_array(array)
  # some other code that does cool stuff
end

def do_something_else_with_array(array)
  x = %w(cat dog house mouse garage lawn tree branch sink jedi sith wut)
  # more code to do cool stuff, but this making the array every time sucks
end

do_something_with_array(x)
do_something_else_with_array(x)

# or now because of passing arguments we can supply anything we want. We can feed it a value directly.

do_something_with_array(%w(chair bike table))
```

### When do I name it whatever I want, and when do I need to give an actual value?
 
The easiest way I've found to remember at first, is to ask one question. Does the method name have a `def` in 
front of it? If it does, then YOU name the arguments. They will NOT be actual values. So they will look like local 
variables right? Yes:

`def say_something(phrase)`

In the above example, `phrase` doesn't have quotes around it right? So it's not a string. In fact it's not any of 
the data types. It looks EXACTLY like a local variable, because that's what it's meant to act as. It catches an actual 
value that is PASSED to it when the `say_something` method is invoked, and it represents that value inside the method.

So if we don't see a `def` in front of the method, that's when we know the arguments given need to be actual values, 
because if you see a method name with no `def` in front of it, that method is being called/invoked/executed (all the same thing).

If our `say_something` method above were part of a class, like:

```ruby
class Talk
  def say_something(phrase)
    puts phrase
  end
end
```

In this case you would see the say_something method executed like this:

```ruby
t = Talk.new # instantiate the Talk class. This makes it a class object in memory.
t.say_something("hello") # call the say_something method on your instantiated Talk object.
```
Above, because there is no `def` in front of say_something, we know we need to give an actual value, like the string of "hello".
Further up, when we created our say_something method: `def say_something(phrase)`, we see a `def` in front of the method, so 
we know the argument can't be an actual value, but instead we name it like a local variable: `phrase`.

### Can I pass arguments in any order I want? Will Ruby jsut figure it out for me?

Nope. Arguments are meant to be given one at a time in sequential order. So if you have a method that takes three arguments, 
and all of those arguments are supposed to be different data types, you need to give them in the right order. Example: You have 
a method that takes two numbers, adds them, and outputs the added result followed by a word of your choice.

```ruby
def two_numbers_and_a_word(num_one, num_two, word)
  result = num_one + num_two
  puts "#{result} is your " + word
end
```
You can then call the method, providing two numbers as the first two arguments, and a string as the last argument. This will work.

`two_numbers_and_a_word(5, 3, "awesomeness!")`

But if you try to provide the string first, and the two numbers second, Ruby will pass in the second number as the last argument. 
Now you have a TypeError, because you have that `+` operator trying to add `word` to the string you made. Just like you can't triple 
stamp a double stamp(movie reference), you can't add a string to an integer. So the following example would fail:

`two_numbers_and_a_word("awesomeness!", 5, 3)`

Order matters when passing arguments.


### Summing it up

When calling a method that expects arguments, pass an actual value: 

`say_word("hello")`

When defining a method that takes arguments, name your arguments like local variables: 

`def say_word(word)`

Arguments are passed in order, so if your first argument should be a string, and your second should be an integer, 
that's how you will need to give them to your method when you call it.
