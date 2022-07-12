//
//  AppDelegate+Notice.swift
//  ASwiftKit_Example
//
//  Created by ssbm on 2022/7/12.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

extension AppDelegate {
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        // 打印推送获取的deviceToken
        print("-- 推送 deviceToken: ", deviceToken.map { String(format: "%02.2hhx", arguments: [$0]) }.joined())
    }
    
}
