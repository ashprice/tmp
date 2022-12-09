targetPercent = 0.985 * 150000
item1 = 0.07 * 150000

currentSum = item1

numItems = 1

while currentSum < targetPercent
    nextItem = item1 / numItems
    minItem = 1.00
    if nextItem < minItem
        nextItem = minItem
    end

    global currentSum += nextItem
    if currentSum == 21000
        currentSum -= 10500
    end

    global numItems += 1
end

println(numItems)

