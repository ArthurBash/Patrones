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
]

{ #category : #tests }
DispositivoTest >> testConfigurarCRC [
]

{ #category : #tests }
DispositivoTest >> testSend [
	
]
