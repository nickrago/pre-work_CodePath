//
//  ViewController.swift
//  vasikoRago_codePath
//
//  Created by Sandro on 8/31/18.
//  Copyright © 2018 vasikoRago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor : UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.lightGray
        myImageView.image = UIImage(named: "bricks")
        
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello!"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
        myImageView.image = UIImage(named: "grass")
    }
    
}

