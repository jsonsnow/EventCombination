//
//  CombinationAbleType.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

public protocol CombinationAbleType {
    
    var isComplete: Bool {get set}
    func preCombination() -> CombinationAble?
    func nextCombination() -> CombinationAble?
    
    func subscribe() -> Void 
}

extension CombinationAbleType {

}

extension CombinationAbleType {
    func create() -> CombinationAble {
    
    }
}
