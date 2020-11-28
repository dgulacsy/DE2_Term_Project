library(rvest)
library(jsonlite)
library(XML)
library(RJSONIO)
require(httr)

library(xml2)

pg <- read_xml('http://api.worldbank.org/v2/country/all/indicator/SP.POP.TOTL?date=1985:2016&per_page=9000')
# get all the <record>s
recs <- xml_find_all(pg, "wb:data")
