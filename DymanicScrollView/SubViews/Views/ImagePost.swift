//
//  ImagePost.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class ImagePost: UIView {
    
    private let imageView = UIImageView()
    
    init() {
        super.init(frame: .zero)
      
        createLayoutImagePost()
        
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.heightAnchor.constraint(lessThanOrEqualTo: imageView.widthAnchor, multiplier: 1.25).isActive = true
    }
    
    func createLayoutImagePost(){
        imageView.image = UIImage(named:"film")
        imageView.contentMode = .scaleToFill
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
