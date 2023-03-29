//
//  ViewController.swift
//  Ejercicio3Parte5
//
//  Created by Harold Padilla on 4/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var botonAccion: UIButton!
    @IBOutlet weak var botonAccionRocky: UIButton!
    
    var nombres = ["luis", "gloria", "david", "natalia"]
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func agregarRocky(_ sender: Any) {
        nombres.append("rocky")
        botonAccionRocky.isEnabled = false
    }
    
    @IBAction func botonAccion(_ sender: Any) {
        if (index > (nombres.count - 1)){
            index = 0
        }
        etiqueta.text = nombres[index]
        index +=  1
    }
}

