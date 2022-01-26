unit clsPerson_u;

interface
  type
      TPerson=class(TObject)

      private
        fName : string;
        fAge : integer;
      public
        procedure setName(sName:string);
        function getName:string;
        procedure setAge(sAge:integer);
        function getAge:integer;

        Constructor Create(sName:string;sAge:integer);

  end;

implementation
constructor TPerson.Create(sName: string; sAge: Integer);
begin
  fName:=sName;
  fAge:=sAge;
end;
procedure TPerson.setName(sName:string);
begin
  fName:=sName;
end;
function TPerson.getName:string;
begin
  result:=fName;
end;
procedure TPerson.setAge(sAge:integer);
begin
  fAge:=sAge;
end;
function TPerson.getAge:integer;
begin
  result:=fAge;
end;


end.
