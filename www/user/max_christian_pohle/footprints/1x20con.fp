# =====================================================================================================
# author: Max Christian Pohle, 2010
# email: gedasymbols@wireme.de
# url: http://www.entwicklerseite.de/
# dist-license: GPL3, http://www.gnu.org/licenses/gpl-3.0.txt
# use-license: unlimited
# 
# *SYNTAX*
# Element[...](...) ===================================================================================
#
# [SFlags]
# symbolic flags like ["", "edge2", "square", "octagon", "onsolder", "showname", "hole"]
#
# [Name, Value, Desc]
# leave blank (filled out automatically by gsch2pcb)
#
# [MX,MY]
# elements source-X, sourceY (source of all relative coordinates)
#
# [TX,TY]
# initial text-position for values Name,Value,Desc
#
# [TDir]
# relative text-direction ["0"->0deg. (horizontal); "1"->90deg., "2"->180deg., "3"->240deg.]
#
# [TScale]
# text-scaling (percentage of default-font), leave 100 if applicable
#
# [TSFlags]
# leave blank (don't know what )
#
# =====================================================================================================
#       SFlags    "Desc" "Name" "Value"  MX      MY     TX      TY     TDir  TScale TSFlags]
Element[""        ""     ""     ""       10      10     10000   205000  1     100   "showname"]
(
  # ===================================================================================================
  # Pin[...]
  #     rX       rY       Thickness  Clearance   Mask      Drill     "Name"          "Number" SFlags]
    Pin[5000       5000   5000       1500        1000      2000      ""              "1"       "square"]
    Pin[5000      15000   5000       1500        1000      2000      ""              "2"       ""]
    Pin[5000      25000   5000       1500        1000      2000      ""              "3"       ""]
    Pin[5000      35000   5000       1500        1000      2000      ""              "4"       ""]
    Pin[5000      45000   5000       1500        1000      2000      ""              "5"       ""]
    Pin[5000      55000   5000       1500        1000      2000      ""              "6"       ""]
    Pin[5000      65000   5000       1500        1000      2000      ""              "7"       ""]
    Pin[5000      75000   5000       1500        1000      2000      ""              "8"       ""]
    Pin[5000      85000   5000       1500        1000      2000      ""              "9"       ""]
    Pin[5000      95000   5000       1500        1000      2000      ""              "10"      ""]
    Pin[5000     105000   5000       1500        1000      2000      ""              "11"      ""]
    Pin[5000     115000   5000       1500        1000      2000      ""              "12"      ""]
    Pin[5000     125000   5000       1500        1000      2000      ""              "13"      ""]
    Pin[5000     135000   5000       1500        1000      2000      ""              "14"      ""]
    Pin[5000     145000   5000       1500        1000      2000      ""              "15"      ""]
    Pin[5000     155000   5000       1500        1000      2000      ""              "16"      ""]
    Pin[5000     165000   5000       1500        1000      2000      ""              "17"      ""]
    Pin[5000     175000   5000       1500        1000      2000      ""              "18"      ""]
    Pin[5000     185000   5000       1500        1000      2000      ""              "19"      ""]
    Pin[5000     195000   5000       1500        1000      2000      ""              "20"      ""]
  # ===================================================================================================
  # ElementLine[...]
  #             rX1         rY1        rX2         rY2       Thickness
    ElementLine[0           0          10000       0          1020]
    ElementLine[10000       0          10000       200000     1020]
    ElementLine[10000       200000     0           200000     1020]
    ElementLine[0           200000     0           0          1020]
    # 'first pin'-rect...
    ElementLine[1850        1850       8150        1850       1020]
    ElementLine[8150        1850       8150        8150       1020]
    ElementLine[8150        8150       1850        8150       1020]
    ElementLine[1850        8150       1850        1850       1020]
  # ===================================================================================================
  # ElementArc[...]
  # to make it look nicer - draw some arcs around the pins
  # notice: the values are directly copy&pasted from the pins (values are the same for X and Y)
  #
  #            rX       rY            Width       Height    StartAngle       DeltaAngle       Thickness
    #ElementArc[5000       5000        3000        3000      0                360             540]
    ElementArc[5000      15000        3000        3000      0                360             540]
    ElementArc[5000      25000        3000        3000      0                360             540]
    ElementArc[5000      35000        3000        3000      0                360             540]
    ElementArc[5000      45000        3000        3000      0                360             540]
    ElementArc[5000      55000        3000        3000      0                360             540]
    ElementArc[5000      65000        3000        3000      0                360             540]
    ElementArc[5000      75000        3000        3000      0                360             540]
    ElementArc[5000      85000        3000        3000      0                360             540]
    ElementArc[5000      95000        3000        3000      0                360             540]
    ElementArc[5000     105000        3000        3000      0                360             540]
    ElementArc[5000     115000        3000        3000      0                360             540]
    ElementArc[5000     125000        3000        3000      0                360             540]
    ElementArc[5000     135000        3000        3000      0                360             540]
    ElementArc[5000     145000        3000        3000      0                360             540]
    ElementArc[5000     155000        3000        3000      0                360             540]
    ElementArc[5000     165000        3000        3000      0                360             540]
    ElementArc[5000     175000        3000        3000      0                360             540]
    ElementArc[5000     185000        3000        3000      0                360             540]
    ElementArc[5000     195000        3000        3000      0                360             540]
  # ===================================================================================================
)
# =====================================================================================================
