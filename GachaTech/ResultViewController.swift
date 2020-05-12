//
//  ResultViewController.swift
//  GachaTech
//
//  Created by Kusunose Hosho on 2020/05/12.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var rareRate: UILabel!
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let number = Int.random(in: 0...9)
        
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                        UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            backgroundImageView.image = UIImage(named: "bg_gold.png")
            rareRate.text = String("激レア！")
            rareRate.textColor = UIColor.red
            rareRate.font = UIFont(name: "HelveticaNeue-Bold", size: 55.0)
        } else if number > 7 {
            backgroundImageView.image = UIImage(named: "bg_red.png")
            rareRate.text = String("レア！")
            rareRate.textColor = UIColor.blue
            rareRate.font = UIFont(name: "HelveticaNeue-Bold", size: 55.0)
        } else {
            backgroundImageView.image = UIImage(named: "bg_blue.png")
            rareRate.text = String("")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        
        animation.fromValue = NSNumber(value: 0)
        
        animation.toValue = NSNumber(value: 2 * Double.pi)
        
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        backgroundImageView.layer.add(animation, forKey: nil)
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
