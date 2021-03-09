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
        print("LoginViewController.swift: viewDidLoad()")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSignin(_ sender: Any) {
        print("LoginViewController.swift: onSignin()")
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

    @IBAction func onSignup(_ sender: Any) {
        print("LoginViewController.swift: onSignup()")
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
