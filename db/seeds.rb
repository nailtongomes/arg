# encoding: UTF-8
User.create!([:name =>  "Nailton G. Silva",
  :email => "nailtongomes@ig.com.br",
  :password => "123456",
  :password_confirmation => "123456",
  :admin => true], :without_protection => true)

User.create!([:name =>  "Administrador",
  :email => "nailtongomes@outlook.com",
  :password => "123456",
  :password_confirmation => "123456",
  :admin => true], :without_protection => true)

User.create!(:name =>  "Analista",
:email => "analista@ig.com.br",
:password => "123456",
:password_confirmation => "123456")

User.create!(:name =>  "Moderador",
:email => "moderador@ig.com.br",
:password => "123456",
:password_confirmation => "123456",
:moderator => true)

Argument.create!([:content =>  %{No delito de furto/roubo quando há clandestinidade e ausência de testemunhas, assume-se que
                 predomina o interesse da vítima de apontar o culpado e não condenar o inocente. Deste modo,
                 se a vítima declara em seu relato (...), então, é necessário que sua declaração assuma significativa eficácia probatória.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Do caso se extrai que: a) não há testemunhas; b) inexistem inimizades entre a vítima e o acusado; e
                 c) o relato da vítima está coerente com o conjunto probatório. Portanto, é plausível atribuir maior valor à palavra
                 da vítima.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Em razão da subtração e inversão de posse do bem sem a anuência da vítima, além de que o
                 acusado utilizou de grave ameaça para reduzir a zero a resistência da vítima e sequer houve perseguição,
                 tendo o acusado, instantaneamente, logrado a posse pacífica do objeto, não resta a menor dúvida,
                 quanto a configuração do roubo em sua forma consumada.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{É plausível reconhecer o furto pois houve a inversão da posse do bem da vítima para o agente sem a sua anuência,
                  sendo irrelevante a presença ou não da vítima no momento da subtração.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Reconheço e aplico o princípio da insignificância no furto, pois os seguintes requisitos estão presentes:
                 a mínima ofensividade da conduta do agente; a ausência de periculosidade social; o reduzido grau de reprovabilidade no comportamento;
                 a inexpressividade da lesão jurídica; a pouca importância do objeto material da vítima, considerando sua situação econômica;
                 o valor sentimental do bem; e as circunstâncias e resultados do crime.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Anota-se que está configurado o furto famélico, dado que o acusado estava involuntariamente em
                 situação de extrema penúria; para ele inexistiam condições lícitas de saciar a fome e o furto era a última opção que
                 o acusado possuia para presevar a sua saúde e vida;
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Entendo que a subtração de cartão de crédito não configura o crime de furto face ao princípio da insignificância,
                 pois basta a comunicação do fato à instituição financeira que a reposição do cartão é efetuada gratuitamente.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Resta configurado o furto mínimo haja vista a primariedade do acusado e o valor do bem subtraído
                 que não ultrapassa o valor do salário mínimo ao tempo do crime, sendo de pequeno valor, todavia, não de valor ínfimo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Deixo de reconhecer o furto privilegiado em razão da qualificadora de abuso de confiança
                 que inibe o seu reconhecimento.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Há elementos nos autos que apontam para a utilização de arma de fogo pelo agente e,
                 apesar de tais armas não terem sido apreendidas e periciadas, a regra é de que elas possuam potencial lesivo.
                 Deste modo, reconheço a qualificadora de emprego de arma de fogo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Os depoimentos das vítimas apontam para a utilização de arma de fogo pelo agente no roubo, porém
                 tais armas não foram apreendidas e periciadas, ou seja, inexitem provas que a arma empregada possuia condições de uso.
                 Deste modo, reconheço que arma configura a grave a ameaça, mas deixo de reconheçer a qualificadora de emprego de arma de fogo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Anoto que é irrelevante para o reconhecimento da causa de aumento, qual ou quais do agentes utilizava armas,
                 pois a majorante se estende a todos os co-autores do crimes, sendo, aqui, em todos os roubos denunciados,
                 pacífico que ao menos um roubador ameaçou as vítimas com uma arma de fogo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Trata-se, aqui, de concurso formal impróprio, pois os agentes, mediante uma só ação dolosa, mas resultante de
                 desígnios autônomos (pois eram conhecedores de que duas as vítimas, com patrimônios distintos), com uso de violência e
                 grave ameaça à pessoa, praticaram dois crimes da mesma espécie e idênticos.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Quando existem quatro ou mais pessoas (maiores ou menores) com efetiva compreensão do que fazem;
                 o espírito associativo e duradouro entre os membros do bando; e a intenção de cometer mais de um delitos determinados,
                 há o crime de quadrilha.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Assumindo que a infração penal não é mera violação da regra. É mais que isso, é violação do bem jurídico,
                 numa perspectiva de resultado e de relevância da ofensa ao bem jurídico protegido. Entende-se que a arma desmuniciada e
                 desmontada não representa absolutamente nenhum risco de perigo ao bem jurídico incolumidade pública, pois ela precisa ser
                 eficaz. Nessa esteira, não comete o crime de porte ilegal de arma de fogo, previsto na Lei nº 10.826/03, aquele que tem
                 consigo arma de fogo desmontada e desmuniciada.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Com fulcro no  art. 14, caput, da Lei nº 10.826/03, entende-se que está configurado o crime de porte ilegal
                 de arma de fogo quando o acusado tem arma em sua mão, no momento da prisão, ou a mantinha convenientemente nas proximidades,
                 em condições de pegá-la rapidamente se tal fosse necessário, ainda que a arma estivesse desmuniciada ou ineficaz,
                 pois o simples porte do instrumento proibido resulta em risco à coletividade.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Em relação à ocorrência da qualificadora do concurso de pessoas não há dúvidas quanto a sua configuração,
                  pois a prova nos autos é clara quanto à participação e cooperação de mais de dois agentes durante a execução do crime.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Haja vista a participação do acusado em conluio com um adolescente, resta configurado o delito de corrupção
                 de menores do art. 244-B da Lei nº 8.069/90, em concurso formal (art. 70, CP) com o crime de
                 furto do art. 155,  §4º, IV do Código Penal.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{A materialidade e a autoria do delito descrito no art. 14, da Lei nº 10.826/03, encontram-se
                 consubstanciadas no Auto de Prisão em Flagrante Delito de fls. xx, no Auto de Exibição e Apreensão de
                 fl. xx – onde se constata que em poder do acusado foram apreendidos o revólver calibre 38 descrito na denúncia -,
                 no Laudo de Exame em Arma de Fogo e Munições de fls. xx, na confissão do acusado e na prova testemunhal colhida.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{No Laudo de Exame em Arma de Fogo e Munições de fls. xx, os peritos concluíram
                  “[...] estar a arma de fogo em condições de uso e poder de realização de disparo, e ter sido positiva a pesquisa de pólvora
                 no interior do cano dela”. Dessa forma, provada está a potencialidade lesiva da arma em questão.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Incide, na hipótese, a circunstância atenuante prevista no art. 65, inciso III, alínea d, do Código Penal,
                  já que o acusado confessou espontaneamente a autoria do delito.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Creio, então, que as provas são suficientes à condenação, tendo em conta que restaram demonstradas as
                  qualificadoras dos incisos I e II, do § 2º, do artigo 157, pouco importando que a arma não tenha sido periciada
                 (Terceira Seção do STJ, EResp 961863) ou que estivese desmuniciada; ou mesmo que o co-autor não tenha sido identificado,
                 já que sua existência é incontroversa nos autos (TJDF, Ap. 13.093, DJU 22.9.93, p. 39110, in RBCCr 4/177).
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Não há falar, entretanto, em porte ilegal de arma de fogo, já que tal crime restou absorvido pelo roubo
                 majorado, não restando comprovada a autonomia da conduta a autorizar a condenação nas penas do artigo 14,
                 da Lei nº 10.826/2003, como pretendido na denúncia.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Dado que a ausência de avaliação formal do bem subtraído não afasta o
                 reconhecimento do ínfimo valor da res e as palavras da vítima e de uma testemunha presencial apontaram para valor do bem e
                 do prejuízo sofrido, aproximadamente R$ 104,00 reais, incluídos os litros quebrados e a vidraça, há, portanto,
                 in casu, a conjugação de dois fatores ínsitos ao reconhecimento do crime de bagatela e do princípio da insignificância:
                 insignificância social do fato e conduta e dano bagatelares.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{O agente não teve o dolo de sequestrar F_____ ou mantê-la
                 em cárcere privado, uma vez que nem ele mesmo a tinha à disposição a sua própria liberdade, uma vez que estava acuado em um
                 canto do estabelecimento comercial, temendo a polícia. Mas é bem verdade que a constrangeu a ficar em seu poder, sem sair
                 da frente da mira dos policiais, sob pena de atirar nela. Assim, entendo ter havido a figura típica descrita no art. 146 do CP.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Entendo que a materialidade do crime de homicídio se acha devidamente provada neste processo através do laudo
                 de exame cadavérico aportado à página xx destes autos e a sua autoria por parte da pessoa do réu se encontra devidamente
                 provada não somente pelos depoimentos das testemunhas que foram inquiridas judicialmente – fls. xx a xx - mas também pelo
                 laudo de reprodução simulada de acidente de trânsito com vitima fatal, o qual se acha entranhado da folha xx à página xx
                 deste caderno processual.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{A rigor, o réu cometeu um crime de homicídio na direção de veículo automotor, porquanto, dirigindo um ônibus
                 da empresa T_____ no exercício do seu labor de motorista profissional, invadiu, de inopino, a outra faixa de sua mão na avenida,
                 cortando a corrente natural de tráfego que se desenvolvia naquela estrada, colidindo com a motocicleta que estava sendo
                 conduzida pela vítima, causando-lhe, por conseguinte, o seu óbito.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Malgrado o inculpado haja afirmado em sede judicial, quando o interroguei em audiência, que houvera sinalizado
                 para convergir à esquerda, esta sua atitude não basta para eximi-lo da responsabilidade penal, visto como somente ele deveria
                 realizar esta conversão quando tivesse a certeza que poderia adentrar na corrente dos carros que trafegavam pela referida faixa
                 da aludida avenida, sem colidir eventualmente com algum daqueles veículos.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Mesmo sabendo que a conversão à esquerda constituía-se como uma manobra perturbadora do fluxo do trânsito,
                 decidiu fazê-la de tal maneira que, em razão desta sua conduta eminentemente imprudente,
                 resultou no fúnebre evento da morte da pessoa da vítima.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Dúvida não há de que foi o acusado quem deu causa ao resultado quando parou o ônibus coletivo sobre a
                 passagem de nível, sem observar com a devida atenção se vinha trem. E, de qualquer forma, em matéria penal inexiste a
                 compensação de culpas.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Em matéria de crimes contra o patrimônio, a palavra da vítima, quando narra de forma coerente e segura os fatos,
                 demonstrando que o único objetivo é apontar os verdadeiros culpados pelo delito, merece credibilidade e é suficiente para
                 embasar uma condenação.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Relativamente à causa de aumento do emprego de arma no crime de roubo, há de se observar que sua apreensão é
                 dispensável, quando comprovado seu uso pela prova testemunhal ou pelas declarações seguras de vítima.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{O emprego de arma, no roubo, é circunstância objetiva que o agrava, desse modo, comunica-se ao co-autor,
                 ainda que apenas um deles a tenha utilizado. Portanto, importará no aumento de pena de todos os agentes se apenas um deles
                 faz uso da arma de fogo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Não há como prevalecer a alegação de que F_____ foi mero partícipe no roubo em causa, posto que sua atuação foi
                 decisiva para a prática do crime, planejando-o, alugando a moto em que iriam até o local do assalto, permanecendo do lado de
                 fora da farmácia, dando segurança e cobertura a um outro indivíduo que, com o uso de arma, ameaçou e subtraiu o dinheiro da
                 farmácia, aguardando esse outro indivíduo, com o produto do roubo, para dar-lhe fuga e garantir, assim, a consumação de tudo o
                 que foi planejado.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{O crime de dano cuida da típica infração penal que deixa vestígios materiais e por essa razão, faz com que seja
                 necessário o exame pericial para a sua caracterização, a teor do que dispõeo art. 158 do Código de Processo Penal.
                 Tal se deve para a comprovação da materialidade do delito. No caso em exame, contudo, essa regra é de ser mitigada.
                 Isso porque não apenas o réu confessou, em juízo, ter danificado o telefone público na data mencionada na denúncia em razão de
                 sua embriaguez, como também as testemunhas ouvidas corroboraram esse fato e, principalmente, no CD anexado aos autos, consta
                 uma fotografia digital do telefone público pendurado e com seu bocal inteiramente danificado.
                 Ou seja, não restam dúvidas de que dano houve e que o réu foi o seu autor.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Como o orelhão é um bem pertencente à empresa de telefonia concessionária de serviço público, a conduta do
                  réu incide na forma qualificada prevista no parágrafo único, inciso III, do art. 163 do Código Penal.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Quanto ao delito de ato obsceno, verifico que ficou de todo comprovado. O réu não negou que exibiu suas
                  nádegas em público, além de que o depoente F_____ atestou de forma veemente a ocorrência de tal fato.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{O fato de a vítima ter acionado a polícia noticiando o crime, comparecido para depor no inquérito, e em juízo,
                  caracterizam o seu desejo de processar o réu, suprindo a representação, que não precisa ser formal.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Como os delitos foram independentes, a espécie de concurso de crimes a incidir é a do cúmulo material,
                  previsto no art. 69 do Código Penal.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Ressalta-se, outrossim, que não há que se falar no reconhecimento do furto privilegiado do §2, art. 155,
                 do Código Penal, pois o bem subtraído não foi de pequeno valor, já que um aparelho celular tem valor considerável
                 diante da realidade do país.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Laudo Pericial Balística, em conclusão, afirma que a arma de fogo encontrava-se em condições de uso e
                 poder de realização de disparo. Para tanto, pelo fato de não restar provado se a referida arma encontrava-se municiada,
                 em face do princípio do in dubio pro reo, deixo de aplicar a majorante prevista no inciso I, §2º do artigo 157 do CP.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{A vítima, inquirida pela autoridade policial, respondeu que vinha da comemoração da boate T_____, com vários
                 amigos, quando um elemento alto de cor morena puxou de seu pescoço um cordão de cor prata e saiu correndo.
                 A vítima com seus amigos correram atrás e o conduzido ameaça que ia atirar, até que apanhou uma arma que estava escondida e
                 apontou para a vítima e os demais amigos que recuaram. Acionaram a oolícia que conseguiu deter o conduzido.
                 Logo, não resta dúvida que a conduta do acusado encontra adequação no tipo penal do art. 157, §1º do Código Penal.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Uma vez presentes os elementos caracterizadores do delito, quais sejam: a) o emprego, pelo agente, de artifício,
                 ardil ou qualquer outro meio fraudulento; b) induzimento ou manutenção da vítima em erro;
                 c) obtenção de vantagem patrimonial ilícita pelo agente; e d) prejuízo alheio, resta configurado o estelionato.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Diz-se que o delito de estelionato restou consumado quando obtida a vantagem ilícita, ainda que por pouco tempo,
                 ou seja, é crime instantâneo, sendo irrelevante que o agente não disponha, após a sua consumação, de prazo para a fruição
                 da vantagem obtida.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Conquanto tenha os acusados se valido de documentos falsos, para obtenção de vantagem indevida, é curial que
                 na especie o crime de uso de documento falso restou absorvido pelo crime de estelionato. Portanto, quando o uso de documentos
                 falsos é um meio para a prática de estelionato, o réu não pode ser condenado pelos dois crimes.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{No que diz respeito à ausência de prova pericial para o reconhecimento da falsidade do documento,
                 registro que tal prova não se faz necessária, quando comprovada pelos demais elementos dos autos.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Se o agente não logra deter a posse mansa e pacífica da coisa subtraída, responderá pelo delito de roubo em
                 sua forma tentada.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Entendo que não cabe na espécie o agravamento da pena pelo uso de arma, visto que ficou demonstrado que as
                  armas empreendidas no assalto eram de brinquedo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Não se pode majorar a pena pelo emprego de arma de fogo sem a apreensão e a realização de perícia para se
                 determinar que o instrumento utilizado pelo paciente, de fato, era uma arma de fogo, circunstância apta a ensejar o maior
                 rigor punitivo.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{No caso concreto, contudo, considerando que as armas não foram apreendidas, sua perícia se mostraria
                 impossível, eis que seria necessário primeiro apreendê-las para então examiná-las, de modo que tanto os depoimentos
                 testemunhais quanto a confissão poderiam suprir a ausência do exame. Apesar desta possibilidade, a análise dos depoimentos
                 revela que nenhuma das testemunhas ouvidas ou mesmo os acusados em suas confissões indicaram que as armas portadas tinham
                 capacidade lesiva, sendo, portanto, impossível presumi-la.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{É imperioso destacar que a confissão do acusado, quando amparada por outros elementos de prova,
                 é bastante para a condenação.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Analisando o tipo supra transcrito à luz do presente caso concreto firmo o entendimento de que o delito em
                 questão, em hipótese alguma fora cometido em legítima defesa. Oras, não houve o emprego de meios necessários e moderados
                 nem repressão a injusta agressão.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Para que o crime de ameaça seja configurado, deve o mal que se prenuncia ser injusto e grave,
                 salvo quando a suposta ameaça é feita em momento de cólera, revolta ou ira, ou quando a vítima não lhe dá maior crédito.
                 Nessa esteira, portanto, é impossível se armar de uma faca peixeira durante uma discussão, sem no mínimo,
                 ter a intenção de amedrontar ou intimidar o outro.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Não há dúvidas sobre a materialidade do crime de maus tratos, pois o próprio apelante disse que a vítima
                 vivia suja e malcheirosa, além de haver afirmado "considerar sua casa pior do que um cabaré" (fl. xx),
                 dado que sessões de filmes pornôs com vizinhos e amigos e orgias regadas a muito álcool ali eram realizadas,
                 tudo na presença da menor.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Os maus tratos a que foi submetida a vítima são mesmo indizíveis. Não bastasse ser extremamente malcuidada e
                 obrigada a assistir às farras de sua mãe e do apelante – bancadas, aliás, com o benefício previdenciário recebido pela vítima –,
                 a menor F_____ foi estuprada pelo recorrente e dele engravidou, tendo a sua vida sido posta em sério risco, consoante certifica
                 o atestado médico de fl. xx. E mais, seus guardiães – se assim se os pode chamar – tão-logo souberam de sua gravidez,
                 procuraram, sem sucesso, provocar o aborto do feto, fazendo a vítima ingerir preparados que, na mitologia popular,
                 supostamente interromperiam a gestação. A conduta do apelante, portanto, se amolda perfeitamente ao tipo do art. 136 do CP.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Com base no art. 129, §2º, IV do CPB, assume-se que a deformidade deve, além de ser aparente,
                 causar constrangimento à vítima perante a sociedade e precisa ser significativa, a ponto de causar vexame ao portador e
                 repulsa a quem vê. Posto que: não há, no processo, qualquer elemento para que se possa aferir a natureza das lesões;
                 no caso dos autos, a vítima com cicatrizes nos ombros e pescoço, compareceu a este plenário, com uma blusa de alça, sem demonstrar qualquer
                 constrangimento ou complexo; o Laudo de Exame de Lesão Corporal de fls. 39/39v atinente a vítima, é expresso no sentido de
                 que da ofensa não resultou perigo de vida à vítima e nem incapacidade para as ocupações habituais por mais de trinta dias;
                 e a esta prova, a própria vítima corroborou a ocorrência, sem divergir dos fatos descritos na prova técnica. Deste modo,
                 é necessário entender que a lesão sofrida pela vítima foi de natureza leve.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{É sabido que em alguns tipos de crimes, o depoimento isolado da vítima é importante para o deslinde da questão,
                 principalmente naqueles em que a conduta é praticada às escondidas, como o de furto ou mesmo crime sexual, dependendo muitas
                 vezes das circunstâncias que envolvem o caso. Todavia, no caso presente, é temeroso aceitar o depoimento isolado da vítima nas
                 circunstâncias ocorridas, principalmente quando a ação é praticada em razão de animosidade das partes, sem a presença de
                 testemunhas, gerando dúvidas para o julgador, em razão das próprias circunstâncias.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Absolvição do acusado no presente caso impõe-se em face da insuficiência de provas e da
                 consequente aplicação do princípio do in dúbio pro reo – favor rei ao presente feito.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Assim, considerando que o acusado chegou até o teto do prédio para conseguir retirar as telhas sem o auxílio de
                 qualquer instrumento de escalada, prédio este que, segundo as testemunhas era bastante alto, o delito de furto foi
                 praticado mediante escalada.
                 },
  :user_id => 1], :without_protection => true)

Argument.create!([:content =>  %{Numa análise dos fatos, se percebe dos depoimentos dos acusados que ambos tinham consciência da ilicitude dos
                 atos praticados por eles, pois, afirmam que pleitearam junto a uma pessoa conhecida por F_____, a emissão de documentos falsos,
                 tendo com estes, aberto contas bancárias, recebido talonários de cheques, cartões de crédito e feito compras no comércio local
                 e empréstimo CDC no Banco do Brasil. Ora, bem analisando a conduta dos acusados, constata-se que os mesmos praticaram o crime
                 de estelionato previsto no art. 171, caput do CP.
                 },
  :user_id => 1], :without_protection => true)

Fact.create!(:content =>  %{Caim e o seu irmão mais novo Abel, em determinada ocasião, deram presentes ao seu pai. Caim entregou frutas que havia cultivado e Abel entregou as primeiras ovelhas que nasceram do seu rebanho. O presente de Abel teria agradado, enquanto o de Caim, não. Após essa ocasião, Abel teria provocado Caim com as seguintes palavras: "Você é uma decepção para nosso pai." Possuído por ódio e ciúmes, Caim arquitetou uma emboscada para seu irmão. Sugeriu a Abel que ambos fossem ao campo e, lá chegando, Caim esfaqueou seu irmão.
        },
:problem => %{Como PROMOTOR de justiça, elabore o argumento que irá compor a denúncia.},
:active => true,
:user_id => 2
)

Fact.create!(:content =>  %{Pedro, temeroso de assaltos, blinda seu automóvel na oficina de Antônio. Este, fraudulentamente, emprega vidros de resistência inferior. Certo dia, em um cruzamento de duas movimentadas ruas de Balneário do Norte, Pedro encontra-se parado com o veículo, aguardando o sinal verde. José, ilegalmente armado de revólver e pretendendo assaltá-lo, aproxima-se e lhe aponta a arma. Verificando que tratar-se de um automóvel blindado, desapontado, desiste. Ocorre que Pedro, percebendo o fracasso do bandido, lança-lhe um sorriso desdenhoso. José, respondendo à provocação, aponta-lhe a arma e dispara, supondo que irá apenas estilhaçar o vidro. O projétil, entretanto, atravessa-o e atinge a vítima, provocando-lhe a morte (Damásio de Jesus, com adaptações).
  <a href="http://pt.scribd.com/doc/7035019/Casos-Praticos-de-Direito-Penal-Direito-USP">[FONTE]</a>},
:problem => %{Como PROMOTOR de justiça, elabore o argumento que irá compor a denúncia.},
:active => true,
:user_id => 1
)

Sandarg.create!([:claim =>  "a lesão sofrida pela vítima foi de natureza leve",
  :ground =>  "não há, no processo, qualquer elemento para que se possa aferir a natureza das lesões; no caso dos autos,
a vítima com cicatrizes nos ombros e pescoço, compareceu a este plenário, com uma blusa de alça, sem demonstrar qualquer
constrangimento ou complexo; o Laudo de Exame de Lesão Corporal de fls. 39/39v atinente a vítima, é expresso no sentido de que
da ofensa não resultou perigo de vida à vítima e nem incapacidade para as ocupações habituais por mais de trinta dias; e
a esta prova, a própria vítima corroborou a ocorrência, sem divergir dos fatos descritos na prova técnica",
  :warrant =>  "a deformidade deve, além de ser aparente, causar constrangimento à vítima perante a sociedade e precisa ser significativa, a ponto de causar vexame ao portador e repulsa a quem vê",
  :backing =>  "art. 129, §2º, IV do CPB",
  :qualifier =>  "é necessário entender que",
  :content =>  %{Com base no art. 129, §2º, IV do CPB, assume-se que a deformidade deve, além de ser aparente, causar constrangimento à vítima perante a sociedade e precisa ser significativa, a ponto de causar vexame ao portador e repulsa a quem vê. Posto que: não há, no processo, qualquer elemento para que se possa aferir a natureza das lesões; no caso dos autos, a vítima com cicatrizes nos ombros e pescoço, compareceu a este plenário, com uma blusa de alça, sem demonstrar qualquer constrangimento ou complexo; o Laudo de Exame de Lesão Corporal de fls. 39/39v atinente a vítima, é expresso no sentido de que da ofensa não resultou perigo de vida à vítima e nem incapacidade para as ocupações habituais por mais de trinta dias; e a esta prova, a própria vítima corroborou a ocorrência, sem divergir dos fatos descritos na prova técnica. Deste modo, é necessário entender que a lesão sofrida pela vítima foi de natureza leve.},
  :overwrite =>  false,
  :user_id => 1], :without_protection => true)

Scheme.create!(:name => "Autoridade/Especialista",
:form => %{<b>PREMISSAS</b>&nbsp;<div>Fulano* é um especialista em Especialidade*;</div><div>Fulano* afirma que Declaração* é verdadeiro/falso;</div><div>Declaração* pertence à Especialidade*;&nbsp;<div><b><br></b></div><div><b>CONCLUSÃO</b>&nbsp;</div><div>É plausível que Declaração* seja verdadeira/falsa.</div><div><div><br></div><div><b>ESQUEMA DO ARGUMENTO</b><br></div><div><img src="http://i.imgur.com/86rDd.png" alt="" align="none"><br></div></div></div>
},
:cq =>  %{a) Fulano* é realmente um especialista em Especialidade*?
\r\nb) Fulano* realmente afirmou que Declaração* é verdadeira/falsa?
\r\nc) A declaração do especialista está em forma de citação direta? Se não, há referência à fonte original? Há como verificar?
\r\nd) Se a opinião do especialista não está em forma de citação, é possível que alguma informação importante ou qualificações tenham sido omitidas?
\r\ne) Se mais de uma fonte de especialidade foi citada, as citações estão devidamente separadas?
\r\nf) Existem divergências entre as autoridades citadas?
\r\ng) O que a autoridade disse está claro? Há termos técnicos usados que não foram esclarecidos?
\r\nh) Se o conselho/parecer está em termos leigos, isso poderia ser uma indicação de que foi traduzido a partir de alguma forma de expressão dada pelo especialista?
\r\ni) A Declaração* é relevante em/na Especialidade*?
\r\nj) A Declaração* está coerente com o que outros especialistas em Especialidade* dizem?
\r\nk) A Declaração* está coerente com as evidências conhecidas em Especialidade*?}
)

