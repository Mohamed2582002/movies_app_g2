/// status : "ok"
/// status_message : "Query was successful"
/// data : {"movie_count":65534,"limit":20,"page_number":1,"movies":[{"id":5496,"url":"https://yts.mx/movies/wwe-tlc-tables-ladders-chairs-2015","imdb_code":"tt4610774","title":"WWE TLC Tables, Ladders & Chairs","title_english":"WWE TLC Tables, Ladders & Chairs","title_long":"WWE TLC Tables, Ladders & Chairs (2015)","slug":"wwe-tlc-tables-ladders-chairs-2015","year":2015,"rating":6.3,"runtime":171,"genres":["Action","Sport"],"summary":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","description_full":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","synopsis":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","yt_trailer_code":"l-7jFGesmJU","language":"en","mpa_rating":"","background_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg","background_image_original":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg","small_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/small-cover.jpg","medium_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/medium-cover.jpg","large_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/large-cover.jpg","state":"ok","torrents":[{"url":"https://yts.mx/torrent/download/2270F151A264149DFB894AA71B64182D9DDB779A","hash":"2270F151A264149DFB894AA71B64182D9DDB779A","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":7,"size":"1.22 GB","size_bytes":1309965025,"date_uploaded":"2016-04-25 22:36:09","date_uploaded_unix":1461616569},{"url":"https://yts.mx/torrent/download/B70549D9310B9B24DD82036BAAFCADF645D38186","hash":"B70549D9310B9B24DD82036BAAFCADF645D38186","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":4,"size":"2.62 GB","size_bytes":2813203579,"date_uploaded":"2016-04-26 05:44:56","date_uploaded_unix":1461642296}],"date_uploaded":"2016-04-25 22:36:09","date_uploaded_unix":1461616569}]}
/// @meta : {"server_time":1739549375,"server_timezone":"CET","api_version":2,"execution_time":"0 ms"}

class GeneraResponse {
  GeneraResponse({
    this.status,
    this.statusMessage,
    this.data,
    this.code,
    this.message,
  });

  GeneraResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    statusMessage = json['status_message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  String? status;
  String? code;

  String? message;

  String? statusMessage;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['status_message'] = statusMessage;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// server_time : 1739549375
/// server_timezone : "CET"
/// api_version : 2
/// execution_time : "0 ms"

/// movie_count : 65534
/// limit : 20
/// page_number : 1
/// movies : [{"id":5496,"url":"https://yts.mx/movies/wwe-tlc-tables-ladders-chairs-2015","imdb_code":"tt4610774","title":"WWE TLC Tables, Ladders & Chairs","title_english":"WWE TLC Tables, Ladders & Chairs","title_long":"WWE TLC Tables, Ladders & Chairs (2015)","slug":"wwe-tlc-tables-ladders-chairs-2015","year":2015,"rating":6.3,"runtime":171,"genres":["Action","Sport"],"summary":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","description_full":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","synopsis":"WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?","yt_trailer_code":"l-7jFGesmJU","language":"en","mpa_rating":"","background_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg","background_image_original":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg","small_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/small-cover.jpg","medium_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/medium-cover.jpg","large_cover_image":"https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/large-cover.jpg","state":"ok","torrents":[{"url":"https://yts.mx/torrent/download/2270F151A264149DFB894AA71B64182D9DDB779A","hash":"2270F151A264149DFB894AA71B64182D9DDB779A","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":7,"size":"1.22 GB","size_bytes":1309965025,"date_uploaded":"2016-04-25 22:36:09","date_uploaded_unix":1461616569},{"url":"https://yts.mx/torrent/download/B70549D9310B9B24DD82036BAAFCADF645D38186","hash":"B70549D9310B9B24DD82036BAAFCADF645D38186","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":4,"size":"2.62 GB","size_bytes":2813203579,"date_uploaded":"2016-04-26 05:44:56","date_uploaded_unix":1461642296}],"date_uploaded":"2016-04-25 22:36:09","date_uploaded_unix":1461616569}]

class Data {
  Data({
    this.movieCount,
    this.limit,
    this.pageNumber,
    this.movies,
  });

  Data.fromJson(dynamic json) {
    movieCount = json['movie_count'];
    limit = json['limit'];
    pageNumber = json['page_number'];
    if (json['movies'] != null) {
      movies = [];
      json['movies'].forEach((v) {
        movies?.add(Movies.fromJson(v));
      });
    }
  }

  int? movieCount;
  int? limit;
  int? pageNumber;
  List<Movies>? movies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['movie_count'] = movieCount;
    map['limit'] = limit;
    map['page_number'] = pageNumber;
    if (movies != null) {
      map['movies'] = movies?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 5496
/// url : "https://yts.mx/movies/wwe-tlc-tables-ladders-chairs-2015"
/// imdb_code : "tt4610774"
/// title : "WWE TLC Tables, Ladders & Chairs"
/// title_english : "WWE TLC Tables, Ladders & Chairs"
/// title_long : "WWE TLC Tables, Ladders & Chairs (2015)"
/// slug : "wwe-tlc-tables-ladders-chairs-2015"
/// year : 2015
/// rating : 6.3
/// runtime : 171
/// genres : ["Action","Sport"]
/// summary : "WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?"
/// description_full : "WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?"
/// synopsis : "WWE Tables, Ladders and Chairs invades Boston, MA with a huge event where anything is legal. In the first match, the New Day defends their WWE Tag Team championships against The Usos and The Luchadragons in an amazing ladder match. Next up, Ryback takes on Rusev in singles competition. Will Rusev's fiance, Lana, get involved? Following their matchup, Alberto Del Rio defends his United States championship against the real American, Jack Swagger, in a chairs match. In what is being called the most extreme match of the night, Team Extreme (Rhyno, Tommy Dreamer, and the Dudley Boys) take on the Wyatt Family (Bray Wyatt, Braun Strowman, Eric Rowan, and Luke Harper) in a tag team elimination tables match. To follow the destruction of the tables match, Kevin Owens defends his Intercontinental championship against the lunatic fringe, Dean Ambrose in singles competition. It's now time for some divas action as Paige takes on the defending WWE Divas champion, Charlotte, with her father, WWE Hall of Famer, Ric Flair, in her corner. Now it's time for the main event, where WWE World Heavyweight Champion defends his title against Roman Reigns in a Tables, Ladders, and Chairs match. Can Roman overcome the League of Nations and the Authority? Or will Sheamus walk out with his championship?"
/// yt_trailer_code : "l-7jFGesmJU"
/// language : "en"
/// mpa_rating : ""
/// background_image : "https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg"
/// background_image_original : "https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/background.jpg"
/// small_cover_image : "https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/small-cover.jpg"
/// medium_cover_image : "https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/medium-cover.jpg"
/// large_cover_image : "https://yts.mx/assets/images/movies/wwe_tlc_tables_ladders_chairs_2015/large-cover.jpg"
/// state : "ok"
/// torrents : [{"url":"https://yts.mx/torrent/download/2270F151A264149DFB894AA71B64182D9DDB779A","hash":"2270F151A264149DFB894AA71B64182D9DDB779A","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":7,"size":"1.22 GB","size_bytes":1309965025,"date_uploaded":"2016-04-25 22:36:09","date_uploaded_unix":1461616569},{"url":"https://yts.mx/torrent/download/B70549D9310B9B24DD82036BAAFCADF645D38186","hash":"B70549D9310B9B24DD82036BAAFCADF645D38186","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":0,"peers":4,"size":"2.62 GB","size_bytes":2813203579,"date_uploaded":"2016-04-26 05:44:56","date_uploaded_unix":1461642296}]
/// date_uploaded : "2016-04-25 22:36:09"
/// date_uploaded_unix : 1461616569

class Movies {
  Movies({
    this.id,
    this.url,
    this.imdbCode,
    this.title,
    this.titleEnglish,
    this.titleLong,
    this.slug,
    this.year,
    this.rating,
    this.runtime,
    this.genres,
    this.summary,
    this.descriptionFull,
    this.synopsis,
    this.ytTrailerCode,
    this.language,
    this.mpaRating,
    this.backgroundImage,
    this.backgroundImageOriginal,
    this.smallCoverImage,
    this.mediumCoverImage,
    this.largeCoverImage,
    this.state,
    this.torrents,
    this.dateUploaded,
    this.dateUploadedUnix,
  });

  Movies.fromJson(dynamic json) {
    id = json['id'];
    url = json['url'];
    imdbCode = json['imdb_code'];
    title = json['title'];
    titleEnglish = json['title_english'];
    titleLong = json['title_long'];
    slug = json['slug'];
    year = json['year'];
    rating = json['rating'];
    runtime = json['runtime'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    summary = json['summary'];
    descriptionFull = json['description_full'];
    synopsis = json['synopsis'];
    ytTrailerCode = json['yt_trailer_code'];
    language = json['language'];
    mpaRating = json['mpa_rating'];
    backgroundImage = json['background_image'];
    backgroundImageOriginal = json['background_image_original'];
    smallCoverImage = json['small_cover_image'];
    mediumCoverImage = json['medium_cover_image'];
    largeCoverImage = json['large_cover_image'];
    state = json['state'];
    if (json['torrents'] != null) {
      torrents = [];
      json['torrents'].forEach((v) {
        torrents?.add(Torrents.fromJson(v));
      });
    }
    dateUploaded = json['date_uploaded'];
    dateUploadedUnix = json['date_uploaded_unix'];
  }

  int? id;
  String? url;
  String? imdbCode;
  String? title;
  String? titleEnglish;
  String? titleLong;
  String? slug;
  int? year;
  double? rating;
  int? runtime;
  List<String>? genres;
  String? summary;
  String? descriptionFull;
  String? synopsis;
  String? ytTrailerCode;
  String? language;
  String? mpaRating;
  String? backgroundImage;
  String? backgroundImageOriginal;
  String? smallCoverImage;
  String? mediumCoverImage;
  String? largeCoverImage;
  String? state;
  List<Torrents>? torrents;
  String? dateUploaded;
  int? dateUploadedUnix;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['url'] = url;
    map['imdb_code'] = imdbCode;
    map['title'] = title;
    map['title_english'] = titleEnglish;
    map['title_long'] = titleLong;
    map['slug'] = slug;
    map['year'] = year;
    map['rating'] = rating;
    map['runtime'] = runtime;
    map['genres'] = genres;
    map['summary'] = summary;
    map['description_full'] = descriptionFull;
    map['synopsis'] = synopsis;
    map['yt_trailer_code'] = ytTrailerCode;
    map['language'] = language;
    map['mpa_rating'] = mpaRating;
    map['background_image'] = backgroundImage;
    map['background_image_original'] = backgroundImageOriginal;
    map['small_cover_image'] = smallCoverImage;
    map['medium_cover_image'] = mediumCoverImage;
    map['large_cover_image'] = largeCoverImage;
    map['state'] = state;
    if (torrents != null) {
      map['torrents'] = torrents?.map((v) => v.toJson()).toList();
    }
    map['date_uploaded'] = dateUploaded;
    map['date_uploaded_unix'] = dateUploadedUnix;
    return map;
  }
}

/// url : "https://yts.mx/torrent/download/2270F151A264149DFB894AA71B64182D9DDB779A"
/// hash : "2270F151A264149DFB894AA71B64182D9DDB779A"
/// quality : "720p"
/// type : "bluray"
/// is_repack : "0"
/// video_codec : "x264"
/// bit_depth : "8"
/// audio_channels : "2.0"
/// seeds : 0
/// peers : 7
/// size : "1.22 GB"
/// size_bytes : 1309965025
/// date_uploaded : "2016-04-25 22:36:09"
/// date_uploaded_unix : 1461616569

class Torrents {
  Torrents({
    this.url,
    this.hash,
    this.quality,
    this.type,
    this.isRepack,
    this.videoCodec,
    this.bitDepth,
    this.audioChannels,
    this.seeds,
    this.peers,
    this.size,
    this.sizeBytes,
    this.dateUploaded,
    this.dateUploadedUnix,
  });

  Torrents.fromJson(dynamic json) {
    url = json['url'];
    hash = json['hash'];
    quality = json['quality'];
    type = json['type'];
    isRepack = json['is_repack'];
    videoCodec = json['video_codec'];
    bitDepth = json['bit_depth'];
    audioChannels = json['audio_channels'];
    seeds = json['seeds'];
    peers = json['peers'];
    size = json['size'];
    sizeBytes = json['size_bytes'];
    dateUploaded = json['date_uploaded'];
    dateUploadedUnix = json['date_uploaded_unix'];
  }

  String? url;
  String? hash;
  String? quality;
  String? type;
  String? isRepack;
  String? videoCodec;
  String? bitDepth;
  String? audioChannels;
  int? seeds;
  int? peers;
  String? size;
  int? sizeBytes;
  String? dateUploaded;
  int? dateUploadedUnix;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['hash'] = hash;
    map['quality'] = quality;
    map['type'] = type;
    map['is_repack'] = isRepack;
    map['video_codec'] = videoCodec;
    map['bit_depth'] = bitDepth;
    map['audio_channels'] = audioChannels;
    map['seeds'] = seeds;
    map['peers'] = peers;
    map['size'] = size;
    map['size_bytes'] = sizeBytes;
    map['date_uploaded'] = dateUploaded;
    map['date_uploaded_unix'] = dateUploadedUnix;
    return map;
  }
}
