public Class AccountHandler{
public static Account insertNewAccount(String accName)
{
if(accName!='')
{
try{
Account acc = New Account(Name=accName);
insert acc;
System.debug(acc);
return acc;

}
catch(Exception e)
{
System.debug('No Account Created');
return null;
}
}
else {
return null;
}

}
}