# Package

version       = "0.1.0"
author        = "demotomohiro"
description   = "Math library related to integer division for Nim language"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 1.4.8"

task docgen, "Generate html documents":
  selfExec "doc --outdir:htmldocs --index:on src/divmath.nim"
  selfExec "buildIndex -o:htmldocs/theindex.html htmldocs"
