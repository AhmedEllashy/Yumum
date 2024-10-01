//
//  TopHeaderCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 26/09/2024.
//

import UIKit

class TopHeaderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var moneyContainerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        moneyContainerView.addCornerRadius()
    }

    //MARK: - Cell Config
    static let identifier: String = "TopHeaderCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
