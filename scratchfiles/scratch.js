function hashify_ints(int) {
    let hsh = {}
    int.toString().split("").forEach((s) => hsh[s] ? hsh[s] += 1 : hsh[s] = 1)
    // int.to_s.split("").forEach((s) => hsh[s] += 1)
    return hsh
}

console.log(hashify_ints(232))