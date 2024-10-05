//
//  OnboardingViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 22/09/2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    //MARK: - Properties
    var currentIndex: Int = 0
    
    //MARK: - UIViews
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    //MARK: - IBActions
    
    @IBAction func nextButtonPressed(_ sender: UIButton){
        if currentIndex < 2{
            currentIndex += 1
            let indexPath = IndexPath(row: currentIndex, section: 0)
            UIView.animate(withDuration: 0.2,delay: 0.2, options: .transitionCurlDown) {
                self.collectionView.scrollToItem(at: indexPath, at: .right, animated: false)
            }
        }else{
           currentIndex = 0
            let indexPath = IndexPath(row: currentIndex, section: 0)
            UIView.animate(withDuration: 0.1) {
                self.collectionView.scrollToItem(at: indexPath, at: .right, animated: false)
            }        }
        
    }
    
    
    //MARK: - Helpers
    private func setup(){
        configCollectionView()
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = UIColor(named: "Orange")?.cgColor
        loginButton.layer.cornerRadius = 8
 
    }
    private func configCollectionView(){
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(OnboardingCollectionViewCell.nib(), forCellWithReuseIdentifier: OnboardingCollectionViewCell.identifier)
    }
}

extension OnboardingViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as? OnboardingCollectionViewCell else{
            return UICollectionViewCell()
        }
        return cell
    }
    
}

extension OnboardingViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}

