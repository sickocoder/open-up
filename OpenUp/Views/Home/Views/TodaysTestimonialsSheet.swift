//
//  TodaysTestimonialsSheet.swift
//  OpenUp
//
//  Created by José Tony on 07/04/23.
//

import SwiftUI

struct TodaysTestimonialsSheet: View {
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    
    VStack(alignment: .leading) {
      Text("Baseado em como se sente hoje...")
        .fontWeight(.semibold)
        .padding(.top)
      
      Spacer()
      
      ScrollView {
        
        ForEach(listOfTodaysTestimonals) { testimonal in
          Divider()
            .padding(.vertical)
          
          TodaysTestimonialItem(testimonal: testimonal)
        }
        
      }

    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .padding()
  }
}

struct TodaysTestimonialsSheet_Previews: PreviewProvider {
  static var previews: some View {
    TodaysTestimonialsSheet()
  }
}

