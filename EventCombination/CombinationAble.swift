//
//  CombinationAble.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

public class CombinationAble: CombinationAbleType {
    public func subscribe() {
        
    }
        
    public typealias Action = ()->()
    public typealias ActionCallback = ()->()
    
    private var _action: Action?
    private var _callback: ActionCallback?
    public var isComplete: Bool = false
    
    
    public func preCombination() -> CombinationAble? {
        return nil
    }
    
    public func nextCombination() -> CombinationAble? {
        return nil
    }
    
    public func subscribe(_ action: @escaping Action, _ callback: @escaping ActionCallback) {
        _action = action
        _callback = callback
    }
}
