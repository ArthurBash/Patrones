Class {
	#name : #DisplayDispositivo,
	#superclass : #Object,
	#category : #DispositivoMovil
}

{ #category : #initialization }
DisplayDispositivo >> initialize [
	Transcript open
]

{ #category : #'as yet unclassified' }
DisplayDispositivo >> showBanner: img [
	Transcript
		show: 'Display: ', img;
		cr
]
