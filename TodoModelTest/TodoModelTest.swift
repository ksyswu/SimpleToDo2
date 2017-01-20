//
//  TodoModelTest.swift
//  TodoModelTest
//
//  Created by SWUCOMPUTER on 2017. 1. 13..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import XCTest
@testable import SimpleToDo

class TodoModelTest: XCTestCase {
    
    
    func testRemove(){
        let modelToDo = TodoModel()
        
        modelToDo.addNewTask(name: "작업1", repeatCount: 10)
        modelToDo.addNewTask(name: "작업2", repeatCount: 10)
        modelToDo.addNewTask(name: "작업3", repeatCount: 10)
        
        let count = modelToDo.arrayTask.count
        
        //XCTAssert(count == 1)
        //XCTAssert(count == 2, "초기 생성 후 첫값 입력 실패")
        XCTAssert(count == 3, "초기 생성 후 값 세개 입력 실패")
        
        
        modelToDo.removeTask(atIndex: 1)
        
        XCTAssert(modelToDo.arrayTask.count == 2, "한개 삭제 실패")
        
        modelToDo.removeTask(taskToRemovw: modelToDo.arrayTask[1])
        
        XCTAssert(modelToDo.arrayTask.count == 1, "추가로 다른 메서드 이용 한개 삭제 실패")
    }
    
    
    
    
    
    
    override func setUp() {
        super.setUp() //실행되기전에 미리 작성하는것 , 설정
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() { //실질적 테스트
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}






