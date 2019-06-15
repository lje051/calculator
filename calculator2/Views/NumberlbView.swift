//
//  NumberlbView.swift
//  calculator2
//
//  Created by Jeeeun Lim on 12/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//
import UIKit

class NumberlbView: UIView {

  
  let numberLb = UILabel()
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    addSubview(numberLb)
    heightAnchor.constraint(equalToConstant: 120).isActive = true
       numberLb.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 10, bottom: 5, right: 10))
    numberLb.text = "0"
    numberLb.textAlignment = .right
    numberLb.font =  UIFont(name:"Times New Roman", size: 30)
    
  }

  required init(coder: NSCoder) {
    fatalError()
    
  }
  
}
