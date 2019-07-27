class Patient
  def self.find(id)
    new(id)
  end

  def initialize(id)
  end

  def exists?
    false
  end

  def record
  end
end
