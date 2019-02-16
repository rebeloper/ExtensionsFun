//
//  DictionaryViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class DictionaryViewController: UIViewController {
    
    var dict1 = ["userId": "1"]
    var dict2 = ["userName": "Alex"]
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Update Dictionary", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = dict1.description
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        navigationItem.title = "Extensions Fun | Dictionary"
        view.backgroundColor = .white
        
        view.addSubview(button)
        view.addSubview(label)
        
        button.edgesToSuperview(excluding: .bottom, insets: .top(12) + .left(12) + .right(12), usingSafeArea: true)
        button.height(36)
        
        label.centerXToSuperview()
        label.topToBottom(of: button, offset: 12)
    }
    
    @objc fileprivate func handleButtonTapped() {
        
    }
    
}


