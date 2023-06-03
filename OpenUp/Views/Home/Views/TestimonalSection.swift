//
//  TestimonalSection.swift
//  OpenUp
//
//  Created by José Tony on 08/04/23.
//

import SwiftUI

struct TestimonalSection: View {
  let sectionTitle: String
  let testimonals: [TTestimonial]
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack {
        Text(sectionTitle)
          .bold()
        
        Spacer()
        
        Button("ver mais") {
          print("pressed")
        }
      }
      
      Divider()
      ForEach(testimonals) { testimonal in
        SimpleTestimonalListItem(testimonal: testimonal)
      }
      
      
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .padding()
    .background(.white)
    .cornerRadius(16)
  }
}

struct TestimonalSection_Previews: PreviewProvider {
  static var previews: some View {
    TestimonalSection(sectionTitle: "Test Section", testimonals: [listOfTodaysTestimonals[0]])
  }
}

