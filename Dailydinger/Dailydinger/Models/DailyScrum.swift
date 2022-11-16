//
//  DailyScrum.swift
//  Dailydinger
//
//  Created by Alexandar Hristov on 31.10.22.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title : String
    var attendees : [Attendee]?
    var lengthInMinutes : Int
    var theme : Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String]? = nil, lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = (attendees as? [DailyScrum.Attendee])?.map { Attendee(name: $0.name)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String?
        
        init(id: UUID = UUID(), name: String? = nil)
        {
            self.id = id
            self.name = name
        }
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

