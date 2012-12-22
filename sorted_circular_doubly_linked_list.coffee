class Node

  constructor: (@datum, @prev, @next) ->


class SortedCircularDoublyLinkedList
  
  constructor: (@head, @tail) ->

  compare: (datum1, datum2) ->
    datum1 - datum2

  # Adds all the elements of a coffeescript list to a linked list
  insertAll: (list=[]) ->
    @insert x for x in list
    @head

  # Inserts elements in sorted order
  insert: (datum) ->
    node = new Node datum
    
    # Insert before helper method
    insertBefore = (a, b) ->
      if b is @head
        a.prev = @tail
        @head = a
        @tail.next = @head
      else 
        a.prev = b.prev
        b.prev.next = a
      a.next = b
      b.prev = a
    
    # Insert after helper method
    insertAfter = (a, b) ->  
      if b is @tail 
        a.next = @head
        @tail = a
        @head.prev = @tail
      else 
        a.next = b.next
        b.next.prev = a
      a.prev = b
      b.next = a
        
    unless @head?
      @head = node
      @head.next = node
      @head.prev = node
      @tail = @head
      return node
    if @compare(@head.datum, node.datum) > 0
      insertBefore(node, @head)
    else 
      current = @head
      while current isnt @tail 
        next = current.next
        if @compare(next.datum, node.datum) > 0
          break
        current = current.next
      insertAfter(node, current)
    if @compare(node.datum, @head.datum) < 0
      @head = node
    if @compare(node.datum, @tail.datum) > 0
      @tail = node
    return node
  
  # Removes the first element of the list with the same datum
  remove: (datum) ->
    current = @head
    while @compare(current.datum, datum) isnt 0
      current = current.next
      if current is @head
        return
    if current is @head 
      @head = current.next
      @tail.next = @head
      @head.prev = @tail
    else 
      current.prev.next = current.next
    if current is @tail 
      @tail = current.prev
      @head.prev = @tail
      @tail.next = @head
    else 
      current.next.prev = current.prev

  # Boolean function that returns true if the element is present in the linked list
  contains: (datum) ->
    @find(datum)?
  
  find: (datum) ->
    unless @head
      null
    else
      current = @head
      while current.next isnt @head
        if @compare(current.datum, datum) is 0
          return current
        current = current.next
      null

  # Returns a comma delimited string of all the elements in the linked list
  print: -> 
    output = ""
    if not @head?
      return
    current = @head
    output += "#{current.datum}"
    while current.next isnt @head
      current = current.next
      output += ", #{current.datum}"
    output
