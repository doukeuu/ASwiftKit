//
//  String+Extension.swift
//  ASwiftKit
//
//  Created by ssbm on 2022/5/17.
//

import Foundation

extension String {
    
    
    /// 验证是否是纯数字
    var isPureDigital: Bool {
        if self.isEmpty { return false }
        return NSPredicate(format: "SELF MATCHES %@", "^\\d*$").evaluate(with: self)
    }
    
}
