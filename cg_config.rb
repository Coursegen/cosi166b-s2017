require 'coursegen'

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166b-s2017"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b-s2016"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2017) R. Pito Salas, pitosalas@brandeis.edu"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Software Engineering"
COURSE_ABBREV = "166b"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "jan-17-2017",
  weekdays: [:tuesday, :wednesday, :thursday],
  start_times: ["15:30", "14:00", "15:30"],
  end_times: ["16:50", "16:00", "16:50"],
  number: 39,
  start_time: "15:30",
  end_time: "16:50",
  skips: ["feb-9-2017", "feb-21-2017", "feb-22-2017", "feb-23-2017", "apr-11-2017", "apr-12-2017", "apr-13-2017", "apr-18-2017", "apr-19-2017"])

# Sections in the right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Incubator", "incubator", hidden: false, type: :section),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]
# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
