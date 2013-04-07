# This my implementation of the popular binary 
# search algorithm in computer science, it is faster 
# than the bubble sort because it takes advantage of the
# the fact that the array has already been sorted
# Author: Tawheed Abdul-Raheem
# url: www.tawheedraheem.com

class  Binary

    # Remember that with the binary search you want to loop as
    # long the low value is less than or equal to the high value
    def binary_search(arr, val)
        lo = 0
        hi = arr.length - 1
          while lo <= hi do
            mid = (lo + hi) / 2
            if arr[mid] < val
                lo = mid + 1
            elsif arr[mid] > val
                hi = mid - 1
            else
                return "The value #{val} was found at position #{mid}"
            end
        end
        return "Not found"
    end
end
a = Binary.new
print a.binary_search([2,3,4,54,448,900], 900)
