namespace :scraper do
	desc "Scrape apartment listing"
  task scrape: :environment do


	agent = Mechanize.new 
	url = "https://raleigh.craigslist.org/search/apa"
	page = agent.get(url)
	apts_array = [] 
	max_count = 999 # change for number of records to be downloaded
	record_created = 0

	while record_created <= max_count && link = page.link_with(text: 'next > ') 

	apts = page.css('.content').css('.result-row').css('.result-info')
		
		apts.each do |apt|
			if record_created <= max_count
				
				apt_title = apt.css('.result-title').text
				apt_price = (apt.css('.result-price').text)[1..-1].to_f
				apt_date = Date.parse(apt.css('.result-date').text).to_s


				Apartment.create!(
      		title: apt_title,
      		price: apt_price,
      		date: apt_date)

				record_created += 1
		
			end
		end

		link = page.link_with(text: 'next > ')
		next_page = link.click

		url = next_page.uri.to_s
		p "scraped from url: " + url
		page = agent.get(url)
	
end
	
	p "Total records scrapped: " + record_created.to_s
	
  end
end

 #rake scraper:scrape


