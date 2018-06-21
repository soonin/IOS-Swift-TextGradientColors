//
//  Extentions.swift
//  IOS-Swift-TextGradientColors
//
//  Created by Pooya on 2018-06-21.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

extension UILabel {
    
    public func updateGradientTextColor(gradientColors : [UIColor] = [UIColor(white: 0, alpha: 0.95) ,  UIColor(white: 0, alpha: 0.6) ]) {
        // Create size of intrinsic size for the label with current text.
        // Otherwise the gradient textColor will repeat when text is changed.
        let size = CGSize(width: intrinsicContentSize.width, height: 1)
        
        // Begin image context
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        // Always remember to close the image context when leaving
        defer { UIGraphicsEndImageContext() }
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        // Create the gradient
        var  colors : [CGColor] = []
        for color in gradientColors {
            colors.append(color.cgColor)
        }
        guard let gradient = CGGradient(
            colorsSpace: CGColorSpaceCreateDeviceRGB(),
            colors: colors as CFArray,
            locations: nil
            ) else { return }
        
        // Draw the gradient in image context
        context.drawLinearGradient(
            gradient,
            start: CGPoint.zero,
            end: CGPoint(x: size.width, y: 0), // Horizontal gradient
            options: []
        )
        if let image = UIGraphicsGetImageFromCurrentImageContext() {
            // Set the textColor to the new created gradient color
            self.textColor = UIColor(patternImage: image)
        }
        
    }
    
    
}
