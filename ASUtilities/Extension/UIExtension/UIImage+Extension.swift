//
//  UIImage+Extension.swift
//  ASwiftKit
//
//  Created by ssbm on 2022/5/17.
//

import UIKit
import CoreGraphics

extension UIImage {
    
    /// 生成纯色图片
    static func imageWithColor(_ color: UIColor = UIColor.white, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    /// 图片缩放在尺寸内
    func scaledInSize(_ size: CGSize) -> UIImage? {
        if size == .zero { return nil }
        // 图片比要求的尺寸小，返回自身
        if self.size.width <= size.width && self.size.height <= size.height { return self }
        var imageWidth: CGFloat, imageHeight: CGFloat
        let ratio = self.size.width / self.size.height
        // 等比例缩放
        if size.width / size.height >= ratio {
            imageWidth = size.height * ratio
            imageHeight = size.height
        } else {
            imageWidth = size.width
            imageHeight = size.width / ratio
        }
        let imageSize = CGSize(width: imageWidth, height: imageHeight)
        UIGraphicsBeginImageContext(imageSize)
        draw(in: CGRect(origin: .zero, size: imageSize))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
    
}
