//
//  BaseView.swift
//  Alamofire
//
//  Created by Zhao Shaofeng on 2020/1/5.
//

import UIKit

/// 可填充协议
public protocol ViewFillable {
    associatedtype ItemType;
    func fillView(item: ItemType?);
}

open class BaseView<T>: UIControl,AddViewProtocol,ViewFillable {

    public typealias ItemType = T;
    
    public lazy var bottomLine: UIView = UIView();//底部线
    
    public override init(frame: CGRect) {
        super.init(frame: frame);
        
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
        self.bringSubviewToFront(self.bottomLine);
        
        self.bottomLine.frame = CGRect(x: CGFloat(left), y: self.bounds.size.height - CGFloat(height), width: self.bounds.size.width - CGFloat(left) - CGFloat(right), height: CGFloat(height));
    }
    
    // MARK: AddViewProtocol
    
    open func addSubviews() {
        self.addSubview(self.bottomLine);
        self.bottomLine.backgroundColor = UIColor.lightGray;
        self.bottomLine.isHidden = true;
    }
    
    open func addConstraints() {

    }
    
    open func loadData() {
        
    }
    // MARK: TableViewCellFillable
    
    open func fillView(item: ItemType?) {
        
    }
}
