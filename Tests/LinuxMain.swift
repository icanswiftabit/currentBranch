import XCTest

import currentBranchTests

var tests = [XCTestCaseEntry]()
tests += currentBranchTests.allTests()
XCTMain(tests)
