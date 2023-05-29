//
//  Tab.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 23/05/23.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
        TabView {
            Buscar()
                .tabItem {
                    Label("Buscar", systemImage: "magnifyingglass")
                }
        }
    }
}
