# Stack

Stack is a basic data structure that can be implemented using an array, vector or linked list.  The functionality of a stack allows for pushing elements on to a stack and popping them off the stack.  Stack is a LIFO Last-In-First-Out data structure.

Practical applications of the Stack data structure include evaluating expressions, recursive functionality, operations evaluation and Parsing.

###Installation
Clone the playground and get started.

###Functionality
The practical functionality of Stacks can seem limited.  Some developers extend the functionality of Stacks by implementing popAll() operations or enabling the capability to iterate through Stack objects by popping them off the stack and then operating on them.

This version of the Stack implements simple Peek and isEmpty functions as well to assist developers in their knowledge of what may be contained in the Stack.

####Example Usage
This example reverses a string.  A string is split into a Character array and the characters are pushed onto the Stack.  Then as the items (Characters) are popped it reverses the word that was pushed onto the Stack.

```
var stressed = "stressed"
let characters = Array(stressed.characters)

var charStack = Stack<Character>()

for char in characters {
	charStack.push(char)
}

charStack.count //8
charStack.isEmpty //false
charStack.peek() //d

//pop letters off the stack
charStack.pop() //d
charStack.pop() //e
charStack.pop() //s
charStack.pop() //s
charStack.pop() //e
charStack.pop() //r
charStack.pop() //t
charStack.pop() //s
```

##License
Code released under the [MIT license](https://github.com/Marquis103/SwiftDataStructures-Algorithms/blob/master/LICENSE)
