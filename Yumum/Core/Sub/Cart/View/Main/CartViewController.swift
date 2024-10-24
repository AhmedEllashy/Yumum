//
//  CartViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 11/10/2024.
//

import UIKit

class CartViewController: UIViewController {
//MARK: - UIViews
    
    @IBOutlet weak var cartProductsTableView: UITableView!
    @IBOutlet weak var suggestedProductsCollectionView: UICollectionView!
    @IBOutlet weak var itemsPriceLabel: UILabel!
    @IBOutlet weak var deliveryFeesLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var proccessPaymentView: UIView!
    @IBOutlet weak var totalPriceView: UIView!
    @IBOutlet weak var backgroundMainButtonView: UIView!

    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
//MARK: - Helpers
    private func setup(){
        configTableView()
        configCollectionView()
        proccessPaymentView.addCornerRadius()
        totalPriceView.addCornerRadius()
        backgroundMainButtonView.addShadow()
    }
    private func configTableView(){
        cartProductsTableView.addCornerRadius()
        cartProductsTableView.dataSource = self
        cartProductsTableView.delegate = self
        cartProductsTableView.register(CartProductsTableViewCell.nib(), forCellReuseIdentifier: CartProductsTableViewCell.identifier)
    }
    private func configCollectionView(){
        suggestedProductsCollectionView.dataSource = self
        suggestedProductsCollectionView.delegate = self
        suggestedProductsCollectionView.register(SuggestionProductCollectionViewCell.nib(), forCellWithReuseIdentifier: SuggestionProductCollectionViewCell.identifier)

        
    }




}

//MARK: - UITableViewDataSource Methods
extension CartViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CartProductsTableViewCell.identifier, for: indexPath) as? CartProductsTableViewCell else{return UITableViewCell()
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
 
    
}
//MARK: - UITableViewDelegate Methods
extension CartViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }

}






//MARK: - UICollectionViewDataSource Methods
extension CartViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:SuggestionProductCollectionViewCell.identifier, for: indexPath) as? SuggestionProductCollectionViewCell
        else{return UICollectionViewCell()}
        cell.addCornerRadius()
        return cell
    }
    
    

}

//MARK: - UICollectionViewDataSource Methods
extension CartViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = UIScreen.main.bounds.width
        let collectionHeight = collectionView.frame.height
        let itemWidth = collectionWidth
        return CGSize(width: itemWidth - 80, height: collectionHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
    }
    
}


