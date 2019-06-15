//
//  NumberBtn.swift
//  calculator2
//
//  Created by Jeeeun Lim on 12/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//
import UIKit
import Foundation

//편의를 위해 커스타마이징한 버튼
class NumberBtn:UIButton {

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


