//
//  String+Extension.swift
//  OpenUp
//
//  Created by José Tony on 09/04/23.
//

import Foundation

extension String {
  func leftPadding(toLength: Int, withPad character: Character) -> String {
    let stringLength = self.count
    if stringLength < toLength {
      return String(repeatElement(character, count: toLength - stringLength)) + self
    } else {
      return String(self.suffix(toLength))
    }
  }
}
