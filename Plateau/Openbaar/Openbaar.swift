import Foundation

struct Openbaar: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    
    static func getDummyTasks() -> [Openbaar] {
        
        var tasks = [Openbaar]()
        
        tasks.append(Openbaar(title: "Magarita", filename: "magarita.usdz"))
                tasks.append(Openbaar(title: "Hawaii", filename: "hawaii.usdz"))
                tasks.append(Openbaar(title: "Salami", filename: "salami.usdz"))
                tasks.append(Openbaar(title: "Ananas", filename: "ananas.usdz"))
                tasks.append(Openbaar(title: "Grill", filename: "grill.usdz"))
                tasks.append(Openbaar(title: "Sate", filename: "sate.usdz"))
                tasks.append(Openbaar(title: "Cheese", filename: "cheese.usdz"))
                tasks.append(Openbaar(title: "Pepperoni", filename: "pepperoni.usdz"))
                tasks.append(Openbaar(title: "Double Cheese", filename: "double_cheese.usdz"))
                tasks.append(Openbaar(title: "Four Cheeses", filename: "four_cheeses.usdz"))
                
                return tasks
            }
        }
