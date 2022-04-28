//
//  UserInfoViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    var user: InfoUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userPhotoVC = segue.destination as? UserPhotoViewController else {return}
        userPhotoVC.user = user
    }
    
}
