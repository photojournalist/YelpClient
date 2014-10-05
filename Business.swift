//
//  Business.swift
//  YelpClient
//
//  Created by Salim Madjd on 9/28/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import Foundation

class Business: NSObject  {


	var id: String?
	var name: String?
	var categories: String?
	var imageURL: String?
	var rating: String?

	var address: String?
	var city: String?
	var neighborhoods: String?
	var reviewCount: String?
	var ratingImgURL: String?


	init(id: String, name: String, categories: String, imageURL: String, rating: String, address: String, city: String, neighborhoods: String, reviewCount: String, ratingImgURL: String  ){

		self.id = id
		self.name = name
		self.categories = categories
		self.imageURL = imageURL
		self.rating = rating
		self.address = address
		self.city = city
		self.neighborhoods = neighborhoods
		self.reviewCount = reviewCount
		self.ratingImgURL = ratingImgURL




	}

	//to allow easy printing for debugging

	func description() -> String {
		return "Business Class: id: \(id) name: \(name) categories: \(categories) imageURL: \(imageURL) rating: \(rating) address: \(address) city: \(city) neighborhoods: \(neighborhoods) reviewCount: \(reviewCount) ratingImgURL: \(ratingImgURL)"
	}


	class func businessesWithJSON(allResults: [NSDictionary]) -> [Business] {


		var businesses = [Business]()


		if allResults.count>0 {


			for result in allResults {


				var id = result["id"] as? String ?? ""

				var name = result["name"] as? String ?? ""
				var categoriesArray = result["categories"]! as? NSArray
				var categories  = categoriesArray![0][1] as String
								var imageURL = result["image_url"] as? String ?? ""

				var ratingNumber = result["rating"] as? NSNumber
				var rating = ratingNumber?.stringValue ?? ""

				var locationArray = result["location"]! as? NSDictionary


				var address = locationArray!["address"]![0] as? String ?? ""


				var city = locationArray!["city"] as? String ?? ""


				var neighborhoods = locationArray!["neighborhoods"]![0] as? String ?? ""


				var reviewCountNumber = result["review_count"] as? NSNumber
				var reviewCount = reviewCountNumber?.stringValue ?? ""
				var ratingImgURL = result["rating_img_url"] as? String ?? ""










				var newBusiness = Business(id:id, name:name, categories: categories, imageURL: imageURL, rating: rating, address: address, city:city, neighborhoods:neighborhoods, reviewCount:reviewCount, ratingImgURL:ratingImgURL  )


				businesses.append(newBusiness)
				
			}
			
			
			
		}
		
		
		
		return businesses
		
		
	}




}

/*


[{
categories =     (
(
Thai,
thai
)
);
"display_phone" = "+1-415-931-6917";
id = "lers-ros-thai-san-francisco";
"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/AjoWkVxZshlN3os_c3omLw/ms.jpg";
"is_claimed" = 0;
"is_closed" = 0;
location =     {
address =         (
"730 Larkin St"
);
city = "San Francisco";
"country_code" = US;
"cross_streets" = "Olive St & Ellis St";
"display_address" =         (
"730 Larkin St",
Tenderloin,
"San Francisco, CA 94109"
);
neighborhoods =         (
Tenderloin
);
"postal_code" = 94109;
"state_code" = CA;
};
"menu_date_updated" = 1387658025;
"menu_provider" = "single_platform";
"mobile_url" = "http://m.yelp.com/biz/lers-ros-thai-san-francisco";
name = "Lers Ros Thai";
phone = 4159316917;
rating = 4;
"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
"review_count" = 1319;
"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/rkwm41iYkqUDUt0Onfg5ZA/ms.jpg";
"snippet_text" = "Yummmmmmmmmmm  \n\nPs the service is hit or miss. Not for out of town new money spoiled privileged bratts!";
url = "http://www.yelp.com/biz/lers-ros-thai-san-francisco";
}


*/


/*
{
categories =     (
(
Thai,
thai
)
);
"display_phone" = "+1-415-824-6059";
id = "manivanh-thai-restaurant-san-francisco";
"image_url" = "http://s3-media1.fl.yelpcdn.com/bphoto/Asfzx48vtYEiABRPMpQoDA/ms.jpg";
"is_claimed" = 0;
"is_closed" = 0;
location =     {
address =         (
"2732 24th St"
);
city = "San Francisco";
"country_code" = US;
"cross_streets" = "Potrero Ave & Hampshire St";
"display_address" =         (
"2732 24th St",
Mission,
"San Francisco, CA 94110"
);
neighborhoods =         (
Mission
);
"postal_code" = 94110;
"state_code" = CA;
};
"menu_date_updated" = 1387492318;
"menu_provider" = "single_platform";
"mobile_url" = "http://m.yelp.com/biz/manivanh-thai-restaurant-san-francisco";
name = "Manivanh Thai Restaurant";
phone = 4158246059;
rating = 4;
"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
"review_count" = 168;
"snippet_image_url" = "http://s3-media2.fl.yelpcdn.com/photo/VmQzej_On2eG9tKSMIeV7g/ms.jpg";
"snippet_text" = "Carmen's dish. Tofu was slightly crispy and wonderful. Eggplant was super dank. \n\nSeafood with basil. Tons of fatty shrimp. Soup around dish was great with...";
url = "http://www.yelp.com/biz/manivanh-thai-restaurant-san-francisco";
}

*/
