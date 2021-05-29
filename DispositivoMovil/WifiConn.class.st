Class {
	#name : #WifiConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #DispositivoMovil
}

{ #category : #ssl }
WifiConn >> connect [
	^ pict
]

{ #category : #initialization }
WifiConn >> initialize [ 
	pict:= 'Conectado por WiFi'
]

{ #category : #'as yet unclassified' }
WifiConn >> sendData: data crc: crc [ 
	Transcript show:' Connecion de -- WIFI -- realizada '; cr.
]
