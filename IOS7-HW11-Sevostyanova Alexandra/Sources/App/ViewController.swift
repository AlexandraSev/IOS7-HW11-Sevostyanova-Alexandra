//
//  ViewController.swift
//  IOS7-HW11-Sevostyanova Alexandra
//
//  Created by Александра  Севостьянова on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    
    // MARK: - Background Image
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "background picture")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.6
        return imageView
    }()
    
    // MARK: - Label Login
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        label.textColor = .white
        return label
    }()
    
    // MARK: - TextField Login and Password
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        textField.textColor = .systemGray
        textField.textAlignment = .left
        textField.placeholder = "Your email"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.returnKeyType = .next
        textField.keyboardType = .emailAddress
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        textField.layer.shadowOpacity = 0.3
        textField.layer.masksToBounds = false
        textField.layer.rasterizationScale = UIScreen.main.scale
        textField.setLeftIcon(UIImage(named: "login")!)
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        textField.textColor = .systemGray
        textField.textAlignment = .left
        textField.placeholder = "Your password"
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        textField.layer.shadowRadius = 5
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        textField.layer.shadowOpacity = 0.3
        textField.layer.masksToBounds = false
        textField.layer.rasterizationScale = UIScreen.main.scale
        textField.returnKeyType = .continue
        textField.isSecureTextEntry = true
        textField.setLeftIcon(UIImage(named: "lock")!)
        return textField
        
        
    }()
   
    // MARK: - Button Login
    private lazy var buttonLogin: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .systemPurple
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(ourButtonPressed), for: .touchUpInside)
        button.layer.shadowRadius = 5
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.shadowOpacity = 0.3
            button.layer.masksToBounds = false
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()
    
    // MARK: - Button Forgot password
    private lazy var buttonForgot: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        button.clipsToBounds = false
        button.setTitleColor(.systemPurple, for: .normal)
        button.addTarget(self, action: #selector(ourButtonPressed), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Label "OR Connect with"
    private lazy var labelConnect: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .semibold)
        label.textColor = .systemGray
        
        return label
    }()
    // MARK: - Lines
    private lazy var lineOne: UIView = {
        
        let line = UIView()
        line.backgroundColor = .systemGray
        line.layer.cornerRadius = 3
        line.alpha = 0.5
        return line
    }()
    
    private lazy var lineTwo: UIView = {
        
        let line = UIView()
        line.backgroundColor = .systemGray
        line.layer.cornerRadius = 3
        line.alpha = 0.5
        return line
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
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonForgot.translatesAutoresizingMaskIntoConstraints = false
        labelConnect.translatesAutoresizingMaskIntoConstraints = false
        lineOne.translatesAutoresizingMaskIntoConstraints = false
        lineTwo.translatesAutoresizingMaskIntoConstraints = false
    }
    
   
 // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonLogin)
        view.addSubview(buttonForgot)
        view.addSubview(labelConnect)
        view.addSubview(lineOne)
        view.addSubview(lineTwo)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 120),
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -80),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
        
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 20),
        
        textFieldLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        textFieldLogin.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 85),
        textFieldLogin.widthAnchor.constraint(equalToConstant: 250),
            textFieldLogin.heightAnchor.constraint(equalToConstant: 38),
        
        
        textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        textFieldPassword.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 135),
        textFieldPassword.widthAnchor.constraint(equalToConstant: 250),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 38),
        
          
       buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonLogin.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 340),
    buttonLogin.heightAnchor.constraint(equalToConstant: 38),
    buttonLogin.widthAnchor.constraint(equalToConstant: 250),
            
            buttonForgot.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonForgot.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonForgot.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 380),
            buttonForgot.heightAnchor.constraint(equalToConstant: 38),
            buttonForgot.widthAnchor.constraint(equalToConstant: 250),
            
            labelConnect.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelConnect.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 480),
            
            lineOne.centerXAnchor.constraint(equalTo: labelConnect.centerXAnchor, constant: -90),
            lineOne.centerYAnchor.constraint(equalTo: labelConnect.centerYAnchor, constant: 1.5),
            lineOne.heightAnchor.constraint(equalToConstant: 2),
            lineOne.widthAnchor.constraint(equalToConstant: 70),
            
            lineTwo.centerXAnchor.constraint(equalTo: labelConnect.centerXAnchor, constant: 90),
            lineTwo.centerYAnchor.constraint(equalTo: labelConnect.centerYAnchor, constant: 1.5),
            lineTwo.heightAnchor.constraint(equalToConstant: 2),
            lineTwo.widthAnchor.constraint(equalToConstant: 70)
            
            
            
            
     ])
    }
    
    
// MARK: - Actions
    func getRandomColor() -> UIColor{
        let red: CGFloat = CGFloat(drand48())
        let green: CGFloat = CGFloat(drand48())
        let blue: CGFloat = CGFloat(drand48())
        
        return UIColor( red: red, green: green, blue: blue, alpha: 1.0)
    }
   @objc private func ourButtonPressed() {
       label.textColor = getRandomColor()
    }

}

extension UITextField {
 func setLeftIcon(_ image: UIImage) {
     let iconView = UIImageView(frame: CGRect(x: 200, y: 3, width: 25, height: 25))
     iconView.image = image
     let iconContrainerView: UIView = UIView(frame: CGRect(x: 10, y: 0, width: 30, height: 30))
     iconContrainerView.addSubview(iconView)
   leftView = iconContrainerView
   leftViewMode = .always
}
}

