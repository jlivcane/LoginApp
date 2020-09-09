//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by jekaterina.livcane on 07/09/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
   // var userName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        if let userName = UserDefaults.standard.string(forKey: "userName"),
            let id = UserDefaults.standard.string(forKey: "id"){
            welcomeLabel.text = "Welcome, \(userName), with id \(id)."
    
        }
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "userName")
        defaults.removeObject(forKey: "id")
        defaults.synchronize()
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
