#include <iostream>

void matrixMultiplication(int A[][3], int B[][3], int C[][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            C[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

int main() {
    int A[3][3] = {{1, 2, 3},
                   {4, 5, 6},
                   {7, 8, 9}};

    int B[3][3] = {{10, 11, 12},
                   {13, 14, 15},
                   {16, 17, 18}};

    int C[3][3];

    matrixMultiplication(A, B, C);

    // Displaying the result matrix C
    std::cout << "Resultant Matrix C:" << std::endl;
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            std::cout << C[i][j] << " ";
        }
        std::cout << std::endl;
    }

    return 0;
}
