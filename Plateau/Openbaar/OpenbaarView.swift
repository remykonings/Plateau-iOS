import SwiftUI

struct OpenbaarView: View {
    
    @State private var searchText = ""
    
    var tasks = Openbaar.getDummyTasks()
    
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
                                Button {
                                    // TODO: Add new task
                                } label: {
                                    Image(systemName: "icloud.and.arrow.down")
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
                .navigationTitle("Openbaar")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $searchText, prompt: "Zoek in Openbaar")
                .navigationBarItems(trailing:
                    NavigationLink(destination: ProfielView()) {
                        Image(systemName: "person.crop.circle")
                    }
                )
                .navigationBarItems(trailing:
                    NavigationLink(destination: CameraView()) {
                        Image(systemName: "camera")
                        .tabViewStyle(.hidden) // hide the tab bar
                    }
                )
            }
        }
    }
}

struct OpenbaarView_Previews: PreviewProvider {
    static var previews: some View {
        OpenbaarView()
    }
}