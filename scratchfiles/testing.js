function addUp(n) {
    return n * (n + 1) / 2
}

let t1 = performance.now()
console.log(addUp(10000000))
let t2 = performance.now()
console.log(`Elapsed time ${(t2 - t1) / 1000}`)