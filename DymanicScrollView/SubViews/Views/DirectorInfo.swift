//
//  DirectorInfo.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class DirectorInfo:UIView{
    let directorTitle = UILabel()
    let directorName = UILabel()
    let directorView = UIView()
    
    
    init() {
        super.init(frame: .zero)
     
        createLayoutDirector()
        
        addSubview(directorView)
        
        
        
        directorTitle.translatesAutoresizingMaskIntoConstraints = false
        directorName.translatesAutoresizingMaskIntoConstraints = false
        directorView.translatesAutoresizingMaskIntoConstraints = false
        
        directorTitle.topAnchor.constraint(equalTo: directorView.topAnchor, constant: 10).isActive = true
        directorTitle.leadingAnchor.constraint(equalTo: directorView.leadingAnchor, constant: 20).isActive = true
        directorTitle.trailingAnchor.constraint(equalTo: directorView.trailingAnchor, constant: -20).isActive = true
        
        directorName.topAnchor.constraint(equalTo: directorTitle.bottomAnchor, constant: 5).isActive = true
        directorName.leadingAnchor.constraint(equalTo: directorView.leadingAnchor, constant: 20).isActive = true
        directorName.trailingAnchor.constraint(equalTo: directorView.trailingAnchor, constant: -20).isActive = true
        directorName.bottomAnchor.constraint(equalTo: directorView.bottomAnchor, constant: -10).isActive = true

        directorView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    }
    
    func createLayoutDirector(){
        directorTitle.text = "Director"
        directorTitle.font = UIFont.boldSystemFont(ofSize: directorTitle.font.pointSize)
        directorName.text = "Gareth Edwards"

        
        directorView.addSubview(directorTitle)
        directorView.addSubview(directorName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
