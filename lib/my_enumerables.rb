module Enumerable
  def my_each_with_index
    return self unless block_given?

    i = 0
    for e in self
      yield(e, i)
      i += 1
    end
  end
end

class Array
  def my_each
    return self unless block_given?

    for e in self
      yield(e)
    end
  end
end
