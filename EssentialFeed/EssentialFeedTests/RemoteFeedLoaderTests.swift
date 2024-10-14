//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by meng-socal on 10/12/24.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    func get(from url: URL) {
        requestedURL = url
    }
    
    var requestedURL: URL?
}



class RemoteFeedLoaderTests: XCTestCase{
    
    func test_init_doesNotRequestDataFromURL() {
        
        let client = HTTPClient.shared
        
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL )
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
    
}
