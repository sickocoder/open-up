//
//  HomeHeader.swift
//  OpenUp
//
//  Created by José Tony on 08/04/23.
//

import SwiftUI

struct HomeHeader: View {
  var body: some View {
    HStack(spacing: 14) {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
        .frame(width: 40, height: 40)
        .background(.black.opacity(0.1))
        .cornerRadius(.infinity)
      
      Text("Jossano Luis")
        .bold()
      
      Spacer()
      
      
      Image(systemName: "bell")
        .fontWeight(.semibold)
        .imageScale(.large)
      
      
    }
  }
}

struct HomeHeader_Previews: PreviewProvider {
  static var previews: some View {
    HomeHeader()
  }
}

