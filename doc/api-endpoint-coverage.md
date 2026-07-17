# API Endpoint Coverage

`BetterAuthClient` covers the Better Auth route surface available from the public API route reference used during implementation.

## Coverage Source

- Local docs requested: `http://localhost:8000/api/auth/reference#tag/default`
- Local OpenAPI attempted: `http://localhost:8000/api/auth/reference/openapi.json`
- Result: localhost port `8000` refused the connection from this workspace, so exact local schema comparison was not possible.

## Uncovered Endpoints

No known endpoints from the public Better Auth API route list are intentionally uncovered.

## Notes

- Plugin/admin endpoints are covered with flexible request bodies and dynamic responses because schemas can vary by Better Auth server configuration and enabled plugins.
- Core email, session, password, verification, and account endpoints use existing typed models where available.
- Re-run coverage against the local OpenAPI document once the local docs server is available.
