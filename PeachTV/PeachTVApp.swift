//
//  PeachTVApp.swift
//  PeachTV
//
//  Created by Anderson  Vulto on 29/05/23.
//

import SwiftUI

let images = Images()

@main
struct PeachTVApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Tabbar()
                    .environmentObject(images)
            }
        }
    }
}
