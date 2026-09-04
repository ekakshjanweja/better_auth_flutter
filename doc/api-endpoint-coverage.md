# API Endpoint Coverage

`BetterAuthClient` covers the Better Auth route surface available from the public API route reference used during implementation.

## Coverage Source

- Verified against the live better-auth 1.7.2 OpenAPI schema generated from
  the configured `vigilant-spoon` backend instance
  (`GET /api/auth/open-api/generate-schema` — the 1.7 replacement for the
  removed `/reference/openapi.json`; `/reference` now serves Scalar HTML).
- 121 server (method, path) pairs are all covered (122 client pairs — the
  extra one is `GET /open-api/generate-schema` itself, which the schema
  generator hides from its own output but serves live). See "1.7 changes"
  below. Out of scope by design: SSO/SAML/SCIM, MCP, and the
  OAuth-provider plugin family, which this package does not target.

## 1.7 changes applied

- Renamed: `POST /forget-password` → `POST /request-password-reset`
  (`forgotPassword`); `GET /reference/openapi.json` →
  `GET /open-api/generate-schema` (`openApiReference`).
- Removed: `POST /set-password` (no 1.7 replacement; method deleted —
  use the reset-password flow).
- Method change: `POST /passkey/generate-authenticate-options` → `GET`
  (passkey extraction to `@better-auth/passkey`).
- New selectors: `POST /unlink-account` requires the local `accountId`;
  `POST /get-access-token` / `/refresh-token` take `accountId` or
  `useAccountCookie` (`providerId` selectors removed).
- New endpoints covered: `GET /account-info`, `POST /update-session`,
  `GET /device`, `GET /error`, `POST /callback/{provider}`,
  `GET /organization/get-organization`,
  `GET /organization/get-active-member-role`, `POST /delete-anonymous-user`,
  `POST /email-otp/{change-email,check-verification-otp,request-email-change,request-password-reset}`,
  `GET /admin/get-user`, `POST /admin/update-user`.
- New behavior surfaced: `two-factor/enable` takes `method: otp | totp`
  and returns it (`totpURI`/backup codes only for `totp`); magic-link and
  email-OTP sign-in can clear unproven credentials on first use.

## Uncovered Endpoints

No known endpoints from the public Better Auth API route list are intentionally uncovered.

## Notes

- Plugin/admin endpoints are covered with flexible request bodies and dynamic responses because schemas can vary by Better Auth server configuration and enabled plugins.
- Core email, session, password, verification, and account endpoints use existing typed models where available.
- Re-run coverage against the local OpenAPI document once the local docs server is available.
