//
//  GameQuestion.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import Foundation
struct GameQuestion:Identifiable{
    let id =  UUID()
    let label:String
    let answer1:String
    let answer2:String
    let answer3:String
    let corectAnswer:String
}
