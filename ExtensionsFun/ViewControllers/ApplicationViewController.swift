//
//  ApplicationViewController.swift
//  TestingExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class ApplicationViewController: UIViewController {
    
    lazy var applicationCustomView: ApplicationCustomView = {
        let view = ApplicationCustomView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        navigationItem.title = "Extensions Fun | Application"
        view.backgroundColor = .white
        
        view.addSubview(applicationCustomView)
        
        applicationCustomView.edgesToSuperview(excluding: .bottom, usingSafeArea: true)
        applicationCustomView.height(40)
    }
    
}

