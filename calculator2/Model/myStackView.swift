//
//  myStackView.swift
//  calculator2
//
//  Created by Jeeeun Lim on 12/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//
import UIKit
import Foundation

//편의를 위해 커스타마이징한 스택뷰
class  myStackView:UIStackView {
  
  required init(coder aDecoder: NSCoder){
     fatalError("init(coder:) has not been implemented")
    
  }
  override init(frame: CGRect) {
     super.init(frame: frame)
   
    self.spacing = 1
    self.distribution = .fillEqually
  }
 

    func removeAllArrangedSubviews() {
      
      let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
        self.removeArrangedSubview(subview)
        return allSubviews + [subview]
      }
      
      // Deactivate all constraints
      NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
      
      // Remove the views from self
      removedSubviews.forEach({ $0.removeFromSuperview() })
    }
    
//    @discardableResult
//    func removeAllArrangedSubviews() -> [UIView] {
//      let removedSubviews = arrangedSubviews.reduce([]) { (removedSubviews, subview) -> [UIView] in
//        self.removeArrangedSubview(subview)
//        NSLayoutConstraint.deactivate(subview.constraints)
//        subview.removeFromSuperview()
//        return removedSubviews + [subview]
//      }
//      return removedSubviews
//    }
 
  
}
