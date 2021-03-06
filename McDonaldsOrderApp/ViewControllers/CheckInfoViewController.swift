//
//  CheckInfoViewController.swift
//  TableReservationApp
//
//  Created by Bohdan on 20.03.2022.
//

import UIKit

class CheckInfoViewController: UIViewController {
    
    //MARK: -Properties
    let personName = "Steve"
    
    static var price = 0
    static var time = 0
    
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
        $0.text = "What kind of ???? do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())
    
    let potatoLabel: UILabel = {
        $0.text = "What size of ???? do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())
    
    let drinkLabel: UILabel = {
        $0.text = "What size of ???? do you want?"
        $0.textColor = .darkGray
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica", size: 25)
        return $0
    }(UILabel())
    
    let beefLabel: UILabel = {
        $0.text = "????"
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
        $0.text = "????"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let fishTextLabel: UILabel = {
        $0.text = "FISH"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let fishLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(50)
        return $0
    }(UILabel())
    
    let smallPotatoLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(20)
        return $0
    }(UILabel())
    
    let smallPotatoTextLabel: UILabel = {
        $0.text = "SMALL"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let mediumPotatoLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(30)
        return $0
    }(UILabel())
    
    let mediumPotatoTextLabel: UILabel = {
        $0.text = "MEDIUM"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let largePotatoLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(40)
        return $0
    }(UILabel())
    
    let largePotatoTextLabel: UILabel = {
        $0.text = "LARGE"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let smallDrinkLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(30)
        return $0
    }(UILabel())
    
    let smallDrinkTextLabel: UILabel = {
        $0.text = "SMALL"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let mediumDrinkLabel: UILabel = {
        $0.text = "????"
        $0.font = $0.font.withSize(40)
        return $0
    }(UILabel())
    
    let mediumDrinkTextLabel: UILabel = {
        $0.text = "MEDIUM"
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let largeDrinkLabel: UILabel = {
        $0.text = "????"
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
        $0.addTarget(self, action: #selector(addBeef(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let chickenSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addChicken(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let fishSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addFish(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let smallPotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addSmallPotato(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let mediumPotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addMediumPotato(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let largePotatoSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addLargePotato(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let smallDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addSmallDrink(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let mediumDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addMediumDrink(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    let largeDrinkSwitch: UISwitch = {
        $0.onTintColor = .systemOrange
        $0.addTarget(self, action: #selector(addLargeDrink(sender:)), for: .valueChanged)
        return $0
    }(UISwitch())
    
    //MARK: -View Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        title = "Hello, \(personName)"
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemOrange]
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Order", style: .done, target: self, action: #selector(createOrder))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Exit", style: .done, target: self, action: #selector(exitButton))
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
    static func clearData() {
        CheckInfoViewController.price = 0
        CheckInfoViewController.time = 0
        OrderViewController.burgerLabel.text = ""
        OrderViewController.potatoLabel.text = ""
        OrderViewController.drinkLabel.text = ""
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let creatingOrder = UIAlertAction(title: "Yes", style: .default) { _ in
            let viewController = OrderViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.navigationBar.prefersLargeTitles = true
            navigationController.modalPresentationStyle = .fullScreen
            self.present(navigationController, animated: true)
            
        }
        let quit = UIAlertAction(title: "No", style: .destructive)
        alertController.addAction(creatingOrder)
        alertController.addAction(quit)
        self.present(alertController, animated: true)
    }
    
    func emptyAlert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    @objc private func exitButton() {
        CheckInfoViewController.clearData()
        let viewController = LoginViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
    }
    
    @objc private func createOrder() {
        if CheckInfoViewController.price == 0 && CheckInfoViewController.time == 0 {
            emptyAlert(title: "Error", message: "The order is empty", style: .alert)
        } else {
            alert(title: "Your order", message: "Order amount is $\(CheckInfoViewController.price). The approximate waiting time is \(CheckInfoViewController.time) minutes", style: .alert)
        }
    }
    
    @objc private func addBeef(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.burgerLabel.text = "Beef burger"
            OrderViewController.burgerLabel.isHidden = false
            CheckInfoViewController.price += 10
            CheckInfoViewController.time += 8
            fishSwitch.isOn = false
            fishSwitch.isEnabled = false
            chickenSwitch.isOn = false
            chickenSwitch.isEnabled = false
        } else {
            OrderViewController.burgerLabel.text = ""
            OrderViewController.burgerLabel.isHidden = true
            CheckInfoViewController.price -= 10
            CheckInfoViewController.time -= 8
            fishSwitch.isEnabled = true
            chickenSwitch.isEnabled = true
        }
    }
    
    @objc private func addChicken(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.burgerLabel.text = "Chicken burger"
            OrderViewController.burgerLabel.isHidden = false
            CheckInfoViewController.price += 6
            CheckInfoViewController.time += 5
            fishSwitch.isOn = false
            fishSwitch.isEnabled = false
            beefSwitch.isOn = false
            beefSwitch.isEnabled = false
        } else {
            OrderViewController.burgerLabel.text = ""
            OrderViewController.burgerLabel.isHidden = true
            CheckInfoViewController.price -= 6
            CheckInfoViewController.time -= 5
            fishSwitch.isEnabled = true
            beefSwitch.isEnabled = true
        }
    }
    
    @objc private func addFish(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.burgerLabel.text = "Fish burger"
            OrderViewController.burgerLabel.isHidden = false
            CheckInfoViewController.price += 8
            CheckInfoViewController.time += 6
            beefSwitch.isOn = false
            beefSwitch.isEnabled = false
            chickenSwitch.isOn = false
            chickenSwitch.isEnabled = false
        } else {
            OrderViewController.burgerLabel.text = ""
            OrderViewController.burgerLabel.isHidden = true
            CheckInfoViewController.price -= 8
            CheckInfoViewController.time -= 6
            beefSwitch.isEnabled = true
            chickenSwitch.isEnabled = true
        }
    }
    
    @objc private func addSmallPotato(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.potatoLabel.text = "Small potato"
            OrderViewController.potatoLabel.isHidden = false
            CheckInfoViewController.price += 1
            CheckInfoViewController.time += 1
            mediumPotatoSwitch.isOn = false
            mediumPotatoSwitch.isEnabled = false
            largePotatoSwitch.isOn = false
            largePotatoSwitch.isEnabled = false
        } else {
            OrderViewController.potatoLabel.text = ""
            OrderViewController.potatoLabel.isHidden = true
            CheckInfoViewController.price -= 1
            CheckInfoViewController.time -= 1
            mediumPotatoSwitch.isEnabled = true
            largePotatoSwitch.isEnabled = true
        }
    }
    
