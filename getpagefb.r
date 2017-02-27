#Script to get fb page post
#Then save the table to xlsx format
#Step by step 
#1- require(Rfacebook)
#2- fb_oauth <- fbOAuth(app_id="xxxxxx", app_secret="yyyyyyyyy",extended_permissions = TRUE)
#3- if already save just execute load("fb_oauth")
#4- Create token token <- 'xyxyxyx.....yx' (token ambil dari sini https://developers.facebook.com/tools/explorer)


library(xlsx)
#setwd() pastikan berada difolder kerja yang hendak digunakan

getpagedata = getPage(187232838148193, token = fb_oauth, n=200)
#getPage id (187232838148193 is https://www.facebook.com/halalmediajapan) pages id fb buat dari sini http://findmyfbid.com

View(getpagedata)

write.xlsx(x = getpagedata, file = "fb.pagedata.xlsx",
            sheetName = "HalMedJap", row.names = FALSE)