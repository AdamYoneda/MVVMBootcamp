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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // ViewModel:
    var viewModel: MainViewModel = MainViewModel() // 通常はイニシャライザの中に埋め込むが、ここでは単にインスタンスを作成する
    
    // variables:
    var cellDataSource: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewModel.getData()
    }
    
    /// MainVCのview関連の設定をviewDidLoad内で行う
    private func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemBackground
        
        setupTableView()
        
        activityIndicator.hidesWhenStopped = true
    }
    
    /// bind(_ listener: @escaping ((T?) -> Void)) を呼び出す。
    /// （データバインディング：データと対象を結びつけ、データあるいは対象の変更を暗示的にもう一方の変更へ反映すること、それを実現する仕組みのことである → 一方を変更するともう一方を自動的に変更すること。）
    private func bindViewModel() {
        // isLoadingのデータバインディング
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self, let isLoading else { return }
            
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        // cellDataSourceのデータバインディング
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self, let movies else { return }
            
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    
    /// MovieのDIを用いたDetailsMovieVCへの遷移
    func openDetail(movieId: Int) {
        guard let movie = viewModel.retribeMovie(with: movieId) else { return }
        let detailsMovieViewModel = DetailsMovieViewModel(movie: movie)
        let detailsMovieViewController = DetailsMovieViewController(viewModel: detailsMovieViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsMovieViewController, animated: true)
        }
    }
}
