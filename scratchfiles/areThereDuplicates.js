function areThereDuplicates(...params) {
    // good luck. (supply any arguments you deem necessary.)
    let dupObj = {}
    let result = false
    params.forEach((a) => {
        if (dupObj[a] === true) {
            result = true
        } else {
            dupObj[a] = true
        }
    })

    return result
}

console.log(areThereDuplicates(1, 2, 3))
console.log(areThereDuplicates(1, 2, 2))