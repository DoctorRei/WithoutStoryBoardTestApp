//
//  SeccondVC.swift
//  WithoutStoryBoardTestApp
//
//  Created by Акира on 09.11.2023.
//

import Foundation
import UIKit

class seccondVC: UIViewController {
    
    private let greetingsLabel = UILabel()
    private let backButton = UIButton(configuration: .filled())
    private let opinionTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(greetingsLabel)
        view.addSubview(backButton)
        view.addSubview(opinionTextField)
        
        greetingsLabel.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        opinionTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            greetingsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            greetingsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            greetingsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            backButton.topAnchor.constraint(equalTo: greetingsLabel.topAnchor, constant: 200),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            backButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150),
            
            opinionTextField.topAnchor.constraint(equalTo: backButton.topAnchor, constant: 200),
            opinionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            opinionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150)
        ])
        
        greetingsLabel.textAlignment = .center
        
        opinionTextField.textAlignment = .center
        
        backButton.setTitle("Back", for: .normal)
        backButton.addTarget(self, action: #selector(backToVC), for: .touchUpInside)
        
        view.backgroundColor = .systemPink
        
    }
    
    func configure(text: String) {
        greetingsLabel.text = text
    }
    
    @objc func backToVC() {
        dismiss(animated: true)
    }
    
}
