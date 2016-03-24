

import Foundation

func mergeSort<T:Comparable>(array:[T]) -> [T] {
	guard array.count > 1 else {
		return array
	}
	
	let arrayLength = array.count
	let midIndex = arrayLength / 2
	let left = Array(array[0 ..< midIndex])
	let right = Array(array[midIndex ... arrayLength - 1])
	
	return merge(mergeSort(left), rhs: mergeSort(right))
}

func merge<T:Comparable>(lhs:[T], rhs:[T]) -> [T] {
	guard lhs.count > 0 && rhs.count > 0 else {
		return [T]()
	}

	var mergedArray = [T]()
	let lhsLength = lhs.count
	let rhsLength = rhs.count
	
	var lhIndex = 0
	var rhIndex = 0
	
	while lhIndex < lhsLength && rhIndex < rhsLength {
		if lhs[lhIndex] < rhs[rhIndex] {
			mergedArray.append(lhs[lhIndex])
			lhIndex++
		} else {
			mergedArray.append(rhs[rhIndex])
			rhIndex++
		}
	}
	
	if lhIndex < lhsLength {
		mergedArray.appendContentsOf(lhs[lhIndex ... lhsLength - 1])
	}
	
	if rhIndex < rhsLength {
		mergedArray.appendContentsOf(rhs[rhIndex ... rhsLength - 1])
	}
	
	return mergedArray
}

let intArray = [30, 10, 44, 20, 990, 235, 873, 99302, 72, 34, 334, 88, 80001]
let doubleArray = [ 23.2, 8842.3, 290.33, 44.2, 342.3]
let stringArray = ["abc", "012", "def"]
print(mergeSort(intArray))
print(mergeSort(doubleArray))
print(mergeSort(stringArray))

struct Tuple {
	var int1 = 0
	var int2 = 0
}

extension Tuple:Comparable {}

func <(lhs:Tuple, rhs:Tuple) -> Bool {
	return lhs.int1 < rhs.int1
}

func ==(lhs:Tuple, rhs:Tuple) -> Bool {
	return lhs.int1 == rhs.int2
}

let tuple1 = Tuple(int1: 5, int2: 3)
let tuple2 = Tuple(int1: 3, int2: 3)
let tuple3 = Tuple(int1: 2, int2: 22)
let tuple4 = Tuple(int1: 3, int2: 6)
let tuple5 = Tuple(int1: 4, int2: 9)
let tuple6 = Tuple(int1: 4, int2: 3)

var tupleArray = [Tuple]()
tupleArray.append(tuple1)
tupleArray.append(tuple2)
tupleArray.append(tuple3)
tupleArray.append(tuple4)
tupleArray.append(tuple5)
tupleArray.append(tuple6)

print(mergeSort(tupleArray))

