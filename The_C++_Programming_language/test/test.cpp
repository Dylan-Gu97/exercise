#include <iostream>
using namespace std;
typedef void(*Fun)(void);

class Base {
	public:	
		virtual void f(){ cout << "Base::f()" << endl; }
		virtual void g(){ cout << "Base::g()" << endl; }
		virtual void h(){ cout << "Base::h()" << endl; }
};

int main(){
	Base b;
	Fun pFun = NULL;

	cout << "the address of virtual function table:" << (int*)(&b) << endl;
	cout << "the first address of virtual function table " << (int*)*(int*)(&b) << endl;

	pFun = (Fun)*((int*)*(int*)(&b));
	
}
