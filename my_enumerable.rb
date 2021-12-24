module MyEnumerable
  def all?
    @list.each { |value| return false unless yield value }
    true
  end

  def any?
    @list.each { |value| return true if yield value }
    false
  end

  def filter
    array = []
    @list.each { |value| array.append(value) if yield value }
    array
  end
end
