module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
	end


	def set_page_defaults
		@page_title = "Derek Silva || Web Developer"
		@seo_keywords = "Full, Stack, Web, Development, App, Mobile, Software, Engineer, Derek, Silva"
	end
end