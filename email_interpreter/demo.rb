class A

   def separate_comma_values(text)
  text.each_char.reduce(['']) do |splitted, char|    
    if char == ','
      splitted << ''
    else
      splitted.last << char
    end    
    next splitted    
  end    
    end 
end

s = A.new
print s.separate_comma_values("dh  ,,,,,dkdkkd")
