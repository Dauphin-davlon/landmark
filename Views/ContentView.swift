//
//  ContentView.swift
//  landmark
//
//  Created by Deborah Alonge on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Turtle Rock").font(.title)
                HStack {
                    Text("Joshue Tree National Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline).foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock").font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
