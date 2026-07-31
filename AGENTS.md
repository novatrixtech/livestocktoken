# AGENTS.md

## Finalidade

Este arquivo é o contrato operacional compartilhado por todos os agentes de IA que trabalham neste repositório, incluindo Codex, Claude, Gemini e
outras ferramentas agênticas de desenvolvimento ou pesquisa.

Leia este arquivo antes de agir. Não use históricos de conversa específicos de um fornecedor, memórias ocultas ou premissas não declaradas como única
fonte de contexto do projeto. Decisões importantes devem ser registradas nos arquivos do repositório para que outro agente possa dar continuidade ao
trabalho.

## Escopo e precedência das instruções

- Estas instruções se aplicam a todo o repositório.
- Um `AGENTS.md` mais específico em um subdiretório pode adicionar ou sobrescrever regras para aquela subárvore.
- Em caso de conflito, siga as instruções diretas do usuário antes deste arquivo.
- Não reinterprete silenciosamente o modelo de negócio, a estrutura jurídica ou o público-alvo.
- Se uma ferramenta não carregar o `AGENTS.md` automaticamente, forneça explicitamente este arquivo à ferramenta como contexto do projeto.
- Toda comunicação entre o usuário e os agentes, bem como entre agentes, deve ser feita em português brasileiro (PT-BR), salvo instrução direta do
  usuário em contrário.

## Posicionamento de marca

**Projeto:** LivestockTokens.Farm

**Categoria:** marketplace de compra, venda e manutenção de ativos e serviços rurais.

**Ideia central:** permitir que pessoas em cidades, em qualquer lugar do mundo, possam se tornar produtoras rurais por meio da compra de ativos rurais
e da contratação de serviços para manter esses ativos.

**O que somos:** uma plataforma que conecta clientes-produtores a prestadores de serviços rurais.

**O que não somos:** uma promessa de retorno financeiro, uma aplicação de renda passiva, um produto especulativo ou uma forma de vender “lucro fácil”
com tokenização.

**Clientes:** pessoas físicas que querem participar do campo de forma simples, comprando ativos rurais e contratando serviços de operação, manejo,
armazenagem ou suporte.

**Prestadores de serviços:** cooperativas no negócio de grãos e tutores de vacas no negócio de gado de leite.

## Público e linguagem

Todos os textos do projeto devem ser escritos para uma mulher de 35 anos, mãe, moradora de cidade, que não é especialista em mercado financeiro,
tokenização ou agronegócio.

Escreva como se estivesse explicando o projeto para alguém inteligente, ocupada e cuidadosa com o próprio dinheiro, mas que não conhece os termos
técnicos do setor.
A análise atual de negócio e diligência deve viver em `research/` como arquivo
canônico sem data no nome. Leia o arquivo canônico vigente antes de alterar a
tese do projeto, a estrutura financeira, a análise regulatória, a narrativa para
investidores ou o desenho de rastreabilidade.

Regras de linguagem:

- Use português brasileiro claro, direto e acolhedor.
- Explique termos técnicos no primeiro uso, com exemplos simples.
- Prefira frases curtas e concretas.
- Evite jargões de mercado financeiro, Web3 e agronegócio quando uma palavra comum resolver.
- Não use tom de promessa, urgência, pressão de compra ou enriquecimento.
- Não use termos como “renda passiva”, “retorno garantido”, “sem risco”, “alto rendimento” ou “lucro certo”.
- Não trate a pessoa como especuladora; trate como cliente que está virando produtora rural com apoio de prestadores de serviço.
- Mostre que existem custos, riscos operacionais, prazos, variação de preço e responsabilidade na escolha dos ativos e serviços.
- Explique que a tecnologia ajuda na organização, rastreabilidade e registro, mas não é o produto principal.

## Arquitetura canônica do negócio

Preserve a separação entre estas camadas:

### Marketplace

A plataforma organiza a relação entre clientes-produtores e prestadores de serviços rurais.

- Clientes-produtores compram ativos rurais disponíveis no marketplace.
- Clientes-produtores contratam serviços para manter, operar, armazenar ou manejar esses ativos.
- Prestadores de serviços executam a parte operacional conforme o tipo de ativo.
- A plataforma deve comunicar taxas, custos, prazos, riscos e responsabilidades de forma simples antes de qualquer contratação.

### Operações com grãos

Cooperativas são os prestadores de serviços do negócio de grãos.

- A cooperativa pode comprar grãos em nome do cliente-produtor.
- A cooperativa pode armazenar os grãos.
- A cooperativa pode vender os grãos quando houver ordem ou regra operacional definida.
- A plataforma pode cobrar taxa pela compra, pela venda e pela armazenagem.

