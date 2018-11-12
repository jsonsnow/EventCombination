//
//  Event.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import Foundation

public enum Event<Element> {
    /// Next element is the transfer data
    case next(Element)
    
    ///
    case error(Swift.Error)
    
    ///Event completed with error
    case completed
}
