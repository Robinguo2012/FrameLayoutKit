import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(FrameLayoutKitTests.allTests),
    ]
}
#endif
