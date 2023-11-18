List<Story> stories = [
  Story(
    url: "videos/blub.mp4",
    media: MediaType.video,
  ),
  Story(
    url: "images/10.jpg",
    media: MediaType.image,
  ),
  Story(
    url: "images/5.jpg",
    media: MediaType.image,
  ),
  Story(
    url: "videos/galaxy.mp4",
    media: MediaType.video,
  ),
  Story(
    url: "videos/smoke.mp4",
    media: MediaType.video,
  ),
];

enum MediaType {
  image,
  video,
}

class Story {
  String url;
  MediaType media;

  Story({
    required this.url,
    required this.media,
  });
}
