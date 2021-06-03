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
		"Creamos una variable temporal para guardar el texto, imprimirlo y luego devolverlo para compararlo en el test"

	| texto |
	texto := 'Conexión: Datos enviados por WiFi'.
	Transcript
		show: texto;
		cr.
	^ texto
]
