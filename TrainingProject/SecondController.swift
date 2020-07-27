//
//  SecondController.swift
//  TrainingProject
//
//  Created by Антон on 25.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
    
    lazy var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "test")
        
        view.backgroundColor = .white
        tableView.backgroundColor = .darkGray
        
        navigationItem.leftBarButtonItem = .init(barButtonSystemItem: .close, target: self, action: #selector(exit))
        navigationItem.rightBarButtonItem = .init(barButtonSystemItem: .add, target: self, action: #selector(add))
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints() { make in
            make.top.equalTo(view.snp.topMargin)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }
    }
    
    @objc
    func exit() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    func add() {
        
    }

}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as! TableViewCell
        
        
        return cell
    }
    
    
}
