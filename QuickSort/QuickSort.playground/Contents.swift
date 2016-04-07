// Quicksort is an in place algorithm with O(n log n) <-average case O(n^2) worse case

import Foundation

func quickSort<T:Comparable>(inout array:[T], start:Int, end:Int) {
	if start < end {
		let partitionIndex = partition(&array, start: start, end: end)
		quickSort(&array, start: start, end: partitionIndex - 1)
		quickSort(&array, start: partitionIndex + 1, end: end)
	}
}

func partition<T:Comparable>(inout array:[T], start:Int, end:Int) -> Int {
	let pivot = array[end]
	var partitionIndex = start
	
	for i in start..<end {
		if array[i] <= pivot {
			if array[i] != array[partitionIndex] {
				swap(&array[i], &array[partitionIndex])
			}
			
			partitionIndex += 1
		}
	}
	
	if array[end] != array[partitionIndex] {
		swap(&array[end], &array[partitionIndex])
	}

	return partitionIndex
}

//var a = [81, 77, 3, 4, 1000]
var a = [81, 77, 1000, 2223, 11, 34, 2, 5, 90, 13, 444, 385, 978, 33, 12, 34,44, 90, 87, 334, 1]
quickSort(&a, start: 0, end: a.count - 1)
