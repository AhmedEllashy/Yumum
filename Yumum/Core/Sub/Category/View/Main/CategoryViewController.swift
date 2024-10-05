//
//  CategoryViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 01/10/2024.
//

import UIKit

class CategoryViewController: UIViewController {
    
    //MARK: - UIViews
    var categoryCollectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        collectionView.backgroundColor = UIColor(named: AppColors.backgroundColor)
        return collectionView
    }()
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        categoryCollectionview.frame = view.bounds
    }
    //MARK: - Helpers
    private func setup(){
        navigationController?.isNavigationBarHidden = false
        title = "All Categories"
        view.addSubview(categoryCollectionview)
        categoryCollectionview.delegate = self
        categoryCollectionview.dataSource = self
        
    }
    
}
//MARK: - UICollectionViewDataSource Methods
extension CategoryViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else{return UICollectionViewCell()}
        return cell
    }
    
    
}
//MARK: - UICollectionViewDelegateFlowLayout Methods

extension CategoryViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthOfItem = UIScreen.main.bounds.width / 2
        let itemWidth = widthOfItem - 40
        let itemHeight = UIScreen.main.bounds.width / 2
        return CGSize(width: itemWidth, height: itemHeight + 30)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8.6
    }
}

