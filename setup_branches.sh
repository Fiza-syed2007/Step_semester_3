#!/bin/bash
# Run this INSIDE a freshly cloned copy of your Step_semester_3 GitHub repo.
# It creates the develop branch and feature/session_3 branch with the
# encapsulation package already in place, per the branching guide.

set -e

# 1. Make sure main only has the README (already true if you followed Step 2/4).
git checkout main

# 2. Create develop from main, then clear it down to an empty skeleton.
git checkout -b develop
# (Create your empty IDE project here manually, or leave the folder empty.)
git add -A
git commit -m "Initialize empty develop skeleton" --allow-empty
git push -u origin develop

# 3. Create feature/session_3 from develop.
git checkout develop
git checkout -b feature/session_3

# Copy the encapsulation package (src/) from this download into the repo root
# at this point, then:
git add -A
git commit -m "Session 3: Encapsulation & Access Control - class and assignment problems"
git push -u origin feature/session_3

echo "Done. Branches created: main, develop, feature/session_3"
