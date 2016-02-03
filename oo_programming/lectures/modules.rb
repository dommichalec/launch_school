module Ability
  module Swim
    def swim
      "swimming!"
    end
  end

  module Nap
    def nap
      'napping!'
    end
  end
end

class Dog
  include Ability::Swim
  include Ability::Nap
  # ... rest of class omitted
end

class Fish
  include Ability::Nap
  include Ability::Swim
  # ... rest of class omitted
end

p Fish.ancestors
p Dog.ancestors
