# homebrew-platform
플랫폼 팀에서 개발한 툴일 제공하는 homebrew

## Tap validation

GitHub Actions runs a fresh `brew tap` against each pull request's checkout.
Developer mode is disabled so Homebrew validates every formula across its
OS/architecture matrix, including platforms without release binaries.

A platform-specific formula must still define a base URL and checksum so
Homebrew can load its metadata. Use `depends_on :macos` or an OS-scoped
`depends_on arch:` requirement to reject unsupported installations. Keep empty
placeholder files out of `Formula/`, and match each formula's class name to its
filename.
