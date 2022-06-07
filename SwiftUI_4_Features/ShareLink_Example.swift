//
//  ShareLink_Example.swift
//  SwiftUI_4_Features
//
//  Created by Baturay Koc on 7.06.2022.
//

import SwiftUI

struct ShareLink_Example: View {
    var carImage = ImageFile(image: Image("gt_sport"))
    var body: some View {
        ShareLink(item: carImage, preview: SharePreview("cars", image: carImage.image)) {
            Text("Share Image!")
        }
    }
}

struct ShareLink_Example_Previews: PreviewProvider {
    static var previews: some View {
        ShareLink_Example()
    }
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation{
        ProxyRepresentation(exporting: \.image)
    }
}
