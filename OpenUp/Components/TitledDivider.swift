//
//  TitledDivider.swift
//  OpenUp
//
//  Created by José Tony on 08/04/23.
//

import SwiftUI

struct TitledDivider: View {
  let title: String
  var body: some View {
    HStack {
      VStack { Divider() }
        .padding()
      
      Text(title)
        .bold()
      
      VStack { Divider() }
        .padding()
    }
  }
}

struct TitledDivider_Previews: PreviewProvider {
  static var previews: some View {
    TitledDivider(title: "Testemunhos")
  }
}

