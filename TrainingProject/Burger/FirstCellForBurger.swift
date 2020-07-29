//
//  FirstCellForBurger.swift
//  TrainingProject
//
//  Created by Антон on 28.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class FirstCellForBurger: UITableViewCell {
    
    lazy var collectionView = UICollectionView()

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.snp.makeConstraints() { make in
            make.top.equalTo(snp.top)
            make.leading.equalTo(snp.leading)
            make.trailing.equalTo(snp.trailing)
            make.bottom.equalTo(snp.bottom)
        }
    }
}

//extension FirstCellForBurger: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//    
//    
//}
