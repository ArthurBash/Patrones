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
	^ self logo
]

{ #category : #initialization }
WifiConn >> initialize [
	pict := 'WiFi'
]

{ #category : #'as yet unclassified' }
WifiConn >> logo [
	^ pict
]

{ #category : #'as yet unclassified' }
WifiConn >> sendData: data crc: crc [
	^ ' Datos enviados por wifi '
]
