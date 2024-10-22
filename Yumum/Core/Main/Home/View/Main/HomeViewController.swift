//
//  HomeViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 22/09/2024.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: - Properties
    let sectionTypes: [CollectionHelpers] = [.topSection,.bannersSection,.categoriesSection(["String"]),.productsSection(["Name"])]
    let headers: [String] = ["","","All Categories","Popular Food"]
    //MARK: - UIViews
    
    let collectionView: UICollectionView = {
        let colView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewCompositionalLayout(sectionProvider: { index, _ in
            return Helpers.setCollectionViewLayout(with: index)
        }))
        colView.backgroundColor = UIColor(named: "BackgroundColor")
        return colView
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Helpers
    fileprivate func setup(){
        configUIViews()
        configCollectionView()
//        navigationController?.navigationBar.isHidden = true
    }

    fileprivate func configCollectionView(){
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInsetAdjustmentBehavior = .always
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.register(TopHeaderCollectionViewCell.nib(), forCellWithReuseIdentifier: TopHeaderCollectionViewCell.identifier)
        
        collectionView.register(BannerCollectionViewCell.nib(), forCellWithReuseIdentifier: BannerCollectionViewCell.identifier)
        
        collectionView.register(CategoryCollectionViewCell.nib(), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        collectionView.register(ProductsCollectionViewCell.nib(), forCellWithReuseIdentifier: ProductsCollectionViewCell.identifier)
 
        collectionView.register(HeaderSectionCollectionReusableView.nib(), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSectionCollectionReusableView.identifier)
    }
    
    private func configUIViews(){
        collectionView.frame = view.bounds
    }


}
//MARK: - UICollectionViewDataSource Methods
extension HomeViewController: UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sectionTypes.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let sectionType = sectionTypes[section]
        switch sectionType{
        case .topSection :
            return 1
        case .bannersSection:
            return 3
        case .categoriesSection(_):
            return 15
        case .productsSection(_):
            return 100
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sectionType = sectionTypes[indexPath.section]
        switch sectionType{
        case .topSection :
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopHeaderCollectionViewCell.identifier, for: indexPath) as? TopHeaderCollectionViewCell else{
                return UICollectionViewCell()
            }
            return cell
        case .bannersSection:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCollectionViewCell.identifier, for: indexPath) as? BannerCollectionViewCell else{
                return UICollectionViewCell()
            }
            cell.addCornerRadius()
            return cell
        case .categoriesSection(_):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else{
                return UICollectionViewCell()
            }

            return cell
        case .productsSection(_):
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductsCollectionViewCell.identifier, for: indexPath) as? ProductsCollectionViewCell else{
                return UICollectionViewCell()
            }
            cell.addCornerRadius()
            return cell
        }
    
    }
}
//MARK: - UICollectionViewDelegate Methods
extension HomeViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderSectionCollectionReusableView.identifier, for: indexPath) as? HeaderSectionCollectionReusableView else{
            return UICollectionReusableView()
        }
        header.config(headers[indexPath.section])
        header.seeAllClosure = {
            if self.headers[indexPath.section] == "All Categories"{
                let vc = CategoryViewController()
        
                self.navigationController?.pushViewController(vc, animated: true)
            }else{
                let vc = PopularFoodViewController()
                vc.navigationController?.isNavigationBarHidden = false
                vc.navigationItem.title = "Popular Food"
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
        
        return header
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sectionType = sectionTypes[indexPath.section]
        switch sectionType{
        case .topSection :
            break
        case .bannersSection :
                break
        case .categoriesSection(_):
            let vc = CategoryViewController()
            navigationController?.pushViewController(vc, animated: true)
        case .productsSection(_):
            let vc = ProductDetailsViewController()
            self.hidesBottomBarWhenPushed = true;
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

#Preview{
    HomeViewController()
}