Os dados de preço do grão podem vir da Agromove ou de outra fonte definida pelo projeto. Quando citar uma fonte de preço, informe de onde veio o dado
e a data da consulta.

### Operações com gado de leite

Tutores de vacas são os prestadores de serviços do negócio de gado de leite.

- O cliente-produtor pode comprar uma vaca leiteira ou outro ativo pecuário disponível no marketplace.
- O tutor de vaca cuida do manejo, alimentação, bem-estar e rotina operacional do animal conforme contrato de serviço.
- A plataforma deve explicar de forma simples quais tarefas ficam com o tutor, quais custos existem e quais riscos fazem parte da atividade rural.

Identidade e evidências do animal:

- Cada animal admitido pode ter um NFT de ciclo de vida na blockchain Base, vinculado à identidade oficial do animal quando houver registro aplicável.
- GTA, notas fiscais, registros veterinários, brincos físicos, fotografias, geolocalização e atestações independentes sustentam o pacote de
  evidências.
- Registros sensíveis devem ficar fora da blockchain, com acesso controlado. A blockchain deve guardar apenas referências, eventos e hashes
  necessários para rastreabilidade.

### Tecnologia e tokenização

A tokenização deve ser apresentada como ferramenta de registro, organização, rastreabilidade e transparência.

- Não apresente tokenização como fonte de ganho financeiro.
- Não diga que um token garante valorização, renda, liquidez ou venda futura.
- Não transforme o NFT do animal em item colecionável ou promessa de lucro.
- Explique a blockchain como um livro de registros digitais que ajuda a acompanhar eventos do ativo rural.

## Terminologia de marca

Use os termos abaixo de forma consistente em textos de marketing, produto, atendimento e documentação pública.

- **Cliente-produtor:** pessoa que compra ativos rurais e contrata serviços para cuidar deles.
- **Produtor rural urbano:** forma simples de explicar a pessoa que mora na cidade, mas passa a participar de uma atividade rural por meio da
  plataforma.
- **Ativo rural:** bem ligado ao campo, como grãos, vaca leiteira ou outro ativo aprovado pelo marketplace.
- **Prestador de serviço rural:** quem executa o trabalho de campo para o cliente-produtor.
- **Cooperativa:** prestadora de serviço nas operações com grãos.
- **Tutor de vaca:** prestador de serviço que cuida do manejo de vacas leiteiras.
- **Marketplace rural:** ambiente onde clientes-produtores compram ativos rurais e contratam serviços ligados a esses ativos.
- **NFT do animal:** registro digital usado para organizar evidências e acompanhar eventos do ciclo de vida de uma vaca.
- **Blockchain Base:** tecnologia usada para registrar referências e eventos digitais. Explique como um livro de registros digitais.
- **SISBOV:** sistema oficial brasileiro de identificação e rastreabilidade de bovinos e bubalinos. Explique apenas quando for relevante para o texto.
- **GTA — Guia de Trânsito Animal:** documento oficial usado para movimentação de animais. Explique apenas quando for relevante para o texto.

Não presuma que a leitora compreenda siglas. Se a sigla não ajudar a decisão da cliente, prefira explicar a ideia em linguagem comum.

## Regras de valor, custos e resultados

A marca nunca promete retorno. O projeto deve ser apresentado como marketplace de ativos e serviços rurais.

- Explique que o cliente-produtor compra ativos rurais e contrata serviços para manter esses ativos.
- Mostre que ativos rurais podem ter variação de preço, custos de manutenção, custos operacionais, perdas, atrasos e riscos naturais do campo.
- Quando falar de resultado financeiro, deixe claro que ele depende de preço de compra, preço de venda, custos, taxas, produtividade, clima, saúde
  animal, logística e condições de mercado.
- Não use linguagem de promessa, garantia ou rendimento previsível.
- Não diga que a pessoa receberá renda fixa, renda passiva, lucro recorrente ou pagamento garantido.
- Não apresente simulações como promessa. Sempre chame de exemplo, cenário ou estimativa.
- Não esconda taxas. Explique de forma simples quando há taxa de compra, venda, armazenagem, manejo, tecnologia ou serviço.
- Não trate tokenização como motivo para ganhar dinheiro. A tecnologia deve aparecer como apoio para registro, rastreabilidade e organização.

## Cuidados de comunicação

Este repositório orienta marketing, produto e pesquisa de negócio. Ele não é aconselhamento jurídico, contábil, tributário, veterinário ou financeiro.

