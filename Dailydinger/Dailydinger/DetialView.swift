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
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                    //                    .accessibilityLabel("A Start Meeting Label with timer icon.")
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    //                        .font(.title3)
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                    //                        .font(.title3)
                }
                .accessibilityElement(children: .combine)
                
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    //                        .font(.title3)
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(5)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(5)
                }
                //                .font(.title3)
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees!) { attendee in
                    Label(attendee.name ?? "User", systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
    }
}

struct DetialView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetialView(scrum: DailyScrum.sampleData[2])
        }
    }
}
