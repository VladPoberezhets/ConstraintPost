//
//  ScrollViewController.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import UIKit

class ScrollViewController: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let mainView:MainView = {
        let mainView = MainView()
        mainView.backgroundColor = .brown
        return mainView
    }()
    
    private let button:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "multiply.circle.fill"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets =  UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.isScrollEnabled = true
        scrollView.backgroundColor = .green
     

        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        mainView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
     
        view.addSubview(scrollView)
        view.addSubview(button)
        scrollView.addSubview(mainView)
        
        
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        
        mainView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        mainView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        
    }
    
    
    override func viewDidLayoutSubviews() {
        scrollView.contentSize = mainView.frame.size
    }
    
    
    @objc func showPost(sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }


}
