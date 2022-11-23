//
//  Mappra2.swift
//  pra2
//
//  Created by 丸本椋太 on 2022/09/25.
//

import SwiftUI
import MapKit

struct Mappra2: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.723_248, longitude:139.594_345),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.0007, longitudeDelta: 0.0007))
    var body: some View{
        Map(coordinateRegion: $region)
    }
}

struct Mappra2_Previews: PreviewProvider {
    static var previews: some View {
        Mappra2()
    }
}
