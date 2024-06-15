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

    // ViewModel:
    var viewModel: MainViewModel = MainViewModel() // 通常はイニシャライザの中に埋め込むが、ここでは単にインスタンスを作成する
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewModel.getData()
    }
    
    /// MainVCのview関連の設定をviewDidLoad内で行う
    private func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .cyan
        
        setupTableView()
    }
}
