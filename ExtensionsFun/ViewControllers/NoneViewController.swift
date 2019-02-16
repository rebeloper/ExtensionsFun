//
//  NoneViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 15/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class NoneViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Nothing to see here..."
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    fileprivate func setupViews() {
        navigationItem.title = "Extensions Fun | None"
        view.backgroundColor = .white
        
        view.addSubview(label)
        label.centerInSuperview()
    }

}

