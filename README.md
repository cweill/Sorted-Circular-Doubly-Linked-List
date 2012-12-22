# Sorted Circular Doubly Linked List #

_A sorted circular doubly linked list implementated in both CoffeeScript and Javascript._

Made this since I couldn't find any other implementation of this particular datastructure in coffeescript or javascript. Features include the ability to _insert_, _insertAll_, _remove_, _contains_, _find_, and _print_ the contents of the list. Simply overwrite the _compare_ function to determine how you want your list sorted.

In order to use the list insert the desired elements into the list. Next beginning from the _list.head_, _list.tail_, or _list.find(datum)_ node you can gracefully iterate through the circular list by accessing the _prev_, _next_, and _datum_ node attributes.

Enjoy!

## MIT License ##

Permission is hereby granted, free of charge, to any person obtaining a copy of this software
and associated documentation files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.