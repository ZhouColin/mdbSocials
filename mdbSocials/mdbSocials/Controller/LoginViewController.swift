//
//  ViewController.swift
//  mdbSocials
//
//  Created by Colin Zhou on 2020-02-22.
//  Copyright © 2020 Colin Zhou. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class LoginViewController : UIViewController {
    @IBOutlet weak var loginStack: UIStackView!
    @IBAction func loginTapped(_ sender: Any) {
        navigateToInterface()
        performSegue(withIdentifier: "goHome", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }
    

    public func assignbackground(){
          let background = UIImage(named: "background1.png")
          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
      }
    
    private func navigateToInterface() {
        let loginStoryboard = UIStoryboard(name: "Login", bundle: Bundle.main)
        guard let SignupViewController = loginStoryboard.instantiateViewController(identifier: "Signup") as? SignupViewController else {
            return
        }
        //segue
        present(SignupViewController, animated: true, completion: nil)
    }
}
