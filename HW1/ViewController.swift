//
//  ViewController.swift
//  HW1
//
//  Created by Nikolai  on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {

    let gradientView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(gradientView)
        createGradientView()
    }

    func createGradientView() {
        gradientView.frame = CGRect(x: 100, y: 0, width: 100, height: 100)
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        
        //Constraints
        gradientView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        gradientView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        gradientView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //Gragient
        let gragient = CAGradientLayer()
        let colorFirst = UIColor.green.cgColor
        let colorSecond = UIColor.blue.cgColor
        gragient.colors = [colorFirst, colorSecond]
        gragient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gragient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gragient.cornerRadius = 15
        gragient.frame = gradientView.bounds
        gradientView.layer.addSublayer(gragient)
        
        //Corners
        gradientView.layer.cornerRadius = 15
        
        //Shadow
        gradientView.layer.shadowOpacity = 0.6
        gradientView.layer.shadowOffset = CGSize(width: 0, height: 5)
        
    }

}

