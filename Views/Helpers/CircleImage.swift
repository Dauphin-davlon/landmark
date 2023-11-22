//
//  CircleImage.swift
//  landmark
//
//  Created by Deborah Alonge on 11/7/23.
//

import Foundation
import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image.clipShape(Circle()).overlay{
            Circle().stroke(.white, lineWidth: 4)
        }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
