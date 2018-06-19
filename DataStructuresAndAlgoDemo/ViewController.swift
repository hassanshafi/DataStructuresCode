//
//  ViewController.swift
//  DataStructuresAndAlgoDemo
//
//  Created by mani on 14/06/2018.
//  Copyright © 2018 Saltech Soultions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayCount = 0
    var intArray = [Int]()
     var intArrayAfterFind = [Int]()
    var intArrayBeforeFind = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        appendElementsAndDisplay()
        sortUsingBubbleSort()
        searchForSpecificElementUsingForLoopAndDeleteIfFound(searchElement:55)
        searchForSpecificElement(searchElement:44)
        searchForSpecificElementUsingForLoop(searchElement:128)
    }
    
    func searchForSpecificElementUsingForLoopAndDeleteIfFound(searchElement:Int){
        var foundIndex = 0
        var isElementFound = false
        for index in (0...arrayCount){
            if searchElement == intArray[index] {
                print(intArray[index])
                if index == intArray.count - 1 {
                    print("found an element at last index")
                }
                else {
                    
                    print("found an element")
                }
                isElementFound = true
                foundIndex = index
                arrayCount -= 1
                break
            }
            intArrayBeforeFind.append(intArray[index])
        }
        
        if isElementFound == true {
            for indexAfterFound in (foundIndex ... arrayCount){
                print(intArray[indexAfterFound])
                intArray[indexAfterFound] = intArray[indexAfterFound + 1]
                intArrayAfterFind.append(intArray[indexAfterFound + 1])
            }
            
            intArray.removeAll()
            for before in intArrayBeforeFind {
                intArray.append(before)
            }
            for after in intArrayAfterFind {
                intArray.append(after)
            }
            print(intArray)
            
        }
    }
    
    
    
    func searchForSpecificElementUsingForLoop(searchElement:Int){
        for index in (0...intArray.count - 1){
            if searchElement == intArray[index] {
                print(intArray[index])
                if index == intArray.count - 1 {
                    print("found an element at last index")
                }
                else {
                    print("found an element")
                }
                break
            }
            else {
                print(intArray[index])
                if index == intArray.count - 1 {
                    print("not found after searching all the elements in array")
                }
                else {
                    print(intArray[index])
                    print("not found yet")
                }
            }
        }
    }
    
    
    
    func searchForSpecificElement(searchElement:Int){
        var countIndex = 0
        for element in intArray {
            countIndex += 1
            if searchElement == element {
                print(element)
                print("found an element")
                print(countIndex - 1)
                break
            }
            else {
                print(element)
                print("not found after searching all the elements in array")
            }
        }
    }
    
    
    func appendElementsAndDisplay(){
        intArray.append(77)
        intArray.append(99)
        intArray.append(44)
        intArray.append(55)
        intArray.append(22)
        intArray.append(88)
        intArray.append(11)
        intArray.append(0)
        intArray.append(66)
        intArray.append(33)
        arrayCount = intArray.count - 1
        print(intArray)
    }
    
    func swap(currentIndex : Int,changeIndex : Int ){
        let elementCurrent = intArray[currentIndex]
        let tempElement = elementCurrent
        let changeElement = intArray[changeIndex]
        intArray[currentIndex] = changeElement
        intArray[changeIndex] = tempElement
        print(intArray)
    }
    func sortUsingBubbleSort(){
      // compare current element with all the elements if first element is greater than
        // second element then swap else do nothing
        for index in (0...arrayCount){
            print(intArray[index])
            var minimum = intArray[index]
        
            if index < arrayCount {
            for compateIndex in (index+1...arrayCount){
                print(intArray[compateIndex])
                if minimum > intArray[compateIndex] {
                    minimum = intArray[compateIndex]
                    swap(currentIndex: index, changeIndex: compateIndex)
                }
                }
            }
           
        }
        print(intArray)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

