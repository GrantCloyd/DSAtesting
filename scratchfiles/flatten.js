// Write a recursive function called 
// flatten which accepts an array of arrays and returns a new array 
// with all values flattened.

function flatten(arr) {
  let result = []

  helperRecurse(arr, result)

  return result
}

function helperRecurse(arr, result) {
  if (Number.isInteger(arr[0])) result.push(arr[0])
  if (arr.length === 0) return
  if (arr[0].length > 0) arr[0].forEach((val) => {
    if (Array.isArray(val)) {
      helperRecurse(val, result)
    } else {
      result.push(val)
    }
  })
  return helperRecurse(arr.slice(1), result)

}

console.log(flatten([1, 2, 3, [4, 5]])) // [1, 2, 3, 4, 5])
console.log(flatten([1, [2, [3, 4], [[5]]]])) // [1, 2, 3, 4, 5])

console.log(flatten([[[[1], [[[2]]], [[[[[[[3]]]]]]]]]])) // [1,2,3]