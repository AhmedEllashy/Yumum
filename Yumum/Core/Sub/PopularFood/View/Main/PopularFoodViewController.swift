//
//  PopularFoodViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 01/10/2024.
//

import UIKit

class PopularFoodViewController: UIViewController {
//MARK: - UIViews
    var cartButtonView: UIView = CartButtonView()
    var productsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(PopularFoodCollectionViewCell.nib(), forCellWithReuseIdentifier: PopularFoodCollectionViewCell.identifier)
        collectionView.backgroundColor = .background
        return collectionView
    }()
   
//MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        productsCollectionView.frame = view.bounds
        print(view.height)
        cartButtonView.frame = CGRect(x:30, y: view.bottom - 150, width:view.width - 60, height: 55)
    }
//MARK: - Helpers
    private func setup(){
        view.addSubview(productsCollectionView)
        view.addSubview(cartButtonView)
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
        title = "Popular Food"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Search"), style: .plain, target: self, action: #selector(didTapSearchButton))
        view.bringSubviewToFront(cartButtonView)
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCartButtonView(_:)))
        cartButtonView.addGestureRecognizer(gesture)
    }
    
    @objc private func didTapCartButtonView(_ sender: Any){
        let vc = CartViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapSearchButton(){
        
    }
}

//MARK: - UICollectionViewDataSource Methods
extension PopularFoodViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularFoodCollectionViewCell.identifier, for: indexPath) as? PopularFoodCollectionViewCell else{
            return UICollectionViewCell()
        }
        return cell
    }
    
    
}

//MARK: - UICollectionViewDelegateFlowLayout Methods
extension PopularFoodViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = UIScreen.main.bounds.width - 20
        return CGSize(width: itemWidth, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 10, right: 20)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

}