Scheme.create!(:name => "Testemunha",
:form => %{<b>PREMISSAS</b>
\r\nTestemunha* diz Declaração*
\r\n<b>CONCLUSÃO</b>
\r\nÉ plausível que a Declaração* seja verdadeira/falsa.
},
:cq =>  %{a) O que a testemunha diz está internamente consistente?
\r\nb) O que a testemunha diz está coerente com o suporte fático e com o que sustentam outras testemunhas?
\r\nc) Há ou pode existir algum tipo de tendência que pode ser atribuída ao relato dado pela testemunha?
\r\nd) A testemunha é confiável?}
)

Scheme.create!(:name => "Analogia",
:form => %{<b>PREMISSAS&nbsp;</b><div>Geralmente, CASO_1 é semelhante ao caso CASO_2&nbsp;</div><div>Propriedade_A* é verdadeiro (falso) no CASO_1&nbsp;</div><div><br></div><div><b>CONCLUSÃO&nbsp;</b></div><div>Propriedade_A* é verdadeiro (falso) no CASO_2</div>
},
:cq =>  %{<div>a) CASO_1 e CASO_2 são realmente similares na propriedade citada?</div><div>b) Propriedade_A* é realmente verdadeira (falsa) no CASO_1?</div><div>c) Existem diferenças entre CASO_1 e CASO_2 que tendem a minar/comprometer/enfraquecer a força da semelhança dos casos?</div><div>d) Existe um CASO_3 semelhante ao CASO_1 em que a Propriedade_A* é diferente?</div>
}
)

