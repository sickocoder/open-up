//
//  TodaysTestimonialList.swift
//  OpenUp
//
//  Created by José Tony on 07/04/23.
//

import SwiftUI

struct TodaysTestimonialItem: View {
  let testimonal: TTestimonial
  
  var body: some View {
    HStack {
      Image(systemName: "house")
        .frame(width: 74, height: 74)
        .background(Color.black.opacity(0.1))
        .cornerRadius(8)
      
      VStack (alignment: .leading, spacing: 1) {
        Text(testimonal.createdAt.toLocalFormat())
          .font(.caption)
        
        Text(testimonal.title)
          .bold()
          .lineLimit(1)
        
        
        Spacer()
        
        HStack {
          Text(testimonal.category)
            .font(.footnote)
            .padding(2)
            .padding(.horizontal, 8)
            .background(
              Capsule()
                .strokeBorder(Color.black, lineWidth: 0.7)
                .clipped()
            )
          
          Text(testimonal.time)
            .font(.caption)
          
          Spacer()
          
          Image(systemName: testimonal.downloaded ? "arrow.down.circle.fill" : "arrow.down.circle")
            .foregroundColor(testimonal.downloaded ? .accentColor : Color.primary)
          .fontWeight(.semibold)             }
      }
      .padding(.vertical, 6)
    }
  }
}

struct TodaysTestimonialItem_Previews: PreviewProvider {
  static var previews: some View {
    TodaysTestimonialItem(testimonal: listOfTodaysTestimonals[0])
  }
}

