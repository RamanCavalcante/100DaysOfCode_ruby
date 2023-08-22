class Isogram
  def self.isogram?(str)
    arr = str.downcase.scan(/[a-z]/)
    arr == arr.uniq
  end
end