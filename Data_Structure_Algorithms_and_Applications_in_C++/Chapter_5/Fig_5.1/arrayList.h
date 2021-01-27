//use the data structure of array to describe the linear list
class arrayList : class linearList<T>{
public:
	/* constructed function,
	 * copy constructed function,
	 * deconstructed function
	 */
	arrayList(int initialCapacity = 10);
	arrayList(const arrayList<T>&);
	~arrayList(){delete [] element;}

	//ADT method
	bool empty() const {return listSize == 0;}
	int size() const {return listSize;}
	T& get(int theIndex) const;
	int indexOf(T& theElement) const;
	void erase(int theIndex);
	void insert(int theIndex, const T& theElement);
	void output(ostream& out) const;

	//other method
	int capacity() const {return arrayLength;}

protected:
	void checkIndex(int theIndex) const; // 
		//if the index is invalid, throw an error
	T* element;			
		//the element[] dynamic array used to store
		//linear list which is the core of the linear list 
		//described by array	
	int arrayLength; 	//the capacity of the 1 dim array
	int listSize;		
		//the number of the element of the linear list
		//the list may not full the capacity
}
