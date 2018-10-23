require 'thinreports'

sex = 1
maritalstatus = 1
criminalrecord = 1
residingwith1 = 1
residingwith2 = 1
residingwith3 = 1
residingwith4 = 1
residingwith5 = 2
residingwith6 = 2

report = Thinreports::Report.new layout: 'kikankoshinP1'

report.start_new_page

report.page.item(:Immigration).value('高松')
report.page.item(:Nationality).value('フィリピン')
report.page.item(:BirthYear).value('1987')
report.page.item(:BirthMonth).value('01')
report.page.item(:BirthDay).value('06')
report.page.item(:ApplicantName).value('VICENTE ALOBA BAYON-ON')
if sex == 1
  report.page.item(:Male).value('○')
else
  report.page.item(:Female).value('○')
end
report.page.item(:PlaceOfBirth).value('フィリピン')
if maritalstatus == 1
  report.page.item(:Married).value('○')
else
  report.page.item(:Single).value('○')
end
report.page.item(:Occupation).value('会社員')
report.page.item(:HomeTown).value('セブ')
report.page.item(:Address).value('愛媛県新居浜市上原1丁目3-24')
report.page.item(:Telephone).value('-')
report.page.item(:Cellular).value('090-9999-9999')
report.page.item(:PassportNumber).value('P0000000A')
report.page.item(:PassportExpirationYear).value('2028')
report.page.item(:PassportExpirationMonth).value('05')
report.page.item(:PassportExpirationDay).value('05')
report.page.item(:StatusOfResidence).value('日本人の配偶者等')
report.page.item(:PeriodOfStay).value('3年')
report.page.item(:ResidenceExpirationYear).value('2018')
report.page.item(:ResidenceExpirationMonth).value('12')
report.page.item(:ResidenceExpirationDay).value('12')
report.page.item(:ResidenceCard).value('PN00000000MA')
report.page.item(:DesireLength).value('5年')
report.page.item(:Reason).value('この先も引き続き日本において家族と暮らしていくため')
if criminalrecord == 1
  report.page.item(:Yes).value('○')
else
  report.page.item(:No).value('○')
end
report.page.item(:CriminalDetail).value('別紙参照')
report.page.item(:FamilyRelationship1).value('妻')
report.page.item(:FamilyName1).value('三宅朋子')
report.page.item(:FamilyBirthday1).value('1980年6月2日')
report.page.item(:FamilyNationality1).value('日本')
if residingwith1 == 1
  report.page.item(:Ryes1).value('○')
else
  report.page.item(:Rno1).value('○')
end
report.page.item(:FamilyCompany1).value('アイ・ジョブ・ネット㈱')
report.page.item(:FamilyResidenceNumber1).value('-')
report.page.item(:FamilyRelationship2).value('子')
report.page.item(:FamilyName2).value('三宅莉杏')
report.page.item(:FamilyBirthday2).value('2014年1月6日')
report.page.item(:FamilyNationality2).value('日本・フィリピン')
if residingwith2 == 1
  report.page.item(:Ryes2).value('○')
else
  report.page.item(:Rno2).value('○')
end
report.page.item(:FamilyCompany2).value('グレース幼稚園')
report.page.item(:FamilyResidenceNumber2).value('-')
report.page.item(:FamilyRelationship3).value('子')
report.page.item(:FamilyName3).value('三宅亜蓮')
report.page.item(:FamilyBirthday3).value('2017年1月6日')
report.page.item(:FamilyNationality3).value('日本・フィリピン')
if residingwith3 == 1
  report.page.item(:Ryes3).value('○')
else
  report.page.item(:Rno3).value('○')
end
report.page.item(:FamilyCompany3).value('上部のぞみ保育園')
report.page.item(:FamilyResidenceNumber3).value('-')
report.page.item(:FamilyRelationship4).value('義父')
report.page.item(:FamilyName4).value('三宅毅')
report.page.item(:FamilyBirthday4).value('1948年4月29日')
report.page.item(:FamilyNationality4).value('日本')
if residingwith4 == 1
  report.page.item(:Ryes4).value('○')
else
  report.page.item(:Rno4).value('○')
end
report.page.item(:FamilyCompany4).value('㈱富士興業')
report.page.item(:FamilyResidenceNumber4).value('-')
report.page.item(:FamilyRelationship5).value('父')
report.page.item(:FamilyName5).value('Basilio Alontaga Bayon-on')
report.page.item(:FamilyBirthday5).value('1954年11月25日')
report.page.item(:FamilyNationality5).value('フィリピン')
if residingwith5 == 1
  report.page.item(:Ryes5).value('○')
else
  report.page.item(:Rno5).value('○')
end
report.page.item(:FamilyCompany5).value('無職')
report.page.item(:FamilyResidenceNumber5).value('PN11111111MA')
report.page.item(:FamilyRelationship6).value('母')
report.page.item(:FamilyName6).value('Alberta Aloba Bayon-on')
report.page.item(:FamilyBirthday6).value('1952年11月15日')
report.page.item(:FamilyNationality6).value('フィリピン')
if residingwith6 == 1
  report.page.item(:Ryes6).value('○')
else
  report.page.item(:Rno6).value('○')
end
report.page.item(:FamilyCompany6).value('主婦')
report.page.item(:FamilyResidenceNumber6).value('PN22222222MA')

report.generate(filename: 'kikankoshinP1.pdf')

puts 'Done!'