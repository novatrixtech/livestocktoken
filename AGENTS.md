# AGENTS.md

## Finalidade

Este arquivo é o contrato operacional compartilhado por todos os agentes de IA
que trabalham neste repositório, incluindo Codex, Claude, Gemini e outras
ferramentas agênticas de desenvolvimento ou pesquisa.

Leia este arquivo antes de agir. Não use históricos de conversa específicos de
um fornecedor, memórias ocultas ou premissas não declaradas como única fonte de
contexto do projeto. Decisões importantes devem ser registradas nos arquivos do
repositório para que outro agente possa dar continuidade ao trabalho.

## Escopo e precedência das instruções

- Estas instruções se aplicam a todo o repositório.
- Um `AGENTS.md` mais específico em um subdiretório pode adicionar ou
  sobrescrever regras para aquela subárvore.
- Em caso de conflito, siga as instruções diretas do usuário antes deste
  arquivo.
- Não reinterprete silenciosamente o modelo de negócio, a estrutura jurídica ou
  o público-alvo.
- Se uma ferramenta não carregar o `AGENTS.md` automaticamente, forneça
  explicitamente este arquivo à ferramenta como contexto do projeto.
- Toda comunicação entre o usuário e os agentes, bem como entre agentes, deve
  ser feita em português brasileiro (PT-BR), salvo instrução direta do usuário
  em contrário.

## Visão geral do projeto

**Projeto:** Livestock Rent

**Mercado atual:** Brasil, com foco inicial em Santa Catarina e Rio Grande do
Sul.

**Mercado futuro potencial:** Estados Unidos, sujeito a uma análise jurídica,
regulatória, tributária e de distribuição separada.

**Público-alvo:** fundos de venture capital Web3, investidores-anjo, parceiros
estratégicos do agronegócio, participantes de securitização e outros
investidores sofisticados.

**Proposta central:** construir uma plataforma regulada de gestão de ativos
pecuários, servicing e dados que ofereça aos investidores exposição sem
envolvimento operacional direto a operações profissionais de pecuária de corte
e leite.

O enquadramento preferencial **não** é “um token lastreado em vacas”. O negócio
investível é a infraestrutura operacional, de conformidade, rastreabilidade,
servicing e mercado de capitais em torno dos fluxos de caixa da pecuária.

## Documento canônico do projeto

A análise atual de negócio e diligência é:

`research/livestock-rwa-vc-analysis-2026-07-16.md`

Leia esse documento antes de alterar a tese do projeto, a estrutura financeira,
a análise regulatória, a narrativa para investidores ou o desenho de
rastreabilidade.

O memorando é um documento de pesquisa referente a um momento específico, não
um parecer jurídico. Verifique fatos sensíveis ao tempo antes de apresentá-los
como atuais.

## Arquitetura canônica do negócio

Preserve a separação entre estas camadas:

1. **Operações pecuárias**
   - Fazendas aprovadas gerenciam gado de corte ou leite sob arranjos
     operacionais brasileiros devidamente documentados.
   - Corte e leite são pools econômicos separados, com diferentes ciclos de
     caixa, riscos e modelos de análise de crédito.

2. **Identidade e evidências do animal**
   - Cada animal admitido possui um NFT de ciclo de vida vinculado
     individualmente à sua identidade oficial no SISBOV.
   - GTA, notas fiscais, registros veterinários, brincos físicos, fotografias,
     geolocalização e atestações independentes recorrentes sustentam o pacote de
     evidências.

3. **Recebíveis do agronegócio**
   - Obrigações pecuárias elegíveis são representadas por CPRs.
   - As CPRs são registradas na B3 e reconciliadas com as operações, os animais,
     os documentos e as contas controladas subjacentes.

4. **Securitização**
   - CPRs elegíveis podem ser cedidas a um patrimônio de securitização e
     utilizadas como lastro de um CRA, sujeito à legislação brasileira vigente
     e à orientação profissional.

