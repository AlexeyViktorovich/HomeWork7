//
//  ThirdMainViewController.swift
//  HomeWork7
//
//  Created by Алексей Полин on 05.08.2021.
//

import UIKit

class ThirdMainViewController: UIViewController {
    
    var integratedVC: ThirdIntegratedViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let smallVC = segue.destination as? ThirdIntegratedViewController, segue.identifier == "smallVC"{
            
            self.integratedVC = smallVC
            smallVC.delegate = self
            
        }
    }
    
    
    @IBAction func greenB(_ sender: Any) {
        integratedVC?.smallBGColor.backgroundColor = UIColor.systemGreen
    }
    @IBAction func yellowB(_ sender: Any) {
        integratedVC?.smallBGColor.backgroundColor = UIColor.systemYellow
    }
    @IBAction func purpleB(_ sender: Any) {
        integratedVC?.smallBGColor.backgroundColor = UIColor.systemPurple
    }
    @IBOutlet var mainBGColor: UIView!
    
    

}
extension ThirdMainViewController: ChangeBackgroundDelegate{
    func changeBG(_ colorBG: UIColor) {
        mainBGColor.backgroundColor = colorBG
    }
    
    
}
