//
//  SimpleTestimonalListItem.swift
//  OpenUp
//
//  Created by José Tony on 08/04/23.
//

import SwiftUI

struct SimpleTestimonalListItem: View {
  let testimonal: TTestimonial
  var body: some View {
    VStack (alignment: .leading, spacing: 1) {
      Text(testimonal.createdAt.toLocalFormat())
        .font(.caption)
      
      Text(testimonal.title)
        .bold()
        .lineLimit(1)
        .padding(.bottom, 4)
      
      HStack {
        Text(testimonal.time)
          .font(.caption)
        
        Spacer()
        
        Image(systemName: testimonal.downloaded ? "arrow.down.circle.fill" : "arrow.down.circle")
          .foregroundColor(testimonal.downloaded ? .init(hex: "#FFBC2D") : Color.primary)
          .fontWeight(.semibold)
      }
    }
    .padding(.vertical, 6)
  }
}

struct SimpleTestimonalListItem_Previews: PreviewProvider {
  static var previews: some View {
    SimpleTestimonalListItem(testimonal: listOfTodaysTestimonals[0])
  }
}

