//
//  UIView+DropShadow.swift
//  Mixtape
//
//  Created by Eric Wang on 3/11/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import UIKit

public extension UIView {
    public func setDropShadow(shadowColor: UIColor, shadowWidth: CGFloat = 3.0, shadowHeight: CGFloat = 4.0, shadowOpacity: Float = 1.0, shadowRadius: CGFloat = 5.0) {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = CGSize(width: shadowWidth, height: shadowHeight)
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }
    
    public func removeDropShadow() {
        self.layer.shadowOpacity = 0.0
    }
}
