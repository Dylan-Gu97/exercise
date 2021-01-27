class illegalParamenterValue{
	//the parament error function
public:
	illegalParamenterValue():
		message("Illegal parament value"){}
	illegalParamenterValue(char* theMessage){
		message = theMessage;}
	void outputMessage(){cout << message << endl;}
private:
	string message;
}
