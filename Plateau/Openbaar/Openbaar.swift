import Foundation

struct Openbaar: Identifiable {
    
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Openbaar] {
        
        var tasks = [Openbaar]()
        
        tasks.append(Openbaar(title: "Magarita"))
        tasks.append(Openbaar(title: "Hawaii"))
        tasks.append(Openbaar(title: "Salami"))
        tasks.append(Openbaar(title: "Ananas"))
        tasks.append(Openbaar(title: "Grill"))
        tasks.append(Openbaar(title: "Sate"))
        tasks.append(Openbaar(title: "Cheese"))
        tasks.append(Openbaar(title: "Pepperoni"))
        tasks.append(Openbaar(title: "Double Cheese"))
        tasks.append(Openbaar(title: "Four Cheeses"))
        
        return tasks
    }
}