Scheme.create!(:name => "Causa e Efeito",
:form => %{<b>PREMISSAS</b><br>Geralmente, se FATO_A* ocorrer, FATO_B* irá (ou deverá) suceder.<br>Deverá FATO_A* ocorrer.<br><br><b>CONCLUSÃO</b><br>FATO_B irá (ou deverá) suceder.<br>
},
:cq =>  %{a) Quão forte é a causa de generalização (ela é sempre verdadeira)? <br>b) A evidência/fato citado - se existe algum(a) - é forte o bastante para garantir a generalização?<br>c) Há outros fatores que irão (ou podem) interferir ou anular a produção do efeito?
}
)

Page.create!(:key => "frase",
:value => %{<p style="margin-bottom: 0px; font-size: 16px; line-height: 22.5px; text-align: right; ">Não tema aqueles que argumentam, mas aqueles que se esquivam.</p><small style="font-size: 13px; display: block; color: rgb(153, 153, 153); text-align: right; ">Dale Carnegie</small>
}
)

Page.create!(:key => "estrutura_t",
:value => %{<span style="font-size: 14px; line-height: 24px; text-align: justify; ">Em um argumento existe uma proposição que propõe/reivindica/conclui algo, expõe um pedido ou sustenta determinado ponto de vista com base em razões ou dados (Claim). Estes, por sua vez, podem ser motivos, circunstâncias, fatos ou, sinteticamente, são o porquê de se pedir (Data/Grounds). Assim, dado que se tem pedido e uma causa de pedir, uma proposição estabelece, implícita ou explicitamente, um vínculo entre esses elementos (Warrant). Caso o vínculo precise ser validado, recorrer-se-á a uma proposição que o respalde, dê apoio, fundamento ou força (Backing). Igualmente, podem existir certas situações em que a conclusão não se sustenta, neste caso, uma proposição pode funcionar como ressalva/exceção (Rebuttal). Finalmente, determinada expressão delimita a força da conclusão (Qualifier).<br></span><br>
<p class="western" style="margin-bottom: 0cm; border: none; padding: 0cm" align="JUSTIFY">G - Razões; Q - Qualificador; C - Pretensão; W - Garantia; B - Respaldo; R - Refutação</p>
<br>
})

