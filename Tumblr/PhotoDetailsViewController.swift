//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Padmanabhan, Avinash on 3/30/17.
//  Copyright © 2017 Intuit. All rights reserved.
//

import UIKit
import AFNetworking

class PhotoDetailsViewController: UIViewController {
    @IBOutlet weak var photoDetail: UIImageView!
    var post: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let photos = post.value(forKeyPath: "photos") as? [NSDictionary] {
            let imageUrlString = (photos[0].value(forKeyPath: "original_size.url") as? String)!
            if let imageUrl = URL(string: imageUrlString) {
                photoDetail.setImageWith(imageUrl)
            }
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
