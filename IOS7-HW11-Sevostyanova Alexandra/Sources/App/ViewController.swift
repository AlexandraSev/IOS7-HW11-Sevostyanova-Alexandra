//
//  ViewController.swift
//  IOS7-HW11-Sevostyanova Alexandra
//
//  Created by Александра  Севостьянова on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Background picture
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "background picture")
        let imageView = UIImageView(image: image)
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

