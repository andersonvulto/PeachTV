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
        
        
        //            Assistir_agora()
        //                .tabItem {
        //                    Label("Assitir Agora", systemImage: "play.circle.fill")
        //                }
        //            Originals()
        //                .tabItem {
        //                    Label("Originals", systemImage: "rectangle.fill")
        //                }
        //            Loja()
        //                .tabItem {
        //                    Label("Loja", systemImage: "bag.fill")
        //                }
        //            Biblioteca()
        //                .tabItem {
        //                    Label("Biblioteca", systemImage: "square.stack.fill")
        //                }
        //            Buscar()
        //                .tabItem {
        //                    Label("Buscar", systemImage: "magnifyingglass")
        //                }
        //
        //        }
        //    }
        //}
    }
}
