//
//  GreenViewController.swift
//  MiniApp18-NavigationDateTransfer
//
//  Created by 前田航汰 on 2022/02/28.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    var textLabel = ""

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        inputTextField.text = textLabel
    }

}