Antes de publicar materiais para clientes, parceiros ou prestadores de serviços, revise se o texto:

- explica o que a pessoa está comprando;
- explica qual serviço será contratado;
- separa claramente ativo rural, serviço rural e tecnologia;
- mostra custos e riscos em linguagem simples;
- evita promessas de ganho, garantia, liquidez ou revenda;
- não cria a impressão de que a blockchain substitui contrato, nota fiscal, documento rural, cadastro ou atendimento humano;
- não diz que o NFT prova sozinho que o animal existe, está saudável, está livre de problemas ou pertence ao projeto;
- não diz que a plataforma controla tarefas que são responsabilidade da cooperativa ou do tutor de vaca;
- usa exemplos realistas e marcados como exemplos.

## Padrões de pesquisa

### Hierarquia de fontes

Prefira fontes primárias e oficiais:

1. Leis e regulamentos brasileiros e publicações oficiais do governo.
2. MAPA, Receita Federal, órgãos estaduais oficiais, fontes públicas de preço e bases oficiais relevantes para ativos rurais.
3. Embrapa, CEPEA, Epagri/Cepa, Emater/RS-Ascar e pesquisas acadêmicas reconhecidas.
4. Documentação oficial de prestadores de serviço para integrações técnicas.
5. Fontes secundárias de boa reputação somente quando não houver material primário disponível.

Para temas dos Estados Unidos, prefira SEC, CFTC, FinCEN, IRS, reguladores estaduais, leis e documentação oficial de stablecoins ou protocolos.

### Trabalho sensível ao tempo

- Pesquise na web e verifique regulamentos, regras tributárias, preços de mercado, taxas de juros, especificações de produtos, comportamento de APIs e
  funções institucionais no momento da tarefa.
- Registre a data exata de acesso ou publicação quando for relevante.
- Use links diretos para a página ou o documento de suporte.
- Diferencie fatos obtidos de fontes das inferências do agente.
- Não cite uma página de resultados de busca como evidência.
- Não preserve uma URL quebrada ou não verificada apenas porque ela apareceu em um memorando antigo.
- Trate números, preços, custos e conclusões antigas como históricos até que sejam atualizados.

### Trabalho quantitativo

- Mostre unidades, moeda, período, data da fonte e fórmulas.
- Mantenha fatos obtidos de fontes separados das premissas.
- Use intervalos e análises de sensibilidade quando as evidências não sustentarem uma estimativa pontual precisa.
- Reconcilie os totais e destaque dados ausentes.
- Nunca invente desempenho de fazendas, quantidade de animais, cobertura de seguro, parceiros, registros, vendas ou compromissos de clientes.

## Comunicação de marketing

- Comece pela transformação simples: pessoas da cidade podem se tornar produtoras rurais comprando ativos rurais e contratando serviços para
  mantê-los.
- Explique primeiro o ativo e o serviço. Fale de tokenização depois, como tecnologia de apoio.
- Use exemplos próximos da vida da cliente: compra, cuidado, armazenagem, venda, nota, prazo, custo e acompanhamento.
- Explique grãos e gado de leite separadamente.
- Para grãos, fale de cooperativas, compra, armazenagem, venda, taxas e preço de mercado.
- Para gado de leite, fale de vaca, tutor de vaca, manejo, alimentação, bem-estar, custos e acompanhamento.
- Alinhe as afirmações ao estágio real do projeto. Use “estamos estruturando”, “desenhado para” ou “pretendemos” até que a execução esteja
  documentada.
- Não descreva parceiros planejados, aprovações, integrações, seguros, auditorias ou operações como concluídos sem evidências no repositório.
- Evite qualquer linguagem que pareça promessa de dinheiro fácil.
- O tom deve ser claro, humano, responsável e acolhedor.

## Método de trabalho dos agentes

Antes de realizar trabalho substancial:

1. Leia este arquivo.
2. Leia todos os arquivos diretamente relevantes à solicitação.
3. Execute `git status --short --branch`.
4. Inspecione as alterações existentes e preserve o trabalho não relacionado.
5. Identifique quais afirmações exigem verificação atual na web.

Durante o trabalho:

- Faça a menor alteração que atenda completamente à solicitação.
- Siga a estrutura e a terminologia existentes.
- Mantenha as análises de grãos e gado de leite separadas, salvo quando a comparação for explicitamente solicitada.
- Não altere silenciosamente a arquitetura jurídica ou econômica.
- Não sobrescreva nem descarte alterações de outro agente ou do usuário.
- Não crie fatos fictícios para preencher lacunas. Declare a incerteza ou adicione um TODO claramente identificado quando o usuário solicitar um
  marcador persistente.
