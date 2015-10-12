import Foundation

// marked to public before test/use
public class Address {
    public var buildingName: String?
    public var buildingNumber: String?
    public var street: String?
    public init(buildingName: String, buildingNumber: String, street: String) {
        self.buildingName = buildingName
        self.buildingNumber = buildingNumber
        self.street = street
    }
    
    public func displayDetail() {
        print("Name : \(self.buildingName), Building Number : \(self.buildingNumber), Street : \(self.street)")
    }
}