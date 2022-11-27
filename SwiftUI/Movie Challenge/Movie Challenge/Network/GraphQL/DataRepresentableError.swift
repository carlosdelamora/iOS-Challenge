//
//  DataRepresentableError.swift
//  Movie Challenge
//
//  Created by Carlos De la mora on 11/25/22.
//

import Foundation

enum DataRepresentableError: Error, CustomStringConvertible {
    case wrongQuery(String)
    case missingValue(String)
    
    var description: String {
        let message: String
        switch self {
        case .wrongQuery(let errorMessage):
            message = errorMessage
        case .missingValue(let errorMessage):
            message = errorMessage
        }
        return "DataRepresentableError: \(message)"
    }
}

