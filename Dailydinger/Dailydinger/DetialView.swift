//
//  DetialView.swift
//  Dailydinger
//
//  Created by Alexandar Hristov on 9.11.22.
//

import SwiftUI

struct DetialView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                Label("Start Meeting", systemImage: "timer")
            }
        }
    }
}

struct DetialView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetialView(scrum: DailyScrum.sampleData[0])
        }
    }
}
