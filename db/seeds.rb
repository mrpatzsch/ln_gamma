# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

destinations = Destination.create([
  { name: 'Akha Ama',
    location: 'Chiang Mai, Thailand',
    website: 'www.akhaama.com/',
    certification: 'Cooperative, Regional Sourcing, Hires Inclusively',

    desc_prod: ' Finding great coffee on the road is often a sore spot for the adventurous and well-intentioned traveler but in Akha Ama one finds respite. The trendy little cafe is home to an award-winning Barista, fair-trade cuppas, pastries, tea and juice. The beans, grown and processed locally, were selected by the Specialty Coffee Association of Europe for the World Cup Tasters Championship in 2010, 2011 and 2012. In 2013, the accolades kept coming when Barista Jenny won first place for espresso wizardry in a Northern Thailand competition. A superb cup of coffee will run you 45 Thai Baht a cup (~$1.50 USD), and if you love it as much as we think you will you can grab a bag of beans to share back home.',
    desc_good: 'You’d never know that Mr. Lee Ayu, an Akha man, may have started a kind of revolution in thinking among hill tribe people; or at least in his own village and the 14 families who now comprise Akha Ama growers. Ayu learned about community development at University and about how his people were constantly at the mercy of both the weather and middle-men.
The Akha are an indigenous hill tribe people living in small, high altitude villages in the mountains of Burma, China, Laos, Thailand and Vietnam. They are an ethnic minority in all of these nations, so you can guess what that means: marginalization, poverty and discrimination.
Coffee is the second most widely traded commodity globally. But the beans have a narrow window of time between harvest and processing before they go bad. That narrow window gives 3rd-party processors leverage for low-balling local growers out of their hard-earned harvests. Thus, by guiding his kinfolk, already 15+ years in the bean-growing business, into bean processing Ayu has managed to outwit erstwhile predatory bean buyers.
Once the village growers followed Lee’s advice and invested in learning how to process their own beans, they could afford to wait for a better bid. The results? Higher quality coffee for the end consumer and a higher quality life for the growers.',
    directions: 'Akha Ama Coffee 9/1 Mata Apartment, Soi 3, Hussadhisewee Road, Chiang Mai. Tel.: 66-86-915-8600',
    recommended: 'The Shakerato' },
  { name: 'Snowday',
    location: 'New York, New York',
    website: 'http://drivechangenyc.org/',
    certification: 'Hires Inclusively, Staff Development, ',

    desc_prod: 'Those who were raised in the Northeast will remember the joy of a school snowday. A day without worries and lots of treats, preferably maple syrup topped ones. Thus the concept for Snowday, a maple themed food truck with adult sophistication, was born. The Farm to Truck social enterprise sources 100% of its ingredients from area farms and small businesses to keep it local and fresh. The menu boasts an impressive array of sandwiches and salads curated by Culinary Arts Director, Jared Spafford (and the rest of the team). The house specialty is “maple grilled cheese”– fresh-daily baked sour dough bread with extra sharp cheddar cheese topped off with Grade B New York State maple syrup. A nostalgic lunch will set you back $10, tops, plus a couple bucks for Sugar on Snow, hot maple syrup over fresh shaved ‘snow’.',
    desc_good: ' Drive Change founder Jordyn Lexton launched the social enterprise to hire, teach and empower formerly incarcerated youth. Lexton taught English for three years on Riker’s Island in New York City to incarcerated young men, ages 16-18 years old and is well versed in the issues facing youth upon re-entry.  Riker’s Island on the East River in the Bronx is New York City’s largest jail complex. It houses over 12,000 inmates; 8% of whom are minors. New York is one of two states in the US that automatically treats 16 year-olds as adults at the point of arrest. It is a remnant of an archaic law passed in 1964 under the pretense of being temporary. As a result, these minors are incarcerated and receive felonies on their records versus juvenile adjudications, which severely limits their ability to find quality work upon release. The trend contributes to a nearly 70% recidivism rate, or a return to the criminal justice system. In 2013, the cost to house an inmate on Riker’s Island to the City of New York was $167,000 annually.
Drive Change works with individuals aged 16-25 all of whom have had direct impact with the adult criminal justice system. Drive Change aims to bring the recidivism rate down to 20% and so far all the employees on a bright path. The 8-person crew members are paid weekly at almost 40% over minimum wage in New York. They also receive continuing education and training on money management, culinary arts, hospitality, business development, entrepreneurship training, social media, food sustainability and criminal justice advocacy. The program is transitional; it is 6-8 months long and rotates three times a year allowing each truck to train up to 30 young people per year.',
    directions: 'Snowday comes to you! Follow @drivechangenyc and @snowdaytruck on Twitter ',
    recommended: 'The Famous Maple Grilled Cheese
' }])


