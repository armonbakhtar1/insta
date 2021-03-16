//
//  LoginViewController.swift
//  insta
//
//  Created by Armon Bakhtar on 3/8/21.
//

import Parse
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!

    override func viewDidLoad() {
        // print("LoginViewController.swift: viewDidLoad()")
        super.viewDidLoad()
    }

    @IBAction func tapSignInButton(_ sender: Any) {
        // print("LoginViewController.swift: tapSignInButton()")
        let password = self.passwordTextField.text!
        let username = self.usernameTextField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if (user != nil) {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("LoginViewController.swift: \(error?.localizedDescription)")
            }
        }
    }

    @IBAction func tapSignUpButton(_ sender: Any) {
        // print("LoginViewController.swift: tapSignUpButton()")
        let user = PFUser()
        user.password = self.passwordTextField.text
        user.username = self.usernameTextField.text
        user.signUpInBackground { (success, error) in
            if (success) {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("LoginViewController.swift: \(error?.localizedDescription)")
            }
        }
    }

}


