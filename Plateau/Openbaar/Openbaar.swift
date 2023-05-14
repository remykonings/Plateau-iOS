import Foundation

struct Openbaar: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    var tag1: String
    var tag2: String
    
    static func getDummyTasks() -> [Openbaar] {
        
        var tasks = [Openbaar]()
        
        tasks.append(Openbaar(title: "Magarita", filename: "magarita.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Hawaii", filename: "hawaii.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Salami", filename: "salami.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Ananas", filename: "ananas.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Grill", filename: "grill.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Sate", filename: "sate.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Cheese", filename: "cheese.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Pepperoni", filename: "pepperoni.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Double Cheese", filename: "double_cheese.usdz", tag1: "tag1", tag2: "tag2"))
                tasks.append(Openbaar(title: "Four Cheeses", filename: "four_cheeses.usdz", tag1: "tag1", tag2: "tag2"))
                
                return tasks
            }
        }
