import Foundation

struct Gedeeld: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Gedeeld] {
        
        var tasks = [Gedeeld]()
        
        tasks.append(Gedeeld(title: "Kussen 1", filename: "Kussen1.usdz", tag1: "bank", tag2: "stof"))
        tasks.append(Gedeeld(title: "Kussen 2", filename: "Kussen2.usdz", tag1: "vloer", tag2: "stof"))
        
        return tasks
    }
}
