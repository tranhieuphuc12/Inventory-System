//
//  ImportExportCell.swift
//  Inventory System
//
//  Created by tran thu on 23/05/2024.
//

import UIKit

class ImportExportCell: UITableViewCell {

    @IBOutlet weak var dateImportExport: UILabel!
    @IBOutlet weak var quantity: UILabel!
    @IBOutlet weak var cost: UILabel!
    var opTap:UIGestureRecognizer?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if opTap != nil {
            opTap!.delegate = self
        }
    }
    //B1.Dinh nghia ham uy quyen cho Guesture recognizer
    override func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return(touch.view == self.contentView)
    }

}
