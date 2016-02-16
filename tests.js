var SortedCircularDoublyLinkedList = require('./sorted_circular_doubly_linked_list.js')
console.log(test_list = new SortedCircularDoublyLinkedList())
console.log(test_list.insert(15))
console.log(test_list.print())
console.log(test_list.insert(0))
console.log(test_list.print())
console.log(test_list.insert(1))
console.log(test_list.print())
console.log(test_list.insert(2))
console.log(test_list.print())
console.log(test_list.insert(3))
console.log(test_list.print())
console.log(test_list.insert(3))
console.log(test_list.print())
console.log(test_list.insertAll([1,3,4,5,52,-12]))
console.log(test_list.print())
console.log(test_list.insert(15))
console.log(test_list.print())
console.log(test_list.insert(-5))
console.log(test_list.print())
console.log(test_list.insert(4))
console.log(test_list.print())
console.log(test_list.insert(2))
console.log(test_list.print())
console.log(test_list.insert(4))
console.log(test_list.print())
console.log(test_list.remove(3))
console.log(test_list.print())
console.log(test_list.remove(3))
console.log(test_list.print())
console.log(test_list.remove(3))
console.log(test_list.print())
console.log(test_list.contains(4))
console.log(test_list.contains(100))
test_list1 = new SortedCircularDoublyLinkedList()
test_list1.insert(-2)
console.log(test_list.print())
test_list1.remove(-2)
console.log(test_list1.print())
test_list2 = new SortedCircularDoublyLinkedList(
  {compare: 
    function(a,b) {
      return a.val - b.val;
    }
  })
test_list2.insertAll([
  {val:-3}, {val: 0}, {val: 3}, {val: 5}, {val: 6.5}
])
var cur = test_list2.head
do {
  console.log(JSON.stringify(cur.datum));
  cur = cur.next;
} while ( cur !== test_list2.head);
