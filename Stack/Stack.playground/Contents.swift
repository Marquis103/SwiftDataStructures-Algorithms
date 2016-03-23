//: Playground - noun: a place where people can play

import Foundation

struct Stack<T> {
	//underlying data structure to implement stack
	private var elements = [T]()
	
	///Is the stack empty?
	var isEmpty:Bool {
		return elements.isEmpty
	}
	
	///Number of elements currently on stack.
	var count: Int {
		return elements.count
	}
	
	///Push an element onto the stack.
	mutating func push(newElement:T) {
		elements.append(newElement)
	}
	
	///Pop element from the stack.
	mutating func pop() -> T? {
		guard !isEmpty else {
			return nil
		}
		
		return elements.removeLast()
	}
	
	///Peek at the item on top of the stack without popping it off.
	func peek() -> T? {
		return elements.last
	}
}

//using a stack to reverse a word
var stressed = "stressed"
let characters = Array(stressed.characters)

var charStack = Stack<Character>()

for char in characters {
	charStack.push(char)
}

charStack.count
charStack.isEmpty
charStack.peek()

charStack.pop()
charStack.pop()
charStack.pop()
charStack.pop()
charStack.pop()
charStack.pop()
charStack.pop()
charStack.pop()