/// OAuth providers Better Auth supports out of the box.
///
/// For a provider configured through the `genericOAuth` plugin, or one not
/// listed here, pass its id to `signInSocialRaw` instead of this enum.
enum SocialProvider {
  apple,
  discord,
  dropbox,
  facebook,
  github,
  gitlab,
  google,
  huggingface,
  kick,
  line,
  linkedin,
  microsoft,
  notion,
  reddit,
  roblox,
  spotify,
  tiktok,
  twitch,
  twitter,
  vk,
  zoom;

  /// The wire id Better Auth expects (matches the enum name).
  String get id => name;
}
