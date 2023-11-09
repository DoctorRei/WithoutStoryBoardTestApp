//
//  ViewController.swift
//  WithoutStoryBoardTestApp
//
//  Created by Акира on 09.11.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    let helloLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(helloLabel)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50)
        ])
        
        helloLabel.text = "Welcome, body"
        helloLabel.textAlignment = .center
        
        view.backgroundColor = .gray
        
    }


}

