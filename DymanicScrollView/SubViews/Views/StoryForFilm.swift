//
//  StoryForFilm.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class StoryForFilm:UIView{
    
    let storyTitle = UILabel()
    let storyText = UILabel()
    let storyView = UIView()
    
    init() {
        super.init(frame: .zero)
        
        createLayoutStory()
        
        addSubview(storyView)
          
        
        storyTitle.translatesAutoresizingMaskIntoConstraints = false
        storyText.translatesAutoresizingMaskIntoConstraints = false
        storyView.translatesAutoresizingMaskIntoConstraints = false
        
        storyTitle.topAnchor.constraint(equalTo: storyView.topAnchor, constant: 10).isActive = true
        storyTitle.leadingAnchor.constraint(equalTo: storyView.leadingAnchor, constant: 20).isActive = true
        storyTitle.trailingAnchor.constraint(equalTo: storyView.trailingAnchor, constant: -20).isActive = true
        
        storyText.topAnchor.constraint(equalTo: storyTitle.bottomAnchor, constant: 5).isActive = true
        storyText.leadingAnchor.constraint(equalTo: storyView.leadingAnchor, constant: 20).isActive = true
        storyText.trailingAnchor.constraint(equalTo: storyView.trailingAnchor, constant: -20).isActive = true
        storyText.bottomAnchor.constraint(equalTo: storyView.bottomAnchor, constant: -10).isActive = true

        storyView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        storyView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        
        
    }
    
    
    func createLayoutStory(){
        storyTitle.text = "Story"
        storyTitle.font = UIFont.boldSystemFont(ofSize: storyTitle.font.pointSize)
        
        storyText.text = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus"
        storyText.numberOfLines = 0
      
        storyView.addSubview(storyTitle)
        storyView.addSubview(storyText)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
