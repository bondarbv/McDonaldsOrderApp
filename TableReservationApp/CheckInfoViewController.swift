//
//  CheckInfoViewController.swift
//  TableReservationApp
//
//  Created by Bohdan on 20.03.2022.
//

import UIKit

class CheckInfoViewController: UIViewController {
    
    //MARK: -UI
    let mainStackView: UIStackView = {
        $0.axis = .vertical
        
        return $0
    }(UIStackView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your order"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Exit", style: .done, target: self, action: #selector(dismissButton))
        self.navigationItem.rightBarButtonItem?.tintColor = .systemOrange
        self.view.backgroundColor = .systemGray6
    }
    
    @objc private func dismissButton() {
        dismiss(animated: true)
    }
}
