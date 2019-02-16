//
//  ApplicationCustomView.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class ApplicationCustomView: UIView {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Press Me", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func commonInit() {
        setupViews()
    }
    
    fileprivate func setupViews() {
        addSubview(button)
        button.centerInSuperview()
    }
    
    @objc fileprivate func handleButtonTapped() {
        let alertController = UIAlertController(title: "Success", message: "You tapped me from inside a UIView", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Cool", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        
        guard let topMostViewController = UIApplication.getTopMostViewController() else { return }
        topMostViewController.present(alertController, animated: true, completion: nil)
    }
}
