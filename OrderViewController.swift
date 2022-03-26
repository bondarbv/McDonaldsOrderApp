//
//  OrderViewController.swift
//  McDonaldsOrderApp
//
//  Created by Bohdan on 27.03.2022.
//

import UIKit

class OrderViewController: UIViewController {
    
    let stackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 30
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let numberOfOrderLabel: UILabel = {
        $0.text = "\(Int.random(in: 0...10))"
        $0.textColor = .systemOrange
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica Bold", size: 75)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let detailsLabel: UILabel = {
        $0.text = "The approximate waiting time is \(CheckInfoViewController.time). \n Please have $\(CheckInfoViewController.price) ready in advance"
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
    
    let button: UIButton = {
        $0.setTitle("Pay by card", for: .normal)
        $0.titleLabel?.font = UIFont(name: "Helvetica", size: 35)
        $0.backgroundColor = .systemOrange
        $0.layer.cornerRadius = 5
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your number in line"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        self.view.addSubview(stackView)
        self.stackView.addArrangedSubview(numberOfOrderLabel)
        self.stackView.addArrangedSubview(detailsLabel)
        self.stackView.addArrangedSubview(orderLabel)
        self.stackView.addArrangedSubview(button)
        self.stackView.setCustomSpacing(100, after: detailsLabel)
        
        self.view.backgroundColor = .systemGray6
        stackViewLayout()
    }
    
    func stackViewLayout() {
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
