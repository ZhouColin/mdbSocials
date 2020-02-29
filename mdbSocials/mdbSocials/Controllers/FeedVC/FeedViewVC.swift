//
//  FeedViewVC.swift
//  mdbSocials
//
//  Created by Colin Zhou on 2020-02-29.
//  Copyright © 2020 Colin Zhou. All rights reserved.
//

import UIKit

class FeedViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupArrayOfEvents()
    }
    
    var arrayOfEvents: [Event]!
    
    func setupArrayOfEvents() {
        arrayOfSnaps = []
        let imageNames : [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        let sentBy : [String] = ["Daniel", "Max", "Levi", "Robert A. Ackerman", "Zach", "Aayush", "Ayush", "Noah", "Tiger", "Mobi"]
        let timeSent : [Date] = [Date(timeIntervalSince1970: 20),
                                 Date(timeIntervalSince1970: 200),
                                 Date(timeIntervalSince1970: 200),
                                 Date(timeIntervalSince1970: 2000),
                                 Date(timeIntervalSince1970: 20000),
                                 Date(timeIntervalSince1970: 200000),
                                 Date(timeIntervalSince1970: 2000000),
                                 Date(timeIntervalSince1970: 20000000),
                                 Date(timeIntervalSince1970: 200000000),
                                 Date(timeIntervalSince1970: 2000000000),]
        for i in 0 ..< imageNames.count {
            let si = SnapImage(sentBy: sentBy[i], sentTo: "Me", timeSent: timeSent[i], image: UIImage(named: imageNames[i])!)
            arrayOfSnaps.append(si)
        }
    }
    
    @IBAction func addEvent(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toShowImage" {
            let destination = segue.destination as! ShowImageVC
            destination.snapImage = selectedImage
        }
    }
    
}
