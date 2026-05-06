# drift-algo-compress-stack

`drift-algo-compress-stack` explores algorithms with a small OCaml codebase and local fixtures. The technical goal is to package an OCaml local lab for compress analysis with transition tables, invalid-transition tests, and documented operating limits.

## Why It Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Drift Algo Compress Stack Review Notes

`recovery` and `baseline` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Features

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/drift-algo-compress-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `input width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `recovery` is the high score at 247; `baseline` is the low score at 113.

## Limitations And Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
