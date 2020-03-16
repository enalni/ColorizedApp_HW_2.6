//
//  SecondViewController.swift
//  HW 2
//
//  Created by Александр Николаевич on 15.03.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , seconsVCDelegate {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var setColor: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getColor"{
            let destinationVC = segue.destination as? ViewController
            destinationVC?.delegate = self
            colorView.backgroundColor = colorView.backgroundColor
        }
    }
    
    func changeColor(color: UIColor) {
        colorView.backgroundColor = color
    }
    
    
    @IBAction func saveData(_ unwindSegue: UIStoryboardSegue){
        guard unwindSegue.identifier == "getColor" else {
            return
        }
        guard let source = unwindSegue.source as? ViewController else { return }
        colorView.backgroundColor = colorView.backgroundColor
    }
}
    

