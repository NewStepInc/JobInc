//
//  HomeViewController.swift
//  JobInc
//
//  Created by Nick on 10/24/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit
import SpriteKit

class HomeViewController: UIViewController {

    private var skView: SKView!
    private var floatingCollectionScene: BubblesScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = SKColor.init(red: 59.0/255.0, green: 139.0/255.0, blue: 169.0/255.0, alpha: 1.0)
        
        var bounds: CGRect = UIScreen.mainScreen().bounds
        bounds.origin.y += 100
        bounds.size.height -= 200
        skView = SKView(frame: bounds)
        view.addSubview(skView)
        
        floatingCollectionScene = BubblesScene(size: skView.bounds.size)
        floatingCollectionScene.topOffset = 0
        floatingCollectionScene.bottomOffset = 0
        floatingCollectionScene.viewController = self
        skView.presentScene(floatingCollectionScene)
        
        
        for i in 0..<GlobalUtil.jobCount {
            let node = BubbleNode.instantiate(i)
            floatingCollectionScene.addChild(node)
        }
    }

}
