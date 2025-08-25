# 🚀 TKAFSJanelaSobre

Componente Delphi/FireMonkey para exibição de janelas "Sobre" modais personalizáveis com suporte multiplataforma.

## 📋 Descrição

Componente especializado em exibir janelas de informação "Sobre" em aplicações Delphi/FireMonkey, herdando todas as características da janela modal base com layout adaptativo para diferentes plataformas.

## ✨ Características

- ✅ Herda todas as funcionalidades do TKAFSJanelaModal
- ✅ Layout responsivo adaptado para Windows e Android
- ✅ Título fixo "Sobre" com ícone informativo (ℹ️)
- ✅ Botão de voltar configurado para fechar a janela
- ✅ Área de conteúdo rolável (ScrollBox) para informações extensas
- ✅ Suporte multiplataforma (Windows, Android)
- ✅ Cores totalmente personalizáveis
- ✅ Integração com componente TKAFSJanelaModal base

## 🛠️ Configuração

### Parâmetros Padrão

```
Título fixo: "Sobre"
Ícone: "ℹ️"
Botão confirmar: Oculto por padrão
Área de conteúdo: ScrollBox para informações roláveis
```

## 📦 Como Usar

### Instanciação Básica

```pascal
var
  JanelaSobre: TKAFSJanelaSobre;
begin
  JanelaSobre := TKAFSJanelaSobre.Create(Self);
  try
    JanelaSobre.KAFSJanelaSobreConfig(TAlphaColors.White, TAlphaColors.Blue);
    JanelaSobre.Visible := True;
    // Adicione conteúdo personalizado ao ScbCorpo aqui
  finally
    JanelaSobre.Free;
  end;
end;
```

### Métodos Principais

| Método | Descrição |
|--------|-----------|
| `Create` | Construtor que inicializa o componente |
| `KAFSJanelaSobreConfig` | Configura a aparência da janela "Sobre" |
| `Retornar` | Procedure para fechar e liberar a janela |
| `Destroy` | Destrutor para limpeza de recursos |

### Parâmetros do Método KAFSJanelaSobreConfig

```pascal
procedure KAFSJanelaSobreConfig(
  const _cortema1: TAlphaColor;    // Cor dos elementos e texto
  const _cortema2: TAlphaColor     // Cor de fundo da janela
);
```

## 🔧 Dependências

- `System.Classes`
- `System.UITypes`
- `FMX.Layouts`
- `UntKAFSJanelaModal` (componente base modal)

## 🎨 Personalização

### Cores
- Fundo da janela (`_cortema2`)
- Elementos visuais e texto (`_cortema1`)

### Conteúdo
- Utilize a propriedade `ScbCorpo: TScrollBox` para adicionar:
  - Textos informativos
  - Logotipos da aplicação
  - Informações de versão
  - Créditos de desenvolvimento
  - Links e informações de contato

### Comportamento
- Botão voltar configurado para fechar automaticamente a janela
- Área de conteúdo com capacidade de rolagem para informações extensas

## ⚠️ Comportamento Multiplataforma

- **Windows**: Exibe como janela modal centralizada com proporção 16:9
- **Android**: Exibe como tela cheia (ocupando todo o espaço disponível)
- **Ambas plataformas**: Interface visualmente consistente e adaptativa

## 🎯 Funcionalidades

- Exibe informações "Sobre" com título e ícone padronizados
- Botão de voltar pré-configurado para fechar a janela
- Área de conteúdo rolável para acomodar informações extensas
- Interface visualmente consistente entre plataformas
- Herda todas as características adaptativas da janela modal base

---

**Nota:** Este componente é ideal para exibição de informações sobre a aplicação, versão, créditos de desenvolvimento e outras informações relevantes para o usuário final.
