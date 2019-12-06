//
//  signUpViewController.swift
//  DBMSproject
//
//  Created by Ritik Suryawanshi on 15/10/2019.
//  Copyright © 2019 Ritik Suryawanshi. All rights reserved.
//

import UIKit
import FirebaseAuth

class signUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordConfirm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.delegate = self
        password.delegate = self
        passwordConfirm.delegate = self
    }

  
    @IBAction func signUpAction(_ sender: Any) {
    
        if password.text != passwordConfirm.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: email.text!, password: password.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: nil)
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

    
    

    
    
    
    
}
