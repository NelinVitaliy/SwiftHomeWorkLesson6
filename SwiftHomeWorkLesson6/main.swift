//
//  main.swift
//  SwiftHomeWorkLesson6
//
//  Created by N3L1N on 04/01/2022.
//

import Foundation

struct LIFO<Element:Comparable> {
    
    var points=[Element]()
    
    mutating func add (_ point:Element){
        points.append(point)
    }
    
    mutating func next() -> Element{
//        print("Next line \(points.first!)")
        return points.removeFirst()
    }
    
    func filter(point:Element){
        print("Find \(points.filter{$0 == point})")
    }
    
    mutating func sorting() -> [Element] {
        points.sorted(by: >)
    }
    
    subscript (index:Int) -> Element? {
        index < points.count ? points[index]:nil
    }

    func printCount(){
        print(points.count)
    }
}

var presents=LIFO<String>(points: ["наушники"])
presents.add("кубик рубик")
presents.add("часы")
presents.add("динозаврики")
presents.add("машинка")
print(presents.points)
print("________________")
print("Отсортированный список подарков: \(presents.sorting())")
print(presents.next())
print(presents.next())
presents.add("телефон")
print(presents)
print("________________")
presents.filter(point: "динозаврики")
presents.printCount()
print(presents)
print(presents[0]!)
print(presents[2]!)

