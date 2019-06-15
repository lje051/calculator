//
//  NumberBtnView.swift
//  calculator2
//
//  Created by Jeeeun Lim on 12/06/2019.
//  Copyright © 2019 ASPN. All rights reserved.
//

import UIKit

class NumberBtnView: UIView {
  
  fileprivate let firstStackView = myStackView()
  fileprivate let secondStackView = myStackView()
  fileprivate let thirdStackView = myStackView()
  fileprivate let fourthStackView = myStackView()
  fileprivate let fifthStackView = myStackView()
  fileprivate let totalStackView = myStackView()
  fileprivate let multipleView = myStackView()
  fileprivate let eqaulView = UIView()
  let acBtn = NumberBtn()
  let percentageBtn = NumberBtn()
  let divideBtn = NumberBtn()
  let plusMinueBtn = NumberBtn()
  let sevenBtn = NumberBtn()
  let eightBtn = NumberBtn()
  let nineBtn = NumberBtn()
  let multipleBtn = NumberBtn()
  let fourBtn = NumberBtn()
  let fiveBtn = NumberBtn()
  let sixBtn = NumberBtn()
  let minusBtn = NumberBtn()
  let oneBtn = NumberBtn()
  let twoBtn = NumberBtn()
  let threeBtn = NumberBtn()
  let plusBtn = NumberBtn()
  let zeroBtn = NumberBtn()
  let dotBtn = NumberBtn()
  let equaltoBtn = NumberBtn()
  
  
  
