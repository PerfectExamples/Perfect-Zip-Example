//
//  Package.swift
//  Perfect Zip Example
//
//  Created by Jonathan Guthrie on 2016-10-04.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

// Note that the following Swift Package Manager dependancy inclusion will also import other required modules.
let package = Package(
	name: "PerfectZipExample",
	targets: [],
	dependencies: [
		.Package(url: "https://github.com/PerfectlySoft/PerfectLib.git", majorVersion: 2),
		.Package(url: "https://github.com/PerfectlySoft/Perfect-Zip.git", majorVersion: 2)
	]
)
