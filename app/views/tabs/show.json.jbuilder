json.extract! @tab, :id, :artist, :title, :tab_content, :created_at, :updated_at

startScrolling ->
	$("html, body").animate({ scrollTop: 5000 }, 10000);

