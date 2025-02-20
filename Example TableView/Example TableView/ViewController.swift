//
//  ViewController.swift
//  Example TableView
//
//  Created by Usuário Convidado on 19/02/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var animal = ["Urso", "Leaão", "Rinoceronte", "Elefante", "Girafa"]
    var local = ["USA", "Europa", "Asia", "Africa", "Africa", "Asia", "Africa", "Africa"]
    var foto = ["urso", "leao", "rino", "ele", "girafa"]
    @IBOutlet weak var minhaTablesw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTablesw.dataSource = self
        minhaTablesw.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = animal[indexPath.row]
        celula.detailTextLabel?.text = local[indexPath.row]
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let msg = "Você selecionou o animal \(indexPath.row)"
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default))
        
        present(alerta, animated: true)
    }


}

