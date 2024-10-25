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
        label.text = "0 items in Cart"
        label.textColor = .white
        label.font = .systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    var totalPriceBackgroundView: UIView = {
        let view = UIView()
        var color: UIColor = .systemGray6.withAlphaComponent(0.3)
        view.backgroundColor = color
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
        cartImageView.frame = CGRect(x: 10, y: 15, width: 25, height: 25)
        itemsCountLabel.frame = CGRect(x: cartImageView.right + 10, y: 15, width: 180, height: 30)
        totalPriceBackgroundView.frame = CGRect(x: self.right - 90 , y: 8, width: 50, height: 40)
        totalPriceLabel.frame = CGRect(x: 10 , y: 10, width: 40, height: 20)
//        totalPriceLabel.center = totalPriceBackgroundView.center
    }
    
}
