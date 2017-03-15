//
//  PageContentViewController.swift
//  JobInc
//
//  Created by Nick on 10/26/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class PageItemController: UIViewController {

    // MARK: - Variables
    var itemIndex: Int = 0 // ***
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    @IBOutlet var contentImageView: UIImageView!
    @IBOutlet var contentLabel: UILabel!

    @IBAction func onStart(sender: AnyObject) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: HomeViewController = storyboard.instantiateViewControllerWithIdentifier("boardHome") as! HomeViewController
        self.presentViewController(vc, animated: true, completion: nil)
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if itemIndex == 1 {
            contentImageView!.image = UIImage(named: imageName)
            contentLabel.hidden = true
        }
        else {
            contentImageView.hidden = true
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
