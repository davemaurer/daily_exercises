1. Integers, Strings, Symbols, Booleans, and Nil. Nil is technically not a data type, depending on who you 
   are talking to, because traditionally data types are raw values that can be of more than one form. i.e. an 
   integer can be 1, or 2, or 3. A boolean can be true, or false. Nil can only be nil, but it is used just like 
   other data types are, so in Ruby I think it's ok to put nil in the data type category.
   
2. Arrays and Hashes. Again, some will say they are also data types, but it's all up to how you want to organize 
   your concept of Ruby mechanics. I like to keep types and structures separate in my head because a type will 
   only be itself, while a structure will hold multiple types.
   Others: Binary Search Tree, Trie, Linked List, Bitmap, Lookup table, HEAP, Graph.

3. Structures, Literal Values, Classes, Structs can all be assigned to variables, so they are all usable values
   once assigned. Basically anything you can assign to a variable is a value. If `x =` works on it, you're good.
   
4. Variables, Methods and Data Structures are the usual suspects here: 
   a. Variables, because you can just use an assignment operator `=` to "hold" that value. <br> 
   b. Methods, because Ruby's implicit return will try to give you the last thing evaluated in the method.
      Sometimes you won't use this mechanic, but you certainly can to have a method call return a value for you. <br>
   c. Structures, because you can just pry them open to get at the value you want.
   d. Classes, by way of their methods, can also just be fancy value holders, though normally they also mutate 
      those values, or produce new values via input and methods.
   e. Structs are dumbed down class-like structures that you can use dot notation on to get at the values
      stored in key/value pairs. Not used often, but good to know about. 
    
5. Absolutely. An array that contains a million elements is still just a value itself, that can be assigned to 
   the variable `really_long_collection`.
   
6.    
