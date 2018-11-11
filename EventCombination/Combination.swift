//
//  Combination.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

func ctAbstractMethod(file: StaticString = #file, line: UInt = #line) -> Swift.Never {
        ctFatalError("Abstract method", file: file, line: line)
}

func ctFatalError(_ lastMessage: @autoclosure () -> String, file: StaticString = #file, line: UInt = #line) -> Swift.Never {
    fatalError(lastMessage(), file: file, line: line)
}

public struct Combination<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol CombinationCompatible {
    associatedtype CompatibleType
    
    static var ct: Combination<CompatibleType>.Type {get set}
    
    var ct: Combination<CompatibleType> { get set }

}

extension CombinationCompatible {
    
    public static var ct: Combination<Self>.Type {
        get {
            return Combination<Self>.self
        }
        set {
            
        }
    }
    
    public var ct: Combination<Self> {
        get {
            return Combination(self)
        }
        set {
            
        }
    }
}

import class Foundation.NSObject

extension NSObject: CombinationCompatible {}
