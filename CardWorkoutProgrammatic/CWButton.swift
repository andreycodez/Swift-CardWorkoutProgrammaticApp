//
//  CWButton.swift
//  CardWorkoutProgrammatic
//
//  Created by BixTrix on 12.05.2020.
//  Copyright © 2020 BixTrix. All rights reserved.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        
        //If the property name is equal to variable name the self word is required!!!
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        
        //This line means USE AUTOLAYOUT
        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
