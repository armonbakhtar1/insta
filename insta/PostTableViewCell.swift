//
//  PostTableViewCell.swift
//  insta
//
//  Created by Armon Bakhtar on 3/8/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        // print("PostTableViewCell.swift: awakeFromNib()")
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        // print("PostTableViewCell.swift: setSelected()")
        super.setSelected(selected, animated: animated)
    }

}
