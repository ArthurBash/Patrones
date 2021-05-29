Class {
	#name : #DispositivoTest,
	#superclass : #TestCase,
	#instVars : [
		'dispositivo'
	],
	#category : #'DispositivoMovil-Tests'
}

{ #category : #running }
DispositivoTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	dispositivo := Dispositivo new
]

{ #category : #tests }
DispositivoTest >> testConectarCon [
	| wifiCon cuatroGCon |
	wifiCon := WifiConn new.
	self
		assert: (dispositivo conectarCon: wifiCon)
		equals: wifiCon connect.
	self assert: dispositivo connection equals: wifiCon.
		cuatroGCon := Adapter4GConnection new.
	self
		assert: (dispositivo conectarCon: cuatroGCon)
		equals: cuatroGCon connect.
	self assert: dispositivo connection equals: cuatroGCon
]

{ #category : #tests }
DispositivoTest >> testConfigurarCRC [
	| unCRC |
	unCRC := CRC16_Calculator new.
	dispositivo configurarCRC: unCRC.
	self assert: dispositivo CRC equals: unCRC.
	unCRC := CRC32_Calculator new.
	dispositivo configurarCRC: unCRC.
	self assert: dispositivo CRC equals: unCRC.
]

{ #category : #tests }
DispositivoTest >> testSend [
	
]
