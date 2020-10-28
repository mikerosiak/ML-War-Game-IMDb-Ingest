'use strict';

//if CORB property "BATCH-SIZE" is greater than 1, the URI variable is
//a delimited string with default separator, ';'
const uriArray = URI.split(';')

let report = ["Processing batch of " + uriArray.length];

for (const uri of uriArray) {

    let movie = cts.doc(uri).toObject();
    let title = movie.title;
    let actors = movie.actors.split(", ");
    let count = 0;
    for (let a of actors) {
    	count += cts.estimate(cts.jsonPropertyWordQuery("actors", a));
    }
    if (actors.length == 1) {
	    report.push(title + " included 1 actor, who acted in " + count + " movies.");
	} else {
	    report.push(title + " included " + actors.length + " actors, who collectively acted in " + count + " movies.");
	}
}

Sequence.from(report);