class Node

  constructor: (@datum, @prev, @next) ->


class SortedCircularDoublyLinkedList
  
  constructor: (@head, @tail) ->

  insertAll: (list=[]) ->
    @insert x for x in list
    @head

  insert: (datum) ->
    node = new Node datum
    
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
    if @head.datum > node.datum 
      insertBefore(node, @head)
    else 
      current = @head
      while current isnt @tail 
        next = current.next
        if next.datum > node.datum
          break
        current = current.next
      insertAfter(node, current)
    if node.datum < @head.datum
      @head = node
    if node.datum > @tail.datum
      @tail = node
    return node
  
  remove: (datum) ->
    current = @head
    while current.datum isnt datum 
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

  contains: (datum) ->
    @find(datum)?
  
  find: (datum) ->
    unless @head
      null
    else
      current = @head
      while current.next isnt @head
        if current.datum is datum
          return current
        current = current.next
      null
        
  stringify: -> 
    output = ""
    if not @head?
      return
    current = @head
    output += "#{current.datum}"
    while current.next isnt @head
      current = current.next
      output += ", #{current.datum}"
    output
