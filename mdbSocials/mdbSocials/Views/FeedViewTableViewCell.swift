//
//  FeedViewTableViewCell.swift
//  mdbSocials
//
//  Created by Colin Zhou on 2020-02-29.
//  Copyright © 2020 Colin Zhou. All rights reserved.
//

import UIKit

class FeedViewTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var postedBy: UILabel!
    @IBOutlet weak var rsvpNum: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
