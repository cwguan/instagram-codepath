//
//  HomeViewController.swift
//  instagram-codepath
//
//  Created by Christopher Guan on 2/25/18.
//  Copyright © 2018 Christopher Guan. All rights reserved.
//

import UIKit
import Parse

class HomeViewController: UIViewController {
    
    
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        performSegue(withIdentifier: "logoutSegue", sender: nil)
    }
    
    
    @IBAction func onPost(_ sender: Any) {
        performSegue(withIdentifier: "postSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
