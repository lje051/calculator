//
//  HomeController.swift
//  calculator2
//
//  Created by Jeeeun Lim on 12/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
  //숫자 입력라벨
  let topStackView = NumberlbView()
  //숫자패드
  let numberPadView = UIView()
  //숫자패드가 들어간 슈퍼뷰
  let numberBtnView = NumberBtnView(frame: .zero)
  
  
  
  
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
    // 각버튼마다 액션을 적용함
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
  
  @objc func minusCal() {
    var calculateStr = String(topStackView.numberLb.text!)
    
    if(checkOperation(number: calculateStr)){
      calculateStr.append("-")
      topStackView.numberLb.text = calculateStr
      
    }
    
  }
  
  
  //연산자가 중복되지 않도록 체크해서 이미 연산자가 있다면 무시해준다.
  func checkOperation(number:String) -> Bool {
    if number.last == "*"{
      return false
    }
    if number.last == "%"{
      return false
    }
    if number.last == "/"{
      return false
    }
    if number.last == "-"{
      return false
    }
    if number.last == "+"{
      return false
    }
    if number.last == "."{
      return false
    }
    return true
  }
  
  //값이 0이라면 04를 만들어줄것이 아니라 0을 없애주기위함
  func checkIfzero(number:String) -> Bool {
    if number  == "0"{
      return false
    }else{
      return true
    }
    
  }
  
  
  @objc func plusCal() {
    var calculateStr = String(topStackView.numberLb.text!)
    if(checkOperation(number: calculateStr)){
      calculateStr.append("+")
      
      topStackView.numberLb.text = calculateStr
      
    }
    
    
  }
  
  func addNumber(number:String)
  {
    
    var textnum = String(topStackView.numberLb.text!)
    
    if checkIfzero(number: textnum) {
      textnum = textnum + number
      topStackView.numberLb.text = textnum
      
    }else{
      //0으로 시작했으니 0을 지우고 숫자를 입력
      textnum = ""
      topStackView.numberLb.text = number
    }
  }
  
  //-를 숫자앞에 붙여준다.
  func addCalNumber(cal:String)
  {
    
    var textnum = String(topStackView.numberLb.text!)
    
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
    //- 가 이미 숫자앞에있다면 -를 없애고 정수로 만들어준다.
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
    
    
  }
  @objc func divide() {
    var calculateStr = String(topStackView.numberLb.text!)
    
    if(checkOperation(number: calculateStr)){
      calculateStr.append("/")
      
      topStackView.numberLb.text = calculateStr
      
    }
    
  }
  @objc func mul() {
    
    var calculateStr = String(topStackView.numberLb.text!)
    if(checkOperation(number: calculateStr)){
      calculateStr.append("*")
      
      topStackView.numberLb.text = calculateStr
      
    }
    
  }
  
  
  @objc func percentage() {
    var calculateStr = String(topStackView.numberLb.text!)
    
    if(checkOperation(number: calculateStr)){
      //계산을 하고 %계산을 해준다.
      let expression = NSExpression(format: calculateStr)
      let result = expression.expressionValue(with: nil, context: nil) ?? 0
      calculateStr = String(format: "%@", result as! CVarArg)
      
      var number1 = Double(calculateStr)
      number1 = number1!/100.0
      
      topStackView.numberLb.text = String(number1!)
      
    }
  }
  
  
  @objc func eqauls(){
    
    let number2 = String(topStackView.numberLb.text!)
    if(checkOperation(number: number2)){
      let expression = NSExpression(format: number2)
      let result = expression.expressionValue(with: nil, context: nil) ?? 0
      
      // print(result)
      topStackView.numberLb.text = String(format: "%@", result as! CVarArg)
    }else{
      showToast(message: "수식이 맞지 않습니다.")
    }
    
  }
  
  
  
};
extension UIViewController {
  
  //경고메세지를 위함
  func showToast(message : String) {
    
    let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.view.addSubview(toastLabel)
    UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
      toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
      toastLabel.removeFromSuperview()
    })
  } }

