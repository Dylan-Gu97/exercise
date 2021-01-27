#include <iostream>
template<class T>
class linearList{
public:
	virtual ~linearList(){};
	virtual bool empty() const = 0;
		//return true, if and only if linearList is empty
	virtual int size() const = 0;
		//return the size of the element of the linearList
	virtual T& get(int theIndex) const = 0;
		//return the element of the index equal the theIndex
	virtual int indexOf(T& theElement) const = 0;
		//return the index of the required element appearance the first time
	virtual void erase(int theIndex) = 0;
		//erase the element of the index equal the theIndex
	virtual void insert(int theIndex,const T& theElement) = 0;
		//insert the element equal theElement in the position of the index equal the theIndex
	virtual void output(ostream& out) const = 0;
		//output the linearList to the ostream 
}
