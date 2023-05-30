//
//  SwiftUIView.swift
//  PeachTV
//
//  Created by Anderson  Vulto on 29/05/23.
//

import SwiftUI

struct SomeView: View {
    
    @EnvironmentObject var img: Images
    
    var body: some View {
        VStack {
            NavigationLink {
                
            } label: {
                HStack {
                    Text("title")
                        .font(.title2)
                        .bold()
                    Image(systemName: "chevron.right")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid (rows: [GridItem(.flexible())], spacing: 8) {
                    ForEach (img.images, id: \.self) {item in
                        Image(item.imageRef)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            
                    }
                    .frame(height: 90)
                    .padding(.leading)
                }
            }
            
        }
    }
}

