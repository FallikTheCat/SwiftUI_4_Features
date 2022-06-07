//
//  ContentView.swift
//  SwiftUI_4_Features
//
//  Created by Baturay Koc on 7.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            PresentationDetents_Example()
            Spacer()
            ShareLink_Example()
            Spacer()
            GaugeView_Example()
            Spacer()
            TapGestureWithLocation_Example()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
