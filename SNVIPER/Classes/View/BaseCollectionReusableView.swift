//
//  BaseCollectionReusableView.swift
//  SNVIPER
//
//  Created by zsf on 2018/1/19.
//  Copyright © 2018年 zsf. All rights reserved.
//

import UIKit

public protocol CollectionReusableViewFillable {
    
    associatedtype ItemType;
    func fillCollectionReusableView(item: ItemType?, kind: String, section: Int);
}

open class BaseCollectionReusableView<T>: UICollectionReusableView, AddViewProtocol, CollectionReusableViewFillable{
    
    public typealias ItemType = T;
    open var delegate: TouchUpDelegate?;
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews();
        addConstraints();
        loadData();
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func fillCollectionReusableView(item: ItemType?, kind: String, section: Int) {
        
    }
    
    open func addSubviews() {
        
    }
    
    open func addConstraints() {
        
    }
    
    open func loadData() {
        
    }
}
