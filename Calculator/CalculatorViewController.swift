//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Ailson Pereira on 12/04/23.
//

import UIKit

class CalculatorViewController: UIViewController {
    
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
        displayLabel.font = UIFont.systemFont(ofSize: 50)
        displayLabel.backgroundColor =  UIColor(white: 1, alpha: 0.0)
        displayLabel.textColor =  .white
        displayLabel.layer.masksToBounds = true
        
        resetButton.setTitle("AC", for: .normal)
        resetButton.backgroundColor =  .gray
        
        changeSignButton.setTitle("+/-", for: .normal)
        changeSignButton.backgroundColor =  .gray
        
        percentButton.setTitle("%", for: .normal)
        percentButton.backgroundColor =  .gray
        
        divideButton.setTitle("/", for: .normal)
        divideButton.backgroundColor = .orange
        
        multiplyButton.setTitle("x", for: .normal)
        multiplyButton.backgroundColor =  .orange
        
        minusButton.setTitle("-", for: .normal)
        minusButton.backgroundColor =  .orange
        
        plusButton.setTitle("+", for: .normal)
        plusButton.backgroundColor =  .orange
        
        equalButton.setTitle("=", for: .normal)
        equalButton.backgroundColor =  .orange
        
        pointButton.setTitle(".", for: .normal)
        pointButton.backgroundColor =  .darkGray
        
        oneButton.setTitle("1", for: .normal)
        oneButton.backgroundColor =  .darkGray
        
        twoButton.setTitle("2", for: .normal)
        twoButton.backgroundColor =  .darkGray
        
        threeButton.setTitle("3", for: .normal)
        threeButton.backgroundColor =  .darkGray
        
        fourButton.setTitle("4", for: .normal)
        fourButton.backgroundColor =  .darkGray
        
        fiveButton.setTitle("5", for: .normal)
        fiveButton.backgroundColor =  .darkGray
        
        sixButton.setTitle("6", for: .normal)
        sixButton.backgroundColor =  .darkGray
        
        sevenButton.setTitle("7", for: .normal)
        sevenButton.backgroundColor =  .darkGray
        
        eightButton.setTitle("8", for: .normal)
        eightButton.backgroundColor =  .darkGray
        
        nineButton.setTitle("9", for: .normal)
        nineButton.backgroundColor =  .darkGray
        
        zeroButton.setTitle("0", for: .normal)
        zeroButton.backgroundColor =  .darkGray
        
        
        
        
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
