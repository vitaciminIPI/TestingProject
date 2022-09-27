//
//  WhatsAppViewModel.swift
//  TestingProject
//
//  Created by daniel stefanus christiawan on 26/09/22.
//

import Foundation

class WhatsAppViewModel {
    func createLink(number: Int) -> String {
        let textTemplate = "Halo%20saya%20ingin%20meminjam%20barang"
        let numberString = String(number)
        let whatsAppURL = "https://wa.me/\(numberString)?text=\(textTemplate)"
        
        return whatsAppURL
    }
}
