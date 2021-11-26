//
//  ViewController.swift
//  Login
//
//  Created by Olibo moni on 24/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard (sender as! UIButton) != forgotUsernameButton else{
            segue.destination.navigationItem.title = "Forgot Username"
            return
        }
        
        guard (sender as! UIButton) != forgotPasswordButton else{
            segue.destination.navigationItem.title = "Forgot Password"
            return
        }
        
        segue.destination.navigationItem.title = usernameTextField.text
    }
    
    
    @IBAction func forgotUsernameBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LoginVCSegue", sender: sender)
    }
    
    @IBAction func forgotPasswordBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "LoginVCSegue", sender: sender)
    }
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        // performSegue(withIdentifier: "LoginBtnSegue", sender: sender)
        
        
        
    }
    
    
    
}


