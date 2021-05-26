Class {
	#name : #'CRC32_Calculator',
	#superclass : #StrategyCrc,
	#category : #DispositivoMovil
}

{ #category : #'as yet unclassified' }
CRC32_Calculator >> crcFor: datos [
	" retorna el crc16 para el
string 'message' "

	^ CRC crc32FromCollection: datos
]
