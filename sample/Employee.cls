include (MyMacros, YourMacros)
#define ABC DE
#define Unicode

#IfDef Unicode
	//dsafdskflals;d
#Else
	//dafdsafas
#EndIf



/// This sample persistent class represents an employee.<br>
Class Sample.Employee Extends (%Persistent, %Populate) [ Hidden, StorageStrategy = AddressState ]
{

/// The employee's job title.
Property Title As %String(MAXLEN = 50, POPSPEC = "Title()");

/// The employee's current salary.
Property Salary As %Integer(MAXVAL = 100000, MINVAL = 0);

/// A character stream containing notes about this employee.
Property Notes As %Stream.GlobalCharacter;

/// A picture of the employee
Property Picture As %Stream.GlobalBinary;

/// The company this employee works for.
Relationship Company As Company [ Cardinality = one, Inverse = Employees ];

Index NameIndex ON (LastName,FirstName) [ Unique ];


/// This method overrides the method in <class>Person</class>.<br>
/// Prints the properties <property>Name</property> and <property>Title</property>
/// to the console.
Method PrintPerson(fileName As %String, totoo As Systems.ABC)
{
	#include ABC
	set ..#hello = "123"
	Write !,"Name: ", ..Name, ?30, "Title: ", ..Title
	Quit
}

/// writes a .png file containing the picture, if any, of this employee
/// the purpose of this method is to prove that Picture really contains an image
Method WritePicture()
{

	#dim abc As Hello
	#dim qwe As List Of Hello
	#dim zxc As Array Of Hello

	if (..Picture="") {quit}
	set name=$TR(..Name,".") ; strip off trailing period
	set name=$TR(name,", ","__") ; replace commas and spaces
	set filename=name_".png" // here is another comment
	// here is a comment

	set ^Storage(121) = "dasf"

	#; here is another one

	/*
	* this is some sample comment
	*
	*/


	&sql(SELECT () ABC from Table WHERE ABC)
	$system.Status.OBJ("daf")

	set file=##class(%Stream.FileBinary).%New()
	set file.Filename=filename
	do file.CopyFrom(..Picture)
	do file.%Save()
	write !, "Generated file: "_filename
	return $$$OK
}

Storage Default
{
<Data name="EmployeeDefaultData">
<Subscript>"Employee"</Subscript>
<Value name="1">
<Value>Company</Value>
</Value>
<Value name="2">
<Value>Notes</Value>
</Value>
<Value name="3">
<Value>Salary</Value>
</Value>
<Value name="4">
<Value>Title</Value>
</Value>
<Value name="5">
<Value>Picture</Value>
</Value>
</Data>
<DefaultData>EmployeeDefaultData</DefaultData>
<ExtentSize>100</ExtentSize>
<Property name="%%CLASSNAME">
<AverageFieldSize>17</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Age">
<AverageFieldSize>1.91</AverageFieldSize>
<Selectivity>1.7544%</Selectivity>
</Property>
<Property name="Company">
<AverageFieldSize>1.55</AverageFieldSize>
<Selectivity>5.0000%</Selectivity>
</Property>
<Property name="DOB">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>1.0000%</Selectivity>
</Property>
<Property name="FavoriteColors">
<AverageFieldSize>7.49</AverageFieldSize>
<OutlierSelectivity>.31:</OutlierSelectivity>
<Selectivity>1.9714%</Selectivity>
</Property>
<Property name="Home">
<AverageFieldSize>35.4,City:6.82,State:2,Street:16.26,Zip:5</AverageFieldSize>
<Selectivity>1.0000%,City:3.8462%,State:2.3256%,Street:1.0000%,Zip:1.0000%</Selectivity>
</Property>
<Property name="Name">
<AverageFieldSize>15.77</AverageFieldSize>
<Selectivity>1.0000%</Selectivity>
</Property>
<Property name="Notes">
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="Office">
<AverageFieldSize>36.27,City:7.5,State:2,Street:16.41,Zip:5</AverageFieldSize>
<Selectivity>1.0000%,City:4.0000%,State:2.2727%,Street:1.0000%,Zip:1.0000%</Selectivity>
</Property>
<Property name="Picture">
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="SSN">
<AverageFieldSize>11</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="Salary">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>1.0000%</Selectivity>
</Property>
<Property name="Spouse">
<AverageFieldSize>1.89</AverageFieldSize>
<Selectivity>1.6129%</Selectivity>
</Property>
<Property name="Title">
<AverageFieldSize>20.11</AverageFieldSize>
<Selectivity>1.4085%</Selectivity>
</Property>
<SQLMap name="$Employee">
<BlockCount>-4</BlockCount>
</SQLMap>
<Type>%Library.CacheStorage</Type>
}
}
