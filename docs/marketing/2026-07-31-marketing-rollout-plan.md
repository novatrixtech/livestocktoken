# Plano de trabalho de marketing — LivestockTokens.Farm

Data: 2026-07-31  
Branch: `marketing-brand-rollout-2026-07-31`

## Objetivo

Reposicionar LivestockTokens.Farm como marketplace de compra, venda e manutenção de ativos e serviços rurais para clientes-produtores urbanos.

O trabalho deve manter o foco de marketing definido em `AGENTS.md`: linguagem simples, acolhedora e responsável para mulheres de 35 anos, mães,
moradoras de cidade, sem conhecimento técnico de tokenização ou agronegócio.

## Skills selecionadas

- `brandkit`: criar sistema visual, lógica do logo, paleta, aplicações e direção de marca.
- `campaign-plan`: organizar campanha, canais, calendário, dependências, métricas e próximos passos.
- `content-creation`: escrever textos do site e posts por canal.
- `redesign-existing-projects`: reformular o site existente sem trocar a stack.
- `high-end-visual-design`: elevar qualidade visual do site e dos assets.
- `canva-creator`: usar apenas como referência de inventário e calendário, pois o fluxo real exige Canva/HubSpot e aprovações externas.
- `imagegen`: disponível para imagens bitmap, mas logos e posts serão criados como SVG/PNG locais para manter controle vetorial e consistência.

## Identidade de marca

Direção proposta:

- Marca: `LivestockTokens.Farm`
- Categoria: marketplace rural
- Promessa de marca: sair da cidade e participar do campo com ativos rurais reais e serviços de operação
- Tom: claro, humano, responsável e acolhedor
- Evitar: promessa de retorno, urgência artificial, jargão Web3, linguagem especulativa e “lucro fácil”
- Metáfora visual: cidade conectada ao campo por registros simples, ativos reais e prestadores de serviço

## Entregáveis locais

### Identidade visual

- [x] Logo principal para o site
- [x] Ícone/favicon para o site
- [x] Avatar para conta no Instagram
- [x] Arte de post para Instagram
- [x] Avatar para página no LinkedIn
- [x] Arte de post para LinkedIn
- [x] Versões PNG exportadas para uso nas plataformas

### Site

- [x] Reformular `site/index.html` para o novo posicionamento
- [x] Reformular `site/assets/site.css`
- [x] Manter JavaScript simples e funcional
- [x] Atualizar metatags, navegação, CTA e rodapé
- [x] Validar o site localmente

### LinkedIn

- [x] Criar guia de criação da página
- [x] Criar descrição curta da página
- [x] Criar texto “Sobre”
- [x] Criar primeiro post
- [x] Preparar asset visual do post
- [ ] Criar a página dentro do LinkedIn

### Instagram

- [x] Criar guia de criação da conta
- [x] Criar bio
- [x] Criar primeiro post
- [x] Preparar asset visual do post
- [ ] Criar a conta dentro do Instagram

## Tarefas que não podem ser concluídas só no branch

Criar conta no Instagram e página no LinkedIn são ações externas. Elas exigem login, credenciais, aceite de termos, possível verificação, imagem de perfil
e decisão final do dono da marca. O branch protege o código, mas não protege ações feitas diretamente em plataformas públicas.

Neste ciclo, a execução local vai deixar tudo pronto para cadastro e publicação.

## Ordem de execução

1. [x] Criar branch de trabalho.
2. [x] Criar este plano em Markdown.
3. [x] Criar diretórios de assets e conteúdo social.
4. [x] Criar identidade visual base.
5. [x] Exportar PNGs para Instagram, LinkedIn e site.
6. [x] Reformular o site.
7. [x] Criar guias de criação de conta/página.
8. [x] Criar posts iniciais.
9. [x] Rodar validações locais.
10. [x] Atualizar este plano com status final.

## Status final da execução local

Concluído em 2026-07-31:

- Branch criado: `marketing-brand-rollout-2026-07-31`.
- Site reformulado em `site/`.
- Identidade visual criada em `site/assets/brand/`.
- Posts e assets sociais criados em `site/assets/social/`.
- Kit de lançamento social criado em `docs/marketing/social-media-launch-kit.md`.
- Servidor estático validado em `http://127.0.0.1:4173/`.
- Screenshots de verificação gerados durante QA local e removidos da árvore de trabalho.

Pendente fora do branch:

- Criar a conta no Instagram.
- Criar a página no LinkedIn.
- Publicar os posts nas plataformas.

## Critérios de aceite

- A palavra proibida pelo usuário não aparece nos materiais novos.
- O site fala com clientes-produtores, cooperativas e tutores de vacas.
- Nenhum texto promete retorno, lucro ou renda.
- Assets existem em SVG e PNG quando necessário.
- `git diff --check` passa.
- O site roda localmente por servidor estático.
