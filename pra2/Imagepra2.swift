//
//  Imagepra2.swift
//  pra2
//
//  Created by 丸本椋太 on 2022/09/25.
//

import SwiftUI

struct Imagepra2: View {
    var body: some View {
        Image("saori")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct Imagepra2_Previews: PreviewProvider {
    static var previews: some View {
        Imagepra2()
    }
}
