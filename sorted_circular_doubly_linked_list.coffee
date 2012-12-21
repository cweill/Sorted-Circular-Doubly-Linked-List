class SortedCircularDoublyLinkedList
  
  constructor: (@head, @tail) ->

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
  
  insert: (datum) ->
      node = new Node datum
      if not @head?
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
              return null
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
