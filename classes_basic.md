###Ruby Classes - Basics

Recap: 
- Classes are containers for methods and values. Classes live in files. So if you are 
opening code containers from the outside in, the file holds the class, which holds
the methods, which hold the variables. File > Class > Method > Variable. For Example:

Let's say this code lives inside a file called dog.rb. Remember anything following the  `#` symbol
on the same line means a comment, and not part of the executable code.

```ruby
class Dog   # This is the class
  def initialize  # Inside the class is a method, or methods. Just one in this class
    @name = "Fido"  # Inside each method you can have a variable(s).
    @color = "Brown"
  end
end
```
We can see that inside the `Dog` class we have the `initialize` method that contains two 
variables. `@name` and `@color`.

It's always about values:

The whole reason files, classes, methods, and variables exist in Ruby is to do stuff 
with values. Values come in many forms, but when given to a user, they are almost always 
a basic data type (string, integer, symbol, boolean) and usually strings and numbers(integers). 
It helps to think about the reason we use programs. It's so we humans can get output. 
Without values of some sort there is no output. As a developer, your job is to create, store, 
retrieve and manipulate the values we need for our output. That merits repeating. Programming is 
ALL about creating, storing, retrieving, and manipulating values.

- We can create values by using assigment: `x = "Hello"`, or by simply outputting something for a user: `puts "Hello"`

- We store values using variables, files, databases, data structures (arrays/hashes), and local memory RAM.

- We retrieve values by running files, instantiating or calling classes, and calling variables and methods.

- We manipulate values in order to eventually give the user some output. Sometimes this happens behind the 
scenes, such as when a role playing video game updates the plot variables as you make decisions. Other times 
values are pulled out of a file or database and methods are used to turn those values into something that 
can be printed to the screen.

Let's also recap little bit about when a value actually 'comes to life', or pops 
into existence. Your computer has two different types of data storage. Drive storage and 
RAM. Your drive storage is "hard" storage, meaning the values are there in files, but they 
aren't usable while in that state. When we want to use a value, or values with our programs, 
we developers have to first load them into local memory, or RAM. This is why we instantiate 
classes, and why we have conventions like the `require` method. It's a way of getting values 
from hard storage into local memory so we can output them, change them, do stuff with them. 

Let's see that in action, and also clarify the idea of classes in Ruby by building code with, and without classes.

Step 1: Create a file using your console/terminal.  `touch ruby-procedural.rb`

Step 2: Put some code in that file. `puts "Hello"`
- You just stored some data. The line `puts "Hello"` is now on your hard drive inside the file `ruby-procedural.rb`,
 and you can access the contents any time you want by loading it into local memory (RAM).

Step 3: In your terminal/console, make sure you are in the directory where you created your `ruby-procedural.rb` file, 
and type: `ruby ruby-procedural.rb`. 
- Why do we need to type `ruby` before we type the filename? Because when you downloaded 
Ruby onto your computer, along with it came a terminal command `ruby` that tells your operating system to try to open 
whatever file you type next as a Ruby file, and set up the contents in local memory. In short what this means is that if 
your file only has `require` methods at the top and a class defined inside it, all of that will be loaded into local memory (RAM), 
and ready to be used. If there are any lines of executable code that aren't inside of classes or methods. That code will be 
executed procedurally. So, when you run your very simple Ruby file above, Ruby opens the file using RAM, sees the built-in `puts` 
method on the first line, and executes that line of code immediately. Thus you see `Hello` outputted to the console. Part of 
`puts` is taking the quotes off of the string you tell Ruby to output. It's slang for 'Output this in a format that humans want 
to read'.

Step 4: Now go back into the file by switching to your text editor (you should be using command+tab keys to do this)
and wrap a method around your existing line of code. Like this:
```ruby
def print_hello
  puts "Hello"
end
```
Run the file from your command line in the terminal and you will not see anything outputted. That's because we 
wrapped the executable code in a container. In this case a method. A method can "contain", or "shield" executable 
code from the Ruby execution engine.

Go back into your file and add the line: `print_hello` to the bottom of your file, so it looks like this:

```ruby
def print_hello
  puts "Hello"
end

print_hello
```
What did you just do by adding that extra line of code? You called/invoked/executed a method. Specifically the method 
you defined right above where you called it. `def print_hello` tells Ruby you want to define some code to execute. Then 
`print_hello` calls that method. 
