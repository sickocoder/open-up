//
//  NewRecordSheet.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import SwiftUI

let typesOfMoods = [
  "Motivacional",
  "Mood Booster",
  "Sad",
  "Mindset",
  "Good vibe"
]


struct NewRecordSheet: View {
  @Binding var presentationDetents: PresentationDetent
  @State var selectedMood = typesOfMoods[0]
  
  let onStopRecording: () -> ()
  private let firstMood = typesOfMoods[0]
  
  var didStopRecording: Bool {
    presentationDetents == expandedRecordModalDentent
  }
  
  @State var text: String = ""
  
  var body: some View {
    ZStack {
      Color(hex: "#040406")
        .ignoresSafeArea()
      
      VStack {
        HStack {
          Text("Como se sente?")
              .font(.title2)
              .fontWeight(.semibold)
            
          
          Spacer()
          
          Button {
            print("pressed cancelar")
          } label: {
            Image(systemName: "xmark")
              .imageScale(.medium)
              .bold()
          }
        }
        .padding()
        
        Spacer()
        
        
        if didStopRecording {
         
          TextField(
            "",
            text: $text,
            prompt: Text("De um titulo").foregroundColor(.white.opacity(0.5))
          )
            .foregroundColor(.white)
            .padding()
            .background(Color.white.opacity(0.1))
            .cornerRadius(10)
            .padding()
          
          
          Text("Como categoriza o seu audio?")
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
              ForEach(typesOfMoods, id: \.self) { mood in
                VStack(alignment: .leading) {
                  Spacer()
                  Text(mood)
                    .font(.title2)
                    .bold()
                    
                }
                .padding()
                .frame(width: 120, height: 120, alignment: .leading)
                .background(Color.white.opacity(0.1))
                .cornerRadius(16)
                .overlay {
                  RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.accentColor.opacity(mood == selectedMood ? 1 : 0), lineWidth: 4)
                }
                .padding(.leading, mood == firstMood ? 20 : 0)
                .onTapGesture {
                  withAnimation {
                    selectedMood = mood
                  }
                }
              }
            }
            .frame(height: 124)
          }
          .frame(height: 124)
          
          Spacer()
        }
        
        ZStack {
          if !didStopRecording {
            OPPlayButton { action in
              if action == .stop {
                onStopRecording()
              }
            }
          } else {
            Button {
              print("pressed")
            } label: {
              Text("Partilhar")
                .bold()
                .padding(.horizontal)
            }
            .tint(.red)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
          }
        }
        
        if !didStopRecording {
          Spacer()
        }
        
        Text("a sua voz será modificada\na fim de manteres-te anónimo na plataforma")
          .font(.footnote)
          .lineLimit(2)
          .multilineTextAlignment(.center)
          .padding()
      }
    }
    .foregroundColor(.white)
  }
}

struct NewRecordSheet_Previews: PreviewProvider {
  static var previews: some View {
    NewRecordSheet(presentationDetents: .constant(expandedRecordModalDentent), onStopRecording: {
      
      print("stopped")
      
    })
    .frame(height: 500)
  }
}


