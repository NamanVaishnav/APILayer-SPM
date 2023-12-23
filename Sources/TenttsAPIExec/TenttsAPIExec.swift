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
//        print(TenttsAPI().text)
//        let (data, _) = try! await URLSession.shared.data(from:
//                                                            URL(string: "https://query1.finance.yahoo.com/v7/finance/quote?symbols=AAPL,TSLA,GOOG,MSFT ")!)
//        let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
//        
//        print(quoteResponse)
//        
//        
//        let  (searchData, _) = try! await URLSession.shared.data(from:
//                                                                    URL(string: "https://query1.finance.yahoo.com/v1/finance/search?q=APPLE ")!)
//        let searchResponse = try! JSONDecoder().decode(SearchTickersResponse.self, from: searchData)
//        print(searchResponse)
        
//        let  (chartData, _) = try! await URLSession.shared.data(from:
//                                                                    URL(string: "https://query1.finance.yahoo.com/v8/finance/chart/AAPL?range=1d&interval=1m&indicators=quote&includeTimestamps=true ")!)
//        let chartResponse = try! JSONDecoder().decode(ChartResponse.self, from: chartData)
//        print(chartResponse)
        
        let tenttsAPI = TenttsAPI()
        
//        do {
//            let quotes = try await tenttsAPI.fetchQuotes(symbols: "AAP, MSFT, GOOG, TSLA")
//            print(quotes)
//        } catch {
//            print(error.localizedDescription)
//        }
//        
//        
//        do {
//            let tickers = try await tenttsAPI.searchTickers(query: "tesla")
//            print(tickers)
//        } catch {
//            print(error.localizedDescription)
//        }
        
        
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