- Use datas absolutas em vez de termos ambíguos como “hoje” ao registrar pesquisas.
- Mantenha segredos, credenciais, dados pessoais, listas de clientes, parceiros, prestadores, coordenadas de fazendas e registros não públicos de
  animais fora dos arquivos versionados.

Após o trabalho:

1. Releia a solicitação do usuário e verifique todos os requisitos.
2. Revise os arquivos alterados.
3. Execute as verificações apropriadas ao artefato.
4. Execute `git diff --check` quando o repositório possuir um commit de base.
5. Informe o que mudou, o que foi verificado e quaisquer premissas ou bloqueios restantes.

Não declare a conclusão sem evidências recentes de verificação.

## Convenções de arquivos e documentação

- Use UTF-8 e Markdown para pesquisas e documentação do projeto.
- Use nomes de arquivos claros, descritivos e em letras minúsculas, com datas no formato `YYYY-MM-DD` quando o documento for um retrato datado.
- Mantenha pesquisas duradouras em `research/`.
- Prefira atualizar uma análise canônica existente em vez de criar versões concorrentes, salvo quando o usuário solicitar um novo retrato datado.
- Mantenha os links das fontes próximos às afirmações que sustentam ou em uma seção de fontes claramente organizada.
- Use português brasileiro em toda a comunicação e documentação. Use outro idioma somente quando solicitado ou quando um artefato destinado a outro
  país exigir isso. Escreva de forma concisa, como se explicasse a uma mulher de 35 anos, mãe, sem conhecimento técnico de tokenização ou agronegócio.
- Defina as siglas no primeiro uso em documentos destinados a clientes, parceiros ou prestadores de serviços.
- Mantenha código, contratos, dados, modelos financeiros e minutas jurídicas em diretórios claramente separados caso esses tipos de artefato sejam
- Use nomes de arquivos claros, descritivos e em letras minúsculas.
- Arquivos dentro de `research/` **não devem conter datas no nome**. Eles devem
  ser tratados como documentos vivos, sempre atualizados e evoluídos no mesmo
  arquivo.
- Nunca duplique documentos de `research/` para criar versões datadas ou
  concorrentes. Quando houver nova informação, atualize o documento canônico
  existente.
- Datas de coleta, publicação, acesso ou atualização devem ficar no conteúdo do
  documento, próximas às fontes e afirmações relevantes, não no nome do arquivo.
- Mantenha pesquisas duradouras em `research/`.
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
- Registre decisões duradouras de negócio em um documento de marca, produto ou decisão claramente nomeado.
- Registre URLs e datas das fontes para pesquisas que outro agente possa precisar auditar.
- Deixe a árvore de trabalho em um estado compreensível.
- Resuma trabalhos incompletos e bloqueios na resposta final; não os esconda apenas no raciocínio da conversa.
- Não adicione instruções específicas de fornecedor que contradigam este arquivo.
- Se arquivos de entrada específicos de fornecedor, como `CLAUDE.md` ou `GEMINI.md`, forem adicionados posteriormente, mantenha-os curtos e oriente
  esses agentes a ler o `AGENTS.md` em vez de duplicar toda a configuração.

## Regras de Git e GitHub

- O repositório usa a branch `main`, salvo quando o usuário especificar outro fluxo de trabalho.
- Inspecione o status antes de editar.
- Não use comandos destrutivos como `git reset --hard`, checkout forçado, reescrita de histórico ou force-push sem autorização explícita do usuário.
- Não faça stage, commit, push, abra pull request, crie release ou modifique um remoto, salvo quando o usuário solicitar.
- Mantenha os commits focados e não inclua alterações não relacionadas.
- Nunca faça commit de credenciais, chaves privadas, tokens de acesso, arquivos `.env`, informações confidenciais de clientes, parceiros, prestadores
  ou dados pessoais ou de animais sujeitos a regulação.
- A CLI do GitHub pode estar disponível, mas a autenticação não implica permissão para alterar o estado no GitHub.

## Estado atual do repositório

No momento em que este arquivo foi criado:

- o repositório está inicializado na branch `main`;
- ainda não há um commit de base;
- o principal artefato de orientação dos agentes é este `AGENTS.md`.

Esta seção é informativa e pode ficar desatualizada. Sempre verifique o estado atual do Git em vez de depender dela.

## Formatação de arquivos

Todas as linhas dos arquivos-fonte podem chegar até 160 colunas.
