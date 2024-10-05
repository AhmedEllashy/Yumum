//
//  ProductDetailsViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 05/10/2024.
//

import UIKit
import SwiftUI

class ProductDetailsViewController: UIViewController {
    let vc = UIHostingController(rootView: ProductDetailsView())

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(vc)
        view.addSubview(vc.view)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        vc.view.frame = view.bounds
        vc.didMove(toParent: self)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    }

}
