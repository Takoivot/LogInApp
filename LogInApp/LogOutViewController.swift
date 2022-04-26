//
//  LogOutViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 26.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    
    @IBOutlet var welcomeUser: UILabel!
    
    var welcomeU: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome, \(welcomeU)"
    }

}
