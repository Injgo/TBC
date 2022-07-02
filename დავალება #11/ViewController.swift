//
//  ViewController.swift
//  დავალება #11
//
//  Created by Dato on 30.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1: UILabel!
    
    @IBOutlet weak var number2: UILabel!
    
    @IBOutlet weak var number3: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
    }

    
    @IBAction func sliderAction(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        number1.text =  "\(Int.random(in: 0...sliderValue))"
        number2.text =  "\(Int.random(in: 0...sliderValue))"
        number3.text =  "\(Int.random(in: 0...sliderValue))"
    }
    
    
 
    @IBAction func calculation(_ sender: UIButton) {
        
        var array = [Int]()
        if let num1 = number1.text, let num2 = number2.text, let num3 = number3.text {
            array.append(Int(num1) ?? 0)
            array.append(Int(num2) ?? 0)
            array.append(Int(num3) ?? 0)
        }
        
        if let text =  textField.text{
            switch text {
            case "maximum":
                resultLabel.text = "\(array.max() ?? 0)"
            case "average" :
                let avg = array.map{$0}.reduce(0, + ) / array.count
                resultLabel.text = "\(avg)"
            case "sum":
                let sum = array.map{$0}.reduce(0, + )
                resultLabel.text = "\(sum)"
            default:
                print("empty")
            }
        }
        
    }

}

