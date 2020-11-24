//
//  TimeInfo.swift
//  DymanicScrollView
//
//  Created by Vlad on 23.11.2020.
//

import Foundation
import UIKit

class TimeInfo:UIView{
    
    let releasedTitle = UILabel()
    let releasedDate = UILabel()
    let releasedView = UIView()
    
    let runTimeLabel = UILabel()
    let runTime  = UILabel()
    let runTimeView = UIView()
    
    init() {
        super.init(frame: .zero)

        createLayoutReleased()
     
        //--------
        
        createLayoutRunTime()
        
        
        //---------
        addSubview(releasedView)
        addSubview(runTimeView)
        
        
        releasedView.translatesAutoresizingMaskIntoConstraints = false
        releasedTitle.translatesAutoresizingMaskIntoConstraints = false
        releasedDate.translatesAutoresizingMaskIntoConstraints = false
        
        releasedTitle.topAnchor.constraint(equalTo: releasedView.topAnchor, constant: 10).isActive = true
        releasedTitle.leadingAnchor.constraint(equalTo: releasedView.leadingAnchor, constant: 20).isActive = true
        releasedTitle.trailingAnchor.constraint(equalTo: releasedView.trailingAnchor, constant: -20).isActive = true
        
        releasedDate.topAnchor.constraint(equalTo: releasedTitle.bottomAnchor, constant: 5).isActive = true
        releasedDate.leadingAnchor.constraint(equalTo: releasedView.leadingAnchor, constant: 20).isActive = true
        releasedDate.trailingAnchor.constraint(equalTo: releasedView.trailingAnchor, constant: -20).isActive = true
        releasedDate.bottomAnchor.constraint(equalTo: releasedView.bottomAnchor, constant: -10).isActive = true

        releasedView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        
        
        runTimeView.translatesAutoresizingMaskIntoConstraints = false
        runTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        runTime.translatesAutoresizingMaskIntoConstraints = false
        
        runTimeLabel.topAnchor.constraint(equalTo: runTimeView.topAnchor, constant: 10).isActive = true
        runTimeLabel.leadingAnchor.constraint(equalTo: runTimeView.leadingAnchor, constant: 20).isActive = true
        runTimeLabel.trailingAnchor.constraint(equalTo: runTimeView.trailingAnchor, constant: -20).isActive = true
        
        runTime.topAnchor.constraint(equalTo: runTimeLabel.bottomAnchor, constant: 5).isActive = true
        runTime.leadingAnchor.constraint(equalTo: runTimeView.leadingAnchor, constant: 20).isActive = true
        runTime.trailingAnchor.constraint(equalTo: runTimeView.trailingAnchor, constant: -20).isActive = true
        runTime.bottomAnchor.constraint(equalTo: runTimeView.bottomAnchor, constant: -10).isActive = true
        
        runTimeView.leadingAnchor.constraint(equalTo: releasedView.trailingAnchor, constant: 10).isActive = true
        
    }
    
    
    func createLayoutReleased(){
        releasedTitle.text = "Released"
        releasedDate.text = "16 Dec 2016"
        releasedTitle.font = UIFont.boldSystemFont(ofSize: releasedTitle.font.pointSize)

      
        releasedView.addSubview(releasedTitle)
        releasedView.addSubview(releasedDate)
    }
    
    func createLayoutRunTime(){
        runTimeLabel.text = "Runtime"
        runTime.text = "133 mins"
        runTimeLabel.font = UIFont.boldSystemFont(ofSize: runTimeLabel.font.pointSize)

      
        runTimeView.addSubview(runTimeLabel)
        runTimeView.addSubview(runTime)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
