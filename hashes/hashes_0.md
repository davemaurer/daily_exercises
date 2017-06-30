###Hashes: Key => Value pairs. A way to organize and nest named values.

- Just like the Array class, the Hash class is built BUILT IN to Ruby. That means when you use 
  the proper convention (you tell Ruby in the right way), you can make, read, and change/mutate 
  hashes in order to organize your values.
  
- Up in the headline, when I said "named values", what I meant was when you have a group of values you don't want to 
  just shove into an array a big glob, you need to structure that group of values in such a way that you can access 
  what you want whenever you need it. Say we have a data-set that is a group of employees, and each of those 
  employees has a NAME, an ADDRESS, and a PHONE NUMBER. One way we could put this group of values into a structure we 
  can easily use is by created a Ruby Hash. We need to think in terms of key => value pairs, so maybe we have each 
  employee NAME be a key in our Hash. So mentally we are thinking something like this:
  
  `employees = {:bob => bob's stuff here, :jane => jane's stuff here, etc., etc.}`
  
  Cool, but now how do we get both the ADDRESS and PHONE NUMBER to be the value that 
  each employee name points to? Remember each key in a Hash can only point to ONE value. Well, a key in a Hash can point 
  to ANY value we decide to make, so we can have each ADDRESS and PHONE NUMBER be another, NESTED Hash. So our mental model 
  now looks like this in our heads:
  
  `employees = { :bob => {:address => "123 bob street", :phone => "555-333-1111"}, :jane => {:address => "main ave", :phone =>
  "555-333-2222"} }`

  In our `employees` Hash, the key of `:bob` points to a value that is just another Hash. The value each key pointed to
  could have been an array instead of a hash if we wanted it to be, but this would have gotten complicated to reason about, 
  forcing us to use an array of arrays: 

  `employees = { :bob => [[:address, "123 bob street"], [:phone, "555-333-1111"]] }`

OK that's enough high level "hash-like thinking" for now. More of this will follow. Let's dive down closer and look at the 
what makes Hashes tick.


