Class {
	#name : #WifiConn,
	#superclass : #StrategyConnection,
	#instVars : [
		'pict'
	],
	#category : #DispositivoMovil
}

{ #category : #ssl }
WifiConn >> connect [
	^ pict
]

{ #category : #'as yet unclassified' }
WifiConn >> sendData: data crc: crc [ 
	Transcript show:' Connecion de -- WIFI -- realizada '; cr.
]
