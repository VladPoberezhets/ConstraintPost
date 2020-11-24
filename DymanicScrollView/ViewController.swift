//
//  ViewController.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import UIKit

class ViewController: UIViewController {

    private let button:UIButton = {
        let button = UIButton()
        button.setTitle("Show post", for: .normal)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        button.backgroundColor = .blue
        
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    @objc func showPost(sender:UIButton){
        let scrollView = ScrollViewController()
        present(scrollView, animated: true, completion: nil)
    }

}

