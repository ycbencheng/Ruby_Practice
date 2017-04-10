def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    (n-1).times do |i|
      if array [1] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [1, 2, 4, 11, 1, 1, 0]
p bubble_sort(a)
class EvenAlgo
  def initialize(max)
    @num_1 = 0
    @i = 0
    @sum = 0
    @num_2 = 1
    @max = max
  end

  def even_fib
  while @i <= @max
    @i = @num_1 + @num_2

    @sum += @i if @i % 2 == 0
  end
  end