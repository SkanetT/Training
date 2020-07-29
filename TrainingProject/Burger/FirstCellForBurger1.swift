//
//  FirstCellForBurger1.swift
//  TrainingProject
//
//  Created by Антон on 28.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit
import Alamofire


class FirstCellForBurger1: UITableViewCell {
    
    let descriptionArray = DataImitation.shared.arrayForFirstCell
    
    @IBOutlet weak var colectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        colectionView.dataSource = self
        colectionView.delegate = self
        colectionView.register(UINib(nibName: "CollectionCellForFirst", bundle: nil), forCellWithReuseIdentifier: "CollectionCellForFirst")
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

extension FirstCellForBurger1: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return descriptionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellForFirst", for: indexPath) as! CollectionCellForFirst
        
        cell.descriptionLabel.text = descriptionArray[indexPath.row]
        
        AF.request("https://picsum.photos/id/\(indexPath.row * 10 + 23)/100").response { response in
            
            if case .success(let image) = response.result {
                if let image = image {
                    DispatchQueue.main.async {
                        cell.imageForCell.image = UIImage(data: image)
                    }
                }
            }
        }
        
        return cell
        
    }
    
    
}
