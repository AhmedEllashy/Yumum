//
//  MockViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 01/10/2024.
//

import UIKit

class MockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = MainTabBarViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc,animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
