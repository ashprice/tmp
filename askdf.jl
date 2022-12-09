targetPercent = 0.985 * 150000
item1 = 0.07 * 150000
global currentSum = item1
global numItems = 1

while currentSum < targetPercent
    nextItem = item1 / numItems
    minItem = 1.00
    if nextItem < minItem
        nextItem = minItem
    end

    global currentSum += nextItem
    if round(currentSum) == 21000.00
        global currentSum -= 10500
    end

    global numItems += 1

    if numItems == 2
        println(currentSum)
    end
end

println(numItems)

