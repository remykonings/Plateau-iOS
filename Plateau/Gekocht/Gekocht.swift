import Foundation

struct Gekocht: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Gekocht] {
        
        var tasks = [Gekocht]()
        
        tasks.append(Gekocht(title: "Magarita", filename: "magarita.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Mercedes", filename: "hawaii.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "BMW", filename: "salami.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Susuki", filename: "ananas.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Tesla", filename: "grill.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Volvo", filename: "sate.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Honda", filename: "cheese.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Gekocht(title: "Jeep", filename: "pepperoni.usdz", tag1: "tag1", tag2: "tag2"))
                
                return tasks
            }
        }
