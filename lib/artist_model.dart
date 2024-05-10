class Artist {
  final List<Items>? items;
  final int? count;

  Artist({
    this.items,
    this.count,
  });

  Artist.fromJson(Map<String, dynamic> json)
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
  final String? name;
  final List<String>? aliases;
  final dynamic imageUrl;
  final List<String>? links;
  final dynamic policyRepost;
  final bool? policyCredit;
  final bool? policyAi;

  Items({
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

  Items.fromJson(Map<String, dynamic> json)
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