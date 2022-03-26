//
//  CheckInfoViewController.swift
//  TableReservationApp
//
//  Created by Bohdan on 20.03.2022.
//

import UIKit

class CheckInfoViewController: UIViewController {
    
    let personName = "Steve"
    
    //MARK: -UI
    let mainStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .fill
        $0.spacing = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let meatVerticalStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .fill
        $0.spacing = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let meatHorizontalStackView: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let beefStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .center
        $0.spacing = 5
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let chickenStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .center
        $0.spacing = 5
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let fishStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .center
        $0.spacing = 5
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let potatoVerticalStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .fill
        $0.spacing = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let potatoHorizontalStackView: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let smallPotatoStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 10
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let mediumPotatoStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 10
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let largePotatoStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 10
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let drinkVerticalStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillProportionally
        $0.alignment = .fill
        $0.spacing = 20
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let drinkHorizontalStackView: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = 0
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let smallDrinkStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 15
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let mediumDrinkStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 15
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let largeDrinkStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .center
        $0.spacing = 15
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())

    let burgerLabel: UILabel = {
        $0.text = "What kind of 🥩 do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())

    let potatoLabel: UILabel = {
        $0.text = "What size of 🍟 do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())
    
    let drinkLabel: UILabel = {
        $0.text = "What size of 🥤 do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())
    
    let beefLabel: UILabel = {
        $0.text = "🐄"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let beefTextLabel: UILabel = {
        $0.text = "BEEF"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let chickenTextLabel: UILabel = {
        $0.text = "CHICKEN"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let chickenLabel: UILabel = {
        $0.text = "🐓"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let fishTextLabel: UILabel = {
        $0.text = "FISH"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let fishLabel: UILabel = {
        $0.text = "🐟"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let smallPotatoLabel: UILabel = {
        $0.text = "🍟"
        $0.font = $0.font.withSize(20)
        return $0
    }(UILabel())
    
    let smallPotatoTextLabel: UILabel = {
        $0.text = "SMALL"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let mediumPotatoLabel: UILabel = {
        $0.text = "🍟"
        $0.font = $0.font.withSize(30)
        return $0
    }(UILabel())
    
    let mediumPotatoTextLabel: UILabel = {
        $0.text = "MEDIUM"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let largePotatoLabel: UILabel = {
        $0.text = "🍟"
        $0.font = $0.font.withSize(40)
        return $0
    }(UILabel())
    
    let largePotatoTextLabel: UILabel = {
        $0.text = "LARGE"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let smallDrinkLabel: UILabel = {
        $0.text = "🥤"
        $0.font = $0.font.withSize(30)
        return $0
    }(UILabel())

    let smallDrinkTextLabel: UILabel = {
        $0.text = "SMALL"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let mediumDrinkLabel: UILabel = {
        $0.text = "🥤"
        $0.font = $0.font.withSize(40)
        return $0
    }(UILabel())
    
    let mediumDrinkTextLabel: UILabel = {
        $0.text = "MEDIUM"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let largeDrinkLabel: UILabel = {
        $0.text = "🥤"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let largeDrinkTextLabel: UILabel = {
        $0.text = "LARGE"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())

    let beefSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let chickenSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let fishSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let smallPotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let mediumPotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let largePotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let smallDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let mediumDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    let largeDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        return $0
    }(UISwitch())
    
    //MARK: -View Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = "Hello, \(personName)"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemOrange]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Order", style: .done, target: self, action: #selector(createOrder))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Exit", style: .done, target: self, action: #selector(dismissButton))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.systemRed
        navigationItem.rightBarButtonItem?.tintColor = UIColor.systemGreen
        self.view.backgroundColor = .systemGray6
        
        self.view.addSubview(mainStackView)
        
        self.mainStackView.addArrangedSubview(meatVerticalStackView)
        self.mainStackView.addArrangedSubview(potatoVerticalStackView)
        self.mainStackView.addArrangedSubview(drinkVerticalStackView)

        self.meatVerticalStackView.addArrangedSubview(burgerLabel)
        self.meatVerticalStackView.addArrangedSubview(meatHorizontalStackView)
        
        self.meatHorizontalStackView.addArrangedSubview(beefStackView)
        self.meatHorizontalStackView.addArrangedSubview(chickenStackView)
        self.meatHorizontalStackView.addArrangedSubview(fishStackView)
        
        self.beefStackView.addArrangedSubview(beefTextLabel)
        self.beefStackView.addArrangedSubview(beefLabel)
        self.beefStackView.addArrangedSubview(beefSwitch)
        
        self.chickenStackView.addArrangedSubview(chickenTextLabel)
        self.chickenStackView.addArrangedSubview(chickenLabel)
        self.chickenStackView.addArrangedSubview(chickenSwitch)
        
        self.fishStackView.addArrangedSubview(fishTextLabel)
        self.fishStackView.addArrangedSubview(fishLabel)
        self.fishStackView.addArrangedSubview(fishSwitch)
        
        self.potatoVerticalStackView.addArrangedSubview(potatoLabel)
        self.potatoVerticalStackView.addArrangedSubview(potatoHorizontalStackView)
        
        self.potatoHorizontalStackView.addArrangedSubview(smallPotatoStackView)
        self.smallPotatoStackView.addArrangedSubview(smallPotatoTextLabel)
        self.smallPotatoStackView.addArrangedSubview(smallPotatoLabel)
        self.smallPotatoStackView.addArrangedSubview(smallPotatoSwitch)
        
        self.potatoHorizontalStackView.addArrangedSubview(mediumPotatoStackView)
        self.mediumPotatoStackView.addArrangedSubview(mediumPotatoTextLabel)
        self.mediumPotatoStackView.addArrangedSubview(mediumPotatoLabel)
        self.mediumPotatoStackView.addArrangedSubview(mediumPotatoSwitch)
        
        self.potatoHorizontalStackView.addArrangedSubview(largePotatoStackView)
        self.largePotatoStackView.addArrangedSubview(largePotatoTextLabel)
        self.largePotatoStackView.addArrangedSubview(largePotatoLabel)
        self.largePotatoStackView.addArrangedSubview(largePotatoSwitch)
        
        self.drinkVerticalStackView.addArrangedSubview(drinkLabel)
        self.drinkVerticalStackView.addArrangedSubview(drinkHorizontalStackView)
        
        self.drinkHorizontalStackView.addArrangedSubview(smallDrinkStackView)
        self.smallDrinkStackView.addArrangedSubview(smallDrinkTextLabel)
        self.smallDrinkStackView.addArrangedSubview(smallDrinkLabel)
        self.smallDrinkStackView.addArrangedSubview(smallDrinkSwitch)
        
        self.drinkHorizontalStackView.addArrangedSubview(mediumDrinkStackView)
        self.mediumDrinkStackView.addArrangedSubview(mediumDrinkTextLabel)
        self.mediumDrinkStackView.addArrangedSubview(mediumDrinkLabel)
        self.mediumDrinkStackView.addArrangedSubview(mediumDrinkSwitch)
        
        self.drinkHorizontalStackView.addArrangedSubview(largeDrinkStackView)
        self.largeDrinkStackView.addArrangedSubview(largeDrinkTextLabel)
        self.largeDrinkStackView.addArrangedSubview(largeDrinkLabel)
        self.largeDrinkStackView.addArrangedSubview(largeDrinkSwitch)
        
        mainVerticalStackViewLayout()
    }
    //MARK: -Methods
    @objc private func dismissButton() {
        dismiss(animated: true)
    }
    
    @objc private func createOrder() {

    }
    
    //MARK: -AutoLayout
    func mainVerticalStackViewLayout() {
        mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}


