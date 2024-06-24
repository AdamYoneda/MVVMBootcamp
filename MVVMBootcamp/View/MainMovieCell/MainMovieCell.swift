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
        // Initialization code
    }
}
