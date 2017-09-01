class CharStringSort   
    def mostCharFirst string_to_sort
        temp = Hash.new

        #split the string into characters and store into an array 'c'
        character_array_of_string_to_sort = string_to_sort.split(//)      

        # assigning the values as hash's keys, so that only unique characters are obtained
        character_array_of_string_to_sort.each do |x|
            temp["#{x}"] = 0
        end

        # the unique characters (keys of hashes) are now counted one by one by comparing them to their character array 'c'
        temp.each do |k,v| 
            for i in 0..character_array_of_string_to_sort.length-1
                if k == character_array_of_string_to_sort[i]
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

        # final output
        desired_string = ans.map { |i| i.to_s }.join() 

        return desired_string
    end
end

puts "Enter the string : "
string_to_sort = gets.chomp

mostCharFirstObj = CharStringSort. new
p mostCharFirstObj.mostCharFirst string_to_sort
