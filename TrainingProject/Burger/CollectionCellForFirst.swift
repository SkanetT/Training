//
//  CollectionCellForFirst.swift
//  TrainingProject
//
//  Created by Антон on 29.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class CollectionCellForFirst: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageForCell: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageForCell.clipsToBounds = true
        imageForCell.layer.cornerRadius = 50
        imageForCell.contentMode = .scaleAspectFill
        imageForCell.layer.borderColor = UIColor.black.cgColor
        imageForCell.layer.borderWidth = 1
    }

}
