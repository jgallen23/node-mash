
class Masher
	constructor: (config) ->
		@config = config
	execute: (profile, type, debug = false) ->
		if !debug
			files = @config[profile][type]
			html = for file in files
				if type is "css"
					"<link href='#{ file }' type='text/css' rel='stylesheet'>"
				else if type is "js"
					"<script src='#{ file }'></script>"
			html.join ''
