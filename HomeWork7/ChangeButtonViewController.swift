//
//  ChangeButtonViewController.swift
//  HomeWork7
//
//  Created by Алексей Полин on 04.08.2021.
//

import UIKit
protocol ChangeButtonViewControllerDelegate {
    func setColor(_ color: String, _ textColor: UIColor)
}
class ChangeButtonViewController: UIViewController {
    
    var changedColorTF = ""
    var color: UIColor = UIColor.blue
    var delegate: ChangeButtonViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorTF.text = changedColorTF
        colorTF.textColor = color
    }
    
    
    
    @IBAction func greenB(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        colorTF.text = "Green changed"
        colorTF.textColor = UIColor.green
        delegate?.setColor(colorTF.text ?? "", UIColor.green)
    }
    
    @IBAction func blueB(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        colorTF.text = "Blue changed"
        colorTF.textColor = UIColor.blue
        delegate?.setColor(colorTF.text ?? "", UIColor.blue)
    }
    
    @IBAction func redB(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        colorTF.text = "Red changed"
        delegate?.setColor(colorTF.text ?? "", UIColor.red)
    }
    
    @IBOutlet weak var colorTF: UITextField!
    
}
