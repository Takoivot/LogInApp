//
//  LogOutViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 26.04.2022.
//

import UIKit

class LogOutViewController: UIViewController {

    
    @IBOutlet var welcomeUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    

    

}
