//
//  SomeProtocol.swift
//  TestAppDemo
//
//  Created by Aleksandar Geyman on 28.05.21.
//

import Foundation

protocol TestProtocol {
    static func staticFuncInPr()
}

class ClassWithProtocol: TestProtocol {
     func staticFuncInPr() {
        print("Not static")
    }

    static func staticFuncInPr() {
        print("Static")
    }
}
