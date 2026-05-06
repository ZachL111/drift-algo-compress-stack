# Review Journal

The review surface for `drift-algo-compress-stack` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 113, lane `watch`
- `stress`: `search depth`, score 163, lane `ship`
- `edge`: `boundary pressure`, score 191, lane `ship`
- `recovery`: `complexity`, score 247, lane `ship`
- `stale`: `input width`, score 216, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
