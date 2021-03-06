//
//  UIBarButtonItem+Extension.swift
//  ASwiftKit
//
//  Created by ssbm on 2022/5/17.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(imageName: String, target: Any?, action: Selector?) {
        self.init()
        self.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        self.target = target as AnyObject?
        self.action = action
        self.width = 50
        self.imageInsets = UIEdgeInsets(top: 1, left: -14, bottom: 0, right: 0)
    }
    
    // 返回按钮样式
    class func backItem(imageName: String, target: Any?, action: Selector?) -> UIBarButtonItem {
        let image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        let item = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
        item.width = 50
        item.imageInsets = UIEdgeInsets(top: 1, left: -14, bottom: 0, right: 0)
        return item
    }
    
}
