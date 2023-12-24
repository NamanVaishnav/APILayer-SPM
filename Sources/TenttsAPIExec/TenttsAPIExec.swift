//
//  File.swift
//  
//
//  Created by Naman Vaishnav on 23/12/23.
//

import Foundation
import TenttsAPI


@main
struct TenttsAPIExec {
    
    static func main() async {
       
        let tenttsAPI = TenttsAPI()
  
        do {
            // Fetch AAPL stocks last 1 day
            let apple1dChart = try await tenttsAPI
                .fetchChartData(tickerSymbol: "AAPL", range: .oneDay)

            print(apple1dChart ?? "Not Found")
            
            // Search Ticker using "TESLA" as Query
            let tickers = try await tenttsAPI
                .searchTickers(query: "TESLA")
            print(tickers)
            
            // Fetch Quote Detail for multiple symbols
            // AAPL, TSLA, GOOG, MSFT
            let quotes = try await tenttsAPI
                .fetchQuotes(symbols: "AAPL,TSLA,GOOG,MSFT")
            print(quotes)
            
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
