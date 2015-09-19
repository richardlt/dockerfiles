var json = JSON.parse(process.env.JSON);

var idLatest = null;
var tagLatest = null;
var tagNew = "0.1";

json.forEach(function(tags) {
	if(tags.name === "latest") {
		idLatest = tags.layer;
	}
});

if(idLatest !== null) {
	json.forEach(function(tags) {
		if(tags.layer === idLatest && tags.name !== "latest") {
			tagLatest = tags.name;
			var temp = tagLatest.split('.');
			tagNew = temp[0] + '.' + (parseInt(temp[1])+1);
		}
	});
}

process.stdout.write(tagNew);