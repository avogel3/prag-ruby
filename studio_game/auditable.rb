module Auditable
  def audit
    puts "Rolled #{self.number} (#{self.class})"
  end
end
