//
//  DailydingerApp.swift
//  Dailydinger
//
//  Created by Alexandar Hristov on 31.10.22.
//

import SwiftUI

@main
struct DailydingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
