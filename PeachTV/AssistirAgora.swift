//
//  AssistirAgora.swift
//  PeachTV
//
//  Created by Fabrizio Narciso on 29/05/23.
//

import SwiftUI

struct AssistirAgora: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack {
                ZStack{
                    Banner()
                    VStack {
                        HStack {
                            Text("Assitir")
                            Spacer()
                        }
                        HStack {
                            Text("Agora")
                            Spacer()
                        }
                        Spacer()
                    }
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                }
                .frame(height: 400)
                .padding(.bottom,-16)
                ScrollHorizontal(title: "Assita a estreias grátis", top10is: false, subtitleis: false, sinopseis: false)
                    .padding(.bottom,-16)
                ScrollHorizontal(title: "Mais populares no Peach TV+", top10is: true, subtitleis: false, sinopseis: false)
                    .padding(.bottom,-16)
                ScrollHorizontal(title: "Diversão em família", top10is: false, subtitleis: false, sinopseis: false)
                    .padding(.bottom,-16)
                ScrollHorizontal(title: "Filmes em destaque", top10is: false, subtitleis: true, sinopseis: false, subtitle:"Os principais títulos em um só lugar")
                
            }
        }
    }
}

struct AssistirAgora_Previews: PreviewProvider {
    static var previews: some View {
        AssistirAgora()
    }
}
