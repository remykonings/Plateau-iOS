import SwiftUI

struct CameraView: View {
    
    var filename: String
    
    var body: some View {
        CustomARViewRepresentable(filename: filename)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView(filename: "hawaii.usdz")
    }
}
