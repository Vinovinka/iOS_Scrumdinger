//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Виктория Виноградова on 09.01.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
