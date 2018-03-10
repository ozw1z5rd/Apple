//
//  ViewController.swift
//  swift3DDemo
//
//  Created by bigfoot on 21/11/17.
//  Copyright © 2017 bigfoot. All rights reserved.
//

import Cocoa
import SceneKit


class ViewController: NSViewController {

    @IBOutlet weak var sceneView: SCNView!
    
    func sceneSetup() {
        let scene = SCNScene()
        
        let boxGeometry = SCNBox( width: 5.0, height : 5.0, length: 5.0, chamferRadius: 1.5)
        let boxNode = SCNNode( geometry: boxGeometry )
        
        let sphereGeometry = SCNSphere( radius: 2.0 )
        let sphereNode = SCNNode( geometry: sphereGeometry )
        
        sphereNode.position = SCNVector3(x: 5,y: 5, z:5 )
        scene.rootNode.addChildNode(boxNode)
        scene.rootNode.addChildNode(sphereNode)
        
        sceneView.scene = scene
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneSetup()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