Page.create!(:key => "referencias",
:value => %{HAFT, F. <b>Direito e Linguagem</b>. In: KAUFMANN, A.; W. HASSEMER (org.). Introdução à filosofia e à teoria do direito contemporâneas. 2 ed. Lisboa: Fundação Calouste Gulbenkian, 2009.<br><br>HITCHCOCK, D. <b>Good reasoning on the Toulmin model</b>. Argumentation (2005) 19:373-391.<br><br>NEUMANN, U. <b>Lógica Jurídica</b>. In: KAUFMANN, A.; W. HASSEMER (org.). Introdução à filosofia e à teoria do direito contemporâneas. 2 ed. Lisboa: Fundação Calouste Gulbenkian, 2009.<br><br>REED, C.A.; ROWE, G.W.A. <b>Araucaria</b>: Software for Argument Analysis, Diagramming and Representation, International Journal of AI Tools 14 (3-4) pp961-980. 2004.<br><br>SCHNEIDER, J. <b>Processamento eletrônico de dados – Informática Jurídica</b>. In: KAUFMANN, A.; W. HASSEMER (org.). Introdução à filosofia e à teoria do direito contemporâneas. 2 ed. Lisboa: Fundação Calouste Gulbenkian, 2009.<br><br>TOULMIN PROJECT. University of Nebraska-Lincoln. Acesso em: 24 de junho de 2011. Disponível em: &lt; <a target="_blank" href="http://www.unl.edu/speech/comm109/Toulmin/index.htm"> http://www.unl.edu/speech/comm109/Toulmin/index.htm</a> &gt;<br><br>TOULMIN, S. <b>Os usos do Argumento</b>. 2. ed. São Paulo: Ed. Martins Fontes, 2006.<br><br>TOULMIN, S.; RIEKE, R.; JANIK, A. <b>An introduction to reasoning</b>. 2. ed. Nova Iorque: Ed. Macmillan, 2003.<br><br>WALTON, D.; REED, C.; MACAGNO, F. <b>Argumentation Schemes</b>. Nova Iorque: Ed. Cambridge University Press, 2008.
})

