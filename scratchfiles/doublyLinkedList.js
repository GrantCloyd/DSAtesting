class DoublyLinkedList {
  constructor() {
    this.length = 0
    this.head = null
    this.tail = null;
  }

  push(val) {
    let newNode = this.#createNode(val)
    this.#insertAtTail(newNode)

    return this
  }

  unshift(val) {
    let newNode = this.#createNode(val)
    this.#insertAtHead(newNode)

    return this
  }

  shift() {
    if (!this.head) return undefined

    const node = this.head
    if (node === this.tail) {
      this.head = null
      this.tail = null
    } else {
      this.head = node.next
      this.head.prev = null
    }
    node.next = null
    this.length--

    return node
  }

  set(index, val) {
    if (this.length < index || index < 0) return false

    if (index === 0) {
      this.unshift(val)
    } else if (index === this.length) {
      this.push(val)
    }
    else {
      const newNode = this.#createNode(val)
      let middle = Math.round(this.length / 2)
      let closerToHead = middle - index >= index - middle ? true : false

      if (closerToHead) {
        this.#insertFromHead(newNode, index)
      } else {
        this.#insertFromTail(newNode, index)
      }

    }

    return true
  }

  #insertFromHead(node, index) {
    let currentIndex = 0
    let currentNode = this.head
    let prevNode = currentNode.prev
    while (index !== currentIndex) {
      currentNode = currentNode.next
      prevNode = currentNode.prev
      currentIndex++
    }
    if (prevNode) {
      prevNode.next = node
      node.prev = prevNode
    }
    if (currentNode) {
      node.next = currentNode
      currentNode.prev = node
    }

    this.#increment()
  }

  #insertAtHead(node) {
    if (!this.tail) {
      this.head = node
      this.tail = this.head
    } else {
      this.head.prev = node
      node.next = this.head
      this.head = node
    }

    this.#increment()
  }

  #insertAtTail(node) {
    if (!this.tail) {
      this.head = node
      this.tail = node
    } else {
      node.prev = this.tail
      this.tail.next = node
      this.tail = node
    }

    this.#increment()
  }

  #insertFromTail(node, index) {
    let currentIndex = this.length
    let currentNode = this.tail
    let nextNode = null
    while (index !== currentIndex) {
      currentNode = currentNode.prev
      nextNode = currentNode.next
      currentIndex--
    }
    if (nextNode) {
      nextNode.prev = node
      node.next = nextNode
    }
    if (currentNode) {
      node.prev = currentNode
      currentNode.next = node
    }

    this.#increment()
  }

  getAsArray() {
    // for easier testing
    if (!this.head) return []

    let result = []
    let currentNode = this.head
    for (let i = 0; i < this.length; i++) {
      result.push(currentNode.val)
      currentNode = currentNode.next
    }
    return result
  }

  #createNode(val) {
    return new DoublyLinkedListNode(val)
  }

  #increment() {
    this.length++
  }

}

class DoublyLinkedListNode {
  constructor(val) {
    this.val = val
    this.next = null;
    this.prev = null;
  }
}

// see doublyLinkedListTest.js for testing


module.exports = {
  DoublyLinkedList, DoublyLinkedListNode
}