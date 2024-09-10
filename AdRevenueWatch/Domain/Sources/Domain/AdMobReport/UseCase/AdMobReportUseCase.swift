//
// Created by Banghua Zhao on 10/09/2024
// Copyright Apps Bay Limited. All rights reserved.
//

import Foundation

public protocol AdMobReportUseCaseProtocol {
    func fetchReport(
        accessToken: String,
        accountID: String,
        reportRequest: AdMobReportRequestEntity
    ) async throws -> AdMobReportEntity
}

public struct AdMobReportUseCase: AdMobReportUseCaseProtocol {
    private let adMobReportRepository: any AdMobReportRepositoryProtocol

    public init(
        adMobReportRepository: some AdMobReportRepositoryProtocol
    ) {
        self.adMobReportRepository = adMobReportRepository
    }

    public func fetchReport(
        accessToken:
        String, accountID: String,
        reportRequest: AdMobReportRequestEntity
    ) async throws -> AdMobReportEntity {
        try await adMobReportRepository.fetchReport(accessToken: accessToken, accountID: accountID, reportRequest: reportRequest)
    }
}