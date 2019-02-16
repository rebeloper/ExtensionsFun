//
//  PushedFromLeftNavigationViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class PushedFromLeftNavigationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupNavigation()
    }
    
    lazy var popToLeftBarButtonItem = UIBarButtonItem(title: "Pop to left", style: .done, target: self, action: #selector(popToLeftBarButtonItemTapped))
    
    fileprivate func setupNavigation() {
        navigationItem.hidesBackButton = true
        navigationItem.setRightBarButton(popToLeftBarButtonItem, animated: false)
    }
    
    @objc fileprivate func popToLeftBarButtonItemTapped() {
        navigationController?.popViewControllerToLeft()
    }
    
}
