import Foundation

class Request: NSObject {
    static let sharedInstance = Request()
    let session = URLSession(configuration: .default)

    func getRequest(url:String, completion: @escaping (Data, Error?)->() ){
        guard let nsURL = URL(string: url) else {
            return
        }
        
        let request = URLRequest(url: nsURL)
        let task = session.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                print(error)
                return
            }
            
            // Parse JSON data
           if let data = data {
                completion(data, error)
           }
        }
        task.resume()
    }
}
