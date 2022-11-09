//
//  DailyScrum.swift
//  Dailydinger
//
//  Created by Alexandar Hristov on 31.10.22.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title : String
    var attendees : [String]?
    var lengthInMinutes : Int
    var theme : Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String]? = nil, lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .navy),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: nil, lengthInMinutes: 10, theme: .poppy)
    ]
}

