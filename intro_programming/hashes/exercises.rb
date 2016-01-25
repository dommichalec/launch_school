# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only immediate
# family members' names into a new array.

family = {  :uncles => ["bob", "joe", "steve"],
            :sisters => ["jane", "jill", "beth"],
            :brothers => ["frank","rob","david"],
            :aunts => ["mary","sally","susan"]
          }
immediate_family = family.select {|title, _| title == :brothers || title == :sisters}
p immediate_family

# Look at Ruby's merge method. Notice that it has two versions. What is the
# difference between merge and merge!? Write a program that uses both and
# illustrate the differences.

# merge! permanently modifies the caller whereas merge does not modify a caller
# to demonstrate:

hash_one = {:one => 1, :two => 2, :three => 3}
hash_two = {:four => 4, :five => 5, :six => 6}

p hash_one.merge(hash_two)
p hash_one
p hash_two
p "Now let's mutate the caller"
p hash_one.merge!(hash_two)
p hash_one

# Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys. Then write a program that does
# the same thing except printing the values. Finally, write a program \
# that prints both.

my_important_hash = {:one => 1, :two => 2, :three => 3}
p my_important_hash.keys
p my_important_hash.values

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]

# What method could you use to find out if a Hash contains a specific
# value in it? Write a program to demonstrate this use.

example_hash = {:one => 1, :two => 2, :three => 3}
p example_hash.has_value?(3) # => should evaluate to true

# Given the following data structures. Write a program that moves the
# information from the array into the empty hash that applies to the
# correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]
p contacts

# Using the hash you created from the previous exercise, demonstrate how you
# would access Joe's email and Sally's phone number?
p contacts["Joe Smith"][0]
p contacts["Sally Johnson"][0]
