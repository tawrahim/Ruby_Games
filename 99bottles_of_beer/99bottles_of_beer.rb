# Rather than singing the 99_bottles of beer song
# we have a program that sings it for us.
# Author: Tawheed ABdul-Raheem
# url: http://tawheedraheem.com


class Song

     def beer_song(start)
        # Just convert the input to an integer incase
         # the user is dumb enough to give you a string
         start = start.to_i
         for i in (0...start)
            if start > 1
                puts "#{start} bottles of beer on the wall, #{start} bottles of beer"
                puts "Take 1 down, pass it around, #{start-1} bottles of beer on the wall"
            elsif start == 1
                puts "#{start} bottle of beer on the wall, #{start} bottle of beer"
                puts "Take 1 down, pass it around, no more bottles of beer on the wall"
            end
            puts "\n"
            start = start-1
         end       
     end

end

sing = Song.new()
sing.beer_song(99)
