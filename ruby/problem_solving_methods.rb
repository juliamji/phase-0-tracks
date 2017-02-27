number_searcher = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
number_hash = Hash[number_searcher.map.with_index.to_a]
p number_hash[4]
def fibonacci(n)
    a,b = 0,1
    fib_array = Array.new
    n.times do
        fib_array << a
        a,b = b,a+b
    end
    fib_array
end

p fibonacci(100)

#creating a method call (ex. bubblesorrt) taking an array as an argument
#next, assign length of array to a variable, n
#start loop to iterate over array
#make bubbles
#1st compares two values - conditional if/else statement to swap the values. if true, it'll swap and continue. if false, end the loop.

def bubble_sort (array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array =[1,2,3,2,1,4,3,1]
p bubble_sort(array)