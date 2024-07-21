import XCTest
@testable import RohrigSoftwareCompanyCore

final class RohrigSoftwareCompanyCoreTests: XCTestCase {
    // MARK: Core
    
    // MARK: Date+
    func testDateCreation() throws {
        let components = DateComponents(calendar: .autoupdatingCurrent, year: 2024, month: 7, day: 19)
        let expectedDate = components.date
        let actualDate = Date.createFrom(year: 2024, month: 7, day: 19)
        XCTAssertEqual(expectedDate, actualDate)
    }
    
    // MARK: Int+
    func testIntToDigits() throws {
        let expected = [1, 0, 0]
        let actual = 100.digits
        XCTAssertEqual(expected, actual)
    }
}
