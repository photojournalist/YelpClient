//
//  YelpAgent.swift
//  YelpClient
//
//  Created by Salim Madjd on 9/28/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit

class YelpAgent: BDBOAuth1RequestOperationManager {
	var accessToken: String!
	var accessSecret: String!

	required init(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	init(consumerKey key: String!, consumerSecret secret: String!, accessToken: String!, accessSecret: String!) {
		self.accessToken = accessToken
		self.accessSecret = accessSecret
		var baseUrl = NSURL(string: "http://api.yelp.com/v2/")
		super.init(baseURL: baseUrl, consumerKey: key, consumerSecret: secret);

		var token = BDBOAuthToken(token: accessToken, secret: accessSecret, expiration: nil)
		self.requestSerializer.saveAccessToken(token)
	}

	func searchWithTerm(term: String, success: (AFHTTPRequestOperation!, AnyObject!) -> Void, failure: (AFHTTPRequestOperation!, NSError!) -> Void) -> AFHTTPRequestOperation! {
		// For additional parameters, see http://www.yelp.com/developers/documentation/v2/search_api
		var parameters = ["term": term, "location": "San Francisco"]
		return self.GET("search", parameters: parameters, success: success, failure: failure)
	}

}
