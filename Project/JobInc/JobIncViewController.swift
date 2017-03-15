//
//  JobIncViewController.swift
//  JobInc
//
//  Created by Nick on 10/25/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class JobIncViewController: UIViewController {

    @IBOutlet var remainJobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        remainJobLabel.text = "\(GlobalUtil.jobCount) more to go"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onClose(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {});
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
