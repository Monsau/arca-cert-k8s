# incident Runbook — arca-cert-k8s

Applies the `incident` procedure from the module repository (`arca-cert/docs/runbooks/incident.md`)
to the Kubernetes deployment:

1. Work through the module runbook first.
2. For rollout actions, use `kubectl apply -k overlays/<env>` at a pinned revision.
3. Verify pods, probes and ServiceMonitor targets before closing.
4. Record every action in the incident/evidence timeline.
