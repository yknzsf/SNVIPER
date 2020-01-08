//
//  TouchUpDelegate.swift
//
//
//  Created by zsf on 2017/2/10.
//  Copyright © 2017年 zsf. All rights reserved.
//

import Foundation

public protocol TouchUpDelegate : class {
    func touchUpInside(_ view: UIView?, action: Int?, section: Int?, object: Any?);
    func touchUpInside(_ view: UIView?, action: Int?, indexPath: IndexPath?, object: Any?);
}

public extension TouchUpDelegate {
    
    func touchUpInside(_ view: UIView?, action: Int?, section: Int?, object: Any?) {

    }
    
    func touchUpInside(_ view: UIView?, action: Int?, indexPath: IndexPath?, object: Any?) {
        
    }
}
