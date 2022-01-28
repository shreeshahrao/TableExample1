//
//  TableHeaderView.swift
//  TableExample1
//
//  Created by ShreeshaRao on 27/01/22.
//

import UIKit

class TableHeaderView: UITableViewHeaderFooterView {

    static let Identifier = "TableHeaderView"
    
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var content: UIView!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
