//
//  UIPProductStepper.swift
//  Inventory System
//
//  Created by DaiTran on 22/5/24.
//

import UIKit

class UIProductStepper: UIStackView {
    
    //MARK: Properties
    private var _stepperValue: Int = 0
    
 
    
    var stepperValue:Int {
        get{
            return _stepperValue
        }
    }
  
    @IBAction func increaseButton() {
        print("increase")
    }
    
    
    @IBAction func decreaseButton() {
        print("decrease")
    }
    
    @IBAction func textValue() {
        print("increase")
    }
    
    //MARK: Constuctor
    required init(coder: NSCoder) {
        super.init(coder: coder)
        ProductStepperConstructor()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ProductStepperConstructor()
    }
    
    private func ProductStepperConstructor(){
        
        
        
    }
    
}
