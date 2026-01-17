/*
the error occurs because we can't reassign the String value to int 
 */
void main()
{
  String name = "Alice";
   name = 123;
   print(name);
}