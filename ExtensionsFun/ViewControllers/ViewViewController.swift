//
//  ViewViewController.swift
//  ExtensionsFun
//
//  Created by Alex Nagy on 16/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import TinyConstraints

class ViewViewController: UIViewController {
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = #imageLiteral(resourceName: "nattu-adnan-328570-unsplash").withRenderingMode(.alwaysOriginal)
        return imageView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.text = """
        Nattu Adnan
        @reallynattu
        """
        return label
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Merge into image", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(handleButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var outputImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        navigationItem.title = "Extensions Fun | View"
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        imageView.addSubview(label)
        view.addSubview(button)
        view.addSubview(outputImageView)
        
        imageView.edgesToSuperview(excluding: .bottom, usingSafeArea: true)
        imageView.height(view.frame.width / 2)
        
        label.center(in: imageView)
        
        button.topToBottom(of: imageView, offset: 12)
        button.rightToSuperview()
        button.leftToSuperview()
        button.height(40)
        
        outputImageView.topToBottom(of: button, offset: 12)
        outputImageView.rightToSuperview()
        outputImageView.leftToSuperview()
        outputImageView.height(view.frame.width / 2)
    }
    
    @objc fileprivate func handleButtonTapped() {
        let image = imageView.asImage()
        outputImageView.image = image
    }
    
}


