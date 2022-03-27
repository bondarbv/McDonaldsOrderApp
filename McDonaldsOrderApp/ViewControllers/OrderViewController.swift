//
//  OrderViewController.swift
//  McDonaldsOrderApp
//
//  Created by Bohdan on 27.03.2022.
//

import UIKit

class OrderViewController: UIViewController {
    
    //MARK: -UI
    let stackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let orderListStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 10
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let numberOfOrderLabel: UILabel = {
        $0.text = "\(Int.random(in: 1...10))"
        $0.textColor = .systemOrange
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica Bold", size: 75)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let detailsLabel: UILabel = {
        $0.text = "The approximate waiting time is \(CheckInfoViewController.time) minutes \n Please have $\(CheckInfoViewController.price) ready in advance"
        $0.textAlignment = .center
        $0.numberOfLines = 0
        $0.textColor = .darkGray
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let orderLabel: UILabel = {
        $0.text = "Your order"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 35)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    static let burgerLabel: UILabel = {
        $0.text = ""
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 16)
        $0.isHidden = true
        return $0
    }(UILabel())
    
    static let potatoLabel: UILabel = {
        $0.text = ""
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 16)
        $0.isHidden = true
        return $0
    }(UILabel())
    
    static let drinkLabel: UILabel = {
        $0.text = ""
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 16)
        $0.isHidden = true
        return $0
    }(UILabel())
    
    let button: UIButton = {
        $0.setTitle("Apple Pay", for: .normal)
        $0.titleLabel?.font = UIFont(name: "Helvetica", size: 35)
        $0.backgroundColor = .systemOrange
        $0.layer.cornerRadius = 5
        $0.addTarget(self, action: #selector(applePay), for: .touchUpInside)
        return $0
    }(UIButton())
    
    let cancelButton: UIButton = {
        $0.setTitle("Cancel", for: .normal)
        $0.setTitleColor(.systemRed, for: .normal)
        $0.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        $0.addTarget(self, action: #selector(cancelOrder), for: .touchUpInside)
        return $0
    }(UIButton())
    
    //MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your number in line"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        self.view.addSubview(stackView)
        self.stackView.addArrangedSubview(numberOfOrderLabel)
        self.stackView.addArrangedSubview(detailsLabel)
        self.stackView.addArrangedSubview(orderLabel)
        self.stackView.addArrangedSubview(orderListStackView)
        self.orderListStackView.addArrangedSubview(OrderViewController.burgerLabel)
        self.orderListStackView.addArrangedSubview(OrderViewController.potatoLabel)
        self.orderListStackView.addArrangedSubview(OrderViewController.drinkLabel)
        self.stackView.addArrangedSubview(button)
        self.stackView.addArrangedSubview(cancelButton)
        self.stackView.setCustomSpacing(10, after: numberOfOrderLabel)
        self.stackView.setCustomSpacing(5, after: orderLabel)
        self.stackView.setCustomSpacing(0, after: button)
        self.view.backgroundColor = .systemGray6
        stackViewLayout()
    }
    
    //MARK: -Methods
    @objc private func applePay() {
        alert(title: "Payment", message: "Your card will be charged $\(CheckInfoViewController.price)", style: .actionSheet)
    }
    
    @objc private func cancelOrder() {
        CheckInfoViewController.clearData()
        let viewController = CheckInfoViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let pay = UIAlertAction(title: "OK", style: .default) { [self] _ in
            self.button.setTitle("Order paid", for: .normal)
            self.button.backgroundColor = .systemGreen
            self.detailsLabel.text = "The approximate waiting time is \(CheckInfoViewController.time) minutes"
        }
        let cancel = UIAlertAction(title: "Cancel", style: .destructive)
        alertController.addAction(pay)
        alertController.addAction(cancel)
        self.present(alertController, animated: true)
    }
    
    //MARK: -Layout
    func stackViewLayout() {
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
