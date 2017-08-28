
a = Hash.new()

puts "Enter the string : "
b = gets.chomp

#split the string into characters and store into an array 'c'
c = b.split(//)

temp = Hash.new

# assigning the values as hash's keys, so that only unique characters are obtained
c.each do |x|
    temp["#{x}"] = 0
end

# the unique characters (keys of hashes) are now counted one by one by comparing them to their character array 'c'
temp.each do |k,v| 
    for i in 0..c.length-1
        if k == c[i]
            temp[k] = temp[k] + 1
        end
    end   
end
sorted = temp.sort_by {|_key, value| value}.reverse

ans = []

sorted.each do |k,v| 
    q = v.to_i
    
    for i in 0..q-1
        ans << k
    end
    
end

p ans.map { |i| i.to_s }.join()


