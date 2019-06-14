//
//  CardViewModel.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jeeeun Lim on 07/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//
import UIKit
import Foundation

protocol ProducesCardViewModel {
  
    func toCardViewModel() -> CardViewModel
  
}
struct CardViewModel {
  //we'll define the properties that are view will display/render out
  let imageNames: [String]
  let attributeString : NSAttributedString
  let textAlignment: NSTextAlignment
  
  
}

//what exactly

