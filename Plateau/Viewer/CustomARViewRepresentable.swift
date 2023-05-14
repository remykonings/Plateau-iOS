import SwiftUI

struct CustomARViewRepresentable: UIViewRepresentable {
    
    var filename: String
    
    func makeUIView(context: Context) -> CustomARView {
        let customARView = CustomARView(frame: UIScreen.main.bounds, filename: filename)
        return customARView
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {
        // No need to update the view
    }
}
