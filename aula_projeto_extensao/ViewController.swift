//
//  ViewController.swift
//  aula_projeto_extensao
//
//  Created by Faculdade Alfa on 03/05/22.
//  Copyright © 2022 Faculdade Alfa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var lblFrase: UILabel!
    
    @IBOutlet var txtNome: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func olaClique() {
        lblFrase.text = getFraseOla()
    }
    
    func getFraseOla() -> String {
        return "Olá \(txtNome.text ?? ""), seja bem vindo!!!"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        olaClique()
        textField.resignFirstResponder()
        
        return true
    }
}
