//
//  Event.swift
//  mdbSocials
//
//  Created by Colin Zhou on 2020-02-29.
//  Copyright © 2020 Colin Zhou. All rights reserved.
//

import UIKit

class Event {
    var sender: String
    var sentTo: String
    var timeSent: Date
    var opened: Bool
    var image: UIImage
    
    init(sentBy: String, sentTo: String, timeSent: Date, image: UIImage) {
        self.sender = sentBy
        self.sentTo = sentTo
        self.timeSent = timeSent
        self.image = image
        self.opened = false
    }
}

