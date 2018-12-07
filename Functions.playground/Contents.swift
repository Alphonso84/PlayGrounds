var myArray = [2,3,54,1,13,12,56,1]

import UIKit
import PlaygroundSupport


//Even NumberFunctions
func findEvenNumsIn(array:[Int]) -> [Int] {
    var newArray = [Int]()
    for i in array {
        if i % 2 == 0 {
            newArray.append(i)
        }
    }
    return newArray
}

func findEvenNumsIn2(array:inout [Int]) -> [Int] {
    
    for i in array {
        if i % 2 != 0 {
            if let index = array.index(of: i) {
                array.remove(at: index)
            }
        }
    }

    return array
}

func helloGreeting(name:String) -> String {
    var greeting = "Hello \(name) how are you today?"
    
    return greeting
}

helloGreeting(name: "Alphonso")

findEvenNumsIn(array: myArray)
myArray
findEvenNumsIn2(array: &myArray)
myArray
    
