
import Foundation
class APIHandler :URLSessionDataTask {
	let url = "https://rtlab02.rtworkspace.com/api/query/datamodel?dm_name=test_ucdp_ged181&token=secret&limit=3&offset=1"
	
//	func startLoad(completion: (String)->()) {
//		let url = URL(string: self.url)!
//		let task = URLSession.shared.dataTask(with: url) { data, response, error in
//			if let error = error {
//				print(error)
//				return
//			}
//			guard let httpResponse = response as? HTTPURLResponse,
//				(200...299).contains(httpResponse.statusCode) else {
//				print(String(describing: response))
//				return
//			}
//			if let mimeType = httpResponse.mimeType, mimeType == "text/html",
//			   let data = data,
//			   let string = String(data: data, encoding: .utf8) {
//				DispatchQueue.main.async {
//					completion(string)
//				}
//			}
//		}
//		task.resume()
//	}
	
	func startLoad() {
		let url = URL(string: self.url)!
		
		let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, _ in
			
		})
		
		task.resume()
	}

}
