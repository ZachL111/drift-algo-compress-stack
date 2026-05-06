# Drift Algo Compress Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 113 | watch |
| stress | search depth | 163 | ship |
| edge | boundary pressure | 191 | ship |
| recovery | complexity | 247 | ship |
| stale | input width | 216 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around search depth and complexity.
