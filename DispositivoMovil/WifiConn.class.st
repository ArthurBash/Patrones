Class {
	#name : #WifiConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #DispositivoMovil
}

{ #category : #initialization }
WifiConn >> initialize [
	pict := 'WiFi'
]

{ #category : #'as yet unclassified' }
WifiConn >> pict [
	^ pict
]

{ #category : #'as yet unclassified' }
WifiConn >> sendData: data crc: crc [
	Transcript show: ' Datos enviados por wifi '.
	^ self pict
]
