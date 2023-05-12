import Foundation

struct Gekocht: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Gekocht] {
        
        var tasks = [Gekocht]()
        
        tasks.append(Gekocht(title: "Stoel"))
        tasks.append(Gekocht(title: "Tafel"))
        tasks.append(Gekocht(title: "Kapstok"))
        tasks.append(Gekocht(title: "Bank"))
        tasks.append(Gekocht(title: "Lamp"))
        tasks.append(Gekocht(title: "Bureaustoel"))
        
        return tasks
    }
}
