class Container{
public:
	virtual double& operator[](int) = 0;
	virtual int size() const = 0;
	virtual ~Container(){}
};

class Vector{
private:
	double* elem;
	int sz;
public:
	Vector(int s):elem{new double[s]},sz{s}
	
}

class Vector_container : public Container{
	Vector v;
public:
	Vector_container(int s) : v(s){}
	~Vector_container(){}
	
	double& operator[](int i){return v[i];}
	int size()const{return v.size();}
};
