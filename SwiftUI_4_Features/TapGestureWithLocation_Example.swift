//
//  TapGestureWithLocation_Example.swift
//  SwiftUI_4_Features
//
//  Created by Baturay Koc on 7.06.2022.
//

import SwiftUI

struct TapGestureWithLocation_Example: View {
    var body: some View {
        Rectangle()
            .fill(.red)
            .frame(height: 300)
            .padding()
            .onTapGesture(coordinateSpace: .global) { location in
                print(location)
            }
    }
}

struct TapGestureWithLocation_Example_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureWithLocation_Example()
    }
}
