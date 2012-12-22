class SortedCircularDoublyLinkedList
  
  constructor: (@head, @tail, @current) ->

  class Node

    constructor: (@datum, @previous, @next) ->

  insertBefore: (a, b) ->
    if b is @head
      a.previous = @tail
      @head = a
      @tail.next = @head
    else 
      a.previous = b.previous
      b.previous.next = a
    a.next = b
    b.previous = a
  
  insertAfter: (a, b) ->  
    if b is @tail 
      a.next = @head
      @tail = a
      @head.previous = @tail
    else 
      a.next = b.next
      b.next.previous = a
    a.previous = b
    b.next = a

  insertAll: (list=[]) ->
    @insert x for x in list

  insert: (datum) ->
    node = new Node datum
    unless @head?
      @head = node
      @head.next = node
      @head.previous = node
      @tail = @head
      return
    if @head.datum > node.datum 
      @insertBefore node, @head
    else 
      current = @head
      while current isnt @tail 
        next = current.next
        if next.datum > node.datum
          break
        current = current.next
      @insertAfter node, current
    if node.datum < @head.datum
      @head = node
    if node.datum > @tail.datum
      @tail = node
  
  remove: (datum) ->
    current = @head
    while current.datum isnt datum 
      current = current.next
      if current is @head
        return
    if current is @head 
      @head = current.next
      @tail.next = @head
      @head.previous = @tail
    else 
      current.previous.next = current.next
    if current is @tail 
      @tail = current.previous
      @head.previous = @tail
      @tail.next = @head
    else 
      current.next.previous = current.previous

  contains: (datum) ->
    unless @head?
      false
    else
      current = @head
      while current.next isnt @head
        if current.datum is datum
          true
        current = current.next
      false
  
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
        
  setCurrent: (datum) ->
    @current = @find datum
    datum
  
  getCurrent: ->
    if @current
      @current.datum
    else
      null
      
  getNext: ->
    @current = @head unless @current
    @current = @current.next
    @current.datum
        
  getPrevious: ->
    @current = @head unless @current
    @current = @current.previous
    @current.datum
        
  print: -> 
    output = ""
    if not @head?
      return
    current = @head
    output += "#{current.datum}"
    while current.next isnt @head
      current = current.next
      output += ", #{current.datum}"
    console.log output
    