//
//  ParticleScene.swift
//  JobInc
//
//  Created by Nick on 10/25/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit
import SpriteKit

class ParticleScene: SKScene, SKPhysicsContactDelegate {

    let emitter = SKEmitterNode(fileNamed: "confetti")!
    
    
    override func didMoveToView(view: SKView) {
        
        
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        self.backgroundColor = SKColor.init(red: 59.0/255.0, green: 184.0/255.0, blue: 230.0/255.0, alpha: 1.0)
        
        
        emitter.position = CGPoint(x:frame.width / 2, y:frame.height - 50)
        
        emitter.particleBirthRate = 50
        emitter.particleLifetime = 3.0
        emitter.particleColor = UIColor.init(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        emitter.particleColorRedRange = 0.8
        emitter.particleColorGreenRange = 0.8
        emitter.particleColorBlueRange = 0.8
        
        emitter.particleSpeed = 100
        emitter.particleSpeedRange = 50
        emitter.emissionAngle = CGFloat(-M_PI_2)
        emitter.emissionAngleRange = CGFloat(M_PI_2)
        emitter.yAcceleration = -150
        
        emitter.particleRotationRange = 10.0
        emitter.particleScale = 0.1
        emitter.particleScaleRange = 0.2
        
        
        
//        emitter!.particleColorSequence = nil
//        emitter!.particleColorBlendFactor = 1.0
        
        self.addChild(emitter)
        
//        let action = SKAction.runBlock({
//            
////            let random = Int(arc4random_uniform(UInt32(self.colors.count)))
//            
//            
////            self.emitter.particleColor = self.colors[random];
////            print(random)
//        })
//        
//        let wait = SKAction.waitForDuration(0.1)
//        
//        self.runAction(SKAction.repeatActionForever( SKAction.sequence([action,wait])))
        
        
    }
}
