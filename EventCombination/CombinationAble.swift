//
//  CombinationAble.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

public class CombinationAble<E>: CombinationAbleType {
    public typealias Element = E
    
    
    public func preCombination() -> CombinationAble? {
        ctAbstractMethod()
    }
    
    public func nextCombination() -> CombinationAble? {
        ctAbstractMethod()
    }
}
