//
//  Cep.swift
//  BuscadorDeCEP
//
//  Created by Luiz Felipe Clemente Claro on 15/02/23.
//

import Foundation

struct Cep: Decodable {
    var logradouro: String = ""
    var localidade: String = ""
    var uf: String = ""
    var ddd: String = ""
}
