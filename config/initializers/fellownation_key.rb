if RAILS_ENV == 'development' || RAILS_ENV == 'test' || RAILS_ENV == 'cucumber'
  SITE = 'http://dev.localhost.local:3000'
  FKEY = "MZqY1iE9DruYDwZXYDf9"
  FSECRET = "fDGizWakQRDZpgcqQtgTCvikuQbuNUVkX4KdTaas"
  IFRAME_HELPER = "http://apps.localhost.local:3000/iframe_helper.html"
  WEBSERVIUS_PATH = "http://localhost.local:3000"
  WEBSERVIUS_KEY = "Dbsv8wmfax2J5xzAK7_KZ7qrXIiXWR1j"
else
  SITE = 'http://fellownation.com'
  FKEY = "zduBQMNOz9pjXgbOWRio"
  FSECRET = "stSDN6YIRsryEE4wumWPdUkqxhVJUP2qZmtHbBXW"
  IFRAME_HELPER = "http://apps.fellownation.com/iframe_helper.html"
  WEBSERVIUS_PATH = "http://api.fellownation.com"
  WEBSERVIUS_KEY = "Dbsv8wmfax2J5xzAK7_KZ7qrXIiXWR1j"
end
