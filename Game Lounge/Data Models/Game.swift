import Foundation
import SwiftData

@Model
final class Game {
    var displayName: String
    var id: String
    var details: String
    var path: String
    var type: Int
    
    init(displayName: String = "", id: String = "", details: String = "", path: String = "", type: Int = 1) {
        self.displayName = displayName
        self.id = id
        self.details = details
        self.path = path
        self.type = type
    }
}
