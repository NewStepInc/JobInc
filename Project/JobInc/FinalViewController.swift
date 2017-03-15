//
//  FinalViewController.swift
//  JobInc
//
//  Created by Nick on 10/25/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit
import SpriteKit

class FinalViewController: UIViewController {

    private var skView: SKView!
    private var particleScene: ParticleScene!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = SKColor.init(red: 59.0/255.0, green: 139.0/255.0, blue: 169.0/255.0, alpha: 1.0)
        
        let bounds: CGRect = UIScreen.mainScreen().bounds
        skView = SKView(frame: bounds)
        view.addSubview(skView)
        
        let label = UILabel(frame: CGRectMake(0, bounds.height/4, bounds.width, 50))
        label.textAlignment = NSTextAlignment.Center
        label.text = "YOU DID IT!"
        label.font = UIFont (name: "Arial", size: 50)
        label.textColor = UIColor.whiteColor()
        self.view.addSubview(label)
        
        let btnClose   = UIButton(type: UIButtonType.System) as UIButton
        btnClose.frame = CGRectMake(10, 50, 50, 50)
        btnClose.setTitle("X", forState: UIControlState.Normal)
        btnClose.setTitleColor(.whiteColor(), forState: UIControlState.Normal)
        btnClose.titleLabel!.font = UIFont (name: "Arial", size: 30)
        btnClose.addTarget(self, action: "exitApp", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnClose)
    
        let image = UIImage(named: "brag.png") as UIImage!
        let btnBrag   = UIButton(type: UIButtonType.System)
        btnBrag.frame = CGRectMake(bounds.width/2 - 25, bounds.height * 2 / 3, 50, 50)
        btnBrag.setBackgroundImage(image, forState: UIControlState.Normal)
        btnBrag.setTitle("brag", forState: UIControlState.Normal)
        btnBrag.setTitleColor(.whiteColor(), forState: UIControlState.Normal)
        btnBrag.titleEdgeInsets = UIEdgeInsetsMake(
            0.0, 0.0, -70, 0.0)
//        btnBrag.addTarget(self, action: "onBrag", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btnBrag)
        
        
        
        particleScene = ParticleScene(size: skView.bounds.size)
        skView.presentScene(particleScene)
    }

    func exitApp(sender:UIButton!)
    {
        self.dismissViewControllerAnimated(true, completion: {});
    }
    
    func onBrag(sender:UIButton!)
    {
        
    }
}
