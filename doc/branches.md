---
tag: "politicas"
---
Padronização das branches no projeto. 

## Histórico de Versões


| Data       | Versão | Descrição                                 | Autor             |
| :--------: | :----: | :----------:                              | :---------------: |
| 04/05/2023 |  0.1   | Criação da política de branch             | [Thiago Freitas](https://github.com/thiagorfreitas)|



## Padronização das Branches

### Prefixos:
- ```feature```
- ```hotfix```
- ```docs```

### Formato:
```
<prefixo>#número da issue/assunto
```

Não esquecer de dividir as palavras(sempre minúsculas) do assunto com "-".
Exemplo: 
```
feature#87/novo-menu
```

### Branches:

- **Branch main:** Branch que contém o código em nível de produção, será o código mais consolidado existente na aplicação. Nenhum integrante dos times é autorizado a fazer commits diretamente na *main.*
- **Branch dev:** Como o nome já diz, é a branch de trabalho no momento do desenvolvimento. São criadas começando com o prefixo **dev/**.
- **Branches feature:** Como o nome já diz, são branches na qual são desenvolvidos novos recursos ao projeto. São criadas começando com o prefixo **feature/**.
Exemplo: ```feature#22/novo-layout```
- **Branches hotfix:** Branches no qual são realizadas correções de bugs São criadas começando com o prefixo **hotfix/**.
Exemplo: ```hotfix#02/correcao-botao```
- **Branches docs:** Branches na qual são desenvolvidos os documentos do projeto. São ciradas começando com o prefixo **docs/**
Exemplo: ```docs#49/template-documento```

### Princípios:
- Como padronização optamos por nomear as branches em inglês, para toda a duração do projeto.

## Referências

DULCETTI, Bruno. Padrões e nomenclaturas no Git. *BrunoDulcetti*. Disponível em: <https://www.brunodulcetti.com/padroes-e-nomenclaturas-no-git/>. Acesso em: 10 de ago. de 2021.

Políticas de Branches. Disponível em: <https://fga-eps-mds.github.io/2018.2-ComexStat/docs/politicaBranches>. Acesso em: 10 de ago. de 2021

HADLER, Mikael. Utilizando o fluxo Git Flow. *Medium*. Disponível em: <https://medium.com/trainingcenter/utilizando-o-fluxo-git-flow-e63d5e0d5e04>. Acesso em: 16 de ago. de 2021