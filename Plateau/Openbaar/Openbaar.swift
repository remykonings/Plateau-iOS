import Foundation

struct Openbaar: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Openbaar] {
        
        var tasks = [Openbaar]()
        
        tasks.append(Openbaar(title: "Kruk 1", filename: "Kruk1.usdz", tag1: "keuken", tag2: "hoog"))
        tasks.append(Openbaar(title: "Kruk 2", filename: "Kruk2.usdz", tag1: "keuken", tag2: "hoog"))
        tasks.append(Openbaar(title: "Kruk 3", filename: "Kruk3.usdz", tag1: "woonkamer", tag2: "stof"))
        tasks.append(Openbaar(title: "Kruk 4", filename: "Kruk4.usdz", tag1: "woonkamer", tag2: "hoog"))
        tasks.append(Openbaar(title: "Kruk 5", filename: "Kruk5.usdz", tag1: "keuken", tag2: "leer"))
        tasks.append(Openbaar(title: "Kruk 6", filename: "Kruk6.usdz", tag1: "woonkamer", tag2: "stof"))
        tasks.append(Openbaar(title: "Kussen 1", filename: "Kussen1.usdz", tag1: "bank", tag2: "stof"))
        tasks.append(Openbaar(title: "Kussen 2", filename: "Kussen2.usdz", tag1: "vloer", tag2: "stof"))
        tasks.append(Openbaar(title: "Schoen 1", filename: "Schoen1.usdz", tag1: "heren", tag2: "leer"))
        tasks.append(Openbaar(title: "Schoen 2", filename: "Schoen2.usdz", tag1: "heren", tag2: "stof"))
        tasks.append(Openbaar(title: "Schoen 3", filename: "Schoen3.usdz", tag1: "dames", tag2: "leer"))
        tasks.append(Openbaar(title: "Tafel 1", filename: "Tafel1.usdz", tag1: "hout", tag2: "hoog"))
        tasks.append(Openbaar(title: "Tafel 2", filename: "Tafel2.usdz", tag1: "laag", tag2: "woonkamer"))
        tasks.append(Openbaar(title: "Tafel 3", filename: "Tafel3.usdz", tag1: "eettafel", tag2: "pvc"))
        
        return tasks
    }
}
