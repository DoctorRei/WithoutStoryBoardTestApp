//
//  ViewController.swift
//  WithoutStoryBoardTestApp
//
//  Created by Акира on 09.11.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    let helloLabel = UILabel()
    let loginTextField = UITextField()
    let enterButton = UIButton(configuration: .filled())
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(helloLabel)
        view.addSubview(loginTextField)
        view.addSubview(enterButton)
        
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            loginTextField.topAnchor.constraint(equalTo: helloLabel.topAnchor, constant: 50),
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            enterButton.topAnchor.constraint(equalTo: loginTextField.topAnchor, constant: 50),
            enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            enterButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
        ])
        
        helloLabel.text = "Welcome, body"
        helloLabel.textAlignment = .center
        
        loginTextField.placeholder = "Enter your name"
        loginTextField.textAlignment = .center
        loginTextField.delegate = self
        
        enterButton.setTitle("Push", for: .normal)
        enterButton.addTarget(self, action: #selector(goToSVC), for: .touchUpInside)
        
        view.backgroundColor = .gray
        
    }
    
    @objc func goToSVC() {
        let seccondVC = seccondVC()
        seccondVC.configure(text: loginTextField.text ?? "")
        seccondVC.modalPresentationStyle = .fullScreen
        present(seccondVC, animated: true)
    }

}

extension LoginViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        helloLabel.text = " Welcome, \(textField.text ?? "")"
        
        return true
    }
}
