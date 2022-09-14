
Feature: Basic

# The secrects can be used in the payload with the following syntax #(mysecretname)
Background:
* def pandocSecret = karate.properties['pandocSecret']


Scenario: base64

	Given url karate.properties['testURL']

	And path '/'
	And header Direktiv-ActionID = 'development'
	And header Direktiv-TempDir = '/tmp'
	And request
	"""
	{
		"from": "html",
		"to": "pdf",
		"input": "in.txt",
		"return": true
	}
	"""
	When method POST
	Then status 200
	And match $ ==
	"""
	{
	"pandoc": "#notnull"
	}
	"""
	
Scenario: nostdout

	Given url karate.properties['testURL']

	And path '/'
	And header Direktiv-ActionID = 'development'
	And header Direktiv-TempDir = '/tmp'
	And request
	"""
	{
		"from": "html",
		"to": "pdf",
		"input": "in.txt",
		"return": false
	}
	"""
	When method POST
	Then status 200
	And match $ ==
	"""
	{
	"pandoc": "no"
	}
	"""