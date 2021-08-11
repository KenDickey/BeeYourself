source := 'copyReplacing: ranges with: newString into: replacementStream
	| lastFrom |
	lastFrom := ranges
		inject: 1
		into: [ :from :aRange |
			self newFromAfterAppending: newString into: replacementStream keepingFrom: from skipping: aRange ].
	replacementStream nextPutAll: (self copyFrom: lastFrom to: self size).'.

Parser parse: source class: String. "CUIS"

SCompiler parse: source in: String. "Bee"
