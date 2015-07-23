array = [1 , 2, 3 , 4 , 4, 2 , 1 , 5]
hash = Hash.new

array.each do |a|
  if hash.has_key?(a)
    hash[a] += 1
  else
    hash[a] = 1
  end
end

hash.each do |k , v|
  puts k.to_s + ':' + v.to_s
end

#for the sake of algorithm generation I elected
#to not put this algorithm into a class.
#I did not feel that there are enough moving parts to warrant
#adding methods.
#the algorithm relies on creating two objects, an array and a hash.
#the array is iterated over, while checking if the hash has the key
#matching the current array element.
#if there is a match the key's value piece will be incremented by one.
#if there is no match a key is generated with a default value of one.
#I prefer this method because it allows the data structure to do all of the
#heavy lifting allowing for readability without undo complexity.
