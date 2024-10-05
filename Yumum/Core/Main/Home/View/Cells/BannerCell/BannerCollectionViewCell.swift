//
//  BannerCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 26/09/2024.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addCornerRadius()
    }

    //MARK: - Cell  Config
    static let identifier: String = "BannerCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
