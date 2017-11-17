//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Shannon, Leandre D. (MU-Student) on 11/16/17.
//  Copyright © 2017 Shannon, Leandre D. (MU-Student). All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet var colorView: UIView!
    
    var colors = [Color(name: "Red", uiColor: UIColor.red),
                  Color(name: "Orange", uiColor: UIColor.orange),
                  Color(name: "Yellow", uiColor: UIColor.yellow),
                  Color(name: "Green", uiColor: UIColor.green),
                  Color(name: "Blue", uiColor: UIColor.blue),
                  Color(name: "Purple", uiColor: UIColor.purple),
                  Color(name: "Brown", uiColor: UIColor.brown)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        colorView.backgroundColor = colors[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colors[0].name
        colorView.backgroundColor = colors[0].uiColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
