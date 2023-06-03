//
//  OPTimerText.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import SwiftUI

struct OPTimerText: View {
  @State var startDate = Date.now
  @State var timeElapsed: Int = 0
  
  let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  
  var body: some View {
    Text(getTimeString(timeElapsed: timeElapsed))
      .frame(width: 56)
      .onReceive(timer) { firedDate in
        timeElapsed = Int(firedDate.timeIntervalSince(startDate))
      }
  }
  
  func getTimeString(timeElapsed: Int) -> String {
    let minutes = timeElapsed / 60
    let seconds = timeElapsed - (minutes * 60)
    
    return "\(minutes.paddWithZero()):\(seconds.paddWithZero())"
  }
}

struct OPTimerText_Previews: PreviewProvider {
  static var previews: some View {
    OPTimerText()
  }
}

