Class {
	#name : #CuatroGConnection,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #DispositivoMovil
}

{ #category : #initialization }
CuatroGConnection >> initialize [
	symb := '4G'
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> symb [
	^ symb
]

{ #category : #'as yet unclassified' }
CuatroGConnection >> transmit: data crc: crc [
	"Creamos una variable temporal para guardar el texto, imprimirlo y luego devolverlo para compararlo en el test"

	| texto |
	texto := 'Conexión: Datos enviados por 4G'.
	Transcript
		show: texto;
		cr.
	^ texto
]
