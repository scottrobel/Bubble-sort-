def bubble_sort(array) 
    swap_count = nil
    while(swap_count != 0)
        swap_count = 0
        for i in 0...array.length-1 do
            if (array[i+1] < array[i])
            array[i+1], array[i] = array[i], array[i+1] 
            swap_count += 1
            end
        end
    end
    array
end

def bubble_sort_by(array)
    swap_count = nil
    while(swap_count != 0)
        swap_count = 0
        for i in 0...array.length-1 do
            if (yield(array[i],array[i+1]) > 0)
            array[i+1], array[i] = array[i], array[i+1] 
            swap_count += 1
            end
        end
    end
    array
end 

my_arr = bubble_sort_by(["hi","hello","hey","hi","hello","hey","hi","hello","hey","hi","hello","hey","hi","hello","hey","hi","hello","hey","hi","hello","hey","hi","hello","hey"]) do |left,right|
    left.length - right.length
end
puts my_arr
