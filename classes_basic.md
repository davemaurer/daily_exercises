###Ruby Classes - Basics

Recap: 
- Classes are containers for methods and values. Classes live in files. So if you are 
opening code containers from the outside in, the file holds the class, which holds
the methods, which hold the variables. File > Class > Method > Variable. For Example:

```ruby
# Let's say this code lives inside a file called dog.rb

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

We can create values by assigning: `x = "Hello"`, or by simply outputting something for a user: `puts "Hello"`

We store values using variables, files, databases, data structures (arrays/hashes), and local memory RAM.

We retrieve values by running files, instantiating or calling classes, and calling variables and methods.

We manipulate values in order to eventually give the user some output. Sometimes this happens behind the 
scenes, such as when a role playing video game updates the plot variables as you make decisions. Other times 
values are pulled out of a file or database and methods are used to turn those values into something that 
can be printed to the screen.

Let's also recap little bit about when a value actually 'comes to life', or pops 
into existence. Your computer has two different types of data storage. Drive storage and 
RAM. Your drive storage is "hard" storage, meaning the values are there in files, but they 
arent usable while in that state. When we want to use a value, or values with our programs, 
we developers have to first load them into local memory, or RAM. This is why we instantiate 
classes, and why we have conventions like the `require` method. It's a way of getting values 
from hard storage into local memory so we can output them, change them, do stuff with them. 

Let's see that in action, and also clarify the idea of classes in Ruby by building code with, and without classes.

Step 1: Create a file using your console/terminal.  `touch ruby-procedural.rb`

Step 2: Put some code in that file. `puts "hello"`
- You just stored some data. The line `puts "hello"` is now on your hard drive inside the file `ruby-procedural.rb`,
 and you can access the contents any time you want by loading it into local memory (RAM).
