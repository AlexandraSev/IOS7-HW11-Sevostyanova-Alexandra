//
//  ViewController.swift
//  IOS7-HW11-Sevostyanova Alexandra
//
//  Created by Александра  Севостьянова on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "background picture")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.6
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textColor = .white
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        textField.textColor = .systemGray
        textField.textAlignment = .center
        textField.placeholder = "Your email"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.returnKeyType = .next
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        textField.textColor = .systemGray
        textField.textAlignment = .center
        textField.placeholder = "Your password"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.returnKeyType = .continue
        textField.isSecureTextEntry = true
        return textField
    }()
    
 //MARK: - Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints =  false
        textFieldLogin.translatesAutoresizingMaskIntoConstraints = false
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
    }
    

 // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 120),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -80),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
        
        label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 30),
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        textFieldLogin.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 95),
        textFieldLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        textFieldLogin.widthAnchor.constraint(equalToConstant: 200),
        
        
        textFieldPassword.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 135),
            textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldPassword.widthAnchor.constraint(equalToConstant: 200)
        
     ])
    }
    
    
// MARK: - Actions
    
}

