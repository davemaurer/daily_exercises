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

### Procedural Ruby in a file with no classes

Step 1: Create a file using your console/terminal. Like this: `touch ruby-procedural.rb`

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
`print_hello` calls that method. Because there is not class wrapping any of this code, everything is loaded into local 
memory and executed line by line. So, if we move the line where we call our method `print_hello` up above where we define 
it, the code won't work, because Ruby hasn't run the `def print_hello` line yet:

```ruby
print_hello

def print_hello
  puts "Hello"
end
```
Run it and see an error like: ```undefined local variable or method `print_hello' for main:Object (NameError)```

When running procedurally, Ruby needs everything defined (`def my_method`)or assigned (`x = "Hi there"`) before it can 
act on those things. You may be thinking "then why does `puts "Hello"` work if `"Hello"` is not assigned before you use 
`puts`. The simple answer is because `puts` is a built-in Ruby method that takes each argument passed to it, loads that 
argument into local memory, and outputs that argument to the screen with a new line added. So if you did
`puts("this", "that")` in your terminal while inside irb or pry, you would get `this` on one line and `that` on another. 
So whether you are actually defining/assigning values/methods, then using them, or you are using a method that does the 
assignment for you, everything that executes in Ruby has to be in local memory before it can be used. 

You don't need this file anymore, so you can delete it using the console/terminal. To get rid of it, in the console, type
`rm ruby-procedural.rb`. You may be tempted to keep it. Don't. If you need it again, it will help you a lot more to go 
through the steps of building it from scratch.

### Ruby with classes. Still procedural, but some things aren't executed right away.

Classes are nice because they don't have to follow the rules of top-down procedural programming where each line is executed
in order. When you create a class in a file, all of the code inside the methods in the class is shielded from being executed,
just like when you wrapped your `puts "Hello"` in a method earlier. This shielding of the code is known as scoping in
programming. Scope determines how values and methods can be accessed. Up above, when you wrapped a method around the
`puts "Hello"` line, you changed it's scope, so that the line was only available if you executed the method. It was
scoped to the method. Every method you put inside of a class is scoped to that class. In order to get to methods
inside the class, you have to open it up. One way to open a class is to instantiate it. You can then call methods 
on that instantiation. Let's go through it step by step:
 
Step 1: In your terminal create a file: `touch super_hero.rb`. Open that file in your editor.

Step 2: Create a class inside your `super_hero.rb` file:

```ruby
class SuperHero
  
end
```

Step 3: Put a method in your class that just returns the hero's name. Then at the bottom, outside the `end` that closes 
the class, try to call the `name` method.

```ruby
class SuperHero
  def name
    "Wonder Woman"
  end
end

name
```
- Now run the file from your terminal and see if anything happens: `ruby super_hero.rb`. Ruby gives your an error here, 
telling you `name` is an undefined variable or method. Well it's defined in the `SuperHero` class, so how come it's undefined? 
Because of scope. The `name` method is not in scope because the `SuperHero` class container isn't opened. Let's open it.

Step 4: Instantiate the `SuperHero` class by calling Ruby's built-in `new` method on it, and at the same time assign it
to a local variable called `hero_one`. Then use the `puts` method to output the result of calling the `name` method on your 
instantiated `SuperHero` class object.

```ruby
class SuperHero
  def name
    "Wonder Woman"
  end
end

hero = SuperHero.new
puts hero.name
```

Run the file to see that it now outputs `Wonder Woman`. 

- Calling `SuperHero.new` opens the class, or more precisely, it creates a class object in your computer's local memory. 
This class object, in this case referenced by the local variable `hero`, is then ready to have methods called on it. You 
can also just call the method directly on `SuperHero.new` to get the same result. Add this to the bottom of the file:
 `puts SuperHero.new.name`. The file should now look like this:
 
```ruby
class SuperHero
  def name
    "Wonder Woman"
  end
end

hero = SuperHero.new
puts hero.name
puts SuperHero.new.name
```
What you actually did above was instantiate two different `SuperHero` class objects, and call 
name on both of them, using `puts` to output the result to the terminal. Without using `.new` you 
could not have called the name method inside of the `SuperHero` class.

Inside of a method you can put any code that you would outside of a method. So you can 
create local variables, call other methods, and even have the method call itself again (recursion).
Lets add a method that does more than one thing.

Step 5: Add a home method to the SuperHero class.

```ruby
class SuperHero
  def name
    "Wonder Woman"
  end
  
  def home
    "Paradise Island"
  end
end

hero = SuperHero.new
puts hero.name
puts SuperHero.new.name
```

Step 6: Now add a fight_crime method that uses the other two methods we made. And 
change the two `puts` lines at the bottom of the file.

```ruby
class SuperHero
  def name
    "Wonder Woman"
  end
  
  def home
    "Paradise Island"
  end
  
  def fight_crime
    name + " is fighting crime in " + home + "!!!"
  end
end

hero = SuperHero.new
puts hero.fight_crime
puts SuperHero.new.fight_crime
```
As before, you should have two lines printed to the terminal when you run this file using 
ruby. Try it.
