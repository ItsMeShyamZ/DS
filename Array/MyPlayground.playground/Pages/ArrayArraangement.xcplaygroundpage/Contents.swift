//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//Mark   : 1 Write a program to reverse an array or string
var input =  [1,2,3,20,3,1,4,8,6]

func reverseArray(input   : [Int])->[Int]{
    var output = [Int]()
    for   i in  0..<input.count{
        output.append(input[(input.count-1)-i])
    }
    return output
}

print("ReverseArray is :-",reverseArray(input: input))


func arrayReverseWithSwap(start  : Int,end : Int) {
   
    if !(start  >=  end){
        var temp = input[start]
        input[start] = input[end]
        input[end] = temp
        arrayReverseWithSwap(start: start+1, end: end-1)
    }
}

arrayReverseWithSwap(start: 0,end: input.count-1)

print("ReverseArray With Swap is :-",input)

