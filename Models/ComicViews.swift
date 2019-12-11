//
//  ComicViews.swift
//  ImagesAndErrorHandling
//
//  Created by Tiffany Obi on 12/10/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import Foundation

struct Comic: Decodable {
    let num: Double
    let img: String
    let title: String
    let transcript: String
}
