//
//  BaseTableViewCell.swift
//  
//
//  Created by zsf on 2017/1/6.
//  Copyright © 2017年 zsf. All rights reserved.
//

import UIKit

/// 可填充协议
public protocol TableViewCellFillable {
    associatedtype ItemType;
    func fillCell(item: ItemType?,indexPath: IndexPath?);
}

open class BaseTableViewCell<T>: UITableViewCell,AddViewProtocol,TableViewCellFillable {

    public typealias ItemType = T;
    
    lazy var bottomLine: UIView = UIView();//底部线
    
    open var delegate: TouchUpDelegate?;
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        
        addSubviews();
        addConstraints();
        loadData();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setBottomLine(left: Float = 0.0,right: Float = 0.0,height: Float,color: UIColor) {
        self.bottomLine.isHidden = false;
        self.bottomLine.backgroundColor = color;
        self.contentView.bringSubviewToFront(self.bottomLine);
        
        self.bottomLine.frame = CGRect(x: CGFloat(left), y: self.contentView.bounds.size.height - CGFloat(height), width: self.contentView.bounds.size.width - CGFloat(left) - CGFloat(right), height: CGFloat(height));
    }
    
    // MARK: AddViewProtocol
    
    open func addSubviews() {
        self.contentView.addSubview(self.bottomLine);
        self.bottomLine.backgroundColor = UIColor.lightGray;
        self.bottomLine.isHidden = true;
    }
    
    open func addConstraints() {

    }
    
    open func loadData() {
        
    }
    // MARK: TableViewCellFillable
    
    open func fillCell(item: ItemType?,indexPath: IndexPath?) {
        
    }
        
    open class func heightForData(obj: ItemType?) -> CGFloat {
        return 1.0;
    }

}