    @objc private func addMediumPotato(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.potatoLabel.text = "Medium potato"
            OrderViewController.potatoLabel.isHidden = false
            CheckInfoViewController.price += 2
            CheckInfoViewController.time += 1
            smallPotatoSwitch.isOn = false
            smallPotatoSwitch.isEnabled = false
            largePotatoSwitch.isOn = false
            largePotatoSwitch.isEnabled = false
        } else {
            OrderViewController.potatoLabel.text = ""
            OrderViewController.potatoLabel.isHidden = true
            CheckInfoViewController.price -= 2
            CheckInfoViewController.time -= 1
            smallPotatoSwitch.isEnabled = true
            largePotatoSwitch.isEnabled = true
        }
    }
    
    @objc private func addLargePotato(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.potatoLabel.text = "Large potato"
            OrderViewController.potatoLabel.isHidden = false
            CheckInfoViewController.price += 3
            CheckInfoViewController.time += 1
            smallPotatoSwitch.isOn = false
            smallPotatoSwitch.isEnabled = false
            mediumPotatoSwitch.isOn = false
            mediumPotatoSwitch.isEnabled = false
        } else {
            OrderViewController.potatoLabel.text = ""
            OrderViewController.potatoLabel.isHidden = true
            CheckInfoViewController.price -= 3
            CheckInfoViewController.time -= 1
            smallPotatoSwitch.isEnabled = true
            mediumPotatoSwitch.isEnabled = true
        }
    }
    
    @objc private func addSmallDrink(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.drinkLabel.text = "Small drink"
            OrderViewController.drinkLabel.isHidden = false
            CheckInfoViewController.price += 1
            CheckInfoViewController.time += 1
            mediumDrinkSwitch.isOn = false
            mediumDrinkSwitch.isEnabled = false
            largeDrinkSwitch.isOn = false
            largeDrinkSwitch.isEnabled = false
        } else {
            OrderViewController.drinkLabel.text = ""
            OrderViewController.drinkLabel.isHidden = true
            CheckInfoViewController.price -= 1
            CheckInfoViewController.time -= 1
            mediumDrinkSwitch.isEnabled = true
            largeDrinkSwitch.isEnabled = true
        }
    }
    
    @objc private func addMediumDrink(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.drinkLabel.text = "Medium drink"
            OrderViewController.drinkLabel.isHidden = false
            CheckInfoViewController.price += 2
            CheckInfoViewController.time += 1
            smallDrinkSwitch.isOn = false
            smallDrinkSwitch.isEnabled = false
            largeDrinkSwitch.isOn = false
            largeDrinkSwitch.isEnabled = false
        } else {
            OrderViewController.drinkLabel.text = ""
            OrderViewController.drinkLabel.isHidden = true
            CheckInfoViewController.price -= 2
            CheckInfoViewController.time -= 1
            smallDrinkSwitch.isEnabled = true
            largeDrinkSwitch.isEnabled = true
        }
    }
    
    @objc private func addLargeDrink(sender: UISwitch) {
        if sender.isOn {
            OrderViewController.drinkLabel.text = "Large drink"
            OrderViewController.drinkLabel.isHidden = false
            CheckInfoViewController.price += 3
            CheckInfoViewController.time += 1
            smallDrinkSwitch.isOn = false
            smallDrinkSwitch.isEnabled = false
            mediumDrinkSwitch.isOn = false
            mediumDrinkSwitch.isEnabled = false
        } else {
            OrderViewController.drinkLabel.text = ""
            OrderViewController.drinkLabel.isHidden = true
            CheckInfoViewController.price -= 3
            CheckInfoViewController.time -= 1
            smallDrinkSwitch.isEnabled = true
            mediumDrinkSwitch.isEnabled = true
        }
    }
    
    //MARK: -AutoLayout
    func mainVerticalStackViewLayout() {
        mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}


