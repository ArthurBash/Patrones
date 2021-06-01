Class {
	#name : #'CRC32_Calculator',
	#superclass : #StrategyCrc,
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: datos [
	"Retorna el CRC32 para el string datos"

	^ CRC crc32FromCollection: datos
]
