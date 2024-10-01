//
//  ProductsCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 26/09/2024.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK: - Cell Config
    static let identifier: String = "ProductsCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
