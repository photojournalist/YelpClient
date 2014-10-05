//
//  APIController.swift
//  YelpClient
//
//  Created by Salim Madjd on 9/28/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import Foundation

protocol APIControllerProtocol {
	func didReceiveAPIResults(results: [NSDictionary])
}

class APIController {

	var client: YelpAgent!

	let ConsumerKey =		"pJuDBkfCG717US9z8w7plw"
	let ConsumerSecret =	"uQW3SkZsEm0T-EsTMiDwTRWHM5o"
	let Token =				"rnnMR7okGtk-_c1GUP1B7NdtLS3p9AJr"
	let TokenSecret =		"tLLRx882PuUm9GOAiRCfH-oNJmU"

	var delegate: APIControllerProtocol


	init(delegate: APIControllerProtocol) {
		self.delegate = delegate



	client = YelpAgent(consumerKey: ConsumerKey, consumerSecret: ConsumerSecret, accessToken: Token, accessSecret: TokenSecret)

	}

	func search(){

		self.search("thai")



	}


	func search (searchTerm: String){


		client.searchWithTerm(searchTerm, success: { (operation: AFHTTPRequestOperation!, response: AnyObject!) -> Void in
			let results: [NSDictionary] = response["businesses"] as [NSDictionary]
			self.delegate.didReceiveAPIResults(results)
			}) { (operation: AFHTTPRequestOperation!, error: NSError!) -> Void in
				println(error)
		}




	}



}

