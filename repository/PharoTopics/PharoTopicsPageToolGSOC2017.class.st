Class {
	#name : #PharoTopicsPageToolGSOC2017,
	#superclass : #PharoTopicsPageTool,
	#category : 'PharoTopics'
}

{ #category : #constants }
PharoTopicsPageToolGSOC2017 >> adminString [
	^ (self admins collect: [ :assoc |
		'<a href="mailto:', assoc value, '">', assoc key, '</a>' ])
	
		joinUsing: ', '
]

{ #category : #constants }
PharoTopicsPageToolGSOC2017 >> admins [

	^ { 
	'Jigyasa Grover'  -> 'grover.jigyasa1@gmail.com' .
	'Oleksandr Zaytsev' -> 'olk.zaytsev@gmail.com' .
	'Serge Stinckwich' -> 'serge.stinckwich@gmail.com'.
	}

]

{ #category : #constants }
PharoTopicsPageToolGSOC2017 >> oldAdminString [
	^ '<a href="mailto:serge.stinckwich@gmail.com">Serge Stinckwich</a>, <a href="mailto:yuriy.tymchuk@me.com">Yuriy Tymchuk</a> and <a href="mailto:i.uhnak@gmail.com">Peter Uhnak</a>'
]

{ #category : #constants }
PharoTopicsPageToolGSOC2017 >> preamble [
	^ super preamble
		copyReplaceAll: self oldAdminString
		with: self adminString 
]

{ #category : #constants }
PharoTopicsPageToolGSOC2017 >> title [
	^ 'Pharo GSOC 2019 <br>Ideas List'

]
