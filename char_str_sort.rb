
a = Hash.new()

b = 'adasdafgfdhdahahahahahahahahahahahetrwqyyyyyfgyfgrewtttttttttttttttttttttttttttkjfgjsdxc';

c = b.split(//)

temp = Hash.new

c.each do |x|
    temp["#{x}"] = 0
end

temp.each do |k,v| 
    for i in 0..c.length-1
        if k == c[i]
            temp[k] = temp[k] + 1
        end
    end   
end
sorted = temp.sort_by {|_key, value| value}.reverse
# p sorted
ans = []

sorted.each do |k,v| 
    q = v.to_i
    
    for i in 0..q-1
        ans << k
    end
    
end

p ans.map { |i| i.to_s }.join()