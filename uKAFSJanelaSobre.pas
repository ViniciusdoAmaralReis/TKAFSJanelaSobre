unit uKAFSJanelaSobre;

interface

uses
  System.Classes, System.UITypes,
  FMX.Layouts,
  uKAFSJanelaModal;

type
  TKAFSJanelaSobre = class(TKAFSJanelaModal)
    scrollCorpo: TScrollBox;

    constructor Create(AOwner: TComponent); reintroduce;
    procedure KAFSJanelaSobreConfig(const _cortema1, _cortema2: TAlphaColor);
    procedure Retornar(Sender: TObject);
    destructor Destroy; override;
  end;

implementation

constructor TKAFSJanelaSobre.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

end;

procedure TKAFSJanelaSobre.KAFSJanelaSobreConfig(const _cortema1, _cortema2: TAlphaColor);
begin
  // Configura propriedades da tela padrão
  KAFSJanelaModalConfig(_cortema1, _cortema2, 'Sobre', 'ℹ️', '');

  // Associa procedures aos botões
  btnVoltar.btnBotao.OnClick := Retornar;

  TThread.Synchronize(nil, procedure begin Visible := True; end);
end;

procedure TKAFSJanelaSobre.Retornar(Sender: TObject);
begin
  Free;
end;

destructor TKAFSJanelaSobre.Destroy;
begin

  inherited Destroy;
end;

end.
