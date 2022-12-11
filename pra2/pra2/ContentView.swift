//
//  ContentView.swift
//  pra2
//
//  Created by 丸本椋太 on 2022/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Mappra2()
                .ignoresSafeArea(edges: .top)
                .frame(height: 400)
            
            Imagepra2()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                //            Image(systemName: "globe")
                //                .imageScale(.large)
                //                .foregroundColor(.accentColor)
                Text("")
                    .font(.title)
                HStack{
                    Text("")
                        .font(.subheadline)
                    Spacer()
                    Text("")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("")
                    .font(.title2)
                Text("")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
