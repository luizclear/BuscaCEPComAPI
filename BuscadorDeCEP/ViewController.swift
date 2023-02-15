//
//  ViewController.swift
//  BuscadorDeCEP
//
//  Created by Luiz Felipe Clemente Claro on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var barraPesquisaTextField: UITextField!
    
    
    @IBOutlet weak var buscarButton: UIButton!
    
    
    @IBOutlet weak var fundoView: UIView!
    
    
    @IBOutlet weak var logradouroLabel: UILabel!
    
    
    @IBOutlet weak var localidadeLabel: UILabel!
    
    
    @IBOutlet weak var dddLabel: UILabel!
    
    
    @IBOutlet weak var ufLabel: UILabel!
    
    
    @IBOutlet weak var reloadButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfig()
        
    }
    
    
    @IBAction func tappedBuscarButton(_ sender: Any) {
        APIBuscaCEP.pesquisarCEP(barraPesquisaTextField.text!) { (cep) in
            DispatchQueue.main.sync {
                self.logradouroLabel.text = "Logradouro: \(cep.logradouro)"
                self.localidadeLabel.text = "Localidade/UF: \(cep.localidade)"
                self.ufLabel.text = "UF: \(cep.uf)"
                self.dddLabel.text = "DDD: \(cep.ddd)"
            }
        }
        
        
        
        fundoView.backgroundColor = .purple
        
        
        logradouroLabel.textColor = .white
        localidadeLabel.textColor = .white
        dddLabel.textColor = .white
        ufLabel.textColor = .white
        
        fundoView.backgroundColor = .purple
        
        
        
        
    }
    
    @IBAction func tappedReloadButton(_ sender: Any) {
        barraPesquisaTextField.text = ""
        
        //        logradouroLabel.text = ""
        //        localidadeLabel.text = ""
        //        dddLabel.text = ""
        //        ufLabel.text = ""
        
        fundoView.backgroundColor = .white
        
        
        
        
        
        
    }
    
    
    func setConfig(){
        titleLabel.text = "Buscador de CEP"
        titleLabel.textColor = .purple
        titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        barraPesquisaTextField.textColor = .purple
        barraPesquisaTextField.placeholder = "Digitar CEP"
        
        buscarButton.tintColor = .purple
        
        logradouroLabel.text = ""
        localidadeLabel.text = ""
        dddLabel.text = ""
        ufLabel.text = ""
        
        reloadButton.tintColor = .purple
        
        logradouroLabel.numberOfLines = 2
        
    }

}

