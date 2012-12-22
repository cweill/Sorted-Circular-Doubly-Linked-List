tester_list = new SortedCircularDoublyLinkedList()
tester_list.insert 15
tester_list.print()
tester_list.insert 0
tester_list.print()
tester_list.insert 1
tester_list.print()
tester_list.insert 2
tester_list.print()
tester_list.insert 3
tester_list.print()
tester_list.insert 3
tester_list.print()
tester_list.insertAll [1,3,4,5,52,-12]
tester_list.print()
tester_list.insert 15
tester_list.print()
tester_list.insert -5
tester_list.print()
tester_list.insert 4
tester_list.print()
tester_list.insert 2
tester_list.print()
tester_list.insert 4
tester_list.print()
tester_list.remove 3
tester_list.print()
tester_list.remove 3
tester_list.print()
tester_list.remove 3
tester_list.print()
console.log tester_list.contains 4
console.log tester_list.contains 100