//
//  Student.swift
//  Bookworm
//
//  Created by Yashavika Singh on 19.06.24.
//

import Foundation
import SwiftUI
import SwiftData


@Model
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
    
}
