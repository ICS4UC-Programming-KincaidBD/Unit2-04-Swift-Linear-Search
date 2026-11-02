import Foundation

func linearSearch(_ array: [Int], target: Int) -> Int {
	for (index, number) in array.enumerated() {
		if number == target {
			return index
		}
	}
	return -1
}

func populateArray() -> [Int] {
	(0..<10).map { _ in Int.random(in: 0..<100) }
}

print("What number are you searching for in the list below? Enter 'q' to quit.")
let numbers = populateArray()
for number in numbers {
	print(number, terminator: " ")
}
print(" Number: ", terminator: "")

if let input = readLine() {
	if input.lowercased() == "q" {
		print("Exiting program.")
	} else if let target = Int(input) {
		let index = linearSearch(numbers, target: target)
		if index != -1 {
			print("Number \(target) found at index: \(index)")
		} else {
			print("Number \(target) not found.")
		}
	} else {
		print("Invalid input. Please enter an integer.")
	}
}
