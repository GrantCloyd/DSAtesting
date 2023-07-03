function binarySearch(arr, val) {
  // add whatever parameters you deem necessary - good luck!
  let start = 0
  let end = arr.length - 1
  let middle = Math.floor(end / 2)
  let result = -1

  while (start < end) {
    if (arr[middle] === val) {
      result = middle
      break
    } else if (arr[middle] > val) {
      end = middle - 1
      middle -= Math.max(Math.floor((end - start) / 2), 1)
    } else if (arr[middle] < val) {
      start = middle + 1
      middle += Math.max(Math.floor((end - start) / 2), 1)
    }
  }

  return result
}

console.log(binarySearch([1, 2, 3, 4, 5], 6))
console.log(binarySearch([5, 6, 10, 13, 14, 18, 30, 34, 35, 37, 40, 44, 64, 79, 84, 86, 95, 96, 98, 99], 95))
console.log(binarySearch([5, 6, 10, 13, 14, 18, 30, 34, 35, 37, 40, 44, 64, 79, 84, 86, 95, 96, 98, 99], 74))
console.log(binarySearch([5, 6, 10, 13, 14, 18, 30, 34, 35, 37, 40, 44, 64, 79, 84, 86, 95, 96, 98, 99], 10))
console.log(binarySearch([5, 6, 10, 13, 14, 18, 30, 34, 35, 37, 40, 44, 64, 79, 84, 86, 95, 96, 98, 99], 100))
console.log(binarySearch([5, 6, 10, 13, 14, 18, 30, 34, 35, 37, 40, 44, 64, 79, 84, 86, 95, 96, 98, 99], 30))
