# An implementation of the bubble sort
# algorthim, this is not the most effiecent way to 
# sort a list because it takes about n.size * n.size
# to finish the sorting. Would be nasty if you have a 
# longer list to search through
# Author: Tawheed Abdul-Raheem
# url: www.tawheedraheem.com

class BubbleSort

    def bubblesort( list )
        for a in (0..list.size-1)
          for b in (0...list.size-1)
              if list[b] > list[b+1]
                temp = list[b]
                list[b] = list[b+1]
                list[b+1] = temp
              end
            end
        end
        list
    end
end

sorter = BubbleSort.new
puts sorter.bubblesort([34,33,2,9,109,0,42,0])
