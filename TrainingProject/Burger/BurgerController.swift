//
//  BurgerController.swift
//  TrainingProject
//
//  Created by Антон on 27.07.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class BurgerController: UIViewController {
    
    lazy var tableView = UITableView(frame: .zero, style: .grouped)
    let header = BurgerHeader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "test")
        tableView.register(UINib(nibName: "FirstCellForBurger1", bundle: nil), forCellReuseIdentifier: "FirstCellForBurger1")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "cart"), style: .plain, target: self, action: #selector(some))
        navigationItem.rightBarButtonItem?.tintColor = .black
        
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = .systemPurple

        view.addSubview(tableView)
        tableView.backgroundColor = .systemPurple
        tableView.snp.makeConstraints() { make in
            make.top.equalTo(view.snp.topMargin)
            make.bottom.equalTo(view.snp.bottom)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
        }
        
    }
    
    @objc func some() {
        
    }
    
    
}

extension BurgerController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath) as! TableViewCell
        let firstCell = tableView.dequeueReusableCell(withIdentifier: "FirstCellForBurger1", for: indexPath) as! FirstCellForBurger1

        cell.textLabel?.text = "asasas"
        cell.selectionStyle = .none
        
        if indexPath.row == 0 {
            tableView.rowHeight = 130
            return firstCell
        } else {
            tableView.rowHeight = 250
            return cell
        }
        
      //  return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 240
    }
    
}
