//
//  main.swift
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
import PerfectLib
import PerfectZip

// Set the working dir path
var workingDir = Dir.workingDir.path

// Create the file structure we are going to use
setup()

// ====================================================================
// create zip, then try to overwrite with flag true
// ====================================================================

// reset the working directory, after file create operations
setWorkingDir(workingDir)

// this is tge source directory we are going to zip
let sourceDir = "testDirectories/toZip"

// the destination zip file name
let destinationZip = "testDirectories/testZip1.zip"

// create zip file
// - note it has overwrite flag ON.

// the zip object
let zippy = Zip()

// zip the files, in the source directory, 
// into the destination file, overwriting any existing file, with no password.
let zipResult = zippy.zipFiles(paths: [sourceDir], zipFilePath: destinationZip, overwrite: true, password: "")

// ZipResult contains the enum with the result of the operation.
print(zipResult == .ZipSuccess, zipResult.description)




// ====================================================================
// use zip file from earlier operation, unzip to new location
// ====================================================================

// reset the working directory, after zip operations
setWorkingDir(workingDir)

// the zip file used as the source
let sourceZip = "testDirectories/testZip1.zip"

// where we will be putting the unzipped files
let destinationDir = "testDirectories/somewhere"

// create the dest dir so it would be "locked" out if overwrite off
let lockDir = Dir(destinationDir)
do {
	try lockDir.create()
} catch {
	print(false,"Could not create the directory for unzip test")
}

// instantiate the zip object
let unZippy = Zip()

// unzip the file, into the destination directory, with overwrite enabled
let UnZipResult = unZippy.unzipFile(source: sourceZip, destination: destinationDir, overwrite: true)

// UnZipResult contains the result of the operation
print(UnZipResult == .ZipSuccess, UnZipResult.description)

