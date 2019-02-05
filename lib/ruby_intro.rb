# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    s=0;
    for i in 0...arr.length
       s=s+arr[i];
    end 
    return s
end

def max_2_sum arr
    if arr.empty?
        return 0;
    end    
    if arr.length==1
        return arr[0];
    end
    if arr.length>1 
        max1=0;
        max2=1;
        for i in 1...arr.length
           if arr[i]>=arr[max1]
              max2=max1;  
              max1=i; 
            end   
        end
        return arr[max1]+arr[max2]
    end
end

def sum_to_n? arr, n
    if arr.length<=1
        return false
    else 
        for i in 0...arr.length
            for j in i+1...arr.length
               if (arr[i]+arr[j])==n
                  return true 
                end   
            end
        end
        return false
    end  
end

# Part 2

def hello(name)
  return "Hello, #{name}" 
end

def starts_with_consonant? s
    if s.empty?
        return false
    else
        ss=s[0].downcase;
        alpha="qwertyuioplkjhgfdsazxcvbnm";
        temp="aeiouAEIOU";
        if temp.include?ss or not alpha.include?ss 
            return false
        else 
            return true
        end
    end  
end

def binary_multiple_of_4? s 
    if s.include?' '
        s = s.sub!(/\s/, "")   
    end
    if (s =~ /[0-1]/)==0 and s.length>2 and s[s.length-2]=='0' and s[s.length-1]=='0'
        return true
    end
    if s.length==1 and s[0]=='0'
        return true   
    end
    return false
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price
    def initialize isbn, price
        if isbn.empty? || price <= 0
            raise ArgumentError
        else
            @isbn = isbn
            @price = price
        end
    end
    def price_as_string
        format("$%.2f", @price)
    end
end

