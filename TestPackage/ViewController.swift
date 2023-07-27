//
//  ViewController.swift
//  TestPackage
//
//  Created by Emin Çelikkan on 27.07.2023.
//

import CustomButton
import UIKit

class ViewController: UIViewController {

    @IBOutlet var twitterButton: LoginButton?
    @IBOutlet var facebookButton: LoginButton?
    @IBOutlet var googleButton: LoginButton?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        twitterButton?.setupButtonImage(imageName: "logo-twitter")
        facebookButton?.setupButtonImage(imageName: "logo-fb-simple")
        googleButton?.setupButtonImage(imageName: "logo-google-plus")
        twitterButton?.setupButtonBackground(color: .cyan)
        facebookButton?.setupButtonBackground(color: .blue)
        googleButton?.setupButtonBackground(color: .red)
    }

    @IBAction func switchPage(_ sender: Any) {
        guard let secondViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        secondViewController.imageName = "logo-twitter"
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

