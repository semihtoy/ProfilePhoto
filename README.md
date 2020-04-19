# ProfilePhoto
# Introduction

This is a project  to create MVC patern.Layered architecture is used in this project.

#### HTTP Layer(Data layer):
This  layer used only for  http request.Authentication is added in this layer. (Post,Get,Delete,Update)
#### Services Layer(Business layer):
It is the layer that uses the methods provided by the data layer by processing or controlling the information coming from the presentation layer according to the required conditions.
#### Controller Layer(Presentation Layer):
The layer that interacts directly with the user.
 

# Screenshots

#### Profile Screen
![Profile](https://user-images.githubusercontent.com/43500888/79683970-85089b00-8236-11ea-8212-95c35093c43f.jpeg)

## Installation

### CocoaPods
 Open  CocoaPods file and  install pods

#Library
1. [Alomofire](https://github.com/Alamofire/Alamofire) (For Network).
3. [AlamofireImage](https://github.com/Alamofire/AlamofireImage) (Image download and caching).

## Information 

I have this error in application and some image doesnt display. This error are from server
Console output "NSLocalizedDescription=Could not connect to the server."
