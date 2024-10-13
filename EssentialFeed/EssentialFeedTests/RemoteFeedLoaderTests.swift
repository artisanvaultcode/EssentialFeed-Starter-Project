//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by meng-socal on 10/12/24.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}


class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        
        let client = HTTPClient()
        
        _ = RemoteFeedLoader();
        
        XCTAssertNil(client.requestedURL )
    }
    
    func test_load_requestDataFromURL() {
        
    }
    
}
