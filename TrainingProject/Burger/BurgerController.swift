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
    let screenSize = UIScreen.main.bounds
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        tableView.register(UINib(nibName: "FirstCellForBurger1", bundle: nil), forCellReuseIdentifier: "FirstCellForBurger1")
        
        tableView.register(UINib(nibName: "SecondCellForBurger", bundle: nil), forCellReuseIdentifier: "SecondCellForBurger")
        
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCellForBurger", for: indexPath) as! SecondCellForBurger
        let firstCell = tableView.dequeueReusableCell(withIdentifier: "FirstCellForBurger1", for: indexPath) as! FirstCellForBurger1
        
        firstCell.selectionStyle = .none
        cell.selectionStyle = .none
        
        switch indexPath.row {
        case 0:
            tableView.rowHeight = screenSize.height * 0.25
            return firstCell
        case 1:
            tableView.rowHeight = screenSize.height * 0.35
            cell.headerLabel.text = "ТВОИ ЧЕЛЛЕНДЖИ"
            return cell
        case 2:
            tableView.rowHeight = screenSize.height * 0.35
            cell.headerLabel.text = "ГОРЯЩЕЕ ПРЕДЛОЖЕНИЕ"
            return cell
        default:
            return cell
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return screenSize.height * 0.3
    }
    
}
