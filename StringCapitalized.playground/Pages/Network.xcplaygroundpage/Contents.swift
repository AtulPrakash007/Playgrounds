//: [Previous](@previous)

import Foundation

import Network

let monitor = NWPathMonitor()
monitor.start(queue: .global())

monitor.cancel()

