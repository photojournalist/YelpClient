//
//  ViewController.swift
//  YelpClient
//
//  Created by Salim Madjd on 9/28/14.
//  Copyright (c) 2014 Salim Madjd. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, APIControllerProtocol, UISearchBarDelegate, UISearchDisplayDelegate, FilterViewControllerDelegate {

	required init(coder aDecoder: NSCoder) {

		super.init(coder: aDecoder)
	}

	@IBOutlet weak var BusinessTableView: UITableView!

	var searchBar = UISearchBar()

	var filterButton: UIBarButtonItem?
	
	var api: APIController?

	var filterController: FilterViewController?

	var businesses = [Business]()

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		//BusinessTableView.delegate = self
		BusinessTableView.dataSource = self

		api = APIController(delegate: self)

		api?.search()

		self.searchDisplayController?.displaysSearchBarInNavigationBar = true

		self.navigationItem.titleView = self.searchBar

		searchBar.delegate = self
		filterButton = UIBarButtonItem(title: "Filters", style: UIBarButtonItemStyle.Bordered, target: self, action: Selector("doFilter"))

		self.navigationItem.leftBarButtonItem = filterButton


		


	}






	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		filterController = segue.destinationViewController as FilterViewController

		filterController?.delegate = self

		//println("override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)")
	}


	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return businesses.count

	}

	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		var cell = BusinessTableView.dequeueReusableCellWithIdentifier("BusinessCell") as BusinessCell

		var business = businesses[indexPath.row]

		cell.businessName.text = business.name
		cell.reviewCount.text = business.reviewCount
		cell.address.text = business.address
		cell.foodType.text = business.categories

		cell.businessImage.setImageWithURL(NSURL(string: business.imageURL!))

		cell.businessImage.layer.cornerRadius = 8.0

		cell.businessImage.clipsToBounds = true

		cell.ratingImage.setImageWithURL(NSURL(string: business.ratingImgURL!))

		return cell
	}

	func doFilter(){
		self.performSegueWithIdentifier("toFilterSeque", sender: self)

		
	}

	func filterContentForSearchText(searchText: String) {

		api?.search(searchText)

		println("search text \(searchText)")
	}

	func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchString searchString: String!) -> Bool {
		self.filterContentForSearchText(searchString)
		return true
	}

	func searchDisplayController(controller: UISearchDisplayController!, shouldReloadTableForSearchScope searchOption: Int) -> Bool {
		self.filterContentForSearchText(self.searchDisplayController!.searchBar.text)
		return true
	}


	func searchBarSearchButtonClicked( searchBar: UISearchBar!)
	{


		api?.search(searchBar.text)

		println("search bar \(searchBar.text)")

		searchBar.resignFirstResponder()


	}

	func setFilterParamters(parameters: String) {


		println("func setFilterParamters(parameters: String)")
	}


	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}




	func didReceiveAPIResults(results: [NSDictionary]){

		//println(" pringint results ----> \(results)")

		businesses = Business.businessesWithJSON(results)

		dispatch_async(dispatch_get_main_queue(), {
			//self.tableData = resultsArr
			self.BusinessTableView!.reloadData()
		})


	}

	


}

