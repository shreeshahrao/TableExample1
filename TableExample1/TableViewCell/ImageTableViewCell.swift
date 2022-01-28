//
//  ImageTableViewCell.swift
//  TableExample1
//
//  Created by ShreeshaRao on 27/01/22.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let Identifier = "ImageTableViewCell"
    
    @IBOutlet weak var image1View: UIImageView!
    
    @IBOutlet weak var image2View: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
