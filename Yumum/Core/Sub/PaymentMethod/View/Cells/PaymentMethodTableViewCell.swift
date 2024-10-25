//
//  PaymentMethodTableViewCell.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 25/10/2024.
//

import UIKit

class PaymentMethodTableViewCell: UITableViewCell {
    @IBOutlet weak var imageBackgroundView: UIView!
    
    @IBOutlet weak var methodImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageBackgroundView.addCornerRadius(5)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - Helpers
    func config(image: UIImage?){
        guard let image else {return}
        methodImageView.image = image
    }
    //MARK: - Cell Config
    static let identifier: String = "PaymentMethodTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
