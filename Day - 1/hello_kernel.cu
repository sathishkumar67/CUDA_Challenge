#include <stdio.h>

__global__ void helloFromGPU() {
    printf("Hello from GPU! Thread: %d, Block: %d\n", threadIdx.x, blockIdx.x);
}

int main() {
    helloFromGPU<<<2, 5>>>();  // Launch kernel with 2 blocks and 5 threads each
    cudaDeviceSynchronize();  // Ensure all GPU prints complete
    return 0;
}
