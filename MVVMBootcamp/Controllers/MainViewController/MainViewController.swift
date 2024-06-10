//
//  MainViewController.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/08.
//

import UIKit

class MainViewController: UIViewController {
    
    // IBOutlets:
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    /// MainVCのview関連の設定をviewDidLoad内で行う
    private func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .cyan
        
        setupTableView()
    }
}
