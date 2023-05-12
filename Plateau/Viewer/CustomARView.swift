//
//  CustomARView.swift
//  Plateau
//
//  Created by Remy Konings on 03/05/2023.
//

import ARKit
import RealityKit
import SwiftUI

class CustomARView: ARView {
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
    }
    
    dynamic required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init() {
        self.init(frame: UIScreen.main.bounds)
        
        placeModel()
    }
    
    func configuration() {
        // Tracks the device relative to it's enviorment
        let configuration = ARWorldTrackingConfiguration()
        session.run(configuration)
    }
    
    func anchor() {
        // Attach anchors to detected planes
        let coordinateAnchor = AnchorEntity(plane: .horizontal)
        
        // Add an anchor to the scene
        scene.addAnchor(coordinateAnchor)
    }
    
    func placeModel() {
        // load an entity from a .usdz file
        if let entity = try? Entity.load(named: "gramophone") {
            
            // Create a collision component that matches the entity's shape
            let collisionShape = ShapeResource.generateBox(size: entity.visualBounds(relativeTo: nil).extents)
            let collision = CollisionComponent(shapes: [collisionShape])
            entity.components.set(collision)
            
            // Add gestures to translate the model
            
            
            let anchor = AnchorEntity(plane: .horizontal)
            anchor.addChild(entity)
            
            // Add the scene to the anchor
            scene.addAnchor(anchor)
        }
    }
}