5. **Camada do investidor e de liquidação**
   - Qualquer token do investidor deve representar ou espelhar direitos
     financeiros exigíveis; ele não deve substituir o CRA, os registros da B3,
     os contratos nem o cadastro de investidores.
   - A periodicidade de distribuição pretendida é quadrimestral e deve se
     basear no caixa realizado disponível conforme a cascata de pagamentos
     (waterfall) do CRA.
   - USDC é um meio de liquidação, não a fonte jurídica dos direitos do
     investidor nem uma proteção contra o risco cambial BRL/USD.

## Terminologia brasileira

Use os termos brasileiros com precisão. Defina-os no primeiro uso para públicos
internacionais.

- **B3:** principal infraestrutura e bolsa do mercado financeiro brasileiro,
  onde registros relevantes de CPR e CRA podem ser registrados ou depositados.
- **CPR — Cédula de Produto Rural:** instrumento brasileiro de crédito rural que
  representa um produto rural ou uma obrigação financeira elegível.
- **CRA — Certificado de Recebíveis do Agronegócio:** valor mobiliário
  brasileiro lastreado em recebíveis do agronegócio e emitido por meio de uma
  estrutura de securitização.
- **SISBOV:** sistema oficial brasileiro de identificação individual e
  rastreabilidade de bovinos e bubalinos.
- **GTA — Guia de Trânsito Animal:** documento oficial de movimentação animal.
- **CVM:** regulador do mercado de valores mobiliários brasileiro.
- **BCB/BACEN:** Banco Central do Brasil.
- **MAPA:** Ministério da Agricultura e Pecuária do Brasil.
- **CPC 29:** norma contábil brasileira para ativos biológicos e produto
  agrícola.
- **USDC:** stablecoin denominada em dólar dos Estados Unidos, usada aqui
  somente como meio proposto de distribuição ou liquidação.

Não presuma que um leitor internacional compreenda essas siglas.

## Separação dos tokens

Existem dois conceitos distintos de token. Nunca os combine na arquitetura, nos
contratos, nos diagramas, nos textos ou nas análises.

### NFT do animal

- Um gêmeo digital não financeiro, com acesso restrito por função, para um único
  animal.
- Vinculado individualmente à identidade oficial do animal no SISBOV.
- Usado para evidências, eventos do ciclo de vida, reconciliação e
  auditabilidade.
- Não concede direitos de propriedade, dividendos, resgate ou investimento.
- Não deve ser publicamente transferível como item colecionável ou ativo
  especulativo.

### Token do investidor

- Uma representação permissionada ou um espelho de direitos financeiros
  regulados.
- Sujeito às regras de valores mobiliários, custódia, elegibilidade do
  investidor, KYC/AML, transferência e manutenção de registros.
- Deve permanecer reconciliado com o CRA juridicamente controlador e com os
  registros dos investidores.

O projeto deve continuar funcionando jurídica e operacionalmente se qualquer um
dos tokens, sua blockchain, um provedor de carteira ou um contrato inteligente
ficar indisponível.

## Requisitos do NFT vinculado ao SISBOV

- Faça a cunhagem somente após o animal possuir um registro SISBOV validado e
  haver correspondência entre o brinco físico, a nota fiscal, a GTA ou os
  documentos sanitários e as evidências independentes iniciais.
- Use uma certificadora ou participante de integração do SISBOV autorizado e
  devidamente homologado. Não alegue acesso direto ao ambiente de produção sem
  evidências.
- Garanta um único NFT ativo por número SISBOV único e não reutilizável.
- Armazene registros sensíveis fora da blockchain, com acesso controlado.
  Registre na blockchain apenas as referências e os hashes criptográficos
  necessários.
- Prefira uma referência que preserve a privacidade ou um hash com chave em vez
  de publicar o identificador SISBOV completo.
