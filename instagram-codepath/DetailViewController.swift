//
//  DetailViewController.swift
//  instagram-codepath
//
//  Created by Christopher Guan on 2/26/18.
//  Copyright © 2018 Christopher Guan. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class DetailViewController: UIViewController {

    @IBOutlet weak var postDetailImageView: PFImageView!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    
    var post: Post?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        captionLabel.text = post?.caption
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let myString = formatter.string(from: (post?.createdAt!)!)
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)

        timestampLabel.text = myStringafd
        
        if let imageFile : PFFile = post?.media {
            imageFile.getDataInBackground(block: { (data, error) in
                if error == nil {
                    DispatchQueue.main.async {
                        // Async main thread
                        let image = UIImage(data: data!)
                        self.postDetailImageView.image = image
                    }
                } else {
                    print(error!.localizedDescription)
                }
            })
        }
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
