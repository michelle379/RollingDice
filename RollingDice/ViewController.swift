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
    
    fileprivate func showdice() {
        for i in 0..<countNumber{
            diceImageViews[i].isHidden = false
        }
        for j in countNumber...5{
            diceImageViews[j].isHidden = true
        }
    }
    
    func countDice(){
        switch countNumber {
        case 1:
            showdice()
        case 2:
            showdice()
        case 3:
            showdice()
        case 4:
            showdice()
        case 5:
            showdice()
        default:
            for image in diceImageViews {
                image.isHidden = false
            }
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

