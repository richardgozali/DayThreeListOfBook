//
//  TableViewCell.swift
//  TableViewDayThree
//
//  Created by Richard G on 15/06/22.
//

import UIKit

class BookCell: UITableViewCell {

    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var yearlabel: UILabel!

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
