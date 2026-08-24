## Summary

- What app / cask is being added or updated?
- Release tag and asset URL

## Checklist

- [ ] Release zip exists and URL matches the cask
- [ ] `sha256` computed from the published asset (`shasum -a 256`)
- [ ] `app` path matches zip contents (top-level `.app`)
- [ ] Caveats note runtime deps and Gatekeeper if unsigned
- [ ] README updated if this is a new app
