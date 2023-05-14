import Foundation

struct Gedeeld: Identifiable {
    
    var id = UUID()
    var title: String
    var filename: String
    
    static func getDummyTasks() -> [Gedeeld] {
        
        var tasks = [Gedeeld]()
        
        tasks.append(Gedeeld(title: "Magarita", filename: "magarita.usdz"))
                tasks.append(Gedeeld(title: "Tafel", filename: "hawaii.usdz"))
                tasks.append(Gedeeld(title: "Stoel", filename: "salami.usdz"))
                tasks.append(Gedeeld(title: "Boek", filename: "ananas.usdz"))
                tasks.append(Gedeeld(title: "Kruk", filename: "grill.usdz"))
                
                return tasks
            }
        }