/*

{
	businesses =     (
		{
			categories =             (
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
			location =             {
				address =                 (
					"730 Larkin St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Olive St & Ellis St";
				"display_address" =                 (
					"730 Larkin St",
					Tenderloin,
					"San Francisco, CA 94109"
				);
				neighborhoods =                 (
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
			"review_count" = 1318;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/rkwm41iYkqUDUt0Onfg5ZA/ms.jpg";
			"snippet_text" = "Yummmmmmmmmmm  \n\nPs the service is hit or miss. Not for out of town new money spoiled privileged bratts!";
			url = "http://www.yelp.com/biz/lers-ros-thai-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-552-8999";
			id = "basil-thai-restaurant-and-bar-san-francisco";
			"image_url" = "http://s3-media2.fl.yelpcdn.com/bphoto/66fcSVvORWmmLKf62ltY8A/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1175 Folsom St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Rausch St & Langton St";
				"display_address" =                 (
					"1175 Folsom St",
					SoMa,
					"San Francisco, CA 94103"
				);
				neighborhoods =                 (
					SoMa
				);
				"postal_code" = 94103;
				"state_code" = CA;
			};
			"menu_date_updated" = 1387615740;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/basil-thai-restaurant-and-bar-san-francisco";
			name = "Basil Thai Restaurant & Bar";
			phone = 4155528999;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 1032;
			"snippet_image_url" = "http://s3-media4.fl.yelpcdn.com/photo/kp2vHYhVsTPcfalcknkBxw/ms.jpg";
			"snippet_text" = "The curry peppercorn duck was great. Not too spicy to overpower the flavor of everything else. The chicken satay was tender and moist. The peanut sauce was...";
			url = "http://www.yelp.com/biz/basil-thai-restaurant-and-bar-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-346-3121";
			id = "chabaa-thai-cuisine-san-francisco-2";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/xwYNkmnnRtTFYYR4WZ9IEQ/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"420 Geary St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Mason St";
				"display_address" =                 (
					"420 Geary St",
					"Union Square",
					"San Francisco, CA 94102"
				);
				neighborhoods =                 (
					"Union Square"
				);
				"postal_code" = 94102;
				"state_code" = CA;
			};
			"mobile_url" = "http://m.yelp.com/biz/chabaa-thai-cuisine-san-francisco-2";
			name = "Chabaa Thai Cuisine";
			phone = 4153463121;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 566;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/PXFIiboJE-pn5ZE1RcYhWg/ms.jpg";
			"snippet_text" = "Pad si- Yu?   Those three words never fail to make my mouth water.  In fact, I think my mouth is doing it now just thinking about the stuff.  For a place as...";
			url = "http://www.yelp.com/biz/chabaa-thai-cuisine-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-552-2960";
			id = "house-of-thai-2-san-francisco";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/3vV41KDpjA4U64gtZE3aQg/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"494 Haight St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.772247";
					longitude = "-122.4302516";
				};
				"country_code" = US;
				"cross_streets" = "Webster St & Fillmore St";
				"display_address" =                 (
					"494 Haight St",
					"Lower Haight",
					"San Francisco, CA 94117"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					"Lower Haight",
					"Hayes Valley"
				);
				"postal_code" = 94117;
				"state_code" = CA;
			};
			"menu_date_updated" = 1403047444;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/house-of-thai-2-san-francisco";
			name = "House of Thai 2";
			phone = 4155522960;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 54;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/CoDXVmylTiNgiTTr764Hqg/ms.jpg";
			"snippet_text" = "Stumbled across the restaurant coming back from an apartment search.\n\nFantastic, authentic tasting pad thai. The lychee iced tea goes down smooth and easy...";
			url = "http://www.yelp.com/biz/house-of-thai-2-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-391-8222";
			id = "king-of-thai-noodle-house-san-francisco-7";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/jjh82yTddndibxRmDyfvpw/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1268 Grant Ave"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Fresno St & Vallejo St";
				"display_address" =                 (
					"1268 Grant Ave",
					"North Beach/Telegraph Hill",
					"San Francisco, CA 94133"
				);
				neighborhoods =                 (
					"North Beach/Telegraph Hill"
				);
				"postal_code" = 94133;
				"state_code" = CA;
			};
			"menu_date_updated" = 1402568867;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/king-of-thai-noodle-house-san-francisco-7";
			name = "King of Thai Noodle House";
			phone = 4153918222;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 883;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/h1Dsma7abiWeQseJBYNgQg/ms.jpg";
			"snippet_text" = "Atmosphere (sports bar)+ inexpensive food = win win. \n\nThis place offers good Thai food. I've tried almost all the appetizers and they were quite good. The...";
			url = "http://www.yelp.com/biz/king-of-thai-noodle-house-san-francisco-7";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-731-9999";
			id = "marnee-thai-san-francisco-2";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/gdeX343-yYSVXbH1za3E-A/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1243 9th Ave"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Lincoln Way & Irving St";
				"display_address" =                 (
					"1243 9th Ave",
					"Inner Sunset",
					"San Francisco, CA 94122"
				);
				neighborhoods =                 (
					"Inner Sunset"
				);
				"postal_code" = 94122;
				"state_code" = CA;
			};
			"menu_date_updated" = 1405768361;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/marnee-thai-san-francisco-2";
			name = "Marnee Thai";
			phone = 4157319999;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 1170;
			"snippet_image_url" = "http://s3-media4.fl.yelpcdn.com/photo/mJt4trPcjtUvX5Yn2Kw-8A/ms.jpg";
			"snippet_text" = "Started with the Soft Shell Crab and Spring Roll appetizers.  Both were great.  I was impressed that in a town known for Dungeness crabs they prepared this...";
			url = "http://www.yelp.com/biz/marnee-thai-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				),
				(
					"Asian Fusion",
					asianfusion
				)
			);
			"display_phone" = "+1-415-503-1500";
			id = "thai-house-530-san-francisco";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/G0dDiN4Jnw7tzOxDJDUEkg/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"530 Valencia St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.764333";
					longitude = "-122.422128";
				};
				"country_code" = US;
				"cross_streets" = "17th St & 16th St";
				"display_address" =                 (
					"530 Valencia St",
					Mission,
					"San Francisco, CA 94110"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					Mission
				);
				"postal_code" = 94110;
				"state_code" = CA;
			};
			"menu_date_updated" = 1387749659;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/thai-house-530-san-francisco";
			name = "Thai House 530";
			phone = 4155031500;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 319;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/ZTDLeiRelVmfknkt_WQtng/ms.jpg";
			"snippet_text" = "Delicious Thai food in San Francisco and their drinks are tasty, too!\n\nThe flavor is very authentic and the spice level is pretty intense, so if you do not...";
			url = "http://www.yelp.com/biz/thai-house-530-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-752-5198";
			id = "king-of-thai-noodle-house-san-francisco-4";
			"image_url" = "http://s3-media1.fl.yelpcdn.com/bphoto/zpJnFSfTKFoIoct3M61UEw/ms.jpg";
			"is_claimed" = 0;
			"is_closed" = 0;
			location =             {
				address =                 (
					"639 Clement St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "7th Ave & 8th Ave";
				"display_address" =                 (
					"639 Clement St",
					"Inner Richmond",
					"San Francisco, CA 94118"
				);
				neighborhoods =                 (
					"Inner Richmond"
				);
				"postal_code" = 94118;
				"state_code" = CA;
			};
			"menu_date_updated" = 1387611449;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/king-of-thai-noodle-house-san-francisco-4";
			name = "King of Thai Noodle House";
			phone = 4157525198;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 768;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/ZQjCNDvDUGlvIDID0kG5LQ/ms.jpg";
			"snippet_text" = "Omgggg! Such a small little Thai restaurant but don't be deceived, the food was incredible. There wasn't anything that I didn't like. I wish I had more room...";
			url = "http://www.yelp.com/biz/king-of-thai-noodle-house-san-francisco-4";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-362-7456";
			id = "kin-khao-san-francisco-2";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/wnc-SOe5qlYRqXk-6hT7aw/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"55 Cyril Magnin St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.7749295";
					longitude = "-122.4194155";
				};
				"country_code" = US;
				"cross_streets" = "Hallidie Plz & Eddy St";
				"display_address" =                 (
					"55 Cyril Magnin St",
					SoMa,
					"San Francisco, CA 94102"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					SoMa
				);
				"postal_code" = 94102;
				"state_code" = CA;
			};
			"mobile_url" = "http://m.yelp.com/biz/kin-khao-san-francisco-2";
			name = "Kin Khao";
			phone = 4153627456;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 184;
			"snippet_image_url" = "http://s3-media2.fl.yelpcdn.com/photo/WfuvpKU5gr43aFLy5BZL2Q/ms.jpg";
			"snippet_text" = "The food here was super legit because everything was super spicy! I like that nothing on the menu is what you're used to at a Thai restaurant, and every...";
			url = "http://www.yelp.com/biz/kin-khao-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-441-2248";
			id = "house-of-thai-san-francisco-2";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/UKRtIGJNvitchC75VKesmQ/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"901 Larkin St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.7861807";
					longitude = "-122.4182607";
				};
				"country_code" = US;
				"cross_streets" = "Geary St & Cedar St";
				"display_address" =                 (
					"901 Larkin St",
					Tenderloin,
					"San Francisco, CA 94109"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					Tenderloin
				);
				"postal_code" = 94109;
				"state_code" = CA;
			};
			"menu_date_updated" = 1402583019;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/house-of-thai-san-francisco-2";
			name = "House of Thai";
			phone = 4154412248;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 789;
			"snippet_image_url" = "http://s3-media3.fl.yelpcdn.com/photo/RXVvC8tjvXn3k_6deXcb3w/ms.jpg";
			"snippet_text" = "I think I've probably come here (Thai House Express) at least 50+ times over the course of the past 6 years. I'd have to say this is my favorite restaurant...";
			url = "http://www.yelp.com/biz/house-of-thai-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-922-1599";
			id = "yukol-place-thai-cuisine-san-francisco";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/YqCZJfknlwRn5aTEN3e3rQ/ms.jpg";
			"is_claimed" = 0;
			"is_closed" = 0;
			location =             {
				address =                 (
					"2380 Lombard St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Pierce St & Scott St";
				"display_address" =                 (
					"2380 Lombard St",
					"Marina/Cow Hollow",
					"San Francisco, CA 94123"
				);
				neighborhoods =                 (
					"Marina/Cow Hollow"
				);
				"postal_code" = 94123;
				"state_code" = CA;
			};
			"mobile_url" = "http://m.yelp.com/biz/yukol-place-thai-cuisine-san-francisco";
			name = "Yukol Place Thai Cuisine";
			phone = 4159221599;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 272;
			"snippet_image_url" = "http://s3-media4.fl.yelpcdn.com/photo/CPULpFTKzm7mlNnKdX0GpQ/ms.jpg";
			"snippet_text" = "This place is amazing.  Delicious food, great prices and super service.\n\nThe staff is always super friendly and have accommodated our last minute group...";
			url = "http://www.yelp.com/biz/yukol-place-thai-cuisine-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-643-5893";
			id = "regent-thai-restaurant-san-francisco-2";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/lDQpZWJ8mpPUzg0KcGO3Ew/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1700 Church St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Day St & 29th St";
				"display_address" =                 (
					"1700 Church St",
					"Noe Valley",
					"San Francisco, CA 94131"
				);
				neighborhoods =                 (
					"Noe Valley"
				);
				"postal_code" = 94131;
				"state_code" = CA;
			};
			"mobile_url" = "http://m.yelp.com/biz/regent-thai-restaurant-san-francisco-2";
			name = "Regent Thai Restaurant";
			phone = 4156435893;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 362;
			"snippet_image_url" = "http://s3-media4.fl.yelpcdn.com/photo/-AsDXEeCa3Dp2-8q465UBw/ms.jpg";
			"snippet_text" = "This little neighborhood spot elevates Thai food to a whole new level! Everything I ate there was good, but a few dishes were truly exquisite. \n\nThe deep...";
			url = "http://www.yelp.com/biz/regent-thai-restaurant-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-933-8031";
			id = "siam-lotus-thai-cuisine-san-francisco";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/U-rGrKq9PZZJGHDJiZM2vQ/ms.jpg";
			"is_claimed" = 0;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1705 Haight St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Cole St & Shrader St";
				"display_address" =                 (
					"1705 Haight St",
					"The Haight",
					"San Francisco, CA 94117"
				);
				neighborhoods =                 (
					"The Haight"
				);
				"postal_code" = 94117;
				"state_code" = CA;
			};
			"mobile_url" = "http://m.yelp.com/biz/siam-lotus-thai-cuisine-san-francisco";
			name = "Siam Lotus Thai Cuisine";
			phone = 4159338031;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 292;
			"snippet_image_url" = "http://s3-media3.fl.yelpcdn.com/photo/LQcryB3cyVXk6oIm4fHcLA/ms.jpg";
			"snippet_text" = "best thai food..\nthai tacos are the best...\ndef coming back. and again and again......";
			url = "http://www.yelp.com/biz/siam-lotus-thai-cuisine-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-292-9027";
			id = "jitlada-thai-cuisine-san-francisco";
			"image_url" = "http://s3-media2.fl.yelpcdn.com/bphoto/bOrpSZCoAQEmHEIjlsxDqw/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"1826 Buchanan St",
					"Ste B"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Sutter St & Bush St";
				"display_address" =                 (
					"1826 Buchanan St",
					"Ste B",
					Japantown,
					"San Francisco, CA 94115"
				);
				neighborhoods =                 (
					Japantown,
					"Lower Pacific Heights"
				);
				"postal_code" = 94115;
				"state_code" = CA;
			};
			"menu_date_updated" = 1402627456;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/jitlada-thai-cuisine-san-francisco";
			name = "Jitlada Thai Cuisine";
			phone = 4152929027;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 418;
			"snippet_image_url" = "http://s3-media2.fl.yelpcdn.com/photo/Bpg2xnTmWoh74bDsZIBLIw/ms.jpg";
			"snippet_text" = "Jitlada is amazing!  Pai is a great cook and she caters for our office all the time! The food is beautiful and fresh and made with the best ingredients.\n\nI...";
			url = "http://www.yelp.com/biz/jitlada-thai-cuisine-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				),
				(
					Seafood,
					seafood
				),
				(
					Vegetarian,
					vegetarian
				)
			);
			"display_phone" = "+1-415-826-4639";
			id = "sweet-basil-thai-cuisine-san-francisco-2";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/_mw0JBLqaSa1kjc8FLIuAg/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"3221 Mission St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.7452561";
					longitude = "-122.4200924";
				};
				"country_code" = US;
				"cross_streets" = "Valencia St & Fair Ave";
				"display_address" =                 (
					"3221 Mission St",
					"Bernal Heights",
					"San Francisco, CA 94110"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					"Bernal Heights",
					Mission
				);
				"postal_code" = 94110;
				"state_code" = CA;
			};
			"menu_date_updated" = 1401342417;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/sweet-basil-thai-cuisine-san-francisco-2";
			name = "Sweet Basil Thai Cuisine";
			phone = 4158264639;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 137;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/dnhL2nUDxW9aiU0irT9zgA/ms.jpg";
			"snippet_text" = "I haven't even eaten yet, but 5 stars. Great ambiance, music, and iron chef DVD on the television. \n\nFood has arrived: love the peanut sauce (I've been...";
			url = "http://www.yelp.com/biz/sweet-basil-thai-cuisine-san-francisco-2";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-831-3663";
			id = "thai-time-restaurant-san-francisco";
			"image_url" = "http://s3-media2.fl.yelpcdn.com/bphoto/wgmj8n_7HfMPdZQuR2XXxA/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"315 8th Ave"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Geary Blvd & Clement St";
				"display_address" =                 (
					"315 8th Ave",
					"Inner Richmond",
					"San Francisco, CA 94118"
				);
				neighborhoods =                 (
					"Inner Richmond"
				);
				"postal_code" = 94118;
				"state_code" = CA;
			};
			"menu_date_updated" = 1407604899;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/thai-time-restaurant-san-francisco";
			name = "Thai Time Restaurant";
			phone = 4158313663;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 453;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/bvQmBvs5i5BpNw11HSWxvw/ms.jpg";
			"snippet_text" = "I was at Green Apple Books redeeming my Groupon when my roommate called and asked if I wanted to go to Thai Time for dinner.  I immediately said...";
			url = "http://www.yelp.com/biz/thai-time-restaurant-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-285-4210";
			id = "pad-thai-restaurant-san-francisco";
			"image_url" = "http://s3-media3.fl.yelpcdn.com/bphoto/HOh1wt9yRSeuFOqXFVH8-w/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"3259 Mission St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "29th St & Valencia St";
				"display_address" =                 (
					"3259 Mission St",
					"Bernal Heights",
					"San Francisco, CA 94110"
				);
				neighborhoods =                 (
					"Bernal Heights"
				);
				"postal_code" = 94110;
				"state_code" = CA;
			};
			"menu_date_updated" = 1387609262;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/pad-thai-restaurant-san-francisco";
			name = "Pad Thai Restaurant";
			phone = 4152854210;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 323;
			"snippet_image_url" = "http://s3-media4.fl.yelpcdn.com/photo/hqJxO2GUrktmaC4sPYQX1g/ms.jpg";
			"snippet_text" = "Visited SF this Labor Day weekend and saw this menu in the guestbook of the Home Away we stayed in. We placed a take out order of chicken pad see ew, shrimp...";
			url = "http://www.yelp.com/biz/pad-thai-restaurant-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-674-7515";
			id = "sweet-lime-thai-cuisine-san-francisco";
			"image_url" = "http://s3-media1.fl.yelpcdn.com/bphoto/TC6RJbwMMDqkwTmxdoin5A/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"2100 Sutter St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "Steiner St & Pierce St";
				"display_address" =                 (
					"2100 Sutter St",
					"Lower Pacific Heights",
					"San Francisco, CA 94115"
				);
				neighborhoods =                 (
					"Lower Pacific Heights"
				);
				"postal_code" = 94115;
				"state_code" = CA;
			};
			"menu_date_updated" = 1402620068;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/sweet-lime-thai-cuisine-san-francisco";
			name = "Sweet Lime Thai Cuisine";
			phone = 4156747515;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 214;
			"snippet_image_url" = "http://s3-media2.fl.yelpcdn.com/photo/QoZgYeVEdHG3w-dsd4w_Aw/ms.jpg";
			"snippet_text" = "I tried delivery for the first time. I had the vegan crispy roll, which had good flavor, but was very small in portion. It was much smaller than most spring...";
			url = "http://www.yelp.com/biz/sweet-lime-thai-cuisine-san-francisco";
		},
		{
			categories =             (
				(
					Thai,
					thai
				),
				(
					"Breakfast & Brunch",
					"breakfast_brunch"
				),
				(
					"Asian Fusion",
					asianfusion
				)
			);
			"display_phone" = "+1-415-931-9663";
			id = "blackwood-san-francisco-3";
			"image_url" = "http://s3-media4.fl.yelpcdn.com/bphoto/HAR9M0E1gKZk96lohClTAw/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"2150 Chestnut St"
				);
				city = "San Francisco";
				coordinate =                 {
					latitude = "37.800591";
					longitude = "-122.438832";
				};
				"country_code" = US;
				"cross_streets" = "Steiner St & Pierce St";
				"display_address" =                 (
					"2150 Chestnut St",
					"Marina/Cow Hollow",
					"San Francisco, CA 94123"
				);
				"geo_accuracy" = 9;
				neighborhoods =                 (
					"Marina/Cow Hollow"
				);
				"postal_code" = 94123;
				"state_code" = CA;
			};
			"menu_date_updated" = 1409805921;
			"menu_provider" = eat24;
			"mobile_url" = "http://m.yelp.com/biz/blackwood-san-francisco-3";
			name = Blackwood;
			phone = 4159319663;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 385;
			"snippet_image_url" = "http://s3-media1.fl.yelpcdn.com/photo/OTPpCfplcN2QkfK5cJpp5A/ms.jpg";
			"snippet_text" = "Thank you for all for the reviews, it was what made me go.\nI loved the place  & will be back. The only draw back is the parking in the area, we all know...";
			url = "http://www.yelp.com/biz/blackwood-san-francisco-3";
		},
		{
			categories =             (
				(
					Thai,
					thai
				)
			);
			"display_phone" = "+1-415-753-3347";
			id = "chabaa-thai-cuisine-san-francisco";
			"image_url" = "http://s3-media2.fl.yelpcdn.com/bphoto/CnPtR3Eu1BI-ETAQSgIcXg/ms.jpg";
			"is_claimed" = 1;
			"is_closed" = 0;
			location =             {
				address =                 (
					"2123 Irving St"
				);
				city = "San Francisco";
				"country_code" = US;
				"cross_streets" = "22nd Ave & 23rd Ave";
				"display_address" =                 (
					"2123 Irving St",
					"Outer Sunset",
					"San Francisco, CA 94122"
				);
				neighborhoods =                 (
					"Outer Sunset"
				);
				"postal_code" = 94122;
				"state_code" = CA;
			};
			"menu_date_updated" = 1387623351;
			"menu_provider" = "single_platform";
			"mobile_url" = "http://m.yelp.com/biz/chabaa-thai-cuisine-san-francisco";
			name = "Chabaa Thai Cuisine";
			phone = 4157533347;
			rating = 4;
			"rating_img_url" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png";
			"rating_img_url_large" = "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png";
			"rating_img_url_small" = "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/f62a5be2f902/ico/stars/v1/stars_small_4.png";
			"review_count" = 722;
			"snippet_image_url" = "http://s3-media3.fl.yelpcdn.com/photo/1SECHBtEY183p8mmdNZ9Dw/ms.jpg";
			"snippet_text" = "CRAB FRIED RICE\n\nIn many places crab fried rice is not very affordable, but at Chabaa Thai it is within my budget.  Hence the $ rating.  Just for the crab...";
			url = "http://www.yelp.com/biz/chabaa-thai-cuisine-san-francisco";
		}
	);
	region =     {
		center =         {
			latitude = "37.77208615";
			longitude = "-122.4439175";
		};
		span =         {
			"latitude_delta" = "0.06271066999998709";
			"longitude_delta" = "0.08118989999999826";
		};
	};
	total = 731;
}

*/

