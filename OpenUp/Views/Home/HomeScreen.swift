//
//  HomeScreen.swift
//  OpenUp
//
//  Created by José Tony on 08/04/23.
//

import SwiftUI

let expandedRecordModalDentent: PresentationDetent = .fraction(0.7)

struct HomeScreen: View {
  @State private var showsTodaysTestimonialsSheet = false
  @State private var showsRecordSheet = false
  @State private var presentationDetents: PresentationDetent = .fraction(0.3)
  
  let testimonal = listOfTodaysTestimonals[0]
  
  
  var body: some View {
    NavigationView {
      ZStack {
        Color.appBackground
          .ignoresSafeArea(.all)
        
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .leading) {
            HomeHeader()
            
            TitledDivider(title: "Testemunhos")
              .padding(.top)
              .padding(.bottom)
            
            TestimonalSection(
              sectionTitle: "Motivacional",
              testimonals: [
                listOfTodaysTestimonals[0],
                listOfTodaysTestimonals[1]
              ]
            ).padding(.bottom)
            
            TestimonalSection(
              sectionTitle: "Mood Booster",
              testimonals: [listOfTodaysTestimonals[2]]
            ).padding(.bottom)
            
            Spacer()
          }
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding()
        }
        
      }
//      .overlay(alignment: .bottom) {
//        NewAudioButton { showsRecordSheet.toggle() }
//      }
    }
    .sheet(isPresented: $showsTodaysTestimonialsSheet) {
      TodaysTestimonialsSheet()
    }
    .sheet(isPresented: $showsRecordSheet) {
      NewRecordSheet(presentationDetents: $presentationDetents) {
          presentationDetents = expandedRecordModalDentent
      }
      .presentationDetents([.fraction(0.3), expandedRecordModalDentent], selection: $presentationDetents)
    }
    .onAppear {
//      showsTodaysTestimonialsSheet.toggle()
    }
  }
}

struct HomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    HomeScreen()
  }
}


