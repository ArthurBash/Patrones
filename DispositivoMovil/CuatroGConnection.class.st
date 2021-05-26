Class {
	#name : #CuatroGConnection,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #DispositivoMovil
}

{ #category : #ssl }
CuatroGConnection >> connect [
	^ symb
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> transmit: data crc: crc [
	Transcript show:' Connecion de -- 4G -- realizada '; cr.
]
