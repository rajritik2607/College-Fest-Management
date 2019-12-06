//
//  loginPageViewController.swift
//  DBMSproject
//
//  Created by Ritik Suryawanshi on 15/10/2019.
//  Copyright © 2019 Ritik Suryawanshi. All rights reserved.
//

import UIKit
import FirebaseAuth

class loginPageViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
    }
    
    @IBAction func loginAction(_ sender: Any) {
    
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHome", sender: nil)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    
    }
    

    
    
    
    
}
