module MyEnumrable
  def all?
    @list.each { |num| return false unless yield(num) }
    true
  end

  def any?
    @list.each { |num| return true if yield(num) }
    false
  end

  def filter
    arr = []
    @list.each { |num| arr.push(num) if yield(num) }
    arr
  end
end
