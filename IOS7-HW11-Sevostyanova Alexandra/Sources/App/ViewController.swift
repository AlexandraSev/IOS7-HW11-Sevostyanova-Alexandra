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
        return imageView
    }()
    
    
    
 //MARK: - Lifestyle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
    

 // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(imageView)
    }

    private func setupLayout() {
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -100).isActive = true
        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
    }
    
    
// MARK: - Actions
    
}

