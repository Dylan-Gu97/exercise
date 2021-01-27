#include "List.h"
#include "err.h"
#include "arrayList.h"
#include <iostream>
#include <string>
#include <algorithm>
#include <iterator>
using namespace std;

template <class T>
void changeLength1D(T*& a, int oldLength, int newLength){
	//change the 1 dim array alloced used to store the element of linear list 
	//in the position of parament: a, from the oldLength to the newLength
	//a: represent the position
	//for two situatuion (change the array for longer or shorter) all valid  
	if (newLength < 0)
		throw illegalParamenterValue("new length must be >= 0");
	
	T* temp = new T[newLength];				//alloc the new room
	int number = min(oldLength, newLength);	//the old length
	copy(a, a + number, temp);				//copy from the old to the new
	delete [] a;							//delete the old room
	a = temp;
}

template <class T>
arrayList<T>::arrayList(int initialCapacity){
	//use the parament of initialCapacity to alloc the initial room for
	//the 1 dim array, use the function new to dynamicly add or decrease the 
	//room of the linearList 
	if (initialCapacity < 1){
		ostringstream s;
		s << "The initial capacity = "<< initialCapacity << "Must be > 0";
		throw illegalParamenterValue(s.str());
	}
	arrayLength = initialCapacity; 	
	//initial the length of 1 dim array used to store the linear list
	element = new T[arrayLength];	
	//alloc the dynamic array for the linearList
	listSize = 0;					
}

template <class T>
arrayList<T>::arrayList(const arrayList<T>& theList){
	//copy theList linear described by array to the arrayList
	arrayLength = theList.arrayLength;
	listSize = theList.listSize;
	element = new T[arrayLength];
	copy(theList.element, theList.element + listSize, element);
}

template <class T>
void arrayList<T>::checkIndex(int theIndex) const{
	if(theIndex < 0 || theIndex > listSize){
		ostringstream s;
		s << "index = " << theIndex << " size =" << listSize;
		throw illegalParamenterValue(s.str());
	}
}

template <class T>
T& arrayList<T>::get(int theIndex) const{
	//if the index is invalid, throw the error
	//return the element of thew index equals the index
	checkIndex(theIndex);
	return element[theIndex];
}

template <class T>
int arrayList<T>::indexOf(T& theElement) const{
	//return the index of the elment
	//if the element is not exist, return -1
	int theIndex = (int)(find(element, element + listSize, theElement) - element);
	if (theIndex == listSize)
		//cannot find the corresponding element
		return -1;
	else 
		return theIndex;
}

template <class T>
void arrayList<T>::erase(int theIndex){
	//delete the element which index is theIndex
	checkIndex(theIndex);
	copy(element + theIndex + 1, element + linearList, element + theIndex);
	element[--listSize].~T();
	if(listSize < arrayLength / 4){
		//if the number of elements less than arrayLength/2,
		//decrease the arrayLength to arrayLength/2
		changeLength1D(element, arrayLength, arrayLength/2);
	}
}

template <class T>
void arrayList<T>::insert(int theIndex, const T& theElement){
	if(theIndex < 0 || theIndex > listSize){
		//invalid index
		ostringstream s;
		s << "index = " << theIndex << "size = " << listSize;
		throw illegalParamenterValue(s.str());
	}
	//valid index, be sure the linearList is full or not
	if(listSize == arrayLength){
		//the number of elements store in the linear list 
		//described by array is full
		changeLength1D(element, arrayLength, 2 * arrayLength);
		arrayLength *= 2;
	}
	copy_backward(element + theIndex, element + linearList, element + linearList + 1);

	element[theIndex] = theElement;
	listSize++;
}

template <class T>
void arrayList<T>::output(ostream& out) const{
	copy(element, element + listSize, ostream_iterator<T>(cout, " "));
}

template <class T>
ostream& operator<<(ostream& out, const arrayList<T>& x){
	x.output(out);
	return out;
}

