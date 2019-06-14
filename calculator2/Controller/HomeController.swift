//
//  ViewController.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jeeeun Lim on 07/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
  
  let topStackView = NumberlbView()
  let numberPadView = UIView()
  let numberBtnView = NumberBtnView(frame: .zero)
  
  //연산을 실행여부
  var operation = true
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    setupLayout()
    setupNumberBtnView()
   
    if UIDevice.current.orientation.isLandscape {
      print("Landscape")
      numberBtnView.setupLandscapeNumberBtnStackView()
      
    } else {
      print("Portrait")
     numberBtnView.setupLayout()
    }
  }
  
  
  //MARK: - Fileprivate
  fileprivate func setupLayout() {
    let overallStackView = UIStackView(arrangedSubviews: [topStackView, numberPadView])
    overallStackView.axis = .vertical
    view.addSubview(overallStackView)
    overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    overallStackView.isLayoutMarginsRelativeArrangement = true
    overallStackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
    
  }
  
  fileprivate func addingTarget() {
    //   numberBtnView.setupNumberBtnStackView()
    numberBtnView.zeroBtn.addTarget(self, action: #selector(zero), for: .touchUpInside)
    numberBtnView.oneBtn.addTarget(self, action: #selector(one), for: .touchUpInside)
    numberBtnView.twoBtn.addTarget(self, action: #selector(two), for: .touchUpInside)
    numberBtnView.threeBtn.addTarget(self, action: #selector(three), for: .touchUpInside)
    numberBtnView.fourBtn.addTarget(self, action: #selector(four), for: .touchUpInside)
    numberBtnView.fiveBtn.addTarget(self, action: #selector(five), for: .touchUpInside)
    numberBtnView.sixBtn.addTarget(self, action: #selector(six), for: .touchUpInside)
    numberBtnView.sevenBtn.addTarget(self, action: #selector(seven), for: .touchUpInside)
    numberBtnView.eightBtn.addTarget(self, action: #selector(eight), for: .touchUpInside)
    numberBtnView.nineBtn.addTarget(self, action: #selector(nine), for: .touchUpInside)
     numberBtnView.minusBtn.addTarget(self, action: #selector(minusCal), for: .touchUpInside)
    numberBtnView.plusBtn.addTarget(self, action: #selector(plusCal), for: .touchUpInside)
    numberBtnView.dotBtn.addTarget(self, action: #selector(dot), for: .touchUpInside)
    numberBtnView.percentageBtn.addTarget(self, action: #selector(percentage), for: .touchUpInside)
    numberBtnView.acBtn.addTarget(self, action: #selector(clear), for: .touchUpInside)
    
    numberBtnView.multipleBtn.addTarget(self, action: #selector(mul), for: .touchUpInside)
    numberBtnView.equaltoBtn.addTarget(self, action: #selector(eqauls), for: .touchUpInside)
    numberBtnView.divideBtn.addTarget(self, action: #selector(divide), for: .touchUpInside)
      numberBtnView.plusMinueBtn.addTarget(self, action: #selector(plusMinus), for: .touchUpInside)
  }
  
  fileprivate func setupNumberBtnView(){
    
    
    
    numberPadView.addSubview(numberBtnView)
    numberBtnView.fillSuperview()
    numberBtnView.makingNumberBtn()
    addingTarget()
   
  }
  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
    if UIDevice.current.orientation.isLandscape {
      print("Landscape")
      numberBtnView.setupLandscapeNumberBtnStackView()
    } else {
      print("Portrait")
      numberBtnView.setupLayout()
      
    }
    
    
  }
@objc func minusCal(_ sender: Any) {
    op = "-"
    
    number1 = Double(topStackView.numberLb.text!)
    
    
    operation = true
    
    
  }
  
  @objc func plusCal(_ sender: Any) {
    op = "+"
    
    number1 = Double(topStackView.numberLb.text!)
    
    
    operation = true
    
    
  }
  
  func addNumber(number:String)
  {
    
    var textnum = String(topStackView.numberLb.text!)
    
    if operation {
      textnum = ""
      operation = false
      
    }
    
   
    
    textnum = textnum + number
    topStackView.numberLb.text = textnum
    
    
  }
  func addCalNumber(cal:String)
  {
    
    var textnum = String(topStackView.numberLb.text!)
    
//    if operation {
//      textnum = ""
//      operation = false
//
//    }
//
    
    
    textnum = cal + textnum
    topStackView.numberLb.text = textnum
    
    
  }
  @objc func dot() {
    
    addNumber(number: ".")
    
    
  }
  @objc func seven() {
    
    addNumber(number: "7")
    
    
  }
  @objc func plusMinus() {
     let textnum = String(topStackView.numberLb.text!)
    if   textnum.prefix(1) == "-" {
       let removedChar = String(textnum.dropFirst())
       topStackView.numberLb.text = removedChar
    }else{
        addCalNumber(cal:"-")
    }
  
    
    
  }
  @objc func zero() {
    
    addNumber(number: "0")
    
    
  }
  @objc func one() {
    
    addNumber(number: "1")
    
    
  }
  @objc func two() {
    
    addNumber(number: "2")
    
    
  }
  @objc func three() {
    
    addNumber(number: "3")
    
    
  }
  @objc func four() {
    
    addNumber(number: "4")
    
    
  }
  @objc func five() {
    
    addNumber(number: "5")
    
    
  }
  @objc func six() {
    
    addNumber(number: "6")
    
    
  }
  @objc func eight() {
    
    addNumber(number: "8")
    
    
  }
  @objc func nine() {
    
    addNumber(number: "9")
    
    
  }
  
  @objc func clear() {
    
    
    topStackView.numberLb.text = "0"
    
    operation = true
    
    
    
  }
   @objc func divide() {
    op = "/"
    
    number1 = Double(topStackView.numberLb.text!)
    
    operation = true
    
  }
  @objc func mul() {
    
    op = "*"
    number1 = Double(topStackView.numberLb.text!)
    operation = true
    
    
  }

//  @objc func makingNegative() {
//    var textnum = String(topStackView.numberLb.text!)
//
//    textnum = "-" + textnum
//
//    topStackView.numberLb.text = textnum
//
//    operation = true
//  }
  
  @objc func percentage() {
    
    
    var number1 = Double(topStackView.numberLb.text!)
    
    number1 = number1!/100.0
    
    topStackView.numberLb.text = String(number1!)
    
    operation = true
    
    
  }
  
  
  var op = "+"
  var number1 : Double?
  
  
 
  @objc func eqauls(){
  
    let number2 = Double(topStackView.numberLb.text!)
    
    var result:Double?
    
    switch op {
    case "*":
      result = number1! * number2!
    case "/":
      result = number1! / number2!
      
    case "-":
      result = number1! - number2!
      
    case "+":
      result = number1! + number2!
      
    default:
      result = 0.0
      
      
    }
    
    
    topStackView.numberLb.text = String(result!)
    
    operation = true
    
    
  }

}

