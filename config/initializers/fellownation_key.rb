if RAILS_ENV == 'development' || RAILS_ENV == 'test' || RAILS_ENV == 'cucumber'
  SITE = 'http://dev.localhost.local:3000'
  FKEY = "MZqY1iE9DruYDwZXYDf9"
  FSECRET = "p53EnAjEcIZ_5d4hAtwhe4wjKsTH0fUG"
  IFRAME_HELPER = "http://apps.localhost.local:3000/iframe_helper.html"
  WEBSERVIUS_PATH = "http://localhost.local:3000"
  WEBSERVIUS_KEY = "Dbsv8wmfax2J5xzAK7_KZ7qrXIiXWR1j"
elsif RAILS_ENV == 'staging'
  SITE = 'http://staging.fellownation.com'
  FKEY = "LsFhkv0Ukc8fBI9lwbg"
  FSECRET = "htFCtczsru7mRArtlIrX6Wbazhbx1YlrD0pIhwMw"
  IFRAME_HELPER = "http://apps.staging.fellownation.com/iframe_helper.html"
  WEBSERVIUS_PATH = "http://api.staging.fellownation.com"
  WEBSERVIUS_KEY = "mGvdSViQphKO_m-WB9Ed3pHcXgW_N5cX"
else
  SITE = 'http://fellownation.com'
  FKEY = "LsFhkv0Ukc8fBI9lwbg"
  FSECRET = "htFCtczsru7mRArtlIrX6Wbazhbx1YlrD0pIhwMw"
  IFRAME_HELPER = "http://apps.fellownation.com/iframe_helper.html"
  WEBSERVIUS_PATH = "http://api.fellownation.com"
  WEBSERVIUS_KEY = "310LphNaOkbYd2-gcmyNemo-Dl5LGZ-g"
end
