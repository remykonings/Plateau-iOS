import SwiftUI

struct GedeeldView: View {
    
    @State private var searchText = ""
    
    var tasks = Gedeeld.getDummyTasks()
    
    var body: some View {
        
        let filteredTasks = tasks.filter { task in
                searchText.isEmpty || task.title.localizedCaseInsensitiveContains(searchText)
        }
        
        return ZStack {
            
            Color("Background")
            
            ScrollView {
                
                ZStack {
                    
                    Rectangle()
                        Color("Background")
                    
                    VStack (spacing: 0) {
                        ForEach(filteredTasks) { task in
                            
                            HStack {
                                Image("ic-thumbnail")
                                Text(task.title)
                                    .font(Font.taskText)
                                Spacer()
                                NavigationLink(destination: CameraView(filename: task.filename)) {
                                            Image(systemName: "camera")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 28, height: 28)
                                                .foregroundColor(Color.accentColor)
                                        }
                            }
                            Divider()
                                .padding(.vertical, 4)
                        }
                        .padding(.vertical, 4)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .navigationTitle("Gedeeld")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $searchText, prompt: "Zoek in Gedeeld")
                .navigationBarItems(trailing:
                    NavigationLink(destination: ProfielView()) {
                        Image(systemName: "person.crop.circle")
                    }
                )
            }
        }
    }
}

struct GedeeldView_Previews: PreviewProvider {
    static var previews: some View {
        GedeeldView()
    }
}
