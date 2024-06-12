//
//  MainViewController+TableView.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/10.
//

import Foundation
import UIKit
/***
 MainViewControllerのtableView関連のコードをextensionとしてまとめる
 ***/

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0 // 仮
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell() // 仮
    }
}