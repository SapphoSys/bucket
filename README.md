# Chloe's Scoop Bucket

[![Tests](https://github.com/solelychloe/bucket/actions/workflows/ci.yml/badge.svg)](https://github.com/solelychloe/bucket/actions/workflows/ci.yml) [![Excavator](https://github.com/solelychloe/bucket/actions/workflows/excavator.yml/badge.svg)](https://github.com/solelychloe/bucket/actions/workflows/excavator.yml)

This [Scoop](https://scoop.sh) bucket contains apps that I use daily.

How do I install these manifests?
---------------------------------

To add this bucket, run `scoop bucket add solely-bucket https://github.com/solelychloe/bucket`. To install, do `scoop install <manifest>`.

ALternatively, run `irm https://raw.githubusercontent.com/solelychloe/bucket/master/solelyInstall.ps1 | iex` in PowerShell 5.1+ to install all the apps in this bucket automatically.

To remove this bucket, run `scoop bucket rm solely-bucket`.

How do I contribute new manifests?
----------------------------------

To make a new manifest contribution, please read the [Contributing Guide](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md).
