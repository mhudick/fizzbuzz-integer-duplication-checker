def foobar(arr)
count = 0
array = arr
array2 = Array.new
array.each do |num|

  if num % 15 == 0
    array2[count] = "foobar"
  elsif num % 3 == 0
    calculate(array, array2, num)
  elsif num % 5 == 0
    array2[count] = "bar"
  else
    array2[count] = num
  end
  count += 1
end
print(array2)
end


def calculate(array, array2, count)
  if (array[count - 1] == "foo" && (array[count - 4].is_a?(Integer).present?)) && (array[count - 4] % 5 == 0 || array[count - 6].is_a?(String).present?)
    array2[count - 5] = "foobar"
    array2[count] = "foo"
  else
    array2[count] = "foo"
    array2[count - 1] = "bar"
  end
end

def print(array2)
  array2.each do |p|
    puts p
  end
end
arr = [1, 2 , 3 , 4 ,5, 6, 15, 30, 40, 10]
foobar(arr)
