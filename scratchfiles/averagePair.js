function averagePair(arr, average) {
    // add whatever parameters you deem necessary - good luck!
    let obj = {}
    arr.forEach((n) => obj[n] = ((average * 2) - n))
    for (let key in obj) {
        let val = obj[key]
        if (obj[val]) {
            return true
        }
    }
    return false
}

console.log(averagePair([1, 2, 3], 2.5)) // true
averagePair([1, 3, 3, 5, 6, 7, 10, 12, 19], 8) // true
averagePair([-1, 0, 3, 4, 5, 6], 4.1) // false
averagePair([], 4) // false