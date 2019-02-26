//
//  Ocean.swift
//  TinderApp
//
//  Created by admin on 26/02/19.
//  Copyright © 2019 AcknoTech. All rights reserved.
//

import UIKit

class Ocean:UIViewController{
    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
    
    lazy var image:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setup(){
        view.addSubview(image)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: view.topAnchor),
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        image.image = UIImage(named: "Ocean")
        
    }
    
   
}
