//
//  Rating.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class Rating:UIView{
    
    let imdb = UILabel()
    let rating = UILabel()
    let viewImbd = UIView()
    
    
    let rotten = UILabel()
    let percent = UILabel()
    let viewRotten = UIView()
    
    let metacritic = UILabel()
    let points = UILabel()
    let viewMetacritic = UIView()
    
    
    init() {
        super.init(frame: .zero)
        
        createLayoutImdb()
     
        //-----
        
        createLoyoutRotten()
        
        //-----
        
        createLayoutMetacritic()
      
        
        addSubview(viewImbd)
        addSubview(viewRotten)
        addSubview(viewMetacritic)

        
        
        viewImbd.translatesAutoresizingMaskIntoConstraints = false
        imdb.translatesAutoresizingMaskIntoConstraints = false
        rating.translatesAutoresizingMaskIntoConstraints = false
        
        imdb.topAnchor.constraint(equalTo: viewImbd.topAnchor, constant: 10).isActive = true
        imdb.leadingAnchor.constraint(equalTo: viewImbd.leadingAnchor, constant: 20).isActive = true
        imdb.trailingAnchor.constraint(equalTo: viewImbd.trailingAnchor, constant: -20).isActive = true
        
        rating.topAnchor.constraint(equalTo: imdb.bottomAnchor, constant: 0).isActive = true
        rating.leadingAnchor.constraint(equalTo: viewImbd.leadingAnchor, constant: 20).isActive = true
        rating.trailingAnchor.constraint(equalTo: viewImbd.trailingAnchor, constant: -20).isActive = true
        rating.bottomAnchor.constraint(equalTo: viewImbd.bottomAnchor, constant: -10).isActive = true

        viewImbd.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        //-------------
        
        
        viewRotten.translatesAutoresizingMaskIntoConstraints = false
        rotten.translatesAutoresizingMaskIntoConstraints = false
        percent.translatesAutoresizingMaskIntoConstraints = false
        
        rotten.topAnchor.constraint(equalTo: viewRotten.topAnchor, constant: 10).isActive = true
        rotten.leadingAnchor.constraint(equalTo: viewRotten.leadingAnchor, constant: 20).isActive = true
        rotten.trailingAnchor.constraint(equalTo: viewRotten.trailingAnchor, constant: -20).isActive = true
        
        percent.topAnchor.constraint(equalTo: rotten.bottomAnchor, constant: 0).isActive = true
        percent.leadingAnchor.constraint(equalTo: viewRotten.leadingAnchor, constant: 20).isActive = true
        percent.trailingAnchor.constraint(equalTo: viewRotten.trailingAnchor, constant: -20).isActive = true
        percent.bottomAnchor.constraint(equalTo: viewRotten.bottomAnchor, constant: -10).isActive = true
        
        viewRotten.leadingAnchor.constraint(equalTo: viewImbd.trailingAnchor, constant: 10).isActive = true
        
        
        //--------
        
        viewMetacritic.translatesAutoresizingMaskIntoConstraints = false
        metacritic.translatesAutoresizingMaskIntoConstraints = false
        points.translatesAutoresizingMaskIntoConstraints = false
        
        metacritic.topAnchor.constraint(equalTo: viewMetacritic.topAnchor, constant: 10).isActive = true
        metacritic.leadingAnchor.constraint(equalTo: viewMetacritic.leadingAnchor, constant: 20).isActive = true
        metacritic.trailingAnchor.constraint(equalTo: viewMetacritic.trailingAnchor, constant: -20).isActive = true
        
        points.topAnchor.constraint(equalTo: metacritic.bottomAnchor, constant: 0).isActive = true
        points.leadingAnchor.constraint(equalTo: viewMetacritic.leadingAnchor, constant: 20).isActive = true
        points.trailingAnchor.constraint(equalTo: viewMetacritic.trailingAnchor, constant: -20).isActive = true
        points.bottomAnchor.constraint(equalTo: viewMetacritic.bottomAnchor, constant: -10).isActive = true
        
        viewMetacritic.leadingAnchor.constraint(equalTo: viewRotten.trailingAnchor, constant: 10).isActive = true
    
        viewMetacritic.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
   
        
    }
    
    func createLayoutImdb(){
        imdb.text = "IMDB"
        rating.text = "7.8/10"
        rating.font = UIFont.boldSystemFont(ofSize: rating.font.pointSize)

        rating.textColor = .orange
        imdb.textColor = .white

        viewImbd.layer.cornerRadius = 15
      
        viewImbd.addSubview(imdb)
        viewImbd.addSubview(rating)
        
        viewImbd.backgroundColor = .black
    }
    
    func createLoyoutRotten(){
        rotten.text = "Rotten Tomatoes"
        rotten.textColor = .white
        
        percent.text = "95%"
        percent.textColor = .orange
        percent.font = UIFont.boldSystemFont(ofSize: percent.font.pointSize)
     
        viewRotten.layer.cornerRadius = 15
      
        viewRotten.addSubview(rotten)
        viewRotten.addSubview(percent)
        
        viewRotten.backgroundColor = .black
    }
    
    
    func createLayoutMetacritic(){
        metacritic.text = "Metacritic"
        metacritic.textColor = .white
        
        points.text = "87/100"
        points.textColor = .orange
        points.font = UIFont.boldSystemFont(ofSize: points.font.pointSize)
        
        viewMetacritic.layer.cornerRadius = 15
      
        viewMetacritic.addSubview(metacritic)
        viewMetacritic.addSubview(points)
        
        viewMetacritic.backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
