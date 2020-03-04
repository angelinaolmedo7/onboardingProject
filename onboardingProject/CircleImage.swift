//
//  CircleImage.swift
//  Landmarks
//
//  Created by Angelina Olmedo on 2/27/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("me")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
