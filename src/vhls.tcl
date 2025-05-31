
source common.tcl

set projName fft_8pt
set srcFiles [ list "fft_8pt.cpp" ]
set tbFiles  [ list "fft8_IP_tb.cpp"]

set desc "N-point Pipelined FFT with streaming data"
set version "1.0"

setupProj $projName $srcFiles $tbFiles
synthAndExport $desc $version

exit


