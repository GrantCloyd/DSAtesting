const { DoublyLinkedList, DoublyLinkedListNode } = require('../doublyLinkedList.js');

const getArrayFx = (dll) => {
  return () => console.log(dll.getAsArray())
}
const doublyLinkedList = new DoublyLinkedList
const showArray = getArrayFx(doublyLinkedList)


showArray() // []
doublyLinkedList.push(5).push(10)
showArray() // [5, 10]
doublyLinkedList.unshift(88)
showArray() // [88, 5, 10]
let arr = [76, 3, 29]
arr.forEach(val => {
  doublyLinkedList.push(val)
})
showArray() // [88, 5, 10, 76, 3, 29]
doublyLinkedList.shift() // [5, 10, 76, 3, 29]
showArray()
doublyLinkedList.set(0, 8)
showArray() // [ 8, 5, 10, 76, 3, 29] 
console.log(doublyLinkedList.set(9, 9)) // false
doublyLinkedList.set(2, 9) // [ 8, 5, 9, 10, 76, 3, 29] 
showArray()
doublyLinkedList.set(6, 20)
console.log("*** HEAD ***")
console.log(doublyLinkedList.head)
console.log("*** TAIL ***")
console.log(doublyLinkedList.tail)
console.log("*** LENGTH ***")
console.log(doublyLinkedList.length) // 8 
showArray()


