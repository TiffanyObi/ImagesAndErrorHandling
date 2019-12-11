//
//  ImagesAndErrorHandlingTests.swift
//  ImagesAndErrorHandlingTests
//
//  Created by Tiffany Obi on 12/9/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import XCTest
@testable import ImagesAndErrorHandling

class ImagesAndErrorHandlingTests: XCTestCase {

    
    func testCheckForComicData() {
    
        //arrange
        let comicNumber = 21
        let expectedTitle = "Kepler"
        let exp = XCTestExpectation(description: "search found")
        //act
        ComicApiClent.getComic(number: Double(comicNumber)) { (result) in
            switch result {
            case .failure(let appError):
                
                XCTFail("appError:\(appError)")
                
            case .success(let comic):
                exp.fulfill()
                XCTAssertEqual(comic.title, expectedTitle,"comic title \(comic.title) and expected title\(expectedTitle) should be the same")
                
            }
        }
        wait(for: [exp], timeout: 5.0)
        }
    }


