#include <iostream>
#include <string>

using namespace std;

class UrbanOasis {
private:
    string address;
    int numUnits;
    double price; 

public:
    UrbanOasis(string addr, int units, double p) {
        address = addr;
        numUnits = units;
        price = p;
    }

    void setAddress(string addr) {
        address = addr;
    }

    void setNumUnits(int units) {
        numUnits = units;
    }

    void setPrice(double p) {
        price = p;
    }

    string getAddress() {
        return address;
    }

    int getNumUnits() {
        return numUnits;
    }

    double getPrice() {
        return price;
    }

    double calculatePricePerUnit() {
        return price / numUnits;
    }

    void printDetails() {
        cout << "Address: " << address << endl;
        cout << "Number of Units: " << numUnits << endl;
        cout << "Price: " << price << endl;
    }
};

int main() {
    UrbanOasis oasis("123 Main St.", 100, 9000000);
    oasis.printDetails();
    return 0;
}