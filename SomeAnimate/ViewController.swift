//
//  ViewController.swift
//  SomeAnimate
//
//  Created by sameeltariq on 13/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickMeBtn: UIButton!
    @IBOutlet weak var animatedView: UIView!
    @IBOutlet weak var roundAnimatedView: UIView!
    @IBOutlet weak var animatedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animatedView.layer.cornerRadius = 30
//        roundAnimatedView.layer.cornerRadius = 90
        
    }
    @IBAction func animatedBtnTouch(_ sender: Any) {
        UIView.animate(withDuration: 6 ,
                       delay: 0.5,
                       animations: {
            self.animatedView.backgroundColor = UIColor.init(red: 88/255.0, green: 41/255.0, blue: 112/255.0, alpha: 1.5)
//            self.animatedView.frame.size.width += 30
//            self.animatedView.frame.size.height += 30
            self.animatedLabel.textColor =  UIColor.white

        }){_ in
            UIView.animate(withDuration: 6
                           , delay: 0.1
                           , options: UIView.AnimationOptions.curveEaseInOut){
                self.animatedView.backgroundColor = .orange
                self.animatedView.frame.origin.y += 20
            }
    }
//        let bounds = self.clickMeBtn.bounds
//            UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: nil, animations: {
//                self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
//                self.loginButton.enabled = false
//            }, completion: nil)
    
}
}
