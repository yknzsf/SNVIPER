//
//  BaseTableViewHeaderFooterView.swift
//  
//
//  Created by zsf on 2017/1/6.
//  Copyright © 2017年 zsf. All rights reserved.
//

import UIKit

/// 可填充协议
public protocol TableViewHeaderFooterViewFillable {
    
    associatedtype ItemType;
    func fillHeaderFooterView(item: ItemType?,section: Int);
}

open class BaseTableViewHeaderFooterView<T>: UITableViewHeaderFooterView,AddViewProtocol, TableViewHeaderFooterViewFillable {

    public typealias ItemType = T;
    
    open var delegate: TouchUpDelegate?;
    
    lazy var bottomLine: UIView = UIView();//底部线
    
    open func fillHeaderFooterView(item: T?, section: Int) {
        
    }
    
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier);
        
        addSubviews();
        addConstraints();
        loadData();
    }
    
    public func setBottomLine(left: Float = 0.0,right: Float = 0.0,height: Float,color: UIColor) {
        self.bottomLine.isHidden = false;
        self.bottomLine.backgroundColor = color;
        self.contentView.bringSubviewToFront(self.bottomLine);
        
        self.bottomLine.frame = CGRect(x: CGFloat(left), y: self.contentView.bounds.size.height - CGFloat(height), width: self.contentView.bounds.size.width - CGFloat(left) - CGFloat(right), height: CGFloat(height));
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func addSubviews() {
        self.contentView.addSubview(self.bottomLine);
        self.bottomLine.backgroundColor = UIColor.lightGray;
        self.bottomLine.isHidden = true;
    }
        
    open func addConstraints() {
        
    }
    
    open func loadData() {
        
    }
}
