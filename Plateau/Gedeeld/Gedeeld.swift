import Foundation

struct Gedeeld: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Gedeeld] {
        
        var tasks = [Gedeeld]()
        
        tasks.append(Gedeeld(title: "Schaal"))
        tasks.append(Gedeeld(title: "Kaars"))
        tasks.append(Gedeeld(title: "Beker"))
        tasks.append(Gedeeld(title: "Bord"))
        tasks.append(Gedeeld(title: "Glas"))
        tasks.append(Gedeeld(title: "Vork"))
        tasks.append(Gedeeld(title: "Mes"))
        
        return tasks
    }
}
