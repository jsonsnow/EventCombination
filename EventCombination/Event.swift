//
//  Event.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

public protocol Event {
    associatedtype Element
    
    func next()

}
