//
//  ViewController.swift
//  Informatcion
//
//  Created by Tonny Gammer on 10/1/19.
//  Copyright © 2019 Tonny Gammer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactos.append(Contacto(nombre: "Pablito", telefono: "(668) 222 6913", direccion: "Enrrique Segoviano 2813", correo: "pablaresbueno@hotmail.com", foto: "foto1"))
        contactos.append(Contacto(nombre: "Oscar", telefono: "(668) 861 1719", direccion: "las palmas robustas 9867", correo: "Oscarpormejoractor@gmail.com", foto: "foto2"))
        contactos.append(Contacto(nombre: "Franccesco", telefono: "(668) 284 1392", direccion: "Enrrique Segoviano 1122", correo: "elvirgolini69@gmail.com", foto: "foto3"))
        contactos.append(Contacto(nombre: "Daniel", telefono: "(668) 928 6632", direccion: "beni sanami dolor 772", correo: "esunfantasma@hotmail.com", foto: "foto4"))
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 117
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.imgContacto.image = UITableView(named: contactos[indexPath.row].foto!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalles" {
            let destino = segue.destination as? EditarContactoController
            destino?.contacto = contactos [tvContactos.indexPathForSelectedRow!.row]
            
        }
    }
    
    }