Page.create!(:key => "contato",
:value => %{Qualquer dúvida, sugestão, crítica &gt;&nbsp;<a href="https://twitter.com/nailtongomes" target="_blank">@nailtongomes</a>&nbsp;<br>
})

Page.create!(:key => "qualidade_t",
:value => %{<p>TOULMIN elenca as seguintes características ou méritos racionais que um argumento deve possuir: (TOULMIN et al., 2003. p.238)</p><hr style="border-bottom-color: white; ">a) Clareza sobre o tipo de questão que o argumento tenta levantar e o que é proposto implicitamente;&nbsp;<br>b) Dados relevantes e suficientes para sustentar a conclusão;&nbsp;<br>c) Garantia baseada sobre fundamento sólido e aplicável ao caso sob discussão;&nbsp;<br>d) Modalidade, ou força, da conclusão obtida deve ser feita de forma explicita e as possíveis refutações ou exceções devem ser bem entendidas.<p></p><hr style="border-bottom-color: white; "><p>David HITCHCOCK, em uma análise aprofundada ao modelo de TOULMIN, propôs os seguintes critérios de análise: (HITCHCOCK, 2005. p. 1)</p><hr style="border-bottom-color: white; ">a) Deve-se fundamentar o raciocínio em razões justificadas;&nbsp;<br>b) As razões devem incluir todas as informações relevantes e justificadas obtidas praticamente;&nbsp;<br>c) A conclusão deve seguir em virtude de uma garantia justificada;&nbsp;<br>d) Se a garantia não é universal, deve-se assumir que, no caso concreto, não há anuladores que excluem a aplicação da garantia.&nbsp;&nbsp;<br>
})

