a = [1, 2, 3, 4]

a.delete_if {|x| x % 3 == 0}

a[0].times { puts "this should print once "}
