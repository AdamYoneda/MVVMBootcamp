//
//  MainMovieCell.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/24.
//

import UIKit

class MainMovieCell: UITableViewCell {

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
    }
    
    func setupCell(viewModel: MovieTableCellViewModel) {
        
    }
}
