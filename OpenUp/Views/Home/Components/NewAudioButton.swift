//
//  NewAudioButton.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import SwiftUI

struct NewAudioButton: View {
  var onPress: () -> Void
  
  var body: some View {
    Button {
      onPress()
    } label: {
      Label("Partilhar Como Me Sinto", systemImage: "mic")
//      Image(systemName: "mic")
        .fontWeight(.bold)
    }
    .buttonStyle(.borderedProminent)
    .buttonBorderShape(.roundedRectangle(radius: .infinity))
    .controlSize(.large)
  }
}

struct NewAudioButton_Previews: PreviewProvider {
  static var previews: some View {
    NewAudioButton {
      print("pressed")
    }
  }
}

