# ADR-004: KEDA Scaling on Dossier Builds

- Status: Proposed
- Date: 2026-09-05

Dossier workers scale on Kafka lag of `cert.dossier.built`; cooldown 300 s.
