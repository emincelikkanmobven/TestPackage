//
//  SecondViewController.swift
//  TestPackage
//
//  Created by Emin Çelikkan on 27.07.2023.
//

import UIKit
import CustomButton

public class SecondViewController: UIViewController {

    @IBOutlet var customButon: LoginButton?
    var imageName: String?
    public override func viewDidLoad() {
        super.viewDidLoad()
        customButon?.setupButtonImage(imageName: imageName ?? "")
        }
}
