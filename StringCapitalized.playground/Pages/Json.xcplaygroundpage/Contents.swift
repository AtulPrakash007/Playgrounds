//: [Previous](@previous)

import Foundation

let json =
"""
{
  "tokenObjects" : {

  },
  "searchAttributes" : {
	"all" : [
	  {
		"otherRelatedItem" : {
		  "any" : [
			{
			  "system" : "Customer Feedback",
			  "url" : "FB5353073"
			},
			{
			  "system" : "Customer Feedback",
			  "url" : "FB5353076"
			}
		  ]
		}
	  }
	]
  }
}
"""

func convertJsonStringToJsonObject(jsonString: String) -> [String: String] {
	let data = jsonString.data(using: .utf8)!
	do {
		// make sure this JSON is in the format we expect
		if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String] {
			// try to read out a string array
			print(json)
			return json
		}
	} catch let error as NSError {
		print("Failed to load: \(error.localizedDescription)")
		return [:]
	}
	return [:]
}

print(convertJsonStringToJsonObject(jsonString: json))
