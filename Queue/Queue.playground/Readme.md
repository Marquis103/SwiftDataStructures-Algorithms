# Queue

Queue is a FIFO First-In-First-Out data structure that can be implemented using an array, vector or linked list.  The functionality of a queue allows for enqueuing elements to the end of the list like a line.  Dequeuing removes the first item from the list if the list is not empty.

Queues can be used in any situation where a line exists and the priority is not necessary of the items is not a concern.  Tasks that need to execute, files that need to be served or processed, requests that need to be made in a FIFO manner all can use queues.  The most popular application of a Queue is print spooling, where print jobs are enqueued to a queue and dequeued in order that they enter the queue.

###Installation
Clone the playground and get started.

###Functionality
Queues, similar to stacks appear limited in functionality compared to other list like data structures, but the functionality of a Queue is precise.  Otherwise it would not be a queue.  This queue implementation implements an additional function to the normal Queue functions that allows a developer to compare if the queue is heterogenous.  This implementation requires the class to conform to the equatable protocol to be able to compare values that conform to the equatable protocol to determine if there are duplicate entries.  **Be careful as reference types in swift may not appear equal.

####Example Usage
The example creates a Task struct that conforms to the Equatable protocol and enqueues tasks to a queue.

```
struct Task {
	var taskName:String
	var priority:Int
}

extension Task:Equatable {}
func == (lhs: Task, rhs:Task) -> Bool {
	return lhs.taskName == rhs.taskName && lhs.priority == rhs.priority
}

let task1 = Task(taskName: "Add image to UITableViewCell", priority: 3)
let task2 = Task(taskName: "Add image to UITableViewCell", priority: 3)

var q = Queue<Task>()
q.enqueue(task1) //Queue<Task>
q.enqueue(task2) //Queue<Task>
q.isEmpty //false
q.homogenous() //true
q.count //2

var taskToExecute = q.dequeue() //Task
```

##License
Code released under the [MIT license](https://github.com/Marquis103/SwiftDataStructures-Algorithms/blob/master/LICENSE)
