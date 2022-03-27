//
//  LoginViewController.swift
//  TableReservationApp
//
//  Created by Bohdan on 20.03.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: -Properties
    let login = "Login"
    let password = "Password"
    
    //MARK: -UI
    let loginStackView: UIStackView = {
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.alignment = .fill
        $0.spacing = -5
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIStackView())
    
    let loginTextField: UITextField = {
        $0.placeholder = "Enter your login"
        $0.textAlignment = .left
        $0.borderStyle = UITextField.BorderStyle.roundedRect
        $0.keyboardType = .default
        $0.returnKeyType = .next
        $0.clearButtonMode = .whileEditing
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextField())
    
    let passwordTextField: UITextField = {
        $0.placeholder = "Enter your password"
        $0.textAlignment = .left
        $0.borderStyle = UITextField.BorderStyle.roundedRect
        $0.keyboardType = .default
        $0.returnKeyType = .continue
        $0.returnKeyType = .done
        $0.isSecureTextEntry.toggle()
        $0.rightViewMode = .always
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextField())
    
    let signInLabel: UILabel = {
        $0.text = "Sign in"
        $0.textColor = .systemOrange
        $0.textAlignment = .center
        $0.font = UIFont(name: "Helvetica Bold", size: 30)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())
    
    let loginLabel: UILabel = {
        $0.text = "Login"
        $0.textColor = .darkGray
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let passwordLabel: UILabel = {
        $0.text = "Password"
        $0.textColor = .darkGray
        $0.font = UIFont(name: "Helvetica", size: 16)
        return $0
    }(UILabel())
    
    let rightButton: UIButton = {
        $0.setImage(UIImage(systemName: "eye"), for: .normal)
        $0.tintColor = .systemOrange
        $0.addTarget(self, action: #selector(toggleShowHide(button:)), for: .touchUpInside)
        return $0
    }(UIButton())
    
    let loginButton: UIButton = {
        $0.setTitle("Login", for: .normal)
        $0.setTitleColor(.systemGray2, for: .highlighted)
        $0.titleLabel?.font = UIFont(name: "Helvetica", size: 25)
        $0.backgroundColor = .systemOrange
        $0.layer.cornerRadius = 5
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector(checkLogin(sender:)), for: .touchUpInside)
        return $0
    }(UIButton())
    
    //MARK: -View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginTextField.delegate = self
        self.passwordTextField.delegate = self
        self.passwordTextField.rightView = rightButton
        self.view.addSubview(loginStackView)
        self.loginStackView.addArrangedSubview(signInLabel)
        self.loginStackView.addArrangedSubview(loginLabel)
        self.loginStackView.addArrangedSubview(loginTextField)
        self.loginStackView.addArrangedSubview(passwordLabel)
        self.loginStackView.addArrangedSubview(passwordTextField)
        self.loginStackView.addArrangedSubview(loginButton)
        self.loginStackView.setCustomSpacing(25, after: signInLabel)
        self.loginStackView.setCustomSpacing(25, after: passwordTextField)
        self.view.backgroundColor = .systemGray6
        loginStackViewLayout()
    }
    
    //MARK: -Methods
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alertController.addAction(action)
        self.present(alertController, animated: true)
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        self.switchBasedNextTextField(textField)
        return true
    }
    
    private func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
        case self.loginTextField:
            self.passwordTextField.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
    }
    
    @objc func toggleShowHide(button: UIButton) {
        passwordTextField.isSecureTextEntry.toggle()
        if passwordTextField.isSecureTextEntry {
            rightButton.setImage(UIImage(systemName: "eye"), for: .normal)
            rightButton.tintColor = .systemOrange
        } else {
            rightButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            rightButton.tintColor = .systemGray
        }
    }
    
    @objc private func checkLogin(sender: UIButton) {
                if loginTextField.text == login && passwordTextField.text == password {
        let viewController = CheckInfoViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true)
                } else {
                    alert(title: "Login failed", message: "You entered the wrong username or password. Try again", style: .alert)
                }
    }
    
    //MARK: -AutoLayout
    private func loginStackViewLayout() {
        loginStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}
