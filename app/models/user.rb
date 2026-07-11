class User
  # Placeholder model for fixture purposes.
  def name
    @name
  end
end

class Account
  def close!(reason)
    @closed_reason = reason
  end
end
