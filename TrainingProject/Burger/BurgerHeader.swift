//
//  BurgerHeader.swift
//  TrainingProject
//
//  Created by Антон on 27.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class BurgerHeader: UIView {
    
    lazy var topView = UIView()
    lazy var bottomView = UIView()
    lazy var card = UIView()
    lazy var labelCard = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
                
        addSubview(topView)
        addSubview(bottomView)
        topView.backgroundColor = .systemPurple
        topView.snp.makeConstraints() { make in
            make.top.equalTo(snp.top)
            make.leading.equalTo(snp.leading)
            make.trailing.equalTo(snp.trailing)
            make.bottom.equalTo(snp.bottom).multipliedBy(0.5).offset(-20)
        }
        bottomView.backgroundColor = .white
        bottomView.snp.makeConstraints() { make in
            make.top.equalTo(topView.snp.bottom)
            make.leading.equalTo(snp.leading)
            make.trailing.equalTo(snp.trailing)
            make.bottom.equalTo(snp.bottom)
        }
        
        addSubview(card)
        card.backgroundColor = .lightGray
        card.clipsToBounds = true
        card.layer.cornerRadius = 8
        card.snp.makeConstraints() { make in
            make.top.equalTo(snp.top).offset(8)
            make.leading.equalTo(snp.leading).offset(40)
            make.trailing.equalTo(snp.trailing).offset(-40)
            make.bottom.equalTo(snp.bottom).offset(-38)
        }
        
        bottomView.addSubview(labelCard)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