- Acrescente correções; não apague o histórico do ciclo de vida.
- Reconcilie o status no SISBOV, o status do NFT, o brinco físico, o inventário
  da fazenda, as notas fiscais, as movimentações por GTA, a alocação em CPR, o
  lastro do CRA e a contabilidade.
- Marque integrações indisponíveis ou atrasadas como `sync_pending` ou `stale`.
- Exclua dos cálculos de lastro elegível do CRA e de distribuição os animais
  ausentes, contestados, desatualizados, duplicados, incompatíveis com o SISBOV
  ou não reconciliados por qualquer outro motivo.
- Após morte, abate, venda final ou perda confirmada, aposente o NFT em vez de
  queimá-lo, para que a trilha de auditoria permaneça disponível.

Um NFT melhora a evidência contra adulterações; ele não prova de forma
independente que um animal existe atualmente, está saudável, está livre de ônus
ou pertence ao projeto.

## Regras financeiras e contábeis

- Modele pecuária de corte e leite separadamente.
- Use economia unitária no nível da coorte e evidências reais do operador.
- Baseie as distribuições aos investidores somente no caixa realizado e
  recebido, após despesas operacionais, tributos, reservas, serviço da dívida,
  taxas e itens obrigatórios da cascata de pagamentos.
- Não trate ganhos de valor justo do CPC 29 como caixa distribuível.
- Modele os retornos tanto em BRL quanto em USD.
- Mostre explicitamente a exposição cambial. A liquidação em USDC não elimina o
  risco cambial.
- Inclua riscos de mortalidade, doença, furto, alimentação, preço de aquisição,
  preço de venda, produtividade, comprador, operador, liquidez e base.
- Identifique como tal toda previsão, cenário, retorno-alvo e modelo
  ilustrativo.
- Nunca apresente um retorno ilustrativo como desempenho histórico ou
  rentabilidade garantida.

## Salvaguardas jurídicas, regulatórias e tributárias

Este repositório contém pesquisa de negócios, não aconselhamento jurídico,
contábil, tributário, de investimento, veterinário ou regulatório.

Antes da captação de recursos ou do lançamento, o projeto exige orientação por
escrito de profissionais brasileiros qualificados que cubra, no mínimo:

- propriedade do gado, custódia, contratos com fazendas, garantias, insolvência
  e exigibilidade;
- elegibilidade, emissão, registro, cessão e garantias da CPR;
- elegibilidade do CRA, securitização, regime fiduciário, oferta, custódia e
  registros dos investidores;
- tratamento da oferta e de qualquer representação tokenizada pela CVM;
- regras do BCB/BACEN para serviços de ativos virtuais, pagamentos, câmbio e
  liquidação transfronteiriça em USDC;
- tratamento tributário para cada tipo e jurisdição de investidor;
- privacidade e proteção de dados, incluindo a LGPD;
- requisitos futuros dos Estados Unidos sobre valores mobiliários, commodities,
  tributos, sanções e transmissão de dinheiro antes de qualquer oferta ou
  solicitação naquele país.

Não declare que:

- o NFT prova ou garante a existência do gado;
- o investidor possui diretamente uma vaca, a menos que os documentos jurídicos
  controladores estabeleçam literalmente esse resultado;
- o registro na B3 garante pagamento, titularidade, constituição perfeita da
  garantia, existência do animal ou ausência de fraude;
- um CRA torna a renda universalmente isenta de impostos;
- pagamentos de CRA são “dividendos”;
- USDC elimina riscos cambiais, do emissor, de custódia, de contrato inteligente
  ou de perda de paridade;
- o uso da classificação RWA ou token de utilidade evita a regulação de valores
  mobiliários;
- retornos ou distribuições quadrimestrais são garantidos;
- a futura estrutura nos Estados Unidos pode reutilizar a estrutura brasileira
  sem uma análise separada.

