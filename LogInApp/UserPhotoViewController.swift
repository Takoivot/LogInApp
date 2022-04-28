//
//  UserPhotoViewController.swift
//  LogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

import UIKit

class UserPhotoViewController: UIViewController {

    @IBOutlet var userPhoto: UIImageView!
    
    var user: InfoUser!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhoto.image = UIImage(named: user.human.photo)

    }
    
}
