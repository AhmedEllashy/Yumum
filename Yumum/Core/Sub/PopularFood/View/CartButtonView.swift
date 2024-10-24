//
//  CartButtonView.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 24/10/2024.
//

import UIKit

class CartButtonView: UIView {
    
    //MARK: - UIViews
    var cartImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Cart"))
        imageView.image?.withTintColor(.customOrange)
        return imageView
    }()
    
    var itemsCountLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    var totalPriceBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        view.addCornerRadius()
        return view
    }()
    var totalPriceLabel: UILabel = {
        let label = UILabel()
        label.text = "$30"
        return label
    }()
    
    //MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .customOrange
        addCornerRadius()
        
        addSubview(cartImageView)
        addSubview(itemsCountLabel)
        addSubview(totalPriceBackgroundView)
        totalPriceBackgroundView.addSubview(totalPriceLabel)
    }
    required init?(coder: NSCoder) {
        fatalError("Can't Load")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configUIViews()
    }
    
    //MARK: - Helpers
    fileprivate func configUIViews(){
        cartImageView.frame = CGRect(x: 5, y: 0, width: 30, height: 30)
        itemsCountLabel.frame = CGRect(x: cartImageView.right + 5, y: 0, width: 100, height: 30)
        totalPriceBackgroundView.frame = CGRect(x: self.right - 30 , y: 0, width: 50, height: 50)
        totalPriceLabel.frame = CGRect(x: totalPriceBackgroundView.bounds.midX , y: totalPriceBackgroundView.bounds.midY, width: 30, height: 30)
    }
    
}
