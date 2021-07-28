# **GeoDist**

## **Overview**

- Simple and light-weight distance calculator.
- Using location coordinates (WGS84 latitude and longitude).

## **Installation**

### **CocoaPods**

```ruby
target 'YourProject' do
  pod 'GeoDist'
end
```

## **Usage**

### **Definition**

Calculate a distance [km] from `start` point to `end` point.

```swift
func GeoDist.calculate(from start: CLLocationCoordinate2D, to end: CLLocationCoordinate2D) -> Double
```

### **Sample**

```swift
let tokyo = CLLocationCoordinate2D(latitude: 35.68944, longitude: 139.69167)
let osaka = CLLocationCoordinate2D(latitude: 34.68639, longitude: 135.52000)
let distance = GeoDist.calculate(from: tokyo, to: osaka)
print("The distance from Tokyo to Osaka: \(distance) km")
```

## **Dependencies**

- `CoreLocation`

## **License**

See `LICENSE` file.

## **Contact Us**

@shirajira / contact@novel-stud.io

(C) 2021 shirajira
