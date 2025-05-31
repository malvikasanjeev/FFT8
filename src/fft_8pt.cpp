#include "fft8_IP.h"

const int rev8[FFT_SIZE] = {0, 4, 2, 6, 1, 5, 3, 7};

// twiddle factors
const Complex W[FFT_SIZE / 2] = {
    Complex(1.0, 0.0),
    Complex(0.7071067811865476, -0.7071067811865475),
    Complex(0.0, -1.0),
    Complex(-0.7071067811865476, -0.7071067811865475)
};

void bit_reverse(Complex dataIn[FFT_SIZE], Complex dataOut[FFT_SIZE]) {
    for (int i = 0; i < FFT_SIZE; i++) {
        dataOut[i] = dataIn[rev8[i]];
    }
}
// butterfly stages
void bfs1(Complex FFT_input[FFT_SIZE], Complex temp1[FFT_SIZE]) {
    for (int i = 0; i < FFT_SIZE; i += 2) {
        #pragma HLS PIPELINE II = 1
        temp1[i] = FFT_input[i] + FFT_input[i + 1];
        temp1[i + 1] = FFT_input[i] - FFT_input[i + 1];
    }
}
void bfs2(Complex temp1[FFT_SIZE], Complex temp2[FFT_SIZE]) {
    for (int i = 0; i < FFT_SIZE; i += 4) {
        for (int j = 0; j < 2; ++j) {
            #pragma HLS PIPELINE II = 1
            temp2[i + j] = temp1[i + j] + W[2 * j] * temp1[i + j + 2];
            temp2[i + 2 + j] = temp1[i + j] - W[2 * j] * temp1[i + j + 2];
        }
    }
}
void bfs3(Complex temp2[FFT_SIZE], Complex FFT_output[FFT_SIZE]) {
    for (int i = 0; i < FFT_SIZE / 2;  i++) {
        #pragma HLS PIPELINE II =1
        FFT_output[i] = temp2[i] + W[i] * temp2[i + 4];
        FFT_output[i + 4] = temp2[i] - W[i] * temp2[i + 4];
    }
}
void fft_8pt(hls::stream<axis_data> &in_stream, hls::stream<axis_data> &out_stream) {
	
    #pragma HLS INTERFACE axis register both port=in_stream
	#pragma HLS INTERFACE axis register both port=out_stream
	#pragma HLS INTERFACE ap_ctrl_none port=return


	Complex buffer[FFT_SIZE];
	Complex temp1[FFT_SIZE];
	Complex temp2[FFT_SIZE];
	axis_data local_stream;


	for (int i = 0; i < FFT_SIZE; i++) {
		#pragma HLS PIPELINE II= 1
		local_stream = in_stream.read();
		buffer[i] = local_stream.data;
	}


	Complex reversed_buffer[FFT_SIZE];
	bit_reverse(buffer, reversed_buffer);


	bfs1(reversed_buffer, temp1);
    bfs2(temp1, temp2);
    Complex FFT_output[FFT_SIZE];
	bfs3(temp2, FFT_output);

	// Writing the output buffer to the stream
	for (int i = 0; i < FFT_SIZE; i++) {
		#pragma HLS PIPELINE II =1
		local_stream.data = FFT_output[i];
		local_stream.last = (i == FFT_SIZE - 1);
		out_stream.write(local_stream);
	}
}

