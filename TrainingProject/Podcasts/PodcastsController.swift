//
//  PodcastsController.swift
//  TrainingProject
//
//  Created by Антон on 01.08.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class PodcastsController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var array = DataImitation.shared.arrayForPodcast
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleColor = [NSAttributedString.Key.foregroundColor: UIColor.white]
        title = "Медиатека"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = titleColor

        view.backgroundColor = .black
        
        navigationItem.rightBarButtonItem = .init(title: "Изменить", style: .plain, target: self, action: #selector(none))
        navigationItem.rightBarButtonItem?.tintColor = .systemPurple
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionCellForPodcast", bundle: nil), forCellWithReuseIdentifier: "CollectionCellForPodcast")
    }
    
    @objc
    func none() {
        
    }
}

extension PodcastsController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCellForPodcast", for: indexPath) as! CollectionCellForPodcast
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    let screenSize = UIScreen.main.bounds
    return CGSize(width: screenSize.width * 0.5 - 10, height: screenSize.height * 0.25 - 10)
    }
    
    
}
