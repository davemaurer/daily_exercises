PREFACE: Classes are storage containers. They contain, usually, two things: VARIABLES,
and METHODS.

A class has no purpose without methods. Even if you put a bunch of 
instance variables inside of a class like so: 
```
class Dog
  @name = "fido"
  @age = 5
  @color = "tan"
end
```
In the above, you would never be able to call/retrieve any of those instance variables, or 
change them. Therefore, a class COULD have methods only, and function, but a class 
COULD NOT do anything useful with variables only. Also, classes in Ruby are made to use 
both methods and variables together so you can store values(variables), and retrieve or change 
values(methods).

IN YOUR CONSOLE

1. Make a class `Dog` as illustrated above. Then do: `Dog.new`. Note that the object returned has no 
instance variables indicated in it. Example: What you got(or similar): `#<Dog:0x007fb8819cb9e0>`.
What you may have expected: `#<Dog:0x007fb881359b48 @age=5, @name="fido">`. Instance variables are not 
stored in local memory until a method declares them. That's why initialize is so handy for assigning values 
to your instance variables, because when you do `Dog.new`, initialize is automatically invoked if it's in your 
class (NOTE: You don't have to have an initialize method to make a class work, but if you do, the `.new` method, 
which is a built-in method in Ruby, will call initialize, setting up your instance variables in local memory).

2. Make a class `Kitty`:
```
class Kitty
  def initialize
    @name = "Fuzzy"
    @age = 7
  end
end
```
Now when you do: `kitty = Kitty.new`, you will see that your kitty variable holds an 
object that has instance variables indicated in it. Something like this: `#<Kitty:0x007ff00c035a30 @age=7, @name="Fuzzy">`. 
That's cool, but we still can't use those instance variables. They exist, but they serve no 
purpose because our class doesn't have any methods to use them. For fun, try to get the 
kitty's name. If you succeed, how many hoops did you have to jump through?

3. Make a class `Person`:
```
class Person
  def initialize
    @name = "Bob"
    @age = 22
  end
  
  def name
    @name
  end
  
  def age
    @age
  end
```

Instantiate your `Person` class, assigning it's value to the local variable `bob`:
`bob = Person.new`. Now you can call methods on that object/value: 
`bob.name` #=> `"Bob"`, `bob.age` #=> 22. <br>
This would be great if we only ever needed our person to be named "Bob", and age 22, but if we 
want to create/instantiate multiple `Person` class objects with different names and ages, we will 
need to either have a method(s) that changes the name and age (impractical), or we will want to 
pass those values in when instantiating. When you do: `Person.new`, the `.new` method has the 
ability to pass values to the `initialize` method in the class, if there is one. 
Remake your class, typing it just as shown, even if it looks weird:

```
class Person
  attr_reader(:name, :age)
  
  def initialize person_name, person_age
    @name = person_name
    @age = person_age
  end  
```

If you've done mythical creatures or used the attr methods before, you may notice it looks different 
up there than it usually does, because there are parens. The convention is to NOT use parens with the 
attr methods, but my point in using them is to show you that it IS just a method, and the symbols 
in the parens are just arguments you are passing to it. Parens are optional when using arguments with 
methods, as shown in the initialize method, which now doesn't have any parens. Ruby doesn't care, it 
only needs each argument separated by a comma, and either a space or enclosing `()` after the method 
name. TIP: Use parens when you can, as that adds clarity and makes your code more understandable at a 
glance.

The `attr_reader` is just a dumb method maker. When you use it, what it does is make you an "invisible" 
method that only pops up when you instantiate a new instance of your class (what it actually does is 
append that method to the method table created in local memory during instantiation, but thinking of 
it as an invisible method in the class may help conceptualize at first). The way it makes the method is 
it just takes off the `:`, says `def whatever_symbol_you_gave_it`, one the next line adds an `@` to the 
symbol you gave it, then on the next line it uses `end`. This is paraphrasing the way it builds the 
method, but that's essentially it. So when you do: `attr_reader :name`, Ruby does:
```
def name
  @name
end
```
That's it. There is nothing else the attr_reader can do. It can't take special code, or add anything 
besides `@name` inside of it, so this attr is only good for making a convenience method(or methods)
that return(s) an instance variable named the same thing as the symbol(s) you give as arguments.
This may make you think "why even do that when you can just make those methods yourself". What happens 
when you have 100 instance variables and 50 of them need to be returned using `.the_thing`. Now 
your file has, counting spaces, ~200 extra lines of code to go through when reading it. In 10 lines 
or less you can use attr_reader with 50 arguments that will save you space and make your code easier 
to traverse.
