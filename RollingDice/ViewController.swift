//
//  ViewController.swift
//  RollingDice
//
//  Created by 王宜婕 on 2024/10/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NumberLabel: UILabel!
    @IBOutlet var diceImageViews: [UIImageView]!
    var countNumber: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countDice()
    }
    
    func countDice(){
        switch countNumber {
        case 1:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = true
            diceImageViews[2].isHidden = true
            diceImageViews[3].isHidden = true
            diceImageViews[4].isHidden = true
            diceImageViews[5].isHidden = true
        case 2:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = false
            diceImageViews[2].isHidden = true
            diceImageViews[3].isHidden = true
            diceImageViews[4].isHidden = true
            diceImageViews[5].isHidden = true
        case 3:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = false
            diceImageViews[2].isHidden = false
            diceImageViews[3].isHidden = true
            diceImageViews[4].isHidden = true
            diceImageViews[5].isHidden = true
        case 4:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = false
            diceImageViews[2].isHidden = false
            diceImageViews[3].isHidden = false
            diceImageViews[4].isHidden = true
            diceImageViews[5].isHidden = true
        case 5:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = false
            diceImageViews[2].isHidden = false
            diceImageViews[3].isHidden = false
            diceImageViews[4].isHidden = false
            diceImageViews[5].isHidden = true
        default:
            diceImageViews[0].isHidden = false
            diceImageViews[1].isHidden = false
            diceImageViews[2].isHidden = false
            diceImageViews[3].isHidden = false
            diceImageViews[4].isHidden = false
            diceImageViews[5].isHidden = false
        }
    }

    @IBAction func Play(_ sender: Any) {
        for diceImageView in diceImageViews {
            let index = Int.random(in: 1...6)
            diceImageView.image = UIImage(systemName:"die.face.\(index).fill")
        }
    }
    @IBAction func Reduce(_ sender: Any) {
        if countNumber > 1 {
            countNumber -= 1
            NumberLabel.text = String(countNumber)
            countDice()
        }
    }
    
    @IBAction func Add(_ sender: Any) {
        if countNumber < 6 {
            countNumber += 1
            NumberLabel.text = String(countNumber)
            countDice()
        }
        
    }
    
}
#Preview {
    UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
}

