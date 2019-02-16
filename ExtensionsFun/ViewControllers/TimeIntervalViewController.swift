//
//  TimeIntervalViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class TimeIntervalViewController: UIViewController {
    
    lazy var textField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .roundedRect
        tf.placeholder = "Type in your TimeInterval..."
        tf.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return tf
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        navigationItem.title = "Extensions Fun | TimeInterval"
        view.backgroundColor = .white
        
        view.addSubview(textField)
        view.addSubview(label)
        
        textField.edgesToSuperview(excluding: .bottom, insets: .top(12) + .left(12) + .right(12), usingSafeArea: true)
        textField.height(36)
        
        label.centerXToSuperview()
        label.topToBottom(of: textField, offset: 12)
    }
    
    @objc fileprivate func handleTextChange() {
        guard let text = textField.text else { return }
        guard let duration = TimeInterval(text) else { return }
        label.text = duration.asTimeString()
    }
    
}

