unit uKAFSJanelaSobre;

interface

uses
  System.Classes, System.UITypes,
  FMX.Graphics, FMX.Layouts,
  uKAFSJanelaModal;

type
  TKAFSJanelaSobre = class(TKAFSJanelaModal)
    sclCorpo: TScrollBox;

    constructor Create(AOwner: TComponent); reintroduce;
    procedure KAFSJanelaSobreConfig(const _cortema1, _cortema2: TAlphaColor; const _imgLogoSobre: TBitmap);
    procedure Retornar(Sender: TObject);
    destructor Destroy; override;
  end;

implementation

constructor TKAFSJanelaSobre.Create(AOwner: TComponent);
begin
  TThread.Synchronize(nil, procedure
  begin
    inherited Create(AOwner);

  end);
end;

procedure TKAFSJanelaSobre.KAFSJanelaSobreConfig(const _cortema1, _cortema2: TAlphaColor; const _imgLogoSobre: TBitmap);
begin
  KAFSJanelaModalConfig(_cortema1, _cortema2, _imgLogoSobre, 'Sobre', '');

  TThread.Synchronize(nil, procedure
  begin
    // Configura componentes
    btnVoltar.btnBotao.OnClick := Retornar;

    Self.Visible := True;
  end);
end;

procedure TKAFSJanelaSobre.Retornar(Sender: TObject);
begin
  Self.Free;
end;

destructor TKAFSJanelaSobre.Destroy;
begin

  inherited Destroy;
end;

end.
