// $(document).ready(function() {
  
// });


$(function() {
	$("form").on("submit", function(e) {
		e.preventDefault();

		var request = gapi.client.youtube.search.list({
			part: "snippet",
			type: "video",
			q: encodeURIComponent($("#search").val()).replace(/%20/g, "+"),
			maxResults: 3
			order: "viewCount",
			publishedAfter: "2012-01-01T00:00:00Z"
		});
		// execute the request
		request.execute(function(response) {
			console.log(response);
		});
	});
});

function init() {
	gapi.client.setAPIKey(YOUTUBE_API_KEY);
	gapi.client.load("youtube", "v3", function() {
	});
}