//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Ailson Pereira on 12/04/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var currentNumber: Decimal = 0
    var stashedNumber: Decimal = 0
    var currentOperation: String = "none"
    var equalWasLastAction: Bool = false
    
    private lazy var displayLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var resetButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var changeSignButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var percentButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var divideButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var multiplyButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var minusButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var plusButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var equalButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var pointButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var oneButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var twoButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var threeButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
    private lazy var fourButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
      }()
      private lazy var fiveButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
      private lazy var sixButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
      private lazy var sevenButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
      private lazy var eightButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
      private lazy var nineButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
      private lazy var zeroButton: UIButton = {
          let view = UIButton(frame: .zero)
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
        }()
    
    let pageStackView = UIStackView()
    
    let firstLineStackView = UIStackView()
    
    let secondLineStackView = UIStackView()
    
    let thirdLineStackView = UIStackView()
    
    let forthLineStackView = UIStackView()
    
    let fifthLineStackView = UIStackView()
    
    let sixthLineStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black

        displayLabel.text = "0"
        displayLabel.textAlignment = .right
        displayLabel.font = UIFont.systemFont(ofSize: 70)
        displayLabel.backgroundColor =  UIColor(white: 1, alpha: 0.0)
        displayLabel.textColor =  .white
        displayLabel.layer.masksToBounds = true
        
        resetButton.setTitle("AC", for: .normal)
        resetButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        resetButton.backgroundColor =  .gray
        resetButton.addTarget(self, action: #selector(resetButtonActionUpInside), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(resetButtonActionDragExit), for: .touchDragExit)
        resetButton.addTarget(self, action: #selector(resetButtonActionDown), for: .touchDown)
        
        changeSignButton.setTitle("+/-", for: .normal)
        changeSignButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        changeSignButton.backgroundColor =  .gray
        changeSignButton.addTarget(self, action: #selector(changeSignButtonActionUpInside), for: .touchUpInside)
        changeSignButton.addTarget(self, action: #selector(changeSignButtonActionDragExit), for: .touchDragExit)
        changeSignButton.addTarget(self, action: #selector(changeSignButtonActionDown), for: .touchDown)
        
        percentButton.setTitle("%", for: .normal)
        percentButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        percentButton.backgroundColor =  .gray
        percentButton.addTarget(self, action: #selector(percentButtonActionUpInside), for: .touchUpInside)
        percentButton.addTarget(self, action: #selector(percentButtonActionDragExit), for: .touchDragExit)
        percentButton.addTarget(self, action: #selector(percentButtonActionDown), for: .touchDown)
        
        divideButton.setTitle("/", for: .normal)
        divideButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        divideButton.backgroundColor = .orange
        divideButton.addTarget(self, action: #selector(divideButtonAction), for: .touchUpInside)
        
        multiplyButton.setTitle("x", for: .normal)
        multiplyButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        multiplyButton.backgroundColor =  .orange
        multiplyButton.addTarget(self, action: #selector(multiplyButtonAction), for: .touchUpInside)
        
        minusButton.setTitle("-", for: .normal)
        minusButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        minusButton.backgroundColor =  .orange
        minusButton.addTarget(self, action: #selector(minusButtonAction), for: .touchUpInside)
        
        plusButton.setTitle("+", for: .normal)
        plusButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        plusButton.backgroundColor =  .orange
        plusButton.addTarget(self, action: #selector(plusButtonAction), for: .touchUpInside)
        
        equalButton.setTitle("=", for: .normal)
        equalButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        equalButton.backgroundColor =  .orange
        equalButton.addTarget(self, action: #selector(equalButtonAction), for: .touchUpInside)
        
        pointButton.setTitle(".", for: .normal)
        pointButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        pointButton.backgroundColor =  .darkGray
        pointButton.addTarget(self, action: #selector(pointButtonActionUpInside), for: .touchUpInside)
        pointButton.addTarget(self, action: #selector(pointButtonActionDragExit), for: .touchDragExit)
        pointButton.addTarget(self, action: #selector(pointButtonActionDown), for: .touchDown)
        
        oneButton.setTitle("1", for: .normal)
        oneButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        oneButton.backgroundColor =  .darkGray
        oneButton.addTarget(self, action: #selector(oneButtonActionUpInside), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(oneButtonActionDragExit), for: .touchDragExit)
        oneButton.addTarget(self, action: #selector(oneButtonActionDown), for: .touchDown)
        
        twoButton.setTitle("2", for: .normal)
        twoButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        twoButton.backgroundColor =  .darkGray
        twoButton.addTarget(self, action: #selector(twoButtonActionUpInside), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(twoButtonActionDragExit), for: .touchDragExit)
        twoButton.addTarget(self, action: #selector(twoButtonActionDown), for: .touchDown)
        
        threeButton.setTitle("3", for: .normal)
        threeButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        threeButton.backgroundColor =  .darkGray
        threeButton.addTarget(self, action: #selector(threeButtonActionUpInside), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(threeButtonActionDragExit), for: .touchDragExit)
        threeButton.addTarget(self, action: #selector(threeButtonActionDown), for: .touchDown)
        
        fourButton.setTitle("4", for: .normal)
        fourButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        fourButton.backgroundColor =  .darkGray
        fourButton.addTarget(self, action: #selector(fourButtonActionUpInside), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(fourButtonActionDragExit), for: .touchDragExit)
        fourButton.addTarget(self, action: #selector(fourButtonActionDown), for: .touchDown)
        
        fiveButton.setTitle("5", for: .normal)
        fiveButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        fiveButton.backgroundColor =  .darkGray
        fiveButton.addTarget(self, action: #selector(fiveButtonActionUpInside), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(fiveButtonActionDragExit), for: .touchDragExit)
        fiveButton.addTarget(self, action: #selector(fiveButtonActionDown), for: .touchDown)
        
        sixButton.setTitle("6", for: .normal)
        sixButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        sixButton.backgroundColor =  .darkGray
        sixButton.addTarget(self, action: #selector(sixButtonActionUpInside), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(sixButtonActionDragExit), for: .touchDragExit)
        sixButton.addTarget(self, action: #selector(sixButtonActionDown), for: .touchDown)
        
        sevenButton.setTitle("7", for: .normal)
        sevenButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        sevenButton.backgroundColor =  .darkGray
        sevenButton.addTarget(self, action: #selector(sevenButtonActionUpInside), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(sevenButtonActionDragExit), for: .touchDragExit)
        sevenButton.addTarget(self, action: #selector(sevenButtonActionDown), for: .touchDown)
        
        eightButton.setTitle("8", for: .normal)
        eightButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        eightButton.backgroundColor =  .darkGray
        eightButton.addTarget(self, action: #selector(eightButtonActionUpInside), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(eightButtonActionDragExit), for: .touchDragExit)
        eightButton.addTarget(self, action: #selector(eightButtonActionDown), for: .touchDown)
        
        nineButton.setTitle("9", for: .normal)
        nineButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        nineButton.backgroundColor =  .darkGray
        nineButton.addTarget(self, action: #selector(nineButtonActionUpInside), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(nineButtonActionDragExit), for: .touchDragExit)
        nineButton.addTarget(self, action: #selector(nineButtonActionDown), for: .touchDown)
        
        zeroButton.setTitle("0", for: .normal)
        zeroButton.titleLabel?.font = .systemFont(ofSize: 40, weight: .medium)
        zeroButton.backgroundColor =  .darkGray
        zeroButton.addTarget(self, action: #selector(zeroButtonActionUpInside), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(zeroButtonActionDragExit), for: .touchDragExit)
        zeroButton.addTarget(self, action: #selector(zeroButtonActionDown), for: .touchDown)
        
        
        
        
        firstLineStackView.axis  = .horizontal
        firstLineStackView.distribution  = .fillEqually
        firstLineStackView.alignment = .fill
        firstLineStackView.spacing   = 2
        firstLineStackView.addArrangedSubview(resetButton)
        firstLineStackView.addArrangedSubview(changeSignButton)
        firstLineStackView.addArrangedSubview(percentButton)
        firstLineStackView.addArrangedSubview(divideButton)
        firstLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        secondLineStackView.axis  = .horizontal
        secondLineStackView.distribution  = .fillEqually
        secondLineStackView.alignment = .fill
        secondLineStackView.spacing   = 2
        secondLineStackView.addArrangedSubview(sevenButton)
        secondLineStackView.addArrangedSubview(eightButton)
        secondLineStackView.addArrangedSubview(nineButton)
        secondLineStackView.addArrangedSubview(multiplyButton)
        secondLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        thirdLineStackView.axis  = .horizontal
        thirdLineStackView.distribution  = .fillEqually
        thirdLineStackView.alignment = .fill
        thirdLineStackView.spacing   = 2
        thirdLineStackView.addArrangedSubview(fourButton)
        thirdLineStackView.addArrangedSubview(fiveButton)
        thirdLineStackView.addArrangedSubview(sixButton)
        thirdLineStackView.addArrangedSubview(minusButton)
        thirdLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        forthLineStackView.axis  = .horizontal
        forthLineStackView.distribution  = .fillEqually
        forthLineStackView.alignment = .fill
        forthLineStackView.spacing   = 2
        forthLineStackView.addArrangedSubview(oneButton)
        forthLineStackView.addArrangedSubview(twoButton)
        forthLineStackView.addArrangedSubview(threeButton)
        forthLineStackView.addArrangedSubview(plusButton)
        forthLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        fifthLineStackView.axis  = .horizontal
        fifthLineStackView.distribution  = .fillEqually
        fifthLineStackView.alignment = .fill
        fifthLineStackView.spacing   = 2
        fifthLineStackView.addArrangedSubview(pointButton)
        fifthLineStackView.addArrangedSubview(equalButton)
        fifthLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        sixthLineStackView.axis  = .horizontal
        sixthLineStackView.distribution  = .fillEqually
        sixthLineStackView.alignment = .fill
        sixthLineStackView.spacing   = 2
        sixthLineStackView.addArrangedSubview(zeroButton)
        sixthLineStackView.addArrangedSubview(fifthLineStackView)
        sixthLineStackView.translatesAutoresizingMaskIntoConstraints = false
        
        pageStackView.axis  = .vertical
        pageStackView.distribution  = .fillEqually
        pageStackView.alignment = .fill
        pageStackView.spacing   = 2
        pageStackView.addArrangedSubview(displayLabel)
        pageStackView.addArrangedSubview(firstLineStackView)
        pageStackView.addArrangedSubview(secondLineStackView)
        pageStackView.addArrangedSubview(thirdLineStackView)
        pageStackView.addArrangedSubview(forthLineStackView)
        pageStackView.addArrangedSubview(sixthLineStackView)
        pageStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.view.addSubview(pageStackView)
        
        
        pageStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        pageStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        pageStackView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pageStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
    }
}

extension CalculatorViewController{
    
    private func buttonActionWith(number: Int){
        if(equalWasLastAction){
            stashedNumber = currentNumber
            displayLabel.text = String(number)
            equalWasLastAction = false
        }
        else if(displayLabel.text?.first == "-" && currentNumber == 0){
            displayLabel.text = "-" + String(number)
        }else if(currentNumber == 0){
            displayLabel.text = String(number)
        }else{
            displayLabel.text?.append(String(number))
        }
        currentNumber = Decimal(string: displayLabel.text ?? "0")!
    }
    
    @objc func oneButtonActionUpInside(){
        buttonActionWith(number: 1)
        oneButton.backgroundColor = .darkGray
    }
    @objc func oneButtonActionDragExit(){
        oneButton.backgroundColor = .darkGray
    }
    @objc func oneButtonActionDown(){
        oneButton.backgroundColor = .gray
    }
    
    
    @objc func twoButtonActionUpInside(){
        buttonActionWith(number: 2)
        twoButton.backgroundColor = .darkGray
    }
    @objc func twoButtonActionDragExit(){
        twoButton.backgroundColor = .darkGray
    }
    @objc func twoButtonActionDown(){
        twoButton.backgroundColor = .gray
    }
    
    
    @objc func threeButtonActionUpInside(){
        buttonActionWith(number: 3)
        threeButton.backgroundColor = .darkGray
    }
    @objc func threeButtonActionDragExit(){
        threeButton.backgroundColor = .darkGray
    }
    @objc func threeButtonActionDown(){
        threeButton.backgroundColor = .gray
    }
    
    
    @objc func fourButtonActionUpInside(){
        buttonActionWith(number: 4)
        fourButton.backgroundColor = .darkGray
    }
    @objc func fourButtonActionDragExit(){
        fourButton.backgroundColor = .darkGray
    }
    @objc func fourButtonActionDown(){
        fourButton.backgroundColor = .gray
    }
    
    
    @objc func fiveButtonActionUpInside(){
        buttonActionWith(number: 5)
        fiveButton.backgroundColor = .darkGray
    }
    @objc func fiveButtonActionDragExit(){
        fiveButton.backgroundColor = .darkGray
    }
    @objc func fiveButtonActionDown(){
        fiveButton.backgroundColor = .gray
    }
    
    
    @objc func sixButtonActionUpInside(){
        buttonActionWith(number: 6)
        sixButton.backgroundColor = .darkGray
    }
    @objc func sixButtonActionDragExit(){
        sixButton.backgroundColor = .darkGray
    }
    @objc func sixButtonActionDown(){
        sixButton.backgroundColor = .gray
    }
    
    
    @objc func sevenButtonActionUpInside(){
        buttonActionWith(number: 7)
        sevenButton.backgroundColor = .darkGray
    }
    @objc func sevenButtonActionDragExit(){
        sevenButton.backgroundColor = .darkGray
    }
    @objc func sevenButtonActionDown(){
        sevenButton.backgroundColor = .gray
    }
    
    
    @objc func eightButtonActionUpInside(){
        buttonActionWith(number: 8)
        eightButton.backgroundColor = .darkGray
    }
    @objc func eightButtonActionDragExit(){
        eightButton.backgroundColor = .darkGray
    }
    @objc func eightButtonActionDown(){
        eightButton.backgroundColor = .gray
    }
    
    
    @objc func nineButtonActionUpInside(){
        buttonActionWith(number: 9)
        nineButton.backgroundColor = .darkGray
    }
    @objc func nineButtonActionDragExit(){
        nineButton.backgroundColor = .darkGray
    }
    @objc func nineButtonActionDown(){
        nineButton.backgroundColor = .gray
    }
    
    
    @objc func zeroButtonActionUpInside(){
        buttonActionWith(number: 0)
        zeroButton.backgroundColor = .darkGray
    }
    @objc func zeroButtonActionDragExit(){
        zeroButton.backgroundColor = .darkGray
    }
    @objc func zeroButtonActionDown(){
        zeroButton.backgroundColor = .gray
    }
    
    @objc func resetButtonActionUpInside(){
        displayLabel.text = "0"
        currentNumber = 0
        stashedNumber = 0
        equalWasLastAction = false
        currentOperation = "none"
        resetOperationColor()
        resetButton.backgroundColor = .gray
    }
    @objc func resetButtonActionDragExit(){
        resetButton.backgroundColor = .gray
    }
    @objc func resetButtonActionDown(){
        resetButton.backgroundColor = .darkGray
    }
    
    @objc func changeSignButtonActionUpInside(){
        if(displayLabel.text?.contains("-") == true){
            displayLabel.text?.removeFirst()
        }else{
            displayLabel.text?.insert("-", at: displayLabel.text!.startIndex)
        }
        changeSignButton.backgroundColor = .gray
    }
    @objc func changeSignButtonActionDragExit(){
        changeSignButton.backgroundColor = .gray
    }
    @objc func changeSignButtonActionDown(){
        changeSignButton.backgroundColor = .darkGray
    }
    
    @objc func percentButtonActionUpInside(){
        currentNumber = currentNumber / 100
        displayLabel.text = NSDecimalNumber(decimal: currentNumber).stringValue
        percentButton.backgroundColor = .gray
    }
    @objc func percentButtonActionDragExit(){
        percentButton.backgroundColor = .gray
    }
    @objc func percentButtonActionDown(){
        percentButton.backgroundColor = .darkGray
    }
    
    @objc func pointButtonActionUpInside(){
        pointButton.backgroundColor = .darkGray
        if(displayLabel.text?.contains(".") == true){ return }
        
        displayLabel.text?.append(".")
    }
    @objc func pointButtonActionDragExit(){
        pointButton.backgroundColor = .darkGray
    }
    @objc func pointButtonActionDown(){
        pointButton.backgroundColor = .gray
    }
    
    
    private func useOperation(_ operation: String){
        equalWasLastAction = false
        switch operation {
        case "+":
            currentOperation = operation
            plusButton.backgroundColor = .red
            minusButton.backgroundColor = .orange
            divideButton.backgroundColor = .orange
            multiplyButton.backgroundColor = .orange
            stashedNumber = Decimal(string: displayLabel.text ?? "0")!
            currentNumber = 0
            break
        case "-":
            currentOperation = operation
            plusButton.backgroundColor = .orange
            minusButton.backgroundColor = .red
            divideButton.backgroundColor = .orange
            multiplyButton.backgroundColor = .orange
            stashedNumber = Decimal(string: displayLabel.text ?? "0")!
            currentNumber = 0
            
            break
        case "/":
            currentOperation = operation
            plusButton.backgroundColor = .orange
            minusButton.backgroundColor = .orange
            divideButton.backgroundColor = .red
            multiplyButton.backgroundColor = .orange
            stashedNumber = Decimal(string: displayLabel.text ?? "0")!
            currentNumber = 0
            break
        case "x":
            currentOperation = operation
            plusButton.backgroundColor = .orange
            minusButton.backgroundColor = .orange
            divideButton.backgroundColor = .orange
            multiplyButton.backgroundColor = .red
            stashedNumber = Decimal(string: displayLabel.text ?? "0")!
            currentNumber = 0
            break
        default:
            return
        }
        
    }
    @objc func plusButtonAction(){
        useOperation("+")
    }
    @objc func minusButtonAction(){
        useOperation("-")
    }
    @objc func divideButtonAction(){
        useOperation("/")
    }
    @objc func multiplyButtonAction(){
        useOperation("x")
    }
    
    private func resetOperationColor(){
        divideButton.backgroundColor = .orange
        multiplyButton.backgroundColor = .orange
        plusButton.backgroundColor = .orange
        minusButton.backgroundColor = .orange
    }
    
    @objc func equalButtonAction(){
        switch currentOperation {
        case "+":
            stashedNumber = stashedNumber + currentNumber
            displayLabel.text = NSDecimalNumber(decimal: stashedNumber).stringValue
            resetOperationColor()
            equalWasLastAction = true
            break
        case "-":
            stashedNumber = stashedNumber - currentNumber
            displayLabel.text = NSDecimalNumber(decimal: stashedNumber).stringValue
            resetOperationColor()
            equalWasLastAction = true
            break
        case "x":
            stashedNumber = stashedNumber * currentNumber
            displayLabel.text = NSDecimalNumber(decimal: stashedNumber).stringValue
            resetOperationColor()
            equalWasLastAction = true
            break
        case "/":
            stashedNumber = stashedNumber / currentNumber
            displayLabel.text = NSDecimalNumber(decimal: stashedNumber).stringValue
            resetOperationColor()
            equalWasLastAction = true
            break
        default: return
        }
    }
    
    
    
}

