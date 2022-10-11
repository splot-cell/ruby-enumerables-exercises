module Enumerable
  def my_each_with_index
    i = 0
    for e in self
      yield(e, i)
      i += 1
    end
  end

  def my_select
    result = []
    for e in self
      result << e if yield(e)
    end
    result
  end

  def my_all?
    result = true
    for e in self
      result = false unless yield(e)
    end
    result
  end

  def my_any?
    for e in self
      return true if yield(e)
    end
    false
  end

  def my_none?
    for e in self
      return false if yield(e)
    end
    true
  end
end

class Array
  def my_each
    for e in self
      yield(e)
    end
  end
end
