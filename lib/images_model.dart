class ArtistImages {
  final List<Items>? items;
  final int? count;

  ArtistImages({
    this.items,
    this.count,
  });

  ArtistImages.fromJson(Map<String, dynamic> json)
      : items = (json['items'] as List?)?.map((dynamic e) => Items.fromJson(e as Map<String,dynamic>)).toList(),
        count = json['count'] as int?;

  Map<String, dynamic> toJson() => {
    'items' : items?.map((e) => e.toJson()).toList(),
    'count' : count
  };
}

class Items {
  final int? id;
  final String? idV2;
  final String? imageUrl;
  final String? sampleUrl;
  final int? imageSize;
  final int? imageWidth;
  final int? imageHeight;
  final int? sampleSize;
  final int? sampleWidth;
  final int? sampleHeight;
  final String? source;
  final dynamic sourceId;
  final String? rating;
  final String? verification;
  final String? hashMd5;
  final String? hashPerceptual;
  final List<int>? colorDominant;
  final List<dynamic>? colorPalette;
  final dynamic duration;
  final bool? isOriginal;
  final bool? isScreenshot;
  final bool? isFlagged;
  final bool? isAnimated;
  final Artist? artist;
  final List<dynamic>? characters;
  final List<Tags>? tags;
  final double? createdAt;
  final double? updatedAt;

  Items({
    this.id,
    this.idV2,
    this.imageUrl,
    this.sampleUrl,
    this.imageSize,
    this.imageWidth,
    this.imageHeight,
    this.sampleSize,
    this.sampleWidth,
    this.sampleHeight,
    this.source,
    this.sourceId,
    this.rating,
    this.verification,
    this.hashMd5,
    this.hashPerceptual,
    this.colorDominant,
    this.colorPalette,
    this.duration,
    this.isOriginal,
    this.isScreenshot,
    this.isFlagged,
    this.isAnimated,
    this.artist,
    this.characters,
    this.tags,
    this.createdAt,
    this.updatedAt,
  });

  Items.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        idV2 = json['id_v2'] as String?,
        imageUrl = json['image_url'] as String?,
        sampleUrl = json['sample_url'] as String?,
        imageSize = json['image_size'] as int?,
        imageWidth = json['image_width'] as int?,
        imageHeight = json['image_height'] as int?,
        sampleSize = json['sample_size'] as int?,
        sampleWidth = json['sample_width'] as int?,
        sampleHeight = json['sample_height'] as int?,
        source = json['source'] as String?,
        sourceId = json['source_id'],
        rating = json['rating'] as String?,
        verification = json['verification'] as String?,
        hashMd5 = json['hash_md5'] as String?,
        hashPerceptual = json['hash_perceptual'] as String?,
        colorDominant = (json['color_dominant'] as List?)?.map((dynamic e) => e as int).toList(),
        colorPalette = json['color_palette'] as List?,
        duration = json['duration'],
        isOriginal = json['is_original'] as bool?,
        isScreenshot = json['is_screenshot'] as bool?,
        isFlagged = json['is_flagged'] as bool?,
        isAnimated = json['is_animated'] as bool?,
        artist = (json['artist'] as Map<String,dynamic>?) != null ? Artist.fromJson(json['artist'] as Map<String,dynamic>) : null,
        characters = json['characters'] as List?,
        tags = (json['tags'] as List?)?.map((dynamic e) => Tags.fromJson(e as Map<String,dynamic>)).toList(),
        createdAt = json['created_at'] as double?,
        updatedAt = json['updated_at'] as double?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'id_v2' : idV2,
    'image_url' : imageUrl,
    'sample_url' : sampleUrl,
    'image_size' : imageSize,
    'image_width' : imageWidth,
    'image_height' : imageHeight,
    'sample_size' : sampleSize,
    'sample_width' : sampleWidth,
    'sample_height' : sampleHeight,
    'source' : source,
    'source_id' : sourceId,
    'rating' : rating,
    'verification' : verification,
    'hash_md5' : hashMd5,
    'hash_perceptual' : hashPerceptual,
    'color_dominant' : colorDominant,
    'color_palette' : colorPalette,
    'duration' : duration,
    'is_original' : isOriginal,
    'is_screenshot' : isScreenshot,
    'is_flagged' : isFlagged,
    'is_animated' : isAnimated,
    'artist' : artist?.toJson(),
    'characters' : characters,
    'tags' : tags?.map((e) => e.toJson()).toList(),
    'created_at' : createdAt,
    'updated_at' : updatedAt
  };
}

class Artist {
  final int? id;
  final String? idV2;
  final String? name;
  final List<String>? aliases;
  final dynamic imageUrl;
  final List<String>? links;
  final dynamic policyRepost;
  final bool? policyCredit;
  final bool? policyAi;

  Artist({
    this.id,
    this.idV2,
    this.name,
    this.aliases,
    this.imageUrl,
    this.links,
    this.policyRepost,
    this.policyCredit,
    this.policyAi,
  });

  Artist.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        idV2 = json['id_v2'] as String?,
        name = json['name'] as String?,
        aliases = (json['aliases'] as List?)?.map((dynamic e) => e as String).toList(),
        imageUrl = json['image_url'],
        links = (json['links'] as List?)?.map((dynamic e) => e as String).toList(),
        policyRepost = json['policy_repost'],
        policyCredit = json['policy_credit'] as bool?,
        policyAi = json['policy_ai'] as bool?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'id_v2' : idV2,
    'name' : name,
    'aliases' : aliases,
    'image_url' : imageUrl,
    'links' : links,
    'policy_repost' : policyRepost,
    'policy_credit' : policyCredit,
    'policy_ai' : policyAi
  };
}

class Tags {
  final int? id;
  final String? idV2;
  final String? name;
  final String? description;
  final String? sub;
  final bool? isNsfw;

  Tags({
    this.id,
    this.idV2,
    this.name,
    this.description,
    this.sub,
    this.isNsfw,
  });

  Tags.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        idV2 = json['id_v2'] as String?,
        name = json['name'] as String?,
        description = json['description'] as String?,
        sub = json['sub'] as String?,
        isNsfw = json['is_nsfw'] as bool?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'id_v2' : idV2,
    'name' : name,
    'description' : description,
    'sub' : sub,
    'is_nsfw' : isNsfw
  };
}