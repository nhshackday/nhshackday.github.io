---
hackday: 30-cardiff
title: ALAC-a-zam
summary: Wheelchair referrals are slow and inconsistent. ALAC-a-zam parses NHS PDF
  forms, applies expert clinical rules via Bayesian inference, and recommends chair
  specification and urgency summarised by LLM with full transparency in an accessible
  web app.
thumbnail: alac-a-zam.jpg
team:
- Heledd Jubb
- Daryl Johns
- Ben Morris
- Prem Jha
- Chae Hyun Kim
- Artin Abdoullahi Mahavi
- Greg Knowles
- Joe Liu
- Rachel Lindley
about: "We selected a problem proposed by an Occupational Therapist (OT) in the Artificial
  Limb and Appliances Centre (ALAC), who suggested that wheelchair referrals are unnecessarily
  long and onerous to review. Their team spends half a day each working week reviewing
  them, often finding errors. This introduces costs and time wastage for a low-complexity
  decision on referrals. We chose to develop a decision-support tool using artificial
  intelligence (AI) to automate this, while ensuring that the final referral is accurately
  completed by a trained OT. \n\nWe built a web application that accepts the existing
  NHS ALAC screening form as a PDF, automatically extracts and validates clinical
  fields — from patient measurements and diagnoses to home-environment factors like
  door widths and turning circles. These fields feed into a Bayesian network developed
  with clinical input, encoding hard rules (such as seizure history prohibiting powered
  equipment, or bariatric thresholds) alongside probabilistic inference to recommend
  wheelchair type, size, modifications, and urgency. This ensures the recommendation
  is interpretable and deterministic. A Large Language Model (LLM) layer then generates
  transparent clinical reasoning, explaining exactly which rules and evidence led
  to each recommendation. The entire interface was built to WCAG AA accessibility
  standards, including screen reader support and keyboard navigation.\n\nInstead of
  half a day spent manually reviewing referral forms, an OT can upload a PDF and receive
  a structured, evidence-based recommendation in seconds — one they can review, challenge,
  and sign off on with confidence, because every step of the reasoning is visible.
  Scale that across wheelchair services nationally, and you're returning thousands
  of clinical hours per year to direct patient care, reducing errors in a process
  where mistakes mean patients get the wrong chair or wait longer than they should.
  The tool won't replace the clinician but will give them a head start, so their expertise
  is spent on judgment, not paperwork."
links:
  website: https://referral-nhs-management.netlify.app/
  presentation: https://www.canva.com/design/DAHElFr5S_k/QEyecJ-kjP982SaGXDD3qg/view
  code:
  - https://github.com/HALP-Cardiff/NHS_Referral_Management
  video: https://youtu.be/4ywtHJiCazQ
rank-panel: 2
rank-community: 3
---