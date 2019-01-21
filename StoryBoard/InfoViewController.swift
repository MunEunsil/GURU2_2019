//
//  InfoViewController.swift
//  StoryBoard
//
//  Created by swuad_14 on 2019. 1. 16..
//  Copyright © 2019년 swuad_14. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.layer.cornerRadius = 7
      //  loginView.layer.borderWidth = 1
        
        
    }
    

    @IBAction func LogoutClick(_ sender: Any) {
        
        self.navigationController?.tabBarController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
}
