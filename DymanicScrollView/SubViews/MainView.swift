//
//  MainView.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class MainView:UIView{
    
    private let imagePost:ImagePost = {
       let imagePost = ImagePost()
        return imagePost
    }()
    
    private let titleFilm:TitileFilm = {
       let titleFilm = TitileFilm()
        return titleFilm
    }()
    
    private let rating:Rating = {
        let rating = Rating()
        return rating
    }()
    
    private let timeInfo:TimeInfo = {
        let timeInfo = TimeInfo()
        return timeInfo
    }()
    
    private let directorInfo:DirectorInfo = {
        let directorInfo = DirectorInfo()
        return directorInfo
    }()
    
    private let storyForFilm:StoryForFilm = {
       let stroyForfilm = StoryForFilm()
        
        return stroyForfilm
    }()
    


    
    init() {
        super.init(frame: .zero)
        addSubview(imagePost)
        addSubview(titleFilm)
        addSubview(rating)
        addSubview(timeInfo)
        addSubview(directorInfo)
        addSubview(storyForFilm)
     

        imagePost.translatesAutoresizingMaskIntoConstraints = false
        titleFilm.translatesAutoresizingMaskIntoConstraints = false
        rating.translatesAutoresizingMaskIntoConstraints = false
        timeInfo.translatesAutoresizingMaskIntoConstraints = false
        directorInfo.translatesAutoresizingMaskIntoConstraints = false
        storyForFilm.translatesAutoresizingMaskIntoConstraints = false
      
        
        imagePost.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imagePost.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imagePost.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    
        
        titleFilm.topAnchor.constraint(equalTo: imagePost.bottomAnchor, constant: 10).isActive = true
        titleFilm.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleFilm.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20).isActive = true

        rating.topAnchor.constraint(equalTo: titleFilm.bottomAnchor, constant: 20).isActive = true
        rating.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true


        timeInfo.topAnchor.constraint(equalTo: rating.bottomAnchor, constant: 70).isActive = true
        timeInfo.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        timeInfo.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        directorInfo.topAnchor.constraint(equalTo: timeInfo.bottomAnchor, constant: 60).isActive = true
        directorInfo.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        directorInfo.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

              
        storyForFilm.topAnchor.constraint(equalTo: directorInfo.bottomAnchor).isActive = true
        storyForFilm.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        storyForFilm.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        storyForFilm.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
   

    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
