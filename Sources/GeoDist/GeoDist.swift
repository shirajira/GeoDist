//--------------------------------------------------------------------------//
// GeoDist - GeoDist.swift
//
// Copyright 2021 shirajira <contact@novel-stud.io>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//--------------------------------------------------------------------------//

import Foundation
import CoreLocation

public class GeoDist {
    /**
     Equatorial radius [km]
     */
    public static let equatorialradius: Double = 6_378.137

    /**
     Convert degrees to radians.
     - parameter degrees: Degrees [deg]
     - returns: Radians [rad]
     */
    public static func radians(_ degrees: Double) -> Double {
        return (degrees * Double.pi) / 180.0
    }

    /**
     Convert radians to degrees.
     - parameter radians: Radians [rad]
     - returns: Degrees [deg]
     */
    public static func degrees(_ radians: Double) -> Double {
        return (radians * 180.0) / Double.pi
    }

    /**
     Calculate a distance from `start` to `end`.
     - parameter start: Start coordinate
     - parameter end: End coordinate
     - returns: Distance [km]
     */
    public static func calculate(from start: CLLocationCoordinate2D, to end: CLLocationCoordinate2D) -> Double {
        // Convert coordinates to radians.
        let startLatitude = radians(start.latitude)
        let startLongitude = radians(start.longitude)
        let endLatitude = radians(end.latitude)
        let endLongitude = radians(end.longitude)

        // Average latitude and longitude.
        let averageLatitude = (endLatitude - startLatitude) / 2.0
        let averageLongitude = (endLongitude - startLongitude) / 2.0

        // Calculate the distance [km].
        let distance = 2.0 * equatorialradius * asin(sqrt(pow(sin(averageLatitude), 2.0) + cos(startLatitude) * cos(endLatitude) * pow(sin(averageLongitude), 2.0)))
        return distance
    }

}