Ao discutir a tributação do CRA, identifique a classe e a residência do
investidor, a legislação vigente, as regras de retenção e as condições
relevantes. Use “remuneração”, “distribuição” ou “pagamento conforme a cascata”
em vez de “dividendo”, salvo quando o pagamento for juridicamente um dividendo
societário.

## Padrões de pesquisa

### Hierarquia de fontes

Prefira fontes primárias e oficiais:

1. Leis e regulamentos brasileiros e publicações oficiais do governo.
2. CVM, BCB/BACEN, CMN, MAPA, Receita Federal, B3 e órgãos estaduais oficiais.
3. Embrapa, CEPEA, Epagri/Cepa, Emater/RS-Ascar e pesquisas acadêmicas
   reconhecidas.
4. Documentação oficial de prestadores de serviço para integrações técnicas.
5. Fontes secundárias de boa reputação somente quando não houver material
   primário disponível.

Para temas dos Estados Unidos, prefira SEC, CFTC, FinCEN, IRS, reguladores
estaduais, leis e documentação oficial de stablecoins ou protocolos.

### Trabalho sensível ao tempo

- Pesquise na web e verifique regulamentos, regras tributárias, preços de
  mercado, taxas de juros, especificações de produtos, comportamento de APIs e
  funções institucionais no momento da tarefa.
- Registre a data exata de acesso ou publicação quando for relevante.
- Use links diretos para a página ou o documento de suporte.
- Diferencie fatos obtidos de fontes das inferências do agente.
- Não cite uma página de resultados de busca como evidência.
- Não preserve uma URL quebrada ou não verificada apenas porque ela apareceu em
  um memorando antigo.
- Trate os números e as conclusões regulatórias do memorando canônico como
  históricos até que sejam atualizados.

### Trabalho quantitativo

- Mostre unidades, moeda, período, data da fonte e fórmulas.
- Mantenha fatos obtidos de fontes separados das premissas.
- Use intervalos e análises de sensibilidade quando as evidências não
  sustentarem uma estimativa pontual precisa.
- Reconcilie os totais e destaque dados ausentes.
- Nunca invente desempenho de fazendas, quantidade de animais, cobertura de
  seguro, pareceres jurídicos, parceiros, registros ou compromissos de
  investidores.

## Comunicação com investidores

- Comece pela plataforma regulada de gestão de ativos e rastreabilidade, não
  pela novidade do token.
- Explique as siglas brasileiras a investidores internacionais.
- Mantenha o contato inicial conciso e solicite um próximo passo simples, como
  permissão para enviar o deck ou realizar uma breve chamada.
- Alinhe as afirmações ao estágio real do projeto. Use “estamos estruturando” ou
  “desenhado para” até que a execução esteja documentada.
- Não descreva parceiros planejados, aprovações regulatórias, registros na B3,
  integrações com o SISBOV, seguros, auditorias ou emissões como concluídos sem
  evidências no repositório.
- Evite “sem risco”, “garantido”, “isento de impostos”, “renda passiva” e
  linguagem promocional semelhante.
- Para VCs Web3, enfatize originação repetível, receita de servicing, dados,
  infraestrutura de conformidade, auditabilidade e distribuição escalável.

## Método de trabalho dos agentes

Antes de realizar trabalho substancial:

1. Leia este arquivo.
2. Leia o memorando canônico e todos os arquivos diretamente relevantes à
   solicitação.
3. Execute `git status --short --branch`.
4. Inspecione as alterações existentes e preserve o trabalho não relacionado.
5. Identifique quais afirmações exigem verificação atual na web.

Durante o trabalho:

- Faça a menor alteração que atenda completamente à solicitação.
- Siga a estrutura e a terminologia existentes.
- Mantenha as análises de corte e leite separadas, salvo quando a comparação for
  explicitamente solicitada.
- Não altere silenciosamente a arquitetura jurídica ou econômica.
- Não sobrescreva nem descarte alterações de outro agente ou do usuário.
- Não crie fatos fictícios para preencher lacunas. Declare a incerteza ou
  adicione um TODO claramente identificado quando o usuário solicitar um
  marcador persistente.
