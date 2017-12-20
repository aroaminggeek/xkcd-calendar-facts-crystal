# Dear gods of geekdom this is fugly.
# But it is my first "totally from scratch" python script. I learned all
# about lists, appending said lists, the random module and other fun
# things.
# Did you know that [a recurring event] [occurs in an unusual manner]
# because of [phenomena or political decisions]? Apparently [wild card statement]."
# While it may seem like trivia, it [trivia]

require "./calendarfacts/*"

Equinox  = ["Fall", "Spring"]
Solstice = ["Summer", "Winter"]
Olympics = ["Summer", "Winter"]
Sunrise  = ["Latest", "Earliest"]
Sunset   = ["Latest", "Earliest"]
Daylight = ["Saving", "Savings"]
Leap     = ["Day", "Year"]
Moon     = ["Harvest", "Super", "Blood"]
recurring_event = ["Easter",
                   "Toyota Truck Month",
                   "Shark Week",
]
drifts = [" drifts out of sync with the Sun",
          " drifts out of sync with the Moon",
          " drifts out of sync with the Zodiac",
          " drifts out of sync with the atomic clock in Colorado"]
calendar_type = ["Gregorian",
                 "Mayan",
                 "Lunar",
                 "iPhone"]
manner = [" happens earlier",
          " happens later",
          " happens at the wrong time",
          " might not happen",
          " might happen twice"]

phenomena = ["a decree by the pope in the 1500s",
             "magnetic field reversal"]
tz_legislation = ["Indiana",
                  "Arizona",
                  "Russia"]

celestial1 = ["the precession",
              "the libration",
              "the nutation",
              "the libation",
              "the eccentricity",
              "the obliquity"]

celestial2 = ["Moon",
              "Sun",
              "Earth's axis",
              "equator",
              "prime meridian",
              "International Date Line",
              "Mason-Dixon Line"]

arbitrary_decision = ["Benjamin Franklin",
                      "Isaac Newton",
                      "FDR"]

apparent = ["it causes a predictable increase in car accidents.",
            "that's why we have leap seconds.",
            "scientists are really worried.",
            "it's getting worse and no one knows why."]

extreme = ["Bronze Age.",
           "Ice Age.",
           "Cretaceous.",
           "1990s."]

proposal = ["will never happen.",
            "actually makes things worse.",
            "is stalled in congress.",
            "might be unconstitutional."]

trivia = ["causes huge headaches for software developers",
          "is taken advantage of by high-speed traders",
          "triggered the 2003 Northeast Blackout",
          "has to be corrected for by GPS satellites"]

Equinox.each do |i|
  recurring_event << i + " Equinox"
end

Solstice.each do |s|
  recurring_event << s + " Solstice"
end

Olympics.each do |s|
  recurring_event << s + " Olympics"
end

Sunrise.each do |s|
  recurring_event << s + " Sunrise"
end

Sunset.each do |s|
  recurring_event << s + " Sunset"
end
Daylight.each do |d|
  recurring_event << "Daylight " + d + " Time"
end

Leap.each do |l|
  recurring_event << "Leap " + l
end

Moon.each do |m|
  recurring_event << m + " Moon"
end

calendar_type.each do |ct|
  drifts << " drifts out of sync with the " + ct + " Calendar"
end
drifts.each do |d|
  manner << d
end

tz_legislation.each do |tzl|
  phenomena << "time zone legislation in " + tzl
end

celestial1.each do |c1|
  celestial2.each do |c2|
    c3 = c1 + " of the " + c2
    phenomena << c3
  end
end

arbitrary_decision.each do |person|
  phenomena << "an arbitrary decision by " + person
end

extreme.each do |e|
  apparent << "it was even more extreme during the " + e
end

proposal.each do |p|
  apparent << "there's a proposal to fix it, but it " + p
end

# puts recurring_event
# puts manner
the_event = recurring_event.sample
the_manner = manner.sample
the_phenomena = phenomena.sample
the_trivia = "While it may seem like trivia, it " + trivia.sample
calendar_event = "Did you know that " + the_event + \
  the_manner + " because of " + the_phenomena + "?\n" + the_trivia

puts calendar_event
