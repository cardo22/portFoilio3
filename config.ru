use Rack::Static,
:urls => ["/css", "/js", "/img", "/scss", "/partials"]
:root => "my_portFolio3"

run lambda { |env|
	[
		200,
		{
			'Content-Type' => 'text/html',
			'Cache-Control' => 'public, max-age=b6400'
		},
		File.open('kaleidoscope.html', File::RDONLY)
	]
}