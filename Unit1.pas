unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
      subor:textfile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pole:array[1..10] of integer;
  pole2:array[1..10] of integer;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
 var i:integer;
begin
randomize;
pole[1]:=random(150);
for i:= 2 to 10 do
pole[i]:=pole[i-1] + random(150);
button2.Visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
  var i:integer;
begin
assignfile(subor,'pole.txt');
rewrite(subor);
for i:= 1 to 10 do
writeln(subor,inttostr(pole[i]));
closefile(subor);
button3.Visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i:integer;
begin
 listbox1.Clear;
 for i:= 1 to 10 do
 listbox1.Items.Add(inttostr(pole[i]));
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer; pom:string;
begin
assignfile(subor,'pole.txt');
reset(subor);
for i:= 1 to 10 do
begin
readln(subor,pom);
pole2[i]:=strtoint(pom);
end;
closefile (subor);
button4.Visible:=true;
end;

end.
