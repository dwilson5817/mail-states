---
# INCLUDE STATES
# Include required states.  Some states included here may be from Salt formulas.  Check README.md to see which formulas
# are required.  A dot before an SLS name indicates the SLS file exists in the current directory.
include:
  - docker
  - docker.compose
  - .files
  - .backup
