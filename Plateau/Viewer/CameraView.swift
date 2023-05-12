import SwiftUI

struct CameraView: View {
    
    var body: some View {
        CustomARViewRepresentable()
            .edgesIgnoringSafeArea(.all)
    }
    
    struct CameraView_Previews: PreviewProvider {
        static var previews: some View {
            CameraView()
        }
    }
}
