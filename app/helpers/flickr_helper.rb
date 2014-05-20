module FlickrHelper

  def self.flickr_photos(school)
    FlickRaw.api_key=ENV.fetch('FLICKR_KEY')
    FlickRaw.shared_secret=ENV.fetch('FLICKR_SECRET')

    location = "#{school.city}"
    place = flickr.places.find :query => location
    latitude = place[0]['latitude'].to_f
    longitude = place[0]['longitude'].to_f
    radius = 1
    args = {}
    args[:bbox] = "#{longitude - radius},#{latitude - radius},#{longitude + radius},#{latitude + radius}"

    args[:accuracy] = 11
    discovered_pictures = flickr.photos.search args

    image_urls = discovered_pictures.map{|p| url = FlickRaw.url(p)}
  end

  def self.photo_url
    first_ten = image_urls[0..10]
    @image_url = image_urls.sample
  end

end
