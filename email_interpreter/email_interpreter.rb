# Email interpreter project
# Author: Tawheed Abdul-Raheem
# url: http://tawheedraheem.com

class EmailInterpreter

    # This method takes a string as an input
    # Seperates the values found between the comma and 
    # the retrun us with an array
    # This code is ugly and dirty hope to get better
    # one day 
    def seperate_comma_values(text)
        text.each_char.reduce(['']) do |split, char|
            if char == ','
                split << ' '
            else
                split.last << char
            end
            next split
        end
    end

    def seperate_by_at_sign(text)
       position = 0

       # check if begining starts with space
       while text[position] == " " do
          position += 1
       end 

       # save anything before the @ sign that is
       # not a space to a string
       top = ""
       text_len = text.size
       while (position < text_len and text[position] != "@") do
           if text[position] == " "
               break
           end
           top += text[position] if text[position] != "@"
           position += 1
       end

       domain  = ""
       text_len = text.size
       while (position < text_len) do
           if text[position] == " "
               break
           elsif text[position] != "@"
               domain += text[position]
           end
           position += 1
       end
       return top, domain
    end
end


# To use the method
mailer = EmailInterpreter.new
print mailer.seperate_by_at_sign("          tshshd@shsh.com  , rich@Me.com")

