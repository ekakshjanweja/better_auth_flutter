/// Organizations: teams, members, roles, and invitations.
///
/// Requires the `organization()` plugin on your Better Auth server. Importing
/// this library adds an `organization` getter to [BetterAuthClient].
///
/// After `setActive`, call `BetterAuthFlutter.refreshSession()` if you rely on
/// `Session.activeOrganizationId` — the cached session is otherwise stale until
/// the next fetch.
library;

export "../src/plugins/organization/organization_plugin.dart";
