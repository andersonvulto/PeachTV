//
//  Highlight.swift
//  PearTV
//
//  Created by Fabrizio Narciso on 23/05/23.
//

import SwiftUI
import AVKit


struct Banner: View {
    @State private var currentPageIndex = 0
    @EnvironmentObject var images: Images
    
    let timer = Timer.publish(every: 10, on: .current, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $currentPageIndex) {
            ForEach(images.images.count - 2 ..< images.images.count,id: \.self) { index in
                Card(title:images.images[index].title,sinops:images.images[index].sinopse,indic:images.images[index].classificacao, imagem: images.images[index].imageRef,video: images.images[index].video)
            }
        }
        .tabViewStyle(.page)
        .onReceive(timer) { _ in
            currentPageIndex = (currentPageIndex + 1)
        }
    }
}

struct Card: View {
    @State var title: String
    @State var sinops: String
    @State var indic: String
    @State var imagem: String
    @State var video: String
    @State var timer = false
    @ObservedObject var playerManager = PlayerManager()
    
    var body: some View {
        
        
        TimelineView(.periodic(from: .now, by: 1)) { context in
            if timer == false {
                ZStack {
                    Image(imagem)
                        .resizable()
                    VStack {
                        Spacer()
                        Text (title)
                            .font(.largeTitle)
                        VStack {
                            Label("classificação: \(indic)", systemImage:"exclamationmark.triangle" )
                            HStack {
                                Spacer()
                                Text(sinops)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom,40)
                               Spacer()
                            }
                        }
                    }
                }
            } else {
                ZStack {
                    VideoPlayer(player: playerManager.player!)
                        .disabled(true)
                    VStack {
                        Spacer()
                        Text (title)
                            .font(.largeTitle)
                        VStack {
                            Label("classificação: \(indic)", systemImage:"exclamationmark.triangle" )
                            HStack {
                                Spacer()
                                Text(sinops)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom,40)
                               Spacer()
                            }
                        }
                        .background(
                            Rectangle()
                                .fill(Material.ultraThick.opacity(0.05))
                        )

                    }
                }
            }
        }
        .onAppear(){
            timer = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                timer = true
            }
            playerManager.videoName = video
            playerManager.player?.play()
            playerManager.player?.isMuted = true
        }
        .onDisappear(){
            timer = false
        }
        
        
    }
}


struct Highlight_Previews: PreviewProvider {
    static var previews: some View {
        Banner()
    }
}

