//
//  ViewController.swift
//  TrainingProject
//
//  Created by Антон on 25.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    lazy var button = UIButton()
    lazy var box = UIView()
    lazy var switcher = UISwitch()
    lazy var burgerButton = UIButton()
    
    let optionSize = 50
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(button)
        button.backgroundColor = .black
        button.setTitle("test", for: .normal)
        
        view.addSubview(box)
        box.backgroundColor = .red
        box.clipsToBounds = true
        box.layer.cornerRadius = CGFloat(optionSize / 2)
        box.layer.borderColor = UIColor.black.cgColor
        box.layer.borderWidth = 1
        box.snp.makeConstraints() { make in
            make.width.height.equalTo(optionSize)
            make.center.equalTo(view)
        }
        
        button.snp.makeConstraints { make in
            make.top.equalTo(box.snp.bottom).offset(optionSize / 2)
            make.centerX.equalTo(box.snp.centerX)
            make.width.height.equalTo(optionSize)
        }
        
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        view.addSubview(switcher)
        switcher.snp.makeConstraints() { make in
            make.centerX.equalTo(box.snp.centerX)
            make.bottom.equalTo(box.snp.top).offset(-16)
        }
        
        view.addSubview(burgerButton)
        burgerButton.setTitle("Burger", for: .normal)
        burgerButton.clipsToBounds = true
        burgerButton.layer.cornerRadius = 8
        burgerButton.layer.borderWidth = 1
        burgerButton.layer.borderColor = UIColor.black.cgColor
        burgerButton.backgroundColor = .darkGray
        burgerButton.snp.makeConstraints() { make in
            make.leading.equalTo(view.snp.leading).offset(24)
            make.trailing.equalTo(view.snp.trailing).offset(-24)
            make.top.equalTo(button.snp.bottom).offset(20)
            make.height.equalTo(40)
            
            
        }
        
        switcher.addTarget(self, action: #selector(changed(_:)), for: .valueChanged)
        burgerButton.addTarget(self, action: #selector(tapBurger), for: .touchUpInside)
        
        
       let color = defaults.string(forKey: "color")
        
        if color == nil {
            defaults.set("white", forKey: "color")
        } else {
            if color == "white" {
                switcher.setOn(false, animated: true)

            } else {
                switcher.setOn(true, animated: true)

            }
        }
    
    }
    
    @objc
    func tap() {
        let vc = SecondController()
        let nc = UINavigationController(rootViewController: vc)
        nc.modalPresentationStyle = .fullScreen
        present(nc, animated: true)
    }
    
    @objc
    func tapBurger() {
        let vc = BurgerController()
        let nc = UINavigationController(rootViewController: vc)
        nc.modalPresentationStyle = .fullScreen
        present(nc, animated: true)
    }
    
    @objc
    func changed(_ switch1: UISwitch) {
        if switch1.isOn {
             defaults.set("white", forKey: "color")
        } else {
             defaults.set("black", forKey: "color")
        }
    }
}


