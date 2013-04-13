class SandBox
    def ba(text)      
        pos = 0
        while text[pos] == " " do
           pos += 1
        end
        diff = text.size - pos
        len = text.size
        local = ""
        while (pos < len and text[pos] != "@") do
            local += text[pos]
            pos += 1
        end
        domain = " "
        while (pos < len and text[pos] != " ") do
            local += text[pos]
            pos += 1
        end

        return local, domain
    end
end

boy = SandBox.new
print boy.ba("  tawheed@me.com   ")
