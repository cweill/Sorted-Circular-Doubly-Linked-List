# Sorted Circular Doubly Linked List #

_A sorted circular doubly linked list implementated in both CoffeeScript and Javascript._

Made this since I couldn't find any other implementation of this particular datastructure in coffeescript or javascript. Features include the ability to _insert_, _insertAll_, _remove_, _contains_, _find_, and _print_ the contents of the list. Simply overwrite the _compare_ function to determine how you want your list sorted.

In order to use the list insert the desired elements into the list. Next beginning from the _list.head_, _list.tail_, or _list.find(datum)_ node you can gracefully iterate through the circular list by accessing the _prev_, _next_, and _datum_ node attributes.

Enjoy!

## License

Sorted-Circular-Doubly-Linked-List is released under the [MIT License](http://www.opensource.org/licenses/MIT).
