helpers do
  def count_interests(users)
    users.reduce(0) do |sum, (_, user)|
      sum + user[:interests].size
    end
  end
end
