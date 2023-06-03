//
//  OPPlayButton.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import SwiftUI

enum OPPlayButtonAction {
  case play
  case stop
}

struct OPPlayButton: View {
  @State var isRecording: Bool = false
  @State var isShown: Bool = false
  
  let onPressed: (_ action: OPPlayButtonAction) -> ()
  
  var body: some View {
    HStack {
      if isRecording {
        OPTimerText()
          .opacity(isShown ? 1 : 0)
          .onAppear {
            withAnimation {
              isShown.toggle()
            }
          }
      }
      
      Button {
        onPressed(isRecording ? .stop : .play)
        
        withAnimation {
          if isRecording {
            isShown = false
          }
          
          isRecording.toggle()
        }
      } label: {
        HStack {
          Label(isRecording ? "Parar" : "Gravar", systemImage: isRecording ? "stop.fill" : "mic.fill")
            .fontWeight(.bold)
        }
      }
      .tint(.red)
      .controlSize(.large)
      .buttonStyle(.borderedProminent)
      .buttonBorderShape(.capsule)
    }
    
  }
}

struct OPPlayButton_Previews: PreviewProvider {
  static var previews: some View {
    OPPlayButton(onPressed: { action in
      print("pressed")
    })
      .preferredColorScheme(.dark)
  }
}




