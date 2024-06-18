//
//  NetworkConstant.swift
//  MVVMBootcamp
//
//  Created by Adam Yoneda on 2024/06/14.
//
/*
 NetworkConstant(APIキー、サーバーアドレス)のような変更しない定数を保管する
 */

import Foundation

class NetworkConstant {
    
    // MARK: Singletone pattern
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {}
    
    public var apiKey: String {
        // read Only
        get {
            // API Key from https://www.themoviedb.org/settings/api
            return "78b0d48c6000669101abcb96fc090062"
        }
    }
    
    public var serverAdress: String {
        // read Only
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAdress: String {
        // read Only
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
