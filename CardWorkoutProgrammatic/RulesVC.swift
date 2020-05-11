//
//  RulesVC.swift
//  CardWorkoutProgrammatic
//
//  Created by BixTrix on 12.05.2020.
//  Copyright © 2020 BixTrix. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {

    let titleLabel      = UILabel()
    let rulesLabel      = UILabel()
    let exercizeLabel   = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureUI()
        
    }
    
    func configureUI(){
        configureTitleLabel()
        configureRulesLabel()
        configureExercizeLabel()
        
    }
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Rules"
        titleLabel.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            
        ])
    }
    
    func configureRulesLabel(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card representns the number of exercize you do.\n\n J = 12, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExercizeLabel(){
        view.addSubview(exercizeLabel)
        exercizeLabel.translatesAutoresizingMaskIntoConstraints = false
        exercizeLabel.text = "♡ = Push-ups\n\n♤ = Sit-up\n\n♧ = Burpees\n\n♢ = Jumping Jacs"
        exercizeLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exercizeLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exercizeLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exercizeLabel.widthAnchor.constraint(equalToConstant: 200),
            exercizeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}
