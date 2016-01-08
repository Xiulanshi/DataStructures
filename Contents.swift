//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//class listNode {
//    var value: Int?
//    var next: listNode?
//    
//    init(value: Int, next: listNode?){
//        self.value = value
//        self.next = next
//    }
//}
//
//let head = listNode (value: 5, next: listNode (value: 6, next: listNode (value: 7, next: nil)))
//
//head.value
//
//head.next?.value
//
//head.next?.next?.value



class listNode {
    var value: Int?
    var next: listNode?
    
    init(value: Int, next: listNode?){
        self.value = value
        self.next = next
    }
    
    func removeHead() -> listNode? {
        let next = self.next
        self.next = nil
        return next
    }
}

var head = listNode (value: 5, next: listNode (value: 6, next: listNode (value: 7, next: nil)))

let v = head.value

head = head.removeHead()!

head.value



struct Stack<Element> {
    var array: [Element]=[]
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    func peek() -> Element? {
        return array.last
    }
    
    mutating func push(element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element {
        return array.removeLast()
    }
}


func isBalanced(parens: String) -> Bool {
    var s = Stack<Character>()
    for c in parens.characters {
        if c == "(" {
            s.push(c)
        } else if c == ")" {
                if s.isEmpty {
                return false
            }
            s.pop()
                
            }
        }
    return (s.peek() == nil)
}

isBalanced("(())()()(())(()()()()(())()())")


var s = Stack<String>()
s.push("hello")
s.push("there")

s.array
s.pop()


// hash table

func hash(key: String) -> Int {
    return key.characters.count - 1
}
hash("aa")
hash("xy")

"aa".hash
"xy".hash


// graph

let graph: Dictionary<Int, [Int]> = [
    0 : [4],
    1 : [3, 4],
    2 : [0, 1, 3],
    3 : [4],
    4 : []
]

let start = 2
let connectedNodes = graph[start]
let next = connectedNodes![0]
let nextConnectedNodes = graph[next]

//start.next...

