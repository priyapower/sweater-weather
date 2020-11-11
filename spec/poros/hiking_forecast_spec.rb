require "rails_helper"

RSpec.describe HikingForecast do
  it "creates a hiking forecast poro" do
    json = {
      "lat": 39.74,
      "lon": -104.98,
      "timezone": "America/Denver",
      "timezone_offset": -25200,
      "current": {
        "dt": 1604931528,
        "sunrise": 1604929101,
        "sunset": 1604965761,
        "temp": 274.01,
        "feels_like": 269.34,
        "pressure": 1007,
        "humidity": 78,
        "dew_point": 270.91,
        "uvi": 2.5,
        "clouds": 46,
        "visibility": 10000,
        "wind_speed": 3.34,
        "wind_deg": 32,
        "weather": [
          {
            "id": 802,
            "main": "Clouds",
            "description": "scattered clouds",
            "icon": "03d"
          }
        ]
      },
      "minutely": [
        {
          "dt": 1604931540,
          "precipitation": 0
        },
        {
          "dt": 1604931600,
          "precipitation": 0
        },
        {
          "dt": 1604931660,
          "precipitation": 0
        },
        {
          "dt": 1604931720,
          "precipitation": 0
        },
        {
          "dt": 1604931780,
          "precipitation": 0
        },
        {
          "dt": 1604931840,
          "precipitation": 0
        },
        {
          "dt": 1604931900,
          "precipitation": 0
        },
        {
          "dt": 1604931960,
          "precipitation": 0
        },
        {
          "dt": 1604932020,
          "precipitation": 0
        },
        {
          "dt": 1604932080,
          "precipitation": 0
        },
        {
          "dt": 1604932140,
          "precipitation": 0
        },
        {
          "dt": 1604932200,
          "precipitation": 0
        },
        {
          "dt": 1604932260,
          "precipitation": 0
        },
        {
          "dt": 1604932320,
          "precipitation": 0
        },
        {
          "dt": 1604932380,
          "precipitation": 0
        },
        {
          "dt": 1604932440,
          "precipitation": 0
        },
        {
          "dt": 1604932500,
          "precipitation": 0
        },
        {
          "dt": 1604932560,
          "precipitation": 0
        },
        {
          "dt": 1604932620,
          "precipitation": 0
        },
        {
          "dt": 1604932680,
          "precipitation": 0
        },
        {
          "dt": 1604932740,
          "precipitation": 0
        },
        {
          "dt": 1604932800,
          "precipitation": 0
        },
        {
          "dt": 1604932860,
          "precipitation": 0
        },
        {
          "dt": 1604932920,
          "precipitation": 0
        },
        {
          "dt": 1604932980,
          "precipitation": 0
        },
        {
          "dt": 1604933040,
          "precipitation": 0
        },
        {
          "dt": 1604933100,
          "precipitation": 0
        },
        {
          "dt": 1604933160,
          "precipitation": 0
        },
        {
          "dt": 1604933220,
          "precipitation": 0
        },
        {
          "dt": 1604933280,
          "precipitation": 0
        },
        {
          "dt": 1604933340,
          "precipitation": 0
        },
        {
          "dt": 1604933400,
          "precipitation": 0
        },
        {
          "dt": 1604933460,
          "precipitation": 0
        },
        {
          "dt": 1604933520,
          "precipitation": 0
        },
        {
          "dt": 1604933580,
          "precipitation": 0
        },
        {
          "dt": 1604933640,
          "precipitation": 0
        },
        {
          "dt": 1604933700,
          "precipitation": 0
        },
        {
          "dt": 1604933760,
          "precipitation": 0
        },
        {
          "dt": 1604933820,
          "precipitation": 0
        },
        {
          "dt": 1604933880,
          "precipitation": 0
        },
        {
          "dt": 1604933940,
          "precipitation": 0
        },
        {
          "dt": 1604934000,
          "precipitation": 0
        },
        {
          "dt": 1604934060,
          "precipitation": 0
        },
        {
          "dt": 1604934120,
          "precipitation": 0
        },
        {
          "dt": 1604934180,
          "precipitation": 0
        },
        {
          "dt": 1604934240,
          "precipitation": 0
        },
        {
          "dt": 1604934300,
          "precipitation": 0
        },
        {
          "dt": 1604934360,
          "precipitation": 0
        },
        {
          "dt": 1604934420,
          "precipitation": 0
        },
        {
          "dt": 1604934480,
          "precipitation": 0
        },
        {
          "dt": 1604934540,
          "precipitation": 0
        },
        {
          "dt": 1604934600,
          "precipitation": 0
        },
        {
          "dt": 1604934660,
          "precipitation": 0
        },
        {
          "dt": 1604934720,
          "precipitation": 0
        },
        {
          "dt": 1604934780,
          "precipitation": 0
        },
        {
          "dt": 1604934840,
          "precipitation": 0
        },
        {
          "dt": 1604934900,
          "precipitation": 0
        },
        {
          "dt": 1604934960,
          "precipitation": 0
        },
        {
          "dt": 1604935020,
          "precipitation": 0
        },
        {
          "dt": 1604935080,
          "precipitation": 0
        },
        {
          "dt": 1604935140,
          "precipitation": 0
        }
      ],
      "hourly": [
        {
          "dt": 1604930400,
          "temp": 274.01,
          "feels_like": 269.34,
          "pressure": 1007,
          "humidity": 78,
          "dew_point": 270.91,
          "clouds": 46,
          "visibility": 10000,
          "wind_speed": 3.34,
          "wind_deg": 32,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "pop": 0.15
        },
        {
          "dt": 1604934000,
          "temp": 274.8,
          "feels_like": 270.9,
          "pressure": 1008,
          "humidity": 77,
          "dew_point": 271.43,
          "clouds": 50,
          "visibility": 10000,
          "wind_speed": 2.36,
          "wind_deg": 28,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "pop": 0.23
        },
        {
          "dt": 1604937600,
          "temp": 275.95,
          "feels_like": 272.28,
          "pressure": 1009,
          "humidity": 74,
          "dew_point": 271.94,
          "clouds": 60,
          "visibility": 10000,
          "wind_speed": 2.13,
          "wind_deg": 336,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.23
        },
        {
          "dt": 1604941200,
          "temp": 277.17,
          "feels_like": 273,
          "pressure": 1009,
          "humidity": 68,
          "dew_point": 271.96,
          "clouds": 68,
          "visibility": 10000,
          "wind_speed": 2.85,
          "wind_deg": 339,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.27
        },
        {
          "dt": 1604944800,
          "temp": 278,
          "feels_like": 273.48,
          "pressure": 1008,
          "humidity": 66,
          "dew_point": 272.3,
          "clouds": 75,
          "visibility": 10000,
          "wind_speed": 3.43,
          "wind_deg": 12,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.3
        },
        {
          "dt": 1604948400,
          "temp": 278.39,
          "feels_like": 273.83,
          "pressure": 1008,
          "humidity": 64,
          "dew_point": 269.48,
          "clouds": 80,
          "visibility": 10000,
          "wind_speed": 3.48,
          "wind_deg": 39,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.35
        },
        {
          "dt": 1604952000,
          "temp": 278.01,
          "feels_like": 273.47,
          "pressure": 1008,
          "humidity": 66,
          "dew_point": 269.67,
          "clouds": 90,
          "visibility": 10000,
          "wind_speed": 3.46,
          "wind_deg": 51,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.38
        },
        {
          "dt": 1604955600,
          "temp": 277.27,
          "feels_like": 273.61,
          "pressure": 1008,
          "humidity": 71,
          "dew_point": 271.06,
          "clouds": 94,
          "visibility": 3007,
          "wind_speed": 2.25,
          "wind_deg": 40,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.47
        },
        {
          "dt": 1604959200,
          "temp": 276.27,
          "feels_like": 272.19,
          "pressure": 1008,
          "humidity": 79,
          "dew_point": 272.98,
          "clouds": 95,
          "visibility": 1601,
          "wind_speed": 2.96,
          "wind_deg": 51,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.51
        },
        {
          "dt": 1604962800,
          "temp": 275.52,
          "feels_like": 271.11,
          "pressure": 1009,
          "humidity": 86,
          "dew_point": 273.49,
          "clouds": 96,
          "visibility": 169,
          "wind_speed": 3.52,
          "wind_deg": 46,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04d"
            }
          ],
          "pop": 0.71
        },
        {
          "dt": 1604966400,
          "temp": 274.66,
          "feels_like": 269.06,
          "pressure": 1011,
          "humidity": 88,
          "dew_point": 272.55,
          "clouds": 97,
          "visibility": 207,
          "wind_speed": 5.11,
          "wind_deg": 30,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.71
        },
        {
          "dt": 1604970000,
          "temp": 273.21,
          "feels_like": 267.27,
          "pressure": 1012,
          "humidity": 96,
          "dew_point": 271.59,
          "clouds": 100,
          "visibility": 194,
          "wind_speed": 5.55,
          "wind_deg": 9,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.79
        },
        {
          "dt": 1604973600,
          "temp": 272.74,
          "feels_like": 268.28,
          "pressure": 1013,
          "humidity": 97,
          "dew_point": 271.14,
          "clouds": 100,
          "visibility": 1456,
          "wind_speed": 3.37,
          "wind_deg": 66,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.88
        },
        {
          "dt": 1604977200,
          "temp": 272.56,
          "feels_like": 268.39,
          "pressure": 1014,
          "humidity": 96,
          "dew_point": 270.75,
          "clouds": 100,
          "visibility": 1790,
          "wind_speed": 2.89,
          "wind_deg": 36,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.79
        },
        {
          "dt": 1604980800,
          "temp": 272.51,
          "feels_like": 268.8,
          "pressure": 1014,
          "humidity": 96,
          "dew_point": 270.41,
          "clouds": 100,
          "visibility": 6435,
          "wind_speed": 2.22,
          "wind_deg": 59,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.79
        },
        {
          "dt": 1604984400,
          "temp": 272.68,
          "feels_like": 269.28,
          "pressure": 1015,
          "humidity": 95,
          "dew_point": 270.02,
          "clouds": 100,
          "visibility": 10000,
          "wind_speed": 1.79,
          "wind_deg": 23,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.75
        },
        {
          "dt": 1604988000,
          "temp": 272.71,
          "feels_like": 269.02,
          "pressure": 1015,
          "humidity": 95,
          "dew_point": 269.92,
          "clouds": 100,
          "visibility": 10000,
          "wind_speed": 2.2,
          "wind_deg": 76,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.75
        },
        {
          "dt": 1604991600,
          "temp": 272.78,
          "feels_like": 269.33,
          "pressure": 1015,
          "humidity": 94,
          "dew_point": 269.69,
          "clouds": 100,
          "visibility": 10000,
          "wind_speed": 1.85,
          "wind_deg": 80,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.04
        },
        {
          "dt": 1604995200,
          "temp": 273.04,
          "feels_like": 269.93,
          "pressure": 1015,
          "humidity": 93,
          "dew_point": 269.56,
          "clouds": 100,
          "visibility": 10000,
          "wind_speed": 1.39,
          "wind_deg": 61,
          "weather": [
            {
              "id": 804,
              "main": "Clouds",
              "description": "overcast clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.01
        },
        {
          "dt": 1604998800,
          "temp": 272.72,
          "feels_like": 269.52,
          "pressure": 1015,
          "humidity": 94,
          "dew_point": 269.37,
          "clouds": 74,
          "visibility": 10000,
          "wind_speed": 1.48,
          "wind_deg": 75,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.01
        },
        {
          "dt": 1605002400,
          "temp": 272.77,
          "feels_like": 269.88,
          "pressure": 1015,
          "humidity": 93,
          "dew_point": 269.17,
          "clouds": 56,
          "visibility": 10000,
          "wind_speed": 1.02,
          "wind_deg": 133,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.01
        },
        {
          "dt": 1605006000,
          "temp": 273.06,
          "feels_like": 270.16,
          "pressure": 1016,
          "humidity": 93,
          "dew_point": 269.06,
          "clouds": 54,
          "visibility": 10000,
          "wind_speed": 1.09,
          "wind_deg": 181,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04n"
            }
          ],
          "pop": 0.01
        },
        {
          "dt": 1605009600,
          "temp": 273.27,
          "feels_like": 269.98,
          "pressure": 1016,
          "humidity": 91,
          "dew_point": 268.65,
          "clouds": 57,
          "visibility": 10000,
          "wind_speed": 1.63,
          "wind_deg": 188,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605013200,
          "temp": 273.19,
          "feels_like": 269.55,
          "pressure": 1016,
          "humidity": 89,
          "dew_point": 267.29,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 2.06,
          "wind_deg": 197,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605016800,
          "temp": 273.08,
          "feels_like": 269.07,
          "pressure": 1016,
          "humidity": 86,
          "dew_point": 265.73,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 2.47,
          "wind_deg": 203,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605020400,
          "temp": 274.06,
          "feels_like": 270.39,
          "pressure": 1015,
          "humidity": 79,
          "dew_point": 264.82,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.96,
          "wind_deg": 217,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605024000,
          "temp": 275.72,
          "feels_like": 271.66,
          "pressure": 1014,
          "humidity": 69,
          "dew_point": 264.23,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 2.47,
          "wind_deg": 205,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605027600,
          "temp": 277.76,
          "feels_like": 273.16,
          "pressure": 1012,
          "humidity": 57,
          "dew_point": 262.02,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 3.13,
          "wind_deg": 205,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605031200,
          "temp": 279.28,
          "feels_like": 275.59,
          "pressure": 1011,
          "humidity": 49,
          "dew_point": 260.3,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.73,
          "wind_deg": 202,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605034800,
          "temp": 280.44,
          "feels_like": 277,
          "pressure": 1009,
          "humidity": 45,
          "dew_point": 259.74,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.36,
          "wind_deg": 179,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605038400,
          "temp": 281.44,
          "feels_like": 278.62,
          "pressure": 1008,
          "humidity": 41,
          "dew_point": 259.58,
          "clouds": 6,
          "visibility": 10000,
          "wind_speed": 0.42,
          "wind_deg": 276,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605042000,
          "temp": 281.72,
          "feels_like": 277.88,
          "pressure": 1008,
          "humidity": 41,
          "dew_point": 259.83,
          "clouds": 29,
          "visibility": 10000,
          "wind_speed": 1.92,
          "wind_deg": 340,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605045600,
          "temp": 281.57,
          "feels_like": 277.26,
          "pressure": 1009,
          "humidity": 42,
          "dew_point": 260.45,
          "clouds": 47,
          "visibility": 10000,
          "wind_speed": 2.63,
          "wind_deg": 334,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605049200,
          "temp": 281.16,
          "feels_like": 277.1,
          "pressure": 1010,
          "humidity": 44,
          "dew_point": 261.34,
          "clouds": 58,
          "visibility": 10000,
          "wind_speed": 2.31,
          "wind_deg": 317,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605052800,
          "temp": 280.21,
          "feels_like": 276.6,
          "pressure": 1012,
          "humidity": 48,
          "dew_point": 262.49,
          "clouds": 61,
          "visibility": 10000,
          "wind_speed": 1.72,
          "wind_deg": 297,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605056400,
          "temp": 279.68,
          "feels_like": 276.4,
          "pressure": 1014,
          "humidity": 50,
          "dew_point": 262.02,
          "clouds": 6,
          "visibility": 10000,
          "wind_speed": 1.25,
          "wind_deg": 298,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605060000,
          "temp": 278.78,
          "feels_like": 275.57,
          "pressure": 1015,
          "humidity": 53,
          "dew_point": 261.9,
          "clouds": 3,
          "visibility": 10000,
          "wind_speed": 1.14,
          "wind_deg": 247,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605063600,
          "temp": 278.05,
          "feels_like": 274.75,
          "pressure": 1016,
          "humidity": 56,
          "dew_point": 262.14,
          "clouds": 4,
          "visibility": 10000,
          "wind_speed": 1.29,
          "wind_deg": 224,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605067200,
          "temp": 277.33,
          "feels_like": 274.02,
          "pressure": 1017,
          "humidity": 59,
          "dew_point": 262.46,
          "clouds": 3,
          "visibility": 10000,
          "wind_speed": 1.3,
          "wind_deg": 201,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605070800,
          "temp": 276.94,
          "feels_like": 273.81,
          "pressure": 1018,
          "humidity": 61,
          "dew_point": 262.7,
          "clouds": 2,
          "visibility": 10000,
          "wind_speed": 1.06,
          "wind_deg": 198,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605074400,
          "temp": 276.55,
          "feels_like": 273.65,
          "pressure": 1019,
          "humidity": 63,
          "dew_point": 263.01,
          "clouds": 2,
          "visibility": 10000,
          "wind_speed": 0.74,
          "wind_deg": 226,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605078000,
          "temp": 276.05,
          "feels_like": 273.6,
          "pressure": 1019,
          "humidity": 66,
          "dew_point": 263.11,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 0.12,
          "wind_deg": 19,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605081600,
          "temp": 275.53,
          "feels_like": 272.99,
          "pressure": 1020,
          "humidity": 68,
          "dew_point": 262.98,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 0.23,
          "wind_deg": 47,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605085200,
          "temp": 275.15,
          "feels_like": 272.52,
          "pressure": 1020,
          "humidity": 70,
          "dew_point": 262.88,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 0.37,
          "wind_deg": 107,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605088800,
          "temp": 274.84,
          "feels_like": 271.91,
          "pressure": 1020,
          "humidity": 71,
          "dew_point": 262.69,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 0.78,
          "wind_deg": 177,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605092400,
          "temp": 274.57,
          "feels_like": 271.41,
          "pressure": 1020,
          "humidity": 72,
          "dew_point": 262.44,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.09,
          "wind_deg": 185,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605096000,
          "temp": 274.3,
          "feels_like": 270.81,
          "pressure": 1020,
          "humidity": 73,
          "dew_point": 262.18,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.56,
          "wind_deg": 185,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        },
        {
          "dt": 1605099600,
          "temp": 274,
          "feels_like": 270.84,
          "pressure": 1020,
          "humidity": 74,
          "dew_point": 261.93,
          "clouds": 0,
          "visibility": 10000,
          "wind_speed": 1.06,
          "wind_deg": 226,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01n"
            }
          ],
          "pop": 0
        }
      ],
      "daily": [
        {
          "dt": 1604944800,
          "sunrise": 1604929101,
          "sunset": 1604965761,
          "temp": {
            "day": 277.16,
            "min": 272.56,
            "max": 280.8,
            "night": 272.71,
            "eve": 274.65,
            "morn": 274.01
          },
          "feels_like": {
            "day": 272.58,
            "night": 269.02,
            "eve": 269.05,
            "morn": 267.17
          },
          "pressure": 1008,
          "humidity": 68,
          "dew_point": 271.95,
          "wind_speed": 3.43,
          "wind_deg": 12,
          "weather": [
            {
              "id": 803,
              "main": "Clouds",
              "description": "broken clouds",
              "icon": "04d"
            }
          ],
          "clouds": 69,
          "pop": 0.79,
          "uvi": 2.5
        },
        {
          "dt": 1605031200,
          "sunrise": 1605015570,
          "sunset": 1605052105,
          "temp": {
            "day": 279.28,
            "min": 272.72,
            "max": 281.72,
            "night": 276.55,
            "eve": 280.21,
            "morn": 273.27
          },
          "feels_like": {
            "day": 275.59,
            "night": 273.65,
            "eve": 276.6,
            "morn": 269.98
          },
          "pressure": 1011,
          "humidity": 49,
          "dew_point": 260.3,
          "wind_speed": 1.73,
          "wind_deg": 202,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "clouds": 0,
          "pop": 0.01,
          "uvi": 2.36
        },
        {
          "dt": 1605117600,
          "sunrise": 1605102040,
          "sunset": 1605138452,
          "temp": {
            "day": 278.9,
            "min": 274.3,
            "max": 281.66,
            "night": 276.07,
            "eve": 280.09,
            "morn": 274.3
          },
          "feels_like": {
            "day": 275.29,
            "night": 273.04,
            "eve": 275.88,
            "morn": 270.81
          },
          "pressure": 1014,
          "humidity": 49,
          "dew_point": 259.61,
          "wind_speed": 1.56,
          "wind_deg": 140,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "clouds": 0,
          "pop": 0.04,
          "uvi": 2.35
        },
        {
          "dt": 1605204000,
          "sunrise": 1605188509,
          "sunset": 1605224799,
          "temp": {
            "day": 279.76,
            "min": 274.26,
            "max": 282.62,
            "night": 277.81,
            "eve": 281.06,
            "morn": 274.26
          },
          "feels_like": {
            "day": 275.5,
            "night": 274.74,
            "eve": 277.56,
            "morn": 270.79
          },
          "pressure": 1017,
          "humidity": 47,
          "dew_point": 259.77,
          "wind_speed": 2.53,
          "wind_deg": 110,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "clouds": 1,
          "pop": 0,
          "uvi": 2.26
        },
        {
          "dt": 1605290400,
          "sunrise": 1605274979,
          "sunset": 1605311149,
          "temp": {
            "day": 282.09,
            "min": 276.21,
            "max": 284.67,
            "night": 279.64,
            "eve": 283.22,
            "morn": 276.21
          },
          "feels_like": {
            "day": 279.15,
            "night": 276.63,
            "eve": 278.2,
            "morn": 273.08
          },
          "pressure": 1011,
          "humidity": 44,
          "dew_point": 263.46,
          "wind_speed": 0.85,
          "wind_deg": 105,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "clouds": 27,
          "pop": 0.04,
          "uvi": 2.31
        },
        {
          "dt": 1605376800,
          "sunrise": 1605361448,
          "sunset": 1605397500,
          "temp": {
            "day": 283.77,
            "min": 277.59,
            "max": 287.43,
            "night": 279.77,
            "eve": 284.36,
            "morn": 277.59
          },
          "feels_like": {
            "day": 280.78,
            "night": 276.37,
            "eve": 280.24,
            "morn": 273.64
          },
          "pressure": 1007,
          "humidity": 39,
          "dew_point": 264.03,
          "wind_speed": 0.9,
          "wind_deg": 315,
          "weather": [
            {
              "id": 802,
              "main": "Clouds",
              "description": "scattered clouds",
              "icon": "03d"
            }
          ],
          "clouds": 27,
          "pop": 0.07,
          "uvi": 2.31
        },
        {
          "dt": 1605463200,
          "sunrise": 1605447917,
          "sunset": 1605483853,
          "temp": {
            "day": 281.91,
            "min": 276.54,
            "max": 284.19,
            "night": 277.8,
            "eve": 281.12,
            "morn": 276.54
          },
          "feels_like": {
            "day": 276.22,
            "night": 274.29,
            "eve": 276.42,
            "morn": 273.05
          },
          "pressure": 1021,
          "humidity": 30,
          "dew_point": 249.51,
          "wind_speed": 4.01,
          "wind_deg": 298,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "clouds": 0,
          "pop": 0.04,
          "uvi": 2.58
        },
        {
          "dt": 1605549600,
          "sunrise": 1605534385,
          "sunset": 1605570208,
          "temp": {
            "day": 285.01,
            "min": 276.39,
            "max": 288.49,
            "night": 281.38,
            "eve": 285.36,
            "morn": 276.39
          },
          "feels_like": {
            "day": 281.77,
            "night": 277.84,
            "eve": 281.99,
            "morn": 272.69
          },
          "pressure": 1012,
          "humidity": 29,
          "dew_point": 255.71,
          "wind_speed": 0.81,
          "wind_deg": 172,
          "weather": [
            {
              "id": 800,
              "main": "Clear",
              "description": "clear sky",
              "icon": "01d"
            }
          ],
          "clouds": 10,
          "pop": 0,
          "uvi": 2.53
        }
      ]
    }
    hiking_forecast = HikingForecast.new(json[:current])
    expect(hiking_forecast).to be_a(HikingForecast)
    expect(hiking_forecast.temperature).to be_a(String)
    expect(hiking_forecast.summary).to be_a(String)
  end
end
