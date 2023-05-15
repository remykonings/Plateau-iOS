import Foundation

struct Gekocht: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Gekocht] {
        
        var tasks = [Gekocht]()
        
        tasks.append(Gekocht(title: "Bank 1", filename: "Bank1.usdz", tag1: "woonkamer", tag2: "leer"))
        tasks.append(Gekocht(title: "Bank 2", filename: "Bank2.usdz", tag1: "woonkamer", tag2: "stof"))
        tasks.append(Gekocht(title: "Bank 3", filename: "Bank3.usdz", tag1: "woonkamer", tag2: "stof"))
        tasks.append(Gekocht(title: "Bank 4", filename: "Bank4.usdz", tag1: "woonkamer", tag2: "kussens"))
        tasks.append(Gekocht(title: "Stoel 1", filename: "Stoel1.usdz", tag1: "tafel", tag2: "hout"))
        tasks.append(Gekocht(title: "Stoel 2", filename: "Stoel2.usdz", tag1: "tafel", tag2: "pvc"))
        tasks.append(Gekocht(title: "Stoel 3", filename: "Stoel3.usdz", tag1: "eettafel", tag2: "hout"))
        tasks.append(Gekocht(title: "Stoel 4", filename: "Stoel4.usdz", tag1: "laag", tag2: "stof"))
        tasks.append(Gekocht(title: "Stoel 5", filename: "Stoel5.usdz", tag1: "tafel", tag2: "leer"))
        
        return tasks
    }
}

