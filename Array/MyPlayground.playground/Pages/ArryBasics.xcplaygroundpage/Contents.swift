import UIKit

var greeting = "Hello, playground"

// Array
var Animals = Array(repeating: "meow", count: 6)
for i in 0...Animals.count-1{
    print("Traversal =>",Animals[i])
}


func arrayInsertion(oldArray : [String],newValue : String,position : Int) -> [String]{
    var newAnimalList = Array(repeating: "xxx", count: oldArray.count+1)
    for i in 0...newAnimalList.count-1{
        if i == position{
            newAnimalList[i] = newValue
        }else{
            if i < position{
                newAnimalList[i] = oldArray[i]
            }else{
                newAnimalList[i] = oldArray[i-1]
            }
        }
    }
    return newAnimalList
}

let newAnimalList = arrayInsertion(oldArray: Animals, newValue: "Gangaru", position: 3)
print("New Animal List is",newAnimalList)


func arrayInsertionAtLast(oldArray : [String], newValue : String) -> [String]{
    var newArray = Array(repeating: "", count: oldArray.count+1)
    for i in 0...newArray.count-1{
        if i == newArray.count-1{
            newArray[i] = newValue
        }else{
            newArray[i] = oldArray[i]
        }
    }
    return newArray
}

let lastInsertion = arrayInsertionAtLast(oldArray: Animals, newValue: "Cow")
print("Last Insertion Array Values",lastInsertion)


func firstInsetionarray(oldArray : [String], newValue : String) -> [String]{
    var newArray = Array(repeating: "", count: oldArray.count+1)
    for i in 0...newArray.count-1{
        if i == 0{
            newArray[i] = newValue
        }else{
            newArray[i] = oldArray[i-1]
        }
    }
    return newArray
}

let firstInsertion = firstInsetionarray(oldArray: Animals, newValue: "Monkey")
print("First Insertion Array Value is" , firstInsertion)


// 2d Array
var numbers  : [[[Int]]] = [[[1,2],[3,4],[5,6]],[[11,12],[13,14],[15,16],[17,18]]]
for i in 0..<numbers.count{
    for j in 0..<numbers[i].count{
        for k in 0..<numbers[i][j].count{
            print("The Valye is",numbers[i][j][k])
        }
    }
}

print("Array with position Value" , numbers[1][2][1])

print("Array Base")
