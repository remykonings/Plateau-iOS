import Foundation

struct Gekocht: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    
    static func getDummyTasks() -> [Gekocht] {
        
        var tasks = [Gekocht]()
        
        tasks.append(Gekocht(title: "Magarita", filename: "magarita.usdz"))
                tasks.append(Gekocht(title: "Mercedes", filename: "hawaii.usdz"))
                tasks.append(Gekocht(title: "BMW", filename: "salami.usdz"))
                tasks.append(Gekocht(title: "Susuki", filename: "ananas.usdz"))
                tasks.append(Gekocht(title: "Tesla", filename: "grill.usdz"))
                tasks.append(Gekocht(title: "Volvo", filename: "sate.usdz"))
                tasks.append(Gekocht(title: "Honda", filename: "cheese.usdz"))
                tasks.append(Gekocht(title: "Jeep", filename: "pepperoni.usdz"))
                
                return tasks
            }
        }
