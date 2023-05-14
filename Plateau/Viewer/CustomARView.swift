import ARKit
import RealityKit
import SwiftUI

class CustomARView: ARView {
    
    let filename: String
        
    required init(frame frameRect: CGRect) {
        self.filename = ""
        super.init(frame: frameRect)
    }
    
    required init(frame frameRect: CGRect, filename: String) {
        self.filename = filename
        super.init(frame: frameRect)
        loadModel(filename: filename)
    }
    
    dynamic required init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(filename: String) {
        self.init(frame: UIScreen.main.bounds, filename: filename)
        loadModel(filename: filename)
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
    
    func loadModel(filename: String) {
        // load an entity from a .usdz file
        if let entity = try? Entity.load(named: filename) {
            
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
