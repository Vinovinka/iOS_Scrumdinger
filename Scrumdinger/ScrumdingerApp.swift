//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Виктория Виноградова on 09.01.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ScrumsView(scrums: $store.scrums) {
                    ScrumStore.save(scrums: store.scrums) { result in
                        if case .failure(let error) = result {
                            fatalError(error.localizedDescription)
                        }
                    }
                }            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
        }
    }
}
