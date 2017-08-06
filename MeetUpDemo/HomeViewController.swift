//
//  HomeViewController.swift
//  MeetUpDemo
//
//  Created by Andrew Rudkosky on 8/4/17.
//  Copyright © 2017 Andrew Rudkosky. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //Firebase log out
    @IBAction func logOutAction(sender: AnyObject) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                
                //After logout, Segue to Sign Up
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
                //Print log out message
                print("You are logged out!")
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }

}
