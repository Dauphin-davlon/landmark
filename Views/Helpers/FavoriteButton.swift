//
//  FavoriteButton.swift
//  landmark
//
//  Created by Deborah Alonge on 11/21/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        }
        label:{
            Label("Toggle Favoriite", systemImage: isSet ? "star.fill" : "star").labelStyle(.iconOnly).foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet : .constant(true))
}
