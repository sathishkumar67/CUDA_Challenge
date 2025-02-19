🚀Objectives for Day 1:
    1. Setup & Verify CUDA Installation
    2. Write & Run Your First CUDA Kernel
    3. Understand CUDA Thread Hierarchy


# Threads
    1. smallest unit of execution
    2. each thread executes the same kernel function but processes different data
    3. each thread has their own thread ID, which tells which part of the data they should work on

# Thread Blocks
    1. a block is a collection of threads that execute together and share same resources
    2. synchronization should be used(__syncthreads()). It helps all the threads to reach the synchronization point before any thread proceeds further.
    3. prevents race conditions during read/write operations in kernel functions where some threads read the data from shared memory before other threads have written the data in the shared memory.
    4. processing time for each thread varies. so when using read/write operations the all threads should reach the sync point before proceeding further
    5. only works within a block
    6. when if statement is used the thread may not reach the sync point

# Grid
    1. collection of blocks
    2. each block in grid can be identified using block index(blockIdx)
    3. launches the kernel function with grid of blocks

# Indexing Threads
    1. threadIdx.x, threadIdx.y, threadIdx.z - identify a thread inside a block
    2. blockIdx.x, blockIdx.y, blockIdx.z - identify a block inside a grid
    3. blockDim.x, blockDim.y, blockDim.z - no of threads per block
    4. gridDim.x, gridDim.y, gridDim.z - no of blocks per grid