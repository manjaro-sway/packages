this is a poc for an event driven manjaro repo.

1. a repo containing a PKGBUILD sends a dispatch event to the packages repo
2. the dispatch has a payload like this:
```
{ "repository": "${{ github.repository }}", "sha": "${{ github.sha }}"}
```
3. the repo sequentially builds the packages by checking out the repo on the given ref
4. `repo-add` and checks it in using git-lfs
5. the repo is published via github pages

Tricky:

- github does not yet support limiting the concurrency. this could lead to multiple builds and race conditions.
