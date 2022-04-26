//
//  ViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!

    //MARK: Public Properties
    let userName = "Artur"
    let password = "qwerty"
    
    //MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return}
        logOutVC.welcomeU = userNameTF.text ?? "Enter User Name"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            super.touchesBegan(touches, with: event)
    }
    
    //MARK: IBActions
    @IBAction func unwindSegueToLogInScreen(_ segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }


}

