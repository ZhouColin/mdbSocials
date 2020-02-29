//
//  DetailViewController.swift
//  mdbSocials
//
//  Created by Colin Zhou on 2020-02-29.
//  Copyright © 2020 Colin Zhou. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var eventname: UILabel!
    @IBOutlet weak var postedby: UILabel!
    @IBOutlet weak var eventpic: UIImageView!
    @IBOutlet weak var rsvpNum: UILabel!
    @IBOutlet weak var eventDesc: UILabel!
    
    @IBAction func interested(_ sender: Any) {
        
    }
}
