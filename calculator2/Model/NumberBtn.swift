//
//  User.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jeeeun Lim on 07/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//
import UIKit
import Foundation

class NumberBtn:UIButton {
   //defining our properties for our model layer
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.layer.cornerRadius = 10.0;
    self.setTitleColor(UIColor.white, for: .normal)
    self.titleLabel!.font =  UIFont(name:"Times New Roman", size: 40)
  }
  required init(coder aDecoder: NSCoder){
    super.init(coder: aDecoder)!
   
  }
  
}


