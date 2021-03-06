window.Util =
  months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

  bloggerApiKey: 'AIzaSyC0Dnlm3Ghexg8u4sWsxv14cy_S-izE-Uc'

  daysOfWeek: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

  getDateString: (date) =>
    day = Util.daysOfWeek[date.getDay()]
    month = Util.months[date.getMonth()]
    year = date.getFullYear()
    dayOfMonth = date.getDate()

    dateEnding = 'th'
    if dayOfMonth < 10 and dayOfMonth > 20
      switch dayOfMonth % 10
        when 1 then dateEnding = 'st'
        when 2 then dateEnding = 'nd'
        when 3 then dateEnding = 'rd'

    hours = date.getHours()

    ampm = 'am'
    if hours > 12
      hours %= 12
      ampm = 'pm'

    if hours == 0
      hours = 12

    minutes = "0#{date.getMinutes()}".slice(-2)

    "#{day}, #{month} #{dayOfMonth}#{dateEnding}, #{year} at #{hours}:#{minutes}#{ampm}"