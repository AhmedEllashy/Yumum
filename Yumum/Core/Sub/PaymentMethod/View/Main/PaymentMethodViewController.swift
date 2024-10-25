//
//  PaymentMethodViewController.swift
//  Yumum
//
//  Created by Ahmad Ellashy on 25/10/2024.
//

import UIKit

class PaymentMethodViewController: UIViewController {
    //MARK: - Properties
    let cells = ["Card 201023****", "my Card", "Add Card","Paypal"]
    let images: [UIImage?] = [
    UIImage(named: "Visa Logo"),
    UIImage(named: "Mastercard Logo"),
    UIImage(systemName: "creditcard.fill"),
    UIImage(named: "PayPal Logo"),
    ]
    //MARK: - UIViews
    @IBOutlet weak var balanceView: UIView!
    
    @IBOutlet weak var methodsTableView: UITableView!
    
    @IBOutlet weak var itemsPriceLabel: UILabel!
    
    @IBOutlet weak var deliverFeesLabel: UILabel!
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBOutlet weak var paymentButtonView: UIView!
    
    @IBOutlet weak var buttonBackgroundPriceView: UIView!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    //MARK: - Helpers
    private func setup(){
        balanceView.addCornerRadius()
        paymentButtonView.addCornerRadius()
        buttonBackgroundPriceView.addCornerRadius()
        configTableView()
    }

    private func configTableView(){
        methodsTableView.dataSource = self
        methodsTableView.delegate = self
        methodsTableView.register(PaymentMethodTableViewCell.nib(), forCellReuseIdentifier: PaymentMethodTableViewCell.identifier)
    }
}
//MARK: - UITableViewDataSource Methods
extension PaymentMethodViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Saved Payemnts"
        }else{
            return "Add Payment Method"
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PaymentMethodTableViewCell.identifier, for: indexPath) as? PaymentMethodTableViewCell else{
            return UITableViewCell()
        }
        cell.config(image: images[indexPath.row])
        return cell
    }

}

extension PaymentMethodViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
