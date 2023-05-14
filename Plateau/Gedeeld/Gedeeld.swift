import Foundation

struct Gedeeld: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Gedeeld] {
        
        var tasks = [Gedeeld]()
        
        tasks.append(Gedeeld(title: "Magarita", filename: "magarita.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gedeeld(title: "Tafel", filename: "hawaii.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gedeeld(title: "Stoel", filename: "salami.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gedeeld(title: "Boek", filename: "ananas.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gedeeld(title: "Kruk", filename: "grill.usdz", tag1: "tag1", tag2: "tag2"))
                
                return tasks
            }
        }
