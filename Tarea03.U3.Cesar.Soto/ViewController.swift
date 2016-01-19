//
//  ViewController.swift
//  Tarea03.U3.Cesar.Soto
//
//  Created by Cesar Soto Alarcon on 12-01-16.
//  Copyright © 2016 Cesar Soto Alarcon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
    
    Seccion de Declaracion de Variables y Outlet
    */
    
    @IBOutlet weak var txtTemp: UITextField!
    @IBOutlet weak var lblConverted: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    
    Acción para evaluar cuando se presiona un botón de conversion
    como cuando se convierte a Celsius o a Fahrenheit
    */
    @IBAction func indexChanged(sender: AnyObject) {
        var num :Float
               let numberformatted=NSNumberFormatter()
         let number=numberformatted.numberFromString(txtTemp.text!)
         let numberfloat=number?.floatValue

       if(segmentedControl.selectedSegmentIndex==0)
        {
            
           num=((numberfloat)!-32)*0.55555555
            lblConverted.text="\(num) °Celsius"
    
       }else if(segmentedControl.selectedSegmentIndex==1)
       {
          num=((numberfloat)!*1.8)+32
          lblConverted.text="\(num) ° Fahrenheit"
        
        }
    }
   
   

   
            
       
    
}

