require "rails_helper"

RSpec.describe BackgroundImage do
  it "sets a background image poro", :vcr do
    location = 'denver, co'
    json = {
      "_type": "Images",
      "instrumentation": {
        "_type": "ResponseInstrumentation"
      },
      "readLink": "https://api.bing.microsoft.com/api/v7/images/search?q=denver,co",
      "webSearchUrl": "https://www.bing.com/images/search?q=denver,co&FORM=OIIARP",
      "queryContext": {
        "originalQuery": "denver,co",
        "alterationDisplayQuery": "\"denver co\"",
        "alterationOverrideQuery": "+denver,co",
        "alterationMethod": "AM_ChangeItWithRecourse",
        "alterationType": "CombinedAlterationsChained"
      },
      "totalEstimatedMatches": 100,
      "nextOffset": 1,
      "currentOffset": 0,
      "value": [
        {
          "webSearchUrl": "https://www.bing.com/images/search?view=detailv2&FORM=OIIRPO&q=denver%2cco&id=B4D0C0CA7EB0ED62932C1609E472EE6E0866090B&simid=608015422196418754",
          "name": "File:Downtown Denver, CO.jpg",
          "thumbnailUrl": "https://tse3.mm.bing.net/th?id=OIP.HsCcIr9dcK-6ArqP48oIUAHaE8&pid=Api",
          "datePublished": "2013-05-23T12:00:00.0000000Z",
          "isFamilyFriendly": true,
          "creativeCommons": "AttributionShareAlike",
          "contentUrl": "http://upload.wikimedia.org/wikipedia/commons/8/81/Downtown_Denver,_CO.jpg",
          "hostPageUrl": "http://commons.wikimedia.org/wiki/File:Downtown_Denver,_CO.jpg",
          "contentSize": "3791691 B",
          "encodingFormat": "jpeg",
          "hostPageDisplayUrl": "commons.wikimedia.org/wiki/File:Downtown_Denver,_CO.jpg",
          "width": 4272,
          "height": 2848,
          "hostPageFavIconUrl": "https://www.bing.com/th?id=ODF.1o0VEMY44vl8mbrZx0rT3A&pid=Api",
          "hostPageDomainFriendlyName": "Wikimedia",
          "thumbnail": {
            "width": 474,
            "height": 316
          },
          "imageInsightsToken": "ccid_HsCcIr9d*cp_EDAC9161457136F8D58ED8F69C61FA90*mid_B4D0C0CA7EB0ED62932C1609E472EE6E0866090B*simid_608015422196418754*thid_OIP.HsCcIr9dcK-6ArqP48oIUAHaE8",
          "insightsMetadata": {
            "recipeSourcesCount": 0,
            "pagesIncludingCount": 4,
            "availableSizesCount": 4
          },
          "imageId": "B4D0C0CA7EB0ED62932C1609E472EE6E0866090B",
          "accentColor": "4D647B"
        }
      ],
      "queryExpansions": [
        {
          "text": "City Park Denver Co",
          "displayText": "City Park",
          "webSearchUrl": "https://www.bing.com/images/search?q=City+Park+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22City+Park%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=City+Park+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22City+Park%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=City+Park+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co Skyline",
          "displayText": "Skyline",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+Skyline&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Skyline%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+Skyline&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Skyline%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Co+Skyline&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Girls Denver Co",
          "displayText": "Girls",
          "webSearchUrl": "https://www.bing.com/images/search?q=Girls+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Girls%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Girls+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Girls%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Girls+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Washington Park Denver Co",
          "displayText": "Washington Park",
          "webSearchUrl": "https://www.bing.com/images/search?q=Washington+Park+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Washington+Park%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Washington+Park+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Washington+Park%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Washington+Park+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Union Station Denver Co",
          "displayText": "Union Station",
          "webSearchUrl": "https://www.bing.com/images/search?q=Union+Station+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Union+Station%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Union+Station+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Union+Station%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Union+Station+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Downtown Denver Co",
          "displayText": "Downtown",
          "webSearchUrl": "https://www.bing.com/images/search?q=Downtown+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Downtown%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Downtown+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Downtown%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Downtown+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co Mountains",
          "displayText": "Mountains",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+Mountains&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Mountains%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+Mountains&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Mountains%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Co+Mountains&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co County",
          "displayText": "County",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+County&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22County%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+County&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22County%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Co+County&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co On Map",
          "displayText": "Map",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+On+Map&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Map%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+On+Map&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Map%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Co+On+Map&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co Zoo",
          "displayText": "Zoo",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+Zoo&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Zoo%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+Zoo&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Zoo%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Co+Zoo&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Coors Field Denver Co",
          "displayText": "Coors Field",
          "webSearchUrl": "https://www.bing.com/images/search?q=Coors+Field+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Coors+Field%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Coors+Field+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Coors+Field%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Coors+Field+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Casa Bonita Denver Co",
          "displayText": "Casa Bonita",
          "webSearchUrl": "https://www.bing.com/images/search?q=Casa+Bonita+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Casa+Bonita%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Casa+Bonita+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Casa+Bonita%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Casa+Bonita+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Lodo Denver Co",
          "displayText": "Lodo",
          "webSearchUrl": "https://www.bing.com/images/search?q=Lodo+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Lodo%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Lodo+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Lodo%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Lodo+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Root Down Denver Co",
          "displayText": "Root Down",
          "webSearchUrl": "https://www.bing.com/images/search?q=Root+Down+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Root+Down%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Root+Down+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Root+Down%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Root+Down+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Summer in Denver Co",
          "displayText": "Summer",
          "webSearchUrl": "https://www.bing.com/images/search?q=Summer+in+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Summer%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Summer+in+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Summer%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Summer+in+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Hard Rock Cafe Denver Co",
          "displayText": "Hard Rock Cafe",
          "webSearchUrl": "https://www.bing.com/images/search?q=Hard+Rock+Cafe+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Hard+Rock+Cafe%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Hard+Rock+Cafe+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Hard+Rock+Cafe%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Hard+Rock+Cafe+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co Things to Do",
          "displayText": "Things Do",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+Things+to+Do&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Things+Do%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+Things+to+Do&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Things+Do%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Co+Things+to+Do&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Views of Denver Co",
          "displayText": "Views",
          "webSearchUrl": "https://www.bing.com/images/search?q=Views+of+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Views%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Views+of+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Views%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Views+of+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "16th Street Mall Denver Co",
          "displayText": "16th Street Mall",
          "webSearchUrl": "https://www.bing.com/images/search?q=16th+Street+Mall+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%2216th+Street+Mall%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=16th+Street+Mall+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%2216th+Street+Mall%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=16th+Street+Mall+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Elitch Gardens Denver Co",
          "displayText": "Elitch Gardens",
          "webSearchUrl": "https://www.bing.com/images/search?q=Elitch+Gardens+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Elitch+Gardens%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Elitch+Gardens+Denver+Co&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Elitch+Gardens%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Elitch+Gardens+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        }
      ],
      "pivotSuggestions": [
        {
          "pivot": "",
          "suggestions": [
            {
              "text": "Colorado Springs",
              "displayText": "Colorado Springs",
              "webSearchUrl": "https://www.bing.com/images/search?q=Colorado+Springs&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Colorado+Springs%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Colorado+Springs&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Colorado+Springs%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Colorado+Springs&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Seattle",
              "displayText": "Seattle",
              "webSearchUrl": "https://www.bing.com/images/search?q=Seattle&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Seattle%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Seattle&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Seattle%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Seattle&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Boulder",
              "displayText": "Boulder",
              "webSearchUrl": "https://www.bing.com/images/search?q=Boulder&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Boulder%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Boulder&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Boulder%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Boulder&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Salt Lake City",
              "displayText": "Salt Lake City",
              "webSearchUrl": "https://www.bing.com/images/search?q=Salt+Lake+City&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Salt+Lake+City%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Salt+Lake+City&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Salt+Lake+City%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Salt+Lake+City&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Chicago",
              "displayText": "Chicago",
              "webSearchUrl": "https://www.bing.com/images/search?q=Chicago&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Chicago%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Chicago&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Chicago%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Chicago&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Portland",
              "displayText": "Portland",
              "webSearchUrl": "https://www.bing.com/images/search?q=Portland&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Portland%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Portland&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Portland%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Portland&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Albuquerque",
              "displayText": "Albuquerque",
              "webSearchUrl": "https://www.bing.com/images/search?q=Albuquerque&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Albuquerque%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Albuquerque&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Albuquerque%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Albuquerque&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Minneapolis",
              "displayText": "Minneapolis",
              "webSearchUrl": "https://www.bing.com/images/search?q=Minneapolis&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Minneapolis%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Minneapolis&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Minneapolis%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Minneapolis&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Boston",
              "displayText": "Boston",
              "webSearchUrl": "https://www.bing.com/images/search?q=Boston&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Boston%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Boston&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Boston%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Boston&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Detroit",
              "displayText": "Detroit",
              "webSearchUrl": "https://www.bing.com/images/search?q=Detroit&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Detroit%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Detroit&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Detroit%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Detroit&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Kansas City",
              "displayText": "Kansas City",
              "webSearchUrl": "https://www.bing.com/images/search?q=Kansas+City&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Kansas+City%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Kansas+City&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Kansas+City%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Kansas+City&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "San Diego",
              "displayText": "San Diego",
              "webSearchUrl": "https://www.bing.com/images/search?q=San+Diego&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22San+Diego%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=San+Diego&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22San+Diego%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=San+Diego&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Indianapolis",
              "displayText": "Indianapolis",
              "webSearchUrl": "https://www.bing.com/images/search?q=Indianapolis&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Indianapolis%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Indianapolis&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Indianapolis%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Indianapolis&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Philadelphia",
              "displayText": "Philadelphia",
              "webSearchUrl": "https://www.bing.com/images/search?q=Philadelphia&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Philadelphia%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Philadelphia&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Philadelphia%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Philadelphia&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Miami",
              "displayText": "Miami",
              "webSearchUrl": "https://www.bing.com/images/search?q=Miami&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Miami%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Miami&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Miami%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Miami&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Cleveland",
              "displayText": "Cleveland",
              "webSearchUrl": "https://www.bing.com/images/search?q=Cleveland&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Cleveland%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Cleveland&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Cleveland%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Cleveland&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "New Orleans",
              "displayText": "New Orleans",
              "webSearchUrl": "https://www.bing.com/images/search?q=New+Orleans&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22New+Orleans%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=New+Orleans&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22New+Orleans%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse3.mm.bing.net/th?q=New+Orleans&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "San Antonio",
              "displayText": "San Antonio",
              "webSearchUrl": "https://www.bing.com/images/search?q=San+Antonio&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22San+Antonio%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=San+Antonio&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22San+Antonio%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=San+Antonio&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Washington, D C",
              "displayText": "Washington, D C",
              "webSearchUrl": "https://www.bing.com/images/search?q=Washington%2c+D+C&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Washington%2c+D+C%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Washington%2c+D+C&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Washington%2c+D+C%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Washington%2c+D+C&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            },
            {
              "text": "Pittsburgh",
              "displayText": "Pittsburgh",
              "webSearchUrl": "https://www.bing.com/images/search?q=Pittsburgh&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Pittsburgh%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d&FORM=IRQBPS",
              "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Pittsburgh&tq=%7b%22pq%22%3a%22denver%2cco%22%2c%22qs%22%3a%5b%7b%22cv%22%3a%22%22%2c%22pv%22%3a%22%22%2c%22hps%22%3atrue%2c%22iqp%22%3afalse%7d%2c%7b%22cv%22%3a%22Pittsburgh%22%2c%22pv%22%3a%22%22%2c%22hps%22%3afalse%2c%22iqp%22%3atrue%7d%5d%7d",
              "thumbnail": {
                "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Pittsburgh&pid=Api&mkt=en-US&adlt=moderate&t=1"
              }
            }
          ]
        }
      ],
      "relatedSearches": [
        {
          "text": "Denver Skyline",
          "displayText": "Denver Skyline",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Skyline&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Skyline",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Skyline&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Attractions",
          "displayText": "Denver Colorado Attractions",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Attractions&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Attractions",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Colorado+Attractions&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Downtown Denver Colorado",
          "displayText": "Downtown Denver Colorado",
          "webSearchUrl": "https://www.bing.com/images/search?q=Downtown+Denver+Colorado&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Downtown+Denver+Colorado",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Downtown+Denver+Colorado&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "City Park Denver Co",
          "displayText": "City Park Denver Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=City+Park+Denver+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=City+Park+Denver+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=City+Park+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Thornton Co",
          "displayText": "Thornton Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Thornton+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Thornton+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Thornton+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Botanic Gardens",
          "displayText": "Denver Botanic Gardens",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Botanic+Gardens&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Botanic+Gardens",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Botanic+Gardens&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Rocky Mountains Denver Colorado",
          "displayText": "Rocky Mountains Denver Colorado",
          "webSearchUrl": "https://www.bing.com/images/search?q=Rocky+Mountains+Denver+Colorado&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Rocky+Mountains+Denver+Colorado",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Rocky+Mountains+Denver+Colorado&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Washington Park Denver",
          "displayText": "Washington Park Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=Washington+Park+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Washington+Park+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Washington+Park+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Neighborhoods",
          "displayText": "Denver Neighborhoods",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Neighborhoods&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Neighborhoods",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Neighborhoods&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Broncos",
          "displayText": "Denver Broncos",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Broncos&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Broncos",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Broncos&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Broncos Fans",
          "displayText": "Denver Broncos Fans",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Broncos+Fans&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Broncos+Fans",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Broncos+Fans&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Parker Co",
          "displayText": "Parker Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Parker+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Parker+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Parker+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Molly Brown House",
          "displayText": "Molly Brown House",
          "webSearchUrl": "https://www.bing.com/images/search?q=Molly+Brown+House&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Molly+Brown+House",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Molly+Brown+House&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Airport",
          "displayText": "Denver Airport",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Airport&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Airport",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Airport&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Nightlife",
          "displayText": "Denver Colorado Nightlife",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Nightlife&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Nightlife",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Colorado+Nightlife&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Today",
          "displayText": "Denver Colorado Today",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Today&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Today",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Colorado+Today&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver USA",
          "displayText": "Denver USA",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+USA&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+USA",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+USA&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver County",
          "displayText": "Denver County",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+County&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+County",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+County&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Larimer Square Denver",
          "displayText": "Larimer Square Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=Larimer+Square+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Larimer+Square+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Larimer+Square+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Downtown Aquarium Denver",
          "displayText": "Downtown Aquarium Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=Downtown+Aquarium+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Downtown+Aquarium+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Downtown+Aquarium+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Girls Denver Co",
          "displayText": "Girls Denver Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Girls+Denver+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Girls+Denver+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Girls+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Littleton Co",
          "displayText": "Littleton Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Littleton+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Littleton+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Littleton+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Homes",
          "displayText": "Denver Colorado Homes",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Homes&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Homes",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Colorado+Homes&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Zoo",
          "displayText": "Denver Zoo",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Zoo&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Zoo",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Zoo&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Tourism",
          "displayText": "Denver Colorado Tourism",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Tourism&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Tourism",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Colorado+Tourism&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver International Airport",
          "displayText": "Denver International Airport",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+International+Airport&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+International+Airport",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+International+Airport&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Pics",
          "displayText": "Denver Pics",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Pics&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Pics",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Pics&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Union Station Denver Co",
          "displayText": "Union Station Denver Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Union+Station+Denver+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Union+Station+Denver+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Union+Station+Denver+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Restaurants",
          "displayText": "Denver Restaurants",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Restaurants&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Restaurants",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Restaurants&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Elitch Gardens Denver",
          "displayText": "Elitch Gardens Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=Elitch+Gardens+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Elitch+Gardens+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Elitch+Gardens+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado Springs",
          "displayText": "Denver Colorado Springs",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+Springs&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+Springs",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Colorado+Springs&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Convention Center",
          "displayText": "Denver Convention Center",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Convention+Center&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Convention+Center",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+Convention+Center&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Mile High City",
          "displayText": "Mile High City",
          "webSearchUrl": "https://www.bing.com/images/search?q=Mile+High+City&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Mile+High+City",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Mile+High+City&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver University",
          "displayText": "Denver University",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+University&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+University",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Denver+University&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Colorado People",
          "displayText": "Denver Colorado People",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Colorado+People&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Colorado+People",
          "thumbnail": {
            "thumbnailUrl": "https://tse1.mm.bing.net/th?q=Denver+Colorado+People&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Landmarks",
          "displayText": "Denver Landmarks",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Landmarks&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Landmarks",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Landmarks&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "16th Street Mall Denver",
          "displayText": "16th Street Mall Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=16th+Street+Mall+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=16th+Street+Mall+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=16th+Street+Mall+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Red Rocks Colorado",
          "displayText": "Red Rocks Colorado",
          "webSearchUrl": "https://www.bing.com/images/search?q=Red+Rocks+Colorado&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Red+Rocks+Colorado",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Red+Rocks+Colorado&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Coors Field Denver",
          "displayText": "Coors Field Denver",
          "webSearchUrl": "https://www.bing.com/images/search?q=Coors+Field+Denver&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Coors+Field+Denver",
          "thumbnail": {
            "thumbnailUrl": "https://tse3.mm.bing.net/th?q=Coors+Field+Denver&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Centennial Co",
          "displayText": "Centennial Co",
          "webSearchUrl": "https://www.bing.com/images/search?q=Centennial+Co&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Centennial+Co",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Centennial+Co&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Co On Map",
          "displayText": "Denver Co On Map",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Co+On+Map&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Co+On+Map",
          "thumbnail": {
            "thumbnailUrl": "https://tse4.mm.bing.net/th?q=Denver+Co+On+Map&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Vacation",
          "displayText": "Denver Vacation",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Vacation&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Vacation",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Vacation&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        },
        {
          "text": "Denver Pavilions",
          "displayText": "Denver Pavilions",
          "webSearchUrl": "https://www.bing.com/images/search?q=Denver+Pavilions&FORM=IRPATC",
          "searchLink": "https://api.bing.microsoft.com/api/v7/images/search?q=Denver+Pavilions",
          "thumbnail": {
            "thumbnailUrl": "https://tse2.mm.bing.net/th?q=Denver+Pavilions&pid=Api&mkt=en-US&adlt=moderate&t=1"
          }
        }
      ]
    }
    background_image = BackgroundImage.new(json[:value][0], location)
    expect(background_image).to be_a(BackgroundImage)
    expect(background_image.id).to be_nil
    expect(background_image.location).to be_a(String)
    expect(background_image.image_url).to be_a(String)
    expect(background_image.credit).to be_a(Hash)
    expect(background_image.credit[:source]).to be_a(String)
    expect(background_image.credit[:author]).to be_a(String)
    expect(background_image.credit[:logo]).to be_a(String)
  end
end
