//
//  ViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    let userName = "Artur"
    let password = "qwerty"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return}
        //logOutVC.welcomeUser.text = userName
    }


}

