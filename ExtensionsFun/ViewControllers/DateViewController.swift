//
//  DateViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class DateViewController: UIViewController {
    
    lazy var datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.datePickerMode = .date
        picker.addTarget(self, action: #selector(dateChanged(_:)), for: .valueChanged)
        return picker
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
        navigationItem.title = "Extensions Fun | Date"
        view.backgroundColor = .white
        
        view.addSubview(datePicker)
        view.addSubview(label)
        
        datePicker.edgesToSuperview(excluding: .bottom, insets: .top(12) + .left(12) + .right(12), usingSafeArea: true)
        datePicker.height(72)
        
        label.centerXToSuperview()
        label.topToBottom(of: datePicker, offset: 12)
    }
    
    @objc fileprivate func dateChanged(_ sender: UIDatePicker) {
        let date = sender.date
        label.text = date.asString()
    }
    
}

