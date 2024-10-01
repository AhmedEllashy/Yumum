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
        self.layer.cornerRadius = 10.0
    }
}
