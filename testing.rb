@name = "Fido"

def name
  @name
end

def change_name(new_name)
  @name = new_name
end

puts name
change_name("Lady")
puts name
