require "pp"

def move_zero_elements(array)
  result = array
  array.reverse.each do |e|
    if e % 10 == 0
      #result.delete_at(result.index(e))
      result.delete(e)
      result.insert(0, e)
    end
  end
  result
end

pp move_zero_elements([5, 8, 999, 10, 50, 3]); nil
