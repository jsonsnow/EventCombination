//
//  ViewController.swift
//  EventCombination
//
//  Created by chen liang on 2018/11/10.
//  Copyright © 2018年 chen liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton.init()
        //btn.ct.tap.nextCombination()?.preCombination()?.nextCombination()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension Combination where Base: UIViewController {
    
}

extension Combination where Base: UIViewController {
    func loadDataAction(_ action, actionCallback) -> CombinationAble<Base> {
        return CombinationAble {action, actionCallback in
            action()
            if let callback = actionCallback {
                let res = actionCallback
                self.isComplete = true
                
            }
        }
    }

}

extension Combination where Base: UIButton {
    

    
}

