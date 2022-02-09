
import SwiftUI

struct ContentView: View {
@ObservedObject var model = ViewModel()
  let defaultSession = URLSession(configuration: .default)
  @State private var dataTask: URLSessionDataTask?
  //@State private var dogImageList: [String] = []
  func getDog() {
    
    dataTask?.cancel()
    guard let url = URL(string: "https://dog.ceo/api/breeds/image/random") else {
      return
    }
    
    dataTask =
    defaultSession.dataTask(with: url)
    {data, response, error in
      if let error = error {
        print(error.localizedDescription)
      } else if let data = data,
                let response = response as? HTTPURLResponse,
                response.statusCode == 200
      {
        if let response = try? JSONDecoder().decode(Response.self, from: data) {
          //dogImageList.append(response.message)
            model.addData(imgUrl: response.message)
          //print(dogImageList)
        }
        
      }
    }
    dataTask?.resume()
  }
  
  var body: some View {
    VStack{
      Text("Photo Album")
        .font(.headline)
        .padding()
      Button("Add Photo", action: getDog)
        .padding()
        List(model.list){item in
        
            HStack{
          if #available(iOS 15.0, *) {
              AsyncImage(url: URL(string: item.imgUrl)){ image in
                  image
                      .resizable()
                      .scaledToFill()
                      .frame(maxWidth: .infinity)
                      .clipped()
              } placeholder: {
                  ProgressView()
              }
          } else {
              // Fallback on earlier versions
          }
                Spacer()
                Button(action:{
                    model.deleteData(dogPicToDelete: item)
                }, label:{
                    Image(systemName: "minus.circle")
                })
                
            }

        
      }
    }
  }
    init(){
        model.getData()
    }
}

struct Response: Decodable {
  var message : String
  var status : String
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
