//
//  SuggestionProductCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 23/10/2024.
//

import UIKit

class SuggestionProductCollectionViewCell: UICollectionViewCell {
    
    //MARK: - UIViews
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productLabelName: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addCornerRadius()
    }

    //MARK: - IBActions
    @IBAction func addToCartButtonPressed(_ sender: Any) {
        
    }
    
    //MARK: - Helpers
    private func setup(){
        addCornerRadius()
    }
    
    //MARK: - Cell Config
    static let identifier: String = "SuggestionProductCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
