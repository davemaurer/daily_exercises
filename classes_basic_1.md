PREFACE: Classes are storage containers. They contain, usually, two things: VARIABLES,
and METHODS. A class has no purpose without methods. Even if you put a bunch of 
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

1. Make a class `Dog` as illustrated above. Note that the object returned has no 
instance variables indicated in it. Example: What you got(or similar): `#<Dog:0x007fb8819cb9e0>`.
What you may have expected: `#<Dog:0x007fb881359b48 @age=5, @name="fido">`.

