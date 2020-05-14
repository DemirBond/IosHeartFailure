//
//  EvaluationRequest.swift
//  CVDEvaluator
//
//  Created by Ahmet Küçük on 3/17/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

//http://www.cvdevaluator.com/api/api/values isPAH=false&gender=1&age=25&SBP=125&DBP=65&inputs=chkNYHA1%7CchkDOE
import Foundation


struct EvaluationRequest{
	
	var uuid: String?
	var isSave: Bool
	var age: Int
	var isPAH: String
	var name: String
	var gender: Int
	var SBP: Int
	var txtNumberSBP: Int?
	var txtDurationSBP: Int?
	var DBP: Int
	var txtNumberDBP: Int?
	var inputs: String
	
	func toDictionary() -> Dictionary<String, AnyObject> {
		var dict = ["age": age as AnyObject, "isPAH": isPAH as AnyObject, "gender": gender as AnyObject, "SBP": SBP as AnyObject, "DBP": DBP as AnyObject, "forHF" : "true" as AnyObject,  "inputs": inputs as AnyObject]
		
//		if SBP > 130 && txtNumberSBP != nil {
//			dict["txtNumberSBP"] = txtNumberSBP! as AnyObject
//		} else if SBP < 90 && txtDurationSBP != nil {
//			dict["txtDurationSBP"] = txtDurationSBP! as AnyObject
//		}
//
//		if DBP > 80 && txtNumberDBP != nil {
//			dict["txtNumberDBP"] = txtNumberDBP! as AnyObject
//		}


		
		if (isSave) {
			dict["name"] = name as AnyObject
			
			if uuid != nil { // update evaluation
				dict["evaluationID"] = uuid as AnyObject
			}
		}
		print(dict)
		return dict
	}
}
