#include <iostream>
#include <vector>
#define N 5
using namespace std;
int main() {
	std::vector<int> array;
	int				 number = N, n = 0;
	array.push_back(number);
	for (int i = 0; i < number; ++i) {
		cin >> n;
		array.push_back(n);
	}
	for (int i = 1; i < array.size() - 1; i++) {
		for (int j = i; j < array.size(); j++) {
			if (array[i] > array[j]) swap(array[i], array[j]);
		}
	}
}