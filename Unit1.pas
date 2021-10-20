unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.IniFiles, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LocalIniFile: TIniFile;
begin
  LocalIniFile := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  with LocalIniFile do
  begin
    WriteInteger('Position', 'Height', Self.Height);
    WriteInteger('Position', 'Width', Self.Width);
    WriteInteger('Position', 'Top', Self.Top);
  end;
end;

end.
