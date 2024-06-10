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

        self.title = "Main View"
        self.view.backgroundColor = .cyan
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