  func setupLayout() {
    //스택뷰를 이용한 버튼 만듬
    setupNumberBtnStackView()
    
    multipleView.backgroundColor = UIColor.clear
    eqaulView.backgroundColor = UIColor.clear
    addSubview(totalStackView)
    addSubview(multipleView)
    eqaulView.addSubview(equaltoBtn)
    addSubview(eqaulView)
    
     //전체적인 가로 75%크기의 버튼 뷰를 스택뷰로 만듬
    totalStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil)
    totalStackView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier:0.75).isActive = true
   //나머지 가로 25%를 x, -, + 스택뷰를 만듬
    multipleView.anchor(top:topAnchor, leading: totalStackView.trailingAnchor, bottom: thirdStackView.bottomAnchor, trailing: trailingAnchor, padding:.init(top: 0, left: 5, bottom: 0, right: 0))
    //multipleview 밑에 "="에 해당하는 버튼 만듬
    eqaulView.anchor(top:fourthStackView.topAnchor, leading: totalStackView.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding:.init(top: 0, left: 5, bottom: 0, right: 0))
    equaltoBtn.fillSuperview()
  }
  
  
  func setupLandscapeMode(){
    //전체적인 세로 75%크기의 버튼 뷰를 스택뷰로 만듬
    totalStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: nil)
    totalStackView.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier:0.75).isActive = true
     //나머지 세로 25%를 x, -, + 스택뷰를 만듬
    multipleView.anchor(top:topAnchor, leading: totalStackView.trailingAnchor, bottom: secondStackView.bottomAnchor, trailing: trailingAnchor, padding:.init(top: 0, left: 5, bottom: 0, right: 0))
    //multipleview 밑에 "="에 해당하는 버튼 만듬
    eqaulView.anchor(top:thirdStackView.topAnchor, leading: totalStackView.trailingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding:.init(top: 0, left: 5, bottom: 0, right: 0))
    
    equaltoBtn.fillSuperview()
    self.layoutIfNeeded()
  }
  
  
  
  func makingNumberBtn() {
    
    acBtn.backgroundColor = UIColor.black
    acBtn.setTitle("ac", for: .normal)
    
    percentageBtn.backgroundColor = UIColor.black
    percentageBtn.setTitle("%", for: .normal)
    
    divideBtn.backgroundColor = UIColor.black
    divideBtn.setTitle("÷", for: .normal)
    
    plusMinueBtn.backgroundColor = UIColor.gray
    plusMinueBtn.setTitle("+/-", for: .normal)
    
    sevenBtn.backgroundColor = UIColor.gray
    sevenBtn.setTitle("7", for: .normal)
    
    eightBtn.backgroundColor = UIColor.gray
    eightBtn.setTitle("8", for: .normal)
    
    
    nineBtn.backgroundColor = UIColor.gray
    nineBtn.setTitle("9", for: .normal)
    
    
    multipleBtn.backgroundColor = UIColor.black
    multipleBtn.setTitle("X", for: .normal)
    
    fourBtn.backgroundColor = UIColor.gray
    fourBtn.setTitle("4", for: .normal)
    
    fiveBtn.backgroundColor = UIColor.gray
    fiveBtn.setTitle("5", for: .normal)
    
    sixBtn.backgroundColor = UIColor.gray
    sixBtn.setTitle("6", for: .normal)
    
    minusBtn.backgroundColor = UIColor.black
    minusBtn.setTitle("-", for: .normal)
    
    oneBtn.backgroundColor = UIColor.gray
    oneBtn.setTitle("1", for: .normal)
    
    twoBtn.backgroundColor = UIColor.gray
    twoBtn.setTitle("2", for: .normal)
    
    threeBtn.backgroundColor = UIColor.gray
    threeBtn.setTitle("3", for: .normal)
    
    plusBtn.backgroundColor = UIColor.black
    plusBtn.setTitle("+", for: .normal)
    
    equaltoBtn.backgroundColor = UIColor.orange
    equaltoBtn.setTitle("=", for: .normal)
    
    
    zeroBtn.backgroundColor = UIColor.gray
    zeroBtn.setTitle("0", for: .normal)
    
    dotBtn.backgroundColor = UIColor.gray
    dotBtn.setTitle(".", for: .normal)
    
    
  }
  
  func setupNumberBtnStackView(){
    firstStackView.removeAllArrangedSubviews()
    secondStackView.removeAllArrangedSubviews()
    thirdStackView.removeAllArrangedSubviews()
    fourthStackView.removeAllArrangedSubviews()
    totalStackView.removeAllArrangedSubviews()
    multipleView.removeAllArrangedSubviews()
    firstStackView.addArrangedSubview(acBtn)
    firstStackView.addArrangedSubview(percentageBtn)
    firstStackView.addArrangedSubview(divideBtn)
    
    addSubview(firstStackView)
    //  firstStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    firstStackView.spacing = 1
    firstStackView.distribution = .fillEqually
    secondStackView.addArrangedSubview(sevenBtn)
    secondStackView.addArrangedSubview(eightBtn)
    secondStackView.addArrangedSubview(nineBtn)
    
    addSubview(secondStackView)
    //secondStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    secondStackView.spacing = 1
    secondStackView.distribution = .fillEqually
    thirdStackView.addArrangedSubview(fourBtn)
    thirdStackView.addArrangedSubview(fiveBtn)
    thirdStackView.addArrangedSubview(sixBtn)
    
    addSubview(thirdStackView)
    //  thirdStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    fourthStackView.addArrangedSubview(oneBtn)
    fourthStackView.addArrangedSubview(twoBtn)
    fourthStackView.addArrangedSubview(threeBtn)
    
    addSubview(fourthStackView)
    //   fourthStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    fourthStackView.spacing = 1
    fourthStackView.distribution = .fillEqually
    
    fifthStackView.addArrangedSubview(zeroBtn)
    fifthStackView.addArrangedSubview(dotBtn)
    fifthStackView.addArrangedSubview(plusMinueBtn)
    // fifthStackView.addArrangedSubview(equaltoBtn)
    addSubview(fifthStackView)
    //  fifthStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    
    totalStackView.axis = .vertical
    totalStackView.addArrangedSubview(firstStackView)
    totalStackView.addArrangedSubview(secondStackView)
    totalStackView.addArrangedSubview(thirdStackView)
    totalStackView.addArrangedSubview(fourthStackView)
    totalStackView.addArrangedSubview(fifthStackView)
    
    
    multipleView.axis = .vertical
    multipleView.addArrangedSubview(multipleBtn)
    multipleView.addArrangedSubview(minusBtn)
    multipleView.addArrangedSubview(plusBtn)
    
  }
  
  //landscape 모드에서는 스택뷰 구성이 다르므로 다시 구성
  func setupLandscapeNumberBtnStackView(){
    firstStackView.removeAllArrangedSubviews()
    secondStackView.removeAllArrangedSubviews()
    thirdStackView.removeAllArrangedSubviews()
    fourthStackView.removeAllArrangedSubviews()
    totalStackView.removeAllArrangedSubviews()
    multipleView.removeAllArrangedSubviews()
    
    firstStackView.addArrangedSubview(acBtn)
    firstStackView.addArrangedSubview(percentageBtn)
    firstStackView.addArrangedSubview(divideBtn)
    firstStackView.addArrangedSubview(multipleBtn)
    //firstStackView.addArrangedSubview(minusBtn)
    addSubview(firstStackView)
    // firstStackView.anchor(top: bottomAnchor, leading: topAnchor, bottom: nil, trailing: bottomAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    secondStackView.addArrangedSubview(plusMinueBtn)
    secondStackView.addArrangedSubview(sevenBtn)
    secondStackView.addArrangedSubview(eightBtn)
    secondStackView.addArrangedSubview(nineBtn)
    addSubview(secondStackView)
    //   secondStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    thirdStackView.addArrangedSubview(dotBtn)
    thirdStackView.addArrangedSubview(fourBtn)
    thirdStackView.addArrangedSubview(fiveBtn)
    thirdStackView.addArrangedSubview(sixBtn)
    addSubview(thirdStackView)
    //  thirdStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    fourthStackView.addArrangedSubview(zeroBtn)
    fourthStackView.addArrangedSubview(oneBtn)
    fourthStackView.addArrangedSubview(twoBtn)
    fourthStackView.addArrangedSubview(threeBtn)
    addSubview(fourthStackView)
    //  fourthStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding:.init(top: 8, left: 8, bottom: 0, right: 8), size:.init(width: 0, height: 4))
    
    totalStackView.axis = .vertical
    totalStackView.addArrangedSubview(firstStackView)
    totalStackView.addArrangedSubview(secondStackView)
    totalStackView.addArrangedSubview(thirdStackView)
    totalStackView.addArrangedSubview(fourthStackView)
    
    
    multipleView.axis = .vertical
    multipleView.addArrangedSubview(minusBtn)
    multipleView.addArrangedSubview(plusBtn)
 
    setupLandscapeMode()
    
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    //setupLayout()
    
    
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  
}
