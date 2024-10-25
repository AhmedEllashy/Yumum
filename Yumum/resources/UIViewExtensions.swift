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
    func addCornerRadius(_ radius: Double? = nil){
        self.layer.masksToBounds = true
        self.layer.cornerRadius = radius ?? 10.0
    }
    func addShadow(){
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 0, height: -0.5)
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.9
        self.layer.shadowRadius = 10
    }
    
    
    var width : CGFloat {
       return frame.size.width
   }
    var height : CGFloat {
       return frame.size.height
   }
    var left : CGFloat {
       return frame.origin.x
   }
    var right : CGFloat {
       return left + width
   }
    var top : CGFloat {
       return frame.origin.y
   }
    var bottom : CGFloat {
       return top + height
   }
    func addCornerRadius(radius:CGFloat){
        clipsToBounds = true
        layer.masksToBounds = true
        layer.cornerRadius = radius
    }
}
