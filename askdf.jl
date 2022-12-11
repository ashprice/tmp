# more pseudoscience at work
alpha = 1.13

n = 35735475

target_cum_frequency = (0.98 * 35735475) 

item1 = 0.06055 * n

cum_frequency = 0
num_items = 1
frequency = (0.06055 * n)

for i in 1:n
    if num_items == 1
        global cum_frequency += item1
    else
        global frequency = (item1 / (num_items ^ alpha))
        if frequency <= 1
            global frequency = 1
        end
        if num_words >= 200
            global frequency = (item1 / (num_items ^ 1))
        end
        if num_words >= 2000
            global frequency = (item1 / (num_items ^ 0.8))
        end
        global cum_frequency += frequency
    end
    global num_items += 1
    if cum_frequency >= target_cum_frequency
        println("Number of words: ", num_items)
        println("Frequency: ", cum_frequency)
        break
    end
end


