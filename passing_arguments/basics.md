## Passing arguments - OR - passing values (and argument that is passed to a method has to be an actual value)

### Learning the lingo: 
#### Argument vs. Value vs. Parameter:
 
When talking about passing arguments to methods, using the word argument, parameter, or value all mean the 
same thing. To reduce brain clutter, I'd stick to calling them arguments and keep in the back of your head that 
arguments are just another way to say values. In short, an argument is a parameter is a value.

#### Argument list:

A way to say "the arguments that are expected when a method is supposed to take arguments". Example: Below, the three 
things inside the parens, (arg_one, arg_two, arg_three), is the argument list. It's the list of arguments a method takes.

#### Called, invoked, executed:

When talking about methods, all of these words mean the same thing. Running the method. When you call a method, invoke 
a method, or execute a method, you are just picking between three ways to say running the code inside the method.

```ruby
def my_cool_method(arg_one, arg_two, arg_three)
  #cool code
end
```

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
Further up when we created our say_something method: `def say_something(phrase)`, we see a `def` in front of the method, so 
we know the argument can't be an actual value, but instead should look like a local variable: `phrase`.

### Looking at it like Ruby sees it

