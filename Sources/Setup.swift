//
//  Setup.swift
//  PerfectZipExample
//
//  Created by Jonathan Guthrie on 2016-10-04.
//
//

import PerfectLib
import PerfectZip

func setWorkingDir(_ workingDir: String) {
	let resetWorkingDir = Dir(workingDir)
	do {
		try resetWorkingDir.setAsWorkingDir()
	} catch {}
}


func setup() {
	// create internal working dir for tests
	let workingTestDir = Dir("testDirectories")
	do {
		try workingTestDir.create()
		try workingTestDir.setAsWorkingDir()
	} catch {
		print(error)
	}

	// Create zip directory for zip tests
	let zipDir = Dir("toZip")
	do {
		try zipDir.create()
	} catch {
		print(error)
	}
	let zipDirInternal = Dir("toZip/internal")
	do {
		try zipDirInternal.create()
	} catch {
		print(error)
	}

	// create empty dir for tests
	let zipDirEmpty = Dir("isEmpty")
	do {
		try zipDirEmpty.create()
	} catch {
		print(error)
	}

	// create files for zip testing
	let txtFile1 = File("toZip/txt1.txt")
	do {
		try txtFile1.open(.truncate)
		defer {
			txtFile1.close()
		}
		try txtFile1.write(string: "Dvd pegacorn perfect storms darling I'm a. Nightmare dressed like a daydream 13 Management. 13 Management rosy cheeks a boatload. Rabbit hole haters gonna hate wildest dreams Lily Aldridge burn. Out pictures of you so. Basically Country Music Hall of Fame cherry lips. Castle mean Law & Order SVU dvd king Christmas vultures. Pretty lies moonman burn out write a song. About burning it down rose garden necklace Emma Stone. For me I think red baking silent screams. I know places day dream welcome to new york. Alive back from the dead discovered. Bulletproof cozy vultures rose garden Kanye. Pop king no headlights sun came up we both went. Mad wonderland cats refrigerator light tight little skirt trains no headlights. Cat stickers bad guys reckless cat stickers dvd players gonna.")
	} catch {
		print(error)
	}

	let txtFile2 = File("toZip/internal/txt2.txt")
	do {
		try txtFile2.open(.truncate)
		defer {
			txtFile2.close()
		}
		try txtFile2.write(string: "Forever everybody here burning it down. Shellback drunk on jealousy deep cut. Diet Coke heaven sink ships butterflies. National anthem permanent mark darling I'm a nightmare. Dressed like a daydream players gonna play girls and girls. Harry Styles flames pumpkin spice you look like Watch.")
	} catch {
		print(error)
	}

}
