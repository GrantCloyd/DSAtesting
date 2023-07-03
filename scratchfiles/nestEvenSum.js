// write a recursive function called nestedEvenSum
// return the sum of all even numbers in an object
// which may contain nested objects

function nestedEvenSum(obj) {
  let result = 0

  for (let key in obj) {
    if (Number.isInteger(obj[key]) && obj[key] % 2 === 0) { result += obj[key] }
    else if (typeof obj[key] === 'object') { result += nestedEvenSum(obj[key]) }
  }

  return result
}


let objTest = {
  a: 2,
  b: { bb: 2 }
}

let obj1 = {
  outer: 2,
  obj: {
    inner: 2,
    otherObj: {
      superInner: 2,
      notANumber: true,
      alsoNotANumber: "yup"
    }
  }
}

let obj2 = {
  a: 2,
  b: { b: 2, bb: { b: 3, bb: { b: 2 } } },
  c: { c: { c: 2 }, cc: 'ball', ccc: 5 },
  d: 1,
  e: { e: { e: 2 }, ee: 'car' }
}

console.log(nestedEvenSum(obj1)) // 6
console.log(nestedEvenSum(obj2)) // 10