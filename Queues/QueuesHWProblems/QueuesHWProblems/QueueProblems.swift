//
//  QueueProblems.swift
//  QueuesHWProblems
//
//  Created by C4Q  on 11/1/16.
//  Copyright © 2016 C4Q . All rights reserved.
//

import Foundation

//In all problems, the input queue should be in its original state after your function is done running.



//Find the sum of a queue
func sum(q: Queue<Int>) -> Int? {
    if q.peek() == nil { return nil }
    var sum = 0
    while !q.isEmpty() {
        let current = q.deQueue()!
        sum += current
    }
    return sum
}


//Find the smallest element in a queue
func smallest<T:Comparable>(q: Queue<T>) -> T? {
    guard let small = q.peek() else { return nil }
    var smallest = small
    while !q.isEmpty() {
        let current = q.deQueue()!
        if current < smallest {
            smallest = current
        }
    }
    return smallest
}

//** FIX THIS [8, 11, 4]
//Find out whether or not a queue is in sorted order from smallest to biggest
//True example:   (Back) 9 - 6 - 2 - 1 (Front)
//False exasmple   (Back) 4 - 19 - 134 200 (Front)
func isSorted<T: Comparable>(q: Queue<T>) -> Bool? {
    guard q.peek() != nil else { return nil }
    while !q.isEmpty() {
    var current = q.deQueue()!
    var max = q.deQueue()!
        if current > max {
            max = current
            current = q.deQueue()!
        } else {
            return false
        }
    }
    return true
    
}

//Return a reversed queue.
func reverse<T>(q: Queue<T>) -> Queue<T> {
    if q.isEmpty() { return q }
    let reverseQueue = Queue<T>()
    while !q.isEmpty() {
        reverseQueue.enQueue(newElement: q.deQueue()!)
    }
    return reverseQueue
}

//Determine if two queues are equal.

func areEqual<T: Equatable>(qOne: Queue<T>, qTwo: Queue<T>) -> Bool {
    
    return false
}

//Bonus: Hot Potato
//https://interactivepython.org/runestone/static/pythonds/BasicDS/SimulationHotPotato.html

