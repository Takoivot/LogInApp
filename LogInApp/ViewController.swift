//
//  ViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 26.04.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!

    // MARK: Public Properties
    let userName = "Artur"
    let password = "qwerty"
    
    
    // MARK: Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
        
        passwordTF.enablesReturnKeyAutomatically = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let logOutVC = segue.destination as? LogOutViewController else {return}
        logOutVC.welcomeU = userNameTF.text ?? "Enter User Name"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            super.touchesBegan(touches, with: event)
    }
    
    // MARK: IBActions
    @IBAction func unwindSegueToLogInScreen(_ segue: UIStoryboardSegue){
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func logInButtonPressed() {
        guard let enterName = userNameTF.text, !enterName.isEmpty else {
            showAlert(with: "User Name field is empty",
                      and: "Pleas enter your Name")
            return
    }
        
        guard let enterPassword = passwordTF.text, !enterPassword.isEmpty else {
            showAlert(with: "Password field is empty",
                      and: "Enter your password")
            return
    }
        
        if enterName != userName || enterPassword != password  {
            showAlert(with: "Sorry, wrong User Name or Password",
                      and: "Try Again")
    }
    }
    @IBAction func hintUserName() {
        showAlert(with: "Need help?",
                  and: "Your name is \(userName)")
    }
    
    @IBAction func hintPassword() {
        showAlert(with: "Need help?",
                  and: "Your password is \(password)")
    }
    
    //MARK: Public Method
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        }
        return true
    }
    
}

    // MARK: Private Methods
extension ViewController {
    private func showAlert(with title: String, and massage: String){
        let alert = UIAlertController(title: title,
                                      message: massage,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

