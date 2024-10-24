//
//  CartProductsTableViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 23/10/2024.
//

import UIKit

class CartProductsTableViewCell: UITableViewCell {
    //MARK: - Properties
    
    var counter: Int = 0
    
    //MARK: - UIViews
    @IBOutlet weak var productImageView: UIImageView!
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
//        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 10))
    }
    
    //MARK: - IBActions

    @IBAction func plusButtonPressed(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        guard counter != 0 else{return}
        counter -= 1
        counterLabel.text = "\(counter)"
    }
    
    //MARK: - Helpers
    private func setup(){
        addCornerRadius()
        
    }
    
    
    
    //MARK: - Cell Config
    static let identifier: String = "CartProductsTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }

}
