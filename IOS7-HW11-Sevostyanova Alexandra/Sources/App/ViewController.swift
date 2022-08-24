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
    
    
 //MARK: - Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints =  false
    }
    

 // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
    }

    private func setupLayout() {
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 120).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -80).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        
        label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: 30).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
// MARK: - Actions
    
}

