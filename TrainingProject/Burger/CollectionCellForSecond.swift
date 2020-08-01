//
//  CollectionCellForSecond.swift
//  TrainingProject
//
//  Created by Антон on 30.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class CollectionCellForSecond: UICollectionViewCell {
    
    @IBOutlet weak var imageWallpapper: UIImageView!
    @IBOutlet weak var textLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        imageWallpapper.clipsToBounds = true
        imageWallpapper.layer.cornerRadius = 8
        imageWallpapper.alpha = 0.9
        imageWallpapper.backgroundColor = .red
    }

}
