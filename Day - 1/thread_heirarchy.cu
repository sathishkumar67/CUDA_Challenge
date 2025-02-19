#include <stdio.h>

__global__ void printThreadInfo() {
    int idx = threadIdx.x + blockIdx.x * blockDim.x;
    printf("Thread ID: %d, Block ID: %d, Block Dim: %d\n", idx, blockIdx.x, blockDim.x);
    __syncthreads();
}


int main() {
    int blocks, threadsPerBlock;
    blocks = 2;
    threadsPerBlock = 4;
    printThreadInfo<<<blocks, threadsPerBlock>>>();
    cudaDeviceSynchronize();
    return 0;
}