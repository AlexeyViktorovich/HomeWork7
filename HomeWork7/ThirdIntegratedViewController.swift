//
//  ThirdIntegratedViewController.swift
//  HomeWork7
//
//  Created by Алексей Полин on 05.08.2021.
//

import UIKit

protocol ChangeBackgroundDelegate {
    func changeBG (_ colorBG : UIColor)
}

class ThirdIntegratedViewController: UIViewController {
    
    var backgroundColor = UIColor.systemGray
    var delegate: ChangeBackgroundDelegate?

    @IBAction func greenIntB(_ sender: Any) {
        delegate?.changeBG(UIColor.systemGreen)
    }
    @IBAction func yellowIntB(_ sender: Any) {
        delegate?.changeBG(UIColor.systemYellow)
    }
    @IBAction func purpleIntB(_ sender: Any) {
        delegate?.changeBG(UIColor.systemPurple)
    }
    @IBOutlet var smallBGColor: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
