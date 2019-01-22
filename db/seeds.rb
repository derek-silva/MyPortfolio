3.times do |topic|
	Topic.create!(
		title:"Topic #{topic}"
	)
end

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget volutpat lectus. Donec neque urna, mattis ut fermentum non, iaculis sed est. Vestibulum odio tortor, scelerisque id maximus id, dignissim at turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent in magna vitae enim condimentum sollicitudin. Proin lobortis euismod velit. Aenean ac nibh a augue tempus dapibus eu sollicitudin leo. Fusce lorem arcu, tempor a ligula vitae, tincidunt finibus augue. Maecenas tempor odio sit amet molestie congue. Vestibulum porttitor neque dui, sit amet pharetra elit feugiat sit amet.

		In posuere ante quis lectus rhoncus, non commodo neque pharetra. In vitae luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In finibus augue nibh, in varius enim vestibulum sit amet. Ut porttitor pretium ante vitae dictum. Nullam quis odio quis quam mollis convallis non nec purus. Sed ut luctus nunc. Nam fringilla porta nisi sit amet sagittis. Sed ut nunc non felis tincidunt laoreet. Praesent nunc dolor, pretium blandit ligula in, accumsan sollicitudin mi.",
		topic_id: Topic.last.id
	)
end 

5.times do |skill| 
	Skill.create(
		title: "Programming Language #{skill}",
		percent_utilized: 15
	)
end

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio Title #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget volutpat lectus. Donec neque urna, mattis ut fermentum non, iaculis sed est. Vestibulum odio tortor, scelerisque id maximus id, dignissim at turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent in magna vitae enim condimentum sollicitudin. Proin lobortis euismod velit. Aenean ac nibh a augue tempus dapibus eu sollicitudin leo. Fusce lorem arcu, tempor a ligula vitae, tincidunt finibus augue. Maecenas tempor odio sit amet molestie congue. Vestibulum porttitor neque dui, sit amet pharetra elit feugiat sit amet.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/300x200"
	)
end

	Portfolio.create!(
		title: "Portfolio Title",
		subtitle: "Javascript",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eget volutpat lectus. Donec neque urna, mattis ut fermentum non, iaculis sed est. Vestibulum odio tortor, scelerisque id maximus id, dignissim at turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent in magna vitae enim condimentum sollicitudin. Proin lobortis euismod velit. Aenean ac nibh a augue tempus dapibus eu sollicitudin leo. Fusce lorem arcu, tempor a ligula vitae, tincidunt finibus augue. Maecenas tempor odio sit amet molestie congue. Vestibulum porttitor neque dui, sit amet pharetra elit feugiat sit amet.",
		main_image: "https://via.placeholder.com/600x400",
		thumb_image: "https://via.placeholder.com/300x200"
	)
	
puts "3 Topics Created"
puts "10 Blogs Created"
puts "5 Skills Created"
puts "10 Portfolios Created"