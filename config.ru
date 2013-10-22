use Rack::Static,
  :urls => ["/css", "/js", "/images", "/spec", "/slideshow", "/playlists.html" , "/about.html" , "/contact.html" , "/freebies.html" , "/playlists-alysek.html" , "/playlists-art-school-girls.html" , "/playlists-john-laurente.html" , "/playlists-mistevens.html" , "/playlists-sebastian-tomossa.html" , "/playlists-w.html" , "/shop.html"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

