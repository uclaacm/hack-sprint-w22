import SwiftUI
class DogPicViewModel: ObservableObject {
  let apiURL = "https://dog.ceo/api/breeds/image/random"
  let defaultSession = URLSession(configuration: .default)
  var dataTask: URLSessionDataTask?
  @Published var dogImageList: [String] = []
  
  func getDog() {
    dataTask?.cancel()
    
    guard let url = URL(string: apiURL) else { return }
    
    dataTask = defaultSession.dataTask(with: url)
    {data, response, error in
      if let error = error { print(error.localizedDescription) }
      else if let data = data,
              let response = response as? HTTPURLResponse,
              response.statusCode == 200
      {
        if let response = try? JSONDecoder().decode(Response.self, from: data) {
          self.dogImageList.append(response.message)
        }
      }
    }
    dataTask?.resume()
  }
}

