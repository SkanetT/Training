//
//  SecondCellForBurger.swift
//  TrainingProject
//
//  Created by Антон on 30.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class SecondCellForBurger: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let array = DataImitation.shared.arrayForSecondCell

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "CollectionCellForSecond", bundle: nil), forCellWithReuseIdentifier: "CollectionCellForSecond")
        
    }

}

extension SecondCellForBurger: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellForSecond", for: indexPath) as! CollectionCellForSecond
        cell.textLabel.text = array[indexPath.row]
    //    cell.backgroundColor = .red
        
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 8
        cell.alpha = 0.9
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width * 0.75, height: screenSize.height * 0.25 - 10)
    }
    
}
