//
//  PresentationDetens_Example.swift
//  SwiftUI_4_Features
//
//  Created by Baturay Koc on 7.06.2022.
//

import SwiftUI

struct PresentationDetents_Example: View {
    @State var showView: Bool = false
    var body: some View {
        VStack {
            Button{
                showView.toggle()
            } label: {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }.sheet(isPresented: $showView) {
                VStack{
                    Text("Hello, sheet!")
                }
                //Custom detents
                    .presentationDetents([.small, .medium, .large])
                    .presentationDragIndicator(.automatic)
            }
        }
    }
}

//Small Custom Detent
extension PresentationDetent{
    static let small = Self.height(100)
}

struct PresentationDetens_Example_Previews: PreviewProvider {
    static var previews: some View {
        PresentationDetents_Example()
    }
}
