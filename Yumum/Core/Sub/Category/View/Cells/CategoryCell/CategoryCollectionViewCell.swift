//
//  CategoryCollectionViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 24/09/2024.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    //MARK: - Properties

    //MARK: - UIViews
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var catrogryNameLabel: UILabel!
    @IBOutlet weak var detailsView: UIView!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    //MARK: - IBActions
    @IBAction func categoryButtonPressed(_ sender: UIButton) {
    }
    
    
    //MARK: - Helpers
    private func setup(){
        detailsView.layer.cornerRadius = 10
    }
    func config(with category: String){
        
    }
    //MARK: - Cell Config
    static let identifier: String = "CategoryCollectionViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    
}
