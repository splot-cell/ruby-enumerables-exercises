module Enumerable
  def my_each_with_index
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
