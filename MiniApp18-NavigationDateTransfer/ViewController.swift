//
//  ViewController.swift
//  MiniApp18-NavigationDateTransfer
//
//  Created by 前田航汰 on 2022/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redTextLabel: UILabel!
    @IBOutlet weak var greenTextLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RedNext" {
            let nav = segue.destination as! UINavigationController
            let redVC = nav.topViewController as! RedViewController
            redVC.textLabel = redTextLabel.text ?? ""
        }

        if segue.identifier == "GreenNext" {
            let nav = segue.destination as! UINavigationController
            let greenVC = nav.topViewController as! GreenViewController
            greenVC.textLabel = greenTextLabel.text ?? ""
        }

    }

    @IBAction func cancelExit(segue: UIStoryboardSegue){
    }

    @IBAction func redInputedExit(segue: UIStoryboardSegue){
        let redVC = segue.source as! RedViewController
        if redVC.inputTextField.text?.isEmpty == true {
            redTextLabel.text = "入力して下さい"
        } else {
            redTextLabel.text = redVC.inputTextField.text
        }
        
    }

    @IBAction func greenInputedExit(segue: UIStoryboardSegue){
        let greenVC = segue.source as! GreenViewController
        if greenVC.inputTextField.text?.isEmpty == true {
            greenTextLabel.text = "入力して下さい"
        } else {
            greenTextLabel.text = greenVC.inputTextField.text
        }
    }

}

