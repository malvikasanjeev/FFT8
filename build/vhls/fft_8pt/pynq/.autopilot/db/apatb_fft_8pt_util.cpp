#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_12__ {char data[12];};
extern "C" void fpga_fifo_push_12(__cosim_T_12__* val, hls::stream<__cosim_T_12__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_12(__cosim_T_12__* val, hls::stream<__cosim_T_12__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_12(hls::stream<__cosim_T_12__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_12(hls::stream<__cosim_T_12__>* fifo) {
  return fifo->exist();
}
