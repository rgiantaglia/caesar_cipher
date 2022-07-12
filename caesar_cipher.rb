def caesar_cipher(string, number)

# convert the string to downcase and separate characters in array. Find ASCII number
arr = string.downcase.split().map {|ch| ch.bytes}


encript = arr.map {|x| x.map do |z, x| 

    # include only the letters in the cipher. This if exclude the usual characters
    if z >= 97 then
        x = z + number
        # In case it's a left shift (#number is negative)
        if x < 97
            x = x + 25
        end
        
        # In case it's a right shift (#number is positive)
        if x > 122
            x = x - 26
        end
        x.chr
    #Usual characters remain as is. 
    else z < 97
        z.chr
    end
end
}

new_arr = encript.map {|word| word.join()}
cipher = new_arr.join(' ').capitalize()

end

puts caesar_cipher("What a string!", 5)


