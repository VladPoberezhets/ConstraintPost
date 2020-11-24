//
//  TitileFirlm.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class TitileFilm:UIView{
    
    private let typeFilm = UILabel()
    private let titleFilm = UILabel()
    
    init() {
        super.init(frame: .zero)
        
       
        createLayoutTitileFilm()
        
        
        addSubview(typeFilm)
        addSubview(titleFilm)
        
        typeFilm.translatesAutoresizingMaskIntoConstraints = false
        titleFilm.translatesAutoresizingMaskIntoConstraints = false
        
        typeFilm.topAnchor.constraint(equalTo: topAnchor).isActive = true
        typeFilm.bottomAnchor.constraint(equalTo: titleFilm.topAnchor).isActive = true
        typeFilm.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        typeFilm.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        

        titleFilm.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        titleFilm.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        titleFilm.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
    }
    
    func createLayoutTitileFilm(){
        typeFilm.text = "Action,Adventure, Sci-Fi"
        typeFilm.textColor = .gray
        
        titleFilm.text = "Rogue One: A Star Wars Story"
        titleFilm.numberOfLines = 0
        titleFilm.font = titleFilm.font.withSize(30)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
