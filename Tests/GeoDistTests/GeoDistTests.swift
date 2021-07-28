//--------------------------------------------------------------------------//
// GeoDist - GeoDistTests.swift
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

import XCTest
import CoreLocation
@testable import GeoDist

final class GeoDistTests: XCTestCase {

    func testRadians() {
        let deg: Double = 90.0
        let rad = GeoDist.radians(deg)
        XCTAssertEqual(rad, Double.pi / 2)
    }

    func testDegrees() {
        let rad: Double = Double.pi / 2
        let deg = GeoDist.degrees(rad)
        XCTAssertEqual(deg, 90.0)
    }

    func testCalculateDistanceFromTokyoToOsaka() {
        let tokyo = CLLocationCoordinate2D(latitude: 35.68944, longitude: 139.69167)
        let osaka = CLLocationCoordinate2D(latitude: 34.68639, longitude: 135.52000)
        let distance = GeoDist.calculate(from: tokyo, to: osaka)
        print("The distance from Tokyo to Osaka: \(distance) km")
        XCTAssertGreaterThanOrEqual(distance, 390.0)
        XCTAssertLessThanOrEqual(distance, 410.0)
    }

    func testCalculateDistanceFromOsakaToTokyo() {
        let tokyo = CLLocationCoordinate2D(latitude: 35.68944, longitude: 139.69167)
        let osaka = CLLocationCoordinate2D(latitude: 34.68639, longitude: 135.52000)
        let distance = GeoDist.calculate(from: osaka, to: tokyo)
        print("The distance from Osaka to Tokyo: \(distance) km")
        XCTAssertGreaterThanOrEqual(distance, 390.0)
        XCTAssertLessThanOrEqual(distance, 410.0)
    }

}
