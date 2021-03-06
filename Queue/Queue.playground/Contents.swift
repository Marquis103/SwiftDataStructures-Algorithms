//Queue data structure operates as a FIFO First in First-Out Sequence
//Great for managing tasks or operations that occur one after the other

import Foundation

struct Queue<T: Equatable> {
	private var elements = [T]()
	
	///The number of elements in the queue.
	var count:Int {
		return elements.count
	}
	
	///Check if the queue is empty.
	var isEmpty:Bool {
		return elements.isEmpty
	}
	
	///Add new element to the queue.
	mutating func enqueue(newElement:T) {
		elements.append(newElement)
	}
	
	///Dequeue and return item at the beginning of the queue if queue is not empty.
	mutating func dequeue() -> T? {
		guard !isEmpty else {
			return nil
		}
		
		return elements.removeAtIndex(0)
	}
}

extension Queue {
	///View item at the top of the queue without dequeing
	func peek() -> T? {
		return elements.first
	}
	
	func homogenous() -> Bool {
		if let first = elements.first {
			return !elements.contains{ $0 != first }
		}
		
		return true
	}
}


