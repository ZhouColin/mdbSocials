//
//  SignupViewController.swift
//  
//
//  Created by Maggie Yi on 2/28/20.
//

import Foundation
import UIKit
import Firebase

class SignupViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginTapped(_ sender: Any) {
        loadUserData()
    }
    
    
    private func loadUserData() {
        let auth = Auth.auth()
        auth.signIn(withEmail: userNameTextField.text!, password: passwordTextField.text!) {(user, error) in
            guard error == nil else {
                self.displayError("Error")
                return
            }
            guard user != nil else {
                self.displayError("Error")
                return
            }
        }
        
    }
    
    func displayError(_ message:String) {
            let alertView = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alertView, animated: true, completion: nil)
    }
    
}
