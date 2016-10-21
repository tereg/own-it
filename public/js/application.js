// $(document).ready(function() {
  
// });

// $(function() {
//     $("form").on("submit", function(e) {
//        e.preventDefault();
//        // prepare the request
//        var request = gapi.client.youtube.search.list({
//             part: "snippet",
//             type: "video",
//             q: encodeURIComponent($("#search").val()).replace(/%20/g, "+"),
//             maxResults: 3,
//             order: "viewCount",
//             publishedAfter: "2015-01-01T00:00:00Z"
//        }); 
//        // execute the request
// request.execute(function(response) {
// 			console.log(response);



//        // request.execute(function(response) {
//        //    var results = response.result;
//        //    $("#results").html("");
//        //    $.each(results.items, function(index, item) {
//        //      $.get("tpl/item.html", function(data) {
//        //          $("#results").append(tplawesome(data, [{"title":item.snippet.title, "videoid":item.id.videoId}]));
//        //      });
//        //    });
//        //    resetVideoHeight();
//        });
//     });
//   });






// // $(function() {
// // 	$("form").on("submit", function(e) {
// // 		e.preventDefault();

// // 		var request = gapi.client.youtube.search.list({
// // 			part: "snippet",
// // 			type: "video",
// // 			q: encodeURIComponent($("#search").val()).replace(/%20/g, "+"),
// // 			maxResults: 3
// // 			order: "viewCount",
// // 			publishedAfter: "2012-01-01T00:00:00Z"
// // 		});
// // // 		// execute the request
// // 		request.execute(function(response) {
// // 			console.log(response);
// // // 		});
// // // 	});
// // });

// function init() {
// 	console.log(ENV['YOUTUBE_API_KEY'])
// 	// gapi.client.setApiKey(YOUTUBE_API_KEY);
// 	// gapi.client.load("youtube", "v3", function() {
// 	// });
// }