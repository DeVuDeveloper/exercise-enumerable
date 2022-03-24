require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  @list = []

  def initialize(*list)
    @list = list
  end

  def each
    n = 0
    while @list[n]
      yield @list[n]
      n += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

puts list.filter(&:even?)