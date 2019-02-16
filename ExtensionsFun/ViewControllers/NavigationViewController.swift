//
//  NavigationViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigation()
    }
    
    lazy var pushFromRightBarButtonItem = UIBarButtonItem(title: "Push From Right", style: .plain, target: self, action: #selector(pushFromRightBarButtonItemTapped))
    
    lazy var pushFromLeftBarButtonItem = UIBarButtonItem(title: "Push From Left", style: .done, target: self, action: #selector(pushFromLeftBarButtonItemTapped))
    
    fileprivate func setupNavigation() {
        navigationItem.title = "Navigation"
        
        navigationItem.setRightBarButton(pushFromRightBarButtonItem, animated: false)
        navigationItem.setLeftBarButton(pushFromLeftBarButtonItem, animated: false)
    }
    
    @objc fileprivate func pushFromRightBarButtonItemTapped() {
        let viewController = PushedFromRightNavigationViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc fileprivate func pushFromLeftBarButtonItemTapped() {
        let viewController = PushedFromLeftNavigationViewController()
        
    }
    
}