- Use datas absolutas em vez de termos ambíguos como “hoje” ao registrar
  pesquisas.
- Mantenha segredos, credenciais, dados pessoais, listas de investidores,
  coordenadas de fazendas e registros não públicos de animais fora dos arquivos
  versionados.

Após o trabalho:

1. Releia a solicitação do usuário e verifique todos os requisitos.
2. Revise os arquivos alterados.
3. Execute as verificações apropriadas ao artefato.
4. Execute `git diff --check` quando o repositório possuir um commit de base.
5. Informe o que mudou, o que foi verificado e quaisquer premissas ou bloqueios
   restantes.

Não declare a conclusão sem evidências recentes de verificação.

## Convenções de arquivos e documentação

- Use UTF-8 e Markdown para pesquisas e documentação do projeto.
- Use nomes de arquivos claros, descritivos e em letras minúsculas, com datas no
  formato `YYYY-MM-DD` quando o documento for um retrato datado.
- Mantenha pesquisas duradouras em `research/`.
- Prefira atualizar uma análise canônica existente em vez de criar versões
  concorrentes, salvo quando o usuário solicitar um novo retrato datado.
- Mantenha os links das fontes próximos às afirmações que sustentam ou em uma
  seção de fontes claramente organizada.
- Use português brasileiro em toda a comunicação e documentação. Use outro
  idioma somente quando solicitado ou quando um artefato destinado a um público
  internacional exigir isso.
- Defina as siglas no primeiro uso em documentos destinados a investidores.
- Mantenha código, contratos, dados, modelos financeiros e minutas jurídicas em
  diretórios claramente separados caso esses tipos de artefato sejam
  adicionados posteriormente.

## Protocolo de passagem entre agentes

Como os agentes podem não compartilhar o histórico de conversa:

- Trate os arquivos do repositório como meio de passagem de contexto.
- Registre decisões duradouras de negócio no memorando canônico ou em um
  documento de decisão claramente nomeado.
- Registre URLs e datas das fontes para pesquisas que outro agente possa
  precisar auditar.
- Deixe a árvore de trabalho em um estado compreensível.
- Resuma trabalhos incompletos e bloqueios na resposta final; não os esconda
  apenas no raciocínio da conversa.
- Não adicione instruções específicas de fornecedor que contradigam este
  arquivo.
- Se arquivos de entrada específicos de fornecedor, como `CLAUDE.md` ou
  `GEMINI.md`, forem adicionados posteriormente, mantenha-os curtos e oriente
  esses agentes a ler o `AGENTS.md` em vez de duplicar toda a configuração.

## Regras de Git e GitHub

- O repositório usa a branch `main`, salvo quando o usuário especificar outro
  fluxo de trabalho.
- Inspecione o status antes de editar.
- Não use comandos destrutivos como `git reset --hard`, checkout forçado,
  reescrita de histórico ou force-push sem autorização explícita do usuário.
- Não faça stage, commit, push, abra pull request, crie release ou modifique um
  remoto, salvo quando o usuário solicitar.
- Mantenha os commits focados e não inclua alterações não relacionadas.
- Nunca faça commit de credenciais, chaves privadas, tokens de acesso, arquivos
  `.env`, informações confidenciais de investidores ou dados pessoais ou de
  animais sujeitos a regulação.
- A CLI do GitHub pode estar disponível, mas a autenticação não implica
  permissão para alterar o estado no GitHub.

## Estado atual do repositório

No momento em que este arquivo foi criado:

- o repositório está inicializado na branch `main`;
- ainda não há um commit de base;
- o principal artefato é o memorando de pesquisa sobre RWA pecuário em
  `research/`.

Esta seção é informativa e pode ficar desatualizada. Sempre verifique o estado
atual do Git em vez de depender dela.
