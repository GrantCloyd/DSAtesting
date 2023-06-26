function sameFrequency(inp1, inp2) {
    const obj_one = ints_to_obj(inp1)
    const obj_two = ints_to_obj(inp2)

    for (let key in obj_one) {
        if (obj_one[key] !== obj_two[key]) {
            return false
        }
    }

    return true

}

function ints_to_obj(int) {
    let obj = {}
    int.toString().split("").forEach((s) => obj[s] ? obj[s] += 1 : obj[s] = 1)
    return obj
}

// test examples
console.log(sameFrequency(182, 281))
console.log(sameFrequency(3589578, 5879385))
console.log(sameFrequency(35895278, 15879385))