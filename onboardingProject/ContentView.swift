//
//  ViewController.swift
//  onboardingProject
//
//  Created by Angelina Olmedo on 2/6/20.
//  Copyright © 2020 Angelina Olmedo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Angelina Olmedo")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Software Developer")
                        .font(.subheadline)
                    Spacer()
                    Text("San Francisco, California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }.onAppear(
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
