//
//  MainMovieCell.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/24.
//

import UIKit
import SDWebImage

class MainMovieCell: UITableViewCell {
    
    static var identifier: String {
        get {
            return "MainMovieCell"
        }
    }
    
    static func register() -> UINib {
        return UINib(nibName: "MainMovieCell", bundle: nil)
    }

    // IBOutlets:
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backView.addBorder(color: .label, width: 1.0)
        backView.round(10.0)
        
        movieImageView.round(5.0)
        movieImageView.contentMode = .scaleAspectFill
        
        backView.backgroundColor = .systemGray5
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        nameLabel.text = viewModel.title
        dateLabel.text = viewModel.date
        rateLabel.text = viewModel.rating
        movieImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
