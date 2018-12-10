# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest
import leypa_nim_packagespkg/submodule

proc posOrNeg(num: int): string =
    result = case num:
      of low(int).. -1:
        "Red"
      of 1..high(int):
        "Green"
      else:
        "zero"
 
proc main() {.exportwasm.}=
    echo posOrNeg(0)
