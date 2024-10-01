//
//  HeaderSectionCollectionReusableView.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 24/09/2024.
//

import UIKit

class HeaderSectionCollectionReusableView: UICollectionReusableView {
    //MARK: - UIViews
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - IBActions
    @IBAction func seeAllButtonPressed(_ sender: UIButton) {
    }
    
    //MARK: - Helpers
    func config(_ title: String){
        titleLabel.text = title
    }
    
    
    //MARK: - View Config
    static let identifier: String = "HeaderSectionCollectionReusableView"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
}
