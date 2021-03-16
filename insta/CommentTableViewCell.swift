//
//  CommentTableViewCell.swift
//  insta
//
//  Created by Armon Bakhtar on 3/15/21.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!

    override func awakeFromNib() {
        // print("CommentTableViewCell: awakeFromNib()")
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        // print("CommentTableViewCall: setSelected()")
        super.setSelected(selected, animated: animated)
    }

}
