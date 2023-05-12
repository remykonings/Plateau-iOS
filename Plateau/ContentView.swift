import SwiftUI

struct ContentView: View {
    
    var body: some View {
               
        VStack {
                
            TabView {
                
                NavigationView {
                    OpenbaarView()
                }
                    .tabItem {
                        Image(systemName: "doc.text.image")
                            .renderingMode(.template)
                        Text("Vandaag")
                    }
                
                NavigationView {
                    GekochtView()
                }
                    .tabItem {
                        Image(systemName: "building.2")
                            .renderingMode(.template)
                        Text("Gekocht")
                    }
                
                NavigationView {
                    GedeeldView()
                }
                    .tabItem {
                        Image(systemName: "person.2")
                            .renderingMode(.template)
                        Text("Gedeeld")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