Page.create!(:key => "leituras",
:value => %{Artigo - <a href="http://argumentos.herokuapp.com/assets/art_bons.pdf" title="Bons Argumentos no Direito Penal" target="_blank">Bons Argumentos no Direito Penal</a>.<br>Guia - <a href="http://argumentos.herokuapp.com/assets/guia_prof.pdf" title="Guia de Orientação para Professores" target="_blank">Guia de Orientação para Professores</a>.
})

Page.create!(:key => "ajuda_log",
:value => %{<b><p>1. Como mudo minha foto?</p></b><p>O&nbsp;<a href="http://br.gravatar.com/">Gravatar</a>, um Avatar Globalmente Reconhecido, é o responsável por armazernar sua foto de perfil.</p><b><p>2. Posso enviar um caso?</p></b><p>Sim. Há uma opção de propor casos&nbsp;<a href="http://argumentos.herokuapp.com/facts">aqui</a>.</p><b><p>3. Como faço para acompanhar os argumentos de alguém?</p></b><p>Primeiro, clique em&nbsp;<a href="http://argumentos.herokuapp.com/users">usuários</a>. Em seguida, procure pelo usuário que você deseja acompanhar e clique em seu nome. Estando no perfil do usuário desejado, clique em seguir.</p><b><p>4. Posso editar meu argumento?</p></b><p>Não. O argumento não poderá ser editado.</p>
})

