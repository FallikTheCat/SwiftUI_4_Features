//
//  GaugeView_Example.swift
//  SwiftUI_4_Features
//
//  Created by Baturay Koc on 7.06.2022.
//

import SwiftUI

struct GaugeView_Example: View {
    var body: some View {
        let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
        Gauge(value: 0.4, label: {
            Text("yaraksayar")
                .font(.caption2)
        }, currentValueLabel: {
            Text("%40")
                .font(.caption)
        })
        .gaugeStyle(.accessoryLinear)
        .tint(gradient)
        .padding()
    }
}

struct GaugeView_Example_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView_Example()
    }
}
