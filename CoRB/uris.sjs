var uris = cts.uris(null,null,cts.collectionQuery("movie"));

fn.insertBefore(uris, 0, fn.count(uris));
