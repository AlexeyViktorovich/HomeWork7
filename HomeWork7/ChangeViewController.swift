//
//  ChangeViewController.swift
//  HomeWork7
//
//  Created by Алексей Полин on 04.08.2021.
//

import UIKit

class ChangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var colorL: UILabel!
    @IBAction func changeB(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cbvc = segue.destination as? ChangeButtonViewController, segue.identifier == "ShowChangeButton"{
            cbvc.changedColorTF = colorL.text ?? ""
            cbvc.color = colorL.textColor
            cbvc.delegate = self
        }
    }
}
extension ChangeViewController: ChangeButtonViewControllerDelegate{
    func setColor(_ color: String, _ textColor: UIColor) {
        colorL.text = "\(color)"
        colorL.textColor = textColor
    }

}
