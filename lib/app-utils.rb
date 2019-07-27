class AppUtils
  def self.has_correct_format?(id)
    !!(/\A\d+\z/ =~ id)
  end
end
