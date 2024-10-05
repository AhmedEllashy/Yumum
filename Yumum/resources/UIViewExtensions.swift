//
//  UIViewExtensions.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 24/09/2024.
//

import UIKit


extension UIView{
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
            let maskPath = UIBezierPath(
                roundedRect: bounds,
                byRoundingCorners: corners,
                cornerRadii: CGSize(width: radius, height: radius))

            let shape = CAShapeLayer()
            shape.path = maskPath.cgPath
            layer.mask = shape
        }
    func addCornerRadius(){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
    }
    func addShadow(){
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowColor = UIColor.white.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 2
    }
}
