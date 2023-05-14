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
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color("TextColor"))
                                }
                                .frame(width: 50, height: 50)
                                .cornerRadius(10.0)
                                VStack {
                                    Text(task.title)
                                        .font(Font.taskText)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    HStack {
                                        Text(task.tag1)
                                        Text(task.tag2)
                                    }
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(Font.taskAlarmText)
                                    .foregroundColor(Color("TextColor"))
                                }
                                Spacer()
                                NavigationLink(destination: CameraView(filename: task.filename)) {
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(Color.accentColor)
                                        Text("Bekijk")
                                            .foregroundColor(.white)
                                            .font(Font.taskAlarmText)
                                    }
                                    .frame(width: 70, height: 30)
                                    .cornerRadius(15.0)
                                }
                            }
                            Divider()
                                .padding(.vertical, 4)
                        }
                        .padding(.vertical, 4)
                    }
                    .padding(.horizontal, 22)
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

struct Previews_GedeeldView_Previews: PreviewProvider {
    static var previews: some View {
        GedeeldView()
    }
}