Page.create!(:key => "con_razoes",
:value => %{<p>uma vez que</p><p>pois</p><p>porque</p><p>haja vista que</p><p>dado as seguintes razões</p><p>a razão é que</p><p>ademais, sustenta-se essa pretensão em razão de</p>
})

Page.create!(:key => "con_pretensao",
:value => %{<p>portanto</p><p>logo</p><p>então</p><p>destarte</p><p>assim sendo</p><p>segue-se que</p><p>conclui-se que</p><p>ou seja</p>
})

Page.create!(:key => "con_garantia",
:value => %{<p>assumindo que</p><p>admitindo que</p><p>entende-se que</p><p>sabe-se que</p>
})

Page.create!(:key => "con_respaldo",
:value => %{<p>por conta do</p><p>amparado pelo</p><p>sustentado por</p><p>acolhido por</p><p>agasalhado pelo</p><p>com base no(a)</p>
})

Page.create!(:key => "qualificador",
:value => %{<p>não resta dúvida</p><p>é inconteste,</p><p>é inegável que</p><p>é invencível que</p><p>necessariamente</p><p>indubitavelmente</p><p>é inevitável</p><p>é irrefutável</p><p>é possível</p><p>é plausível</p><p>é provável</p><p>possivelmente</p><p>é necessário</p><p>estes fatos, aqui expostos, tornam inafastável que</p><p>o que é inequívoco é que</p><p>demonstra-se de forma irrefutável</p>
})

Page.create!(:key => "con_ressalva",
:value => %{<p>salvo se</p><p>exceto se</p><p>a não ser que</p><p>excluindo que</p><p>contanto que</p>
})

Page.create!(:key => "check_list",
:value => %{<p>Está clara a questão que o argumento tenta levantar?</p><p>Os dados/razões são relevantes, suficientes e justificados?</p><p>A garantia possui um fundamento sólido e aplicável ao caso?</p><p>O qualificador, ou força verbal do argumento, está explicito?<p><p>As possíveis refutações ou exceções, se existem, estão bem entendidas?<p>
})