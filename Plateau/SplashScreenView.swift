import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    
    // Customise your SplashScreen here
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("br-logo")
                }
                .scaleEffect(size)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.0
                    }
                }
                VStack {
                    Text("Plateau")
                        .font(Font.custom("Inter-Bold", size: 44))
                        .foregroundColor(Color("TextColor"))
                    Text("Augmented Reality")
                        .font(Font.custom("Inter-Bold", size: 17))
                        .foregroundColor(Color("TextColor"))
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
