//
//  PopularFoodCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 01/10/2024.
//

import UIKit

class PopularFoodCollectionViewCell: UICollectionViewCell {
    
//MARK: - UIViews
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!

//MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addCornerRadius()
        self.addShadow()

    }
    
//MARK: - Cell Config
    static let identifier: String = "PopularFoodCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
