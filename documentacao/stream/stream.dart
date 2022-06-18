void main() {
//! Obs: Stream,
  /// Uma fonte de eventos de dados assíncronos.
  /// Um ​​Stream fornece uma maneira de receber uma sequência de eventos.
  /// Cada evento é um evento de dados, também chamado de *elemento* do stream,
  /// ou um evento de erro, que é uma notificação de que algo falhou.
  /// Quando um stream tiver emitido todo o seu evento,
  /// um único evento "done" notificará o ouvinte de que o fim foi alcançado.
  /// Você produz um stream chamando uma função `async`, que então retorna
  /// um fluxo. Consumir esse fluxo levará a função a emitir eventos
  /// até que termine e o fluxo seja fechado.
  /// Você consome um stream usando um loop `await for`, que está disponível
  /// dentro de uma função `async`
  ///Exemplo:
  /// ```dart
  /// Stream<T> optionalMap<T>(
  ///     Stream<T> source , [T Function(T)? convert]) async* {
  ///   if (convert == null) {
  ///     return source;
  ///   } else {
  ///     await for (var event in source) {
  ///       return convert(event);
  ///     }
  ///   }
  /// }
  /// ```
  /// Quando esta função é chamada, ela imediatamente retorna um objeto `Stream<T>`.
  /// Então nada mais acontece até que alguém tente consumir esse fluxo.
  /// Nesse ponto, o corpo da função `async` começa a ser executado.
  /// Se a função `convert` foi omitida, o `return` escutará o
  /// `source` transmitir e encaminhar todos os eventos, datas e erros, para o retorno
  /// fluxo. Quando o stream `source` fecha, o `return` é feito,
  /// e o corpo da função `optionalMap` termina também. Isso fecha o retorno fluxo.
  /// Se um `convert` *é* fornecido, a função escuta na fonte
  /// stream e entra em um loop `await for` que
  /// espera repetidamente pelo próximo evento de dados.
  /// Em um evento de dados, ele chama `convert` com o valor e emite o resultado
  /// no fluxo retornado.
  /// Se nenhum evento de erro for emitido pelo stream `source`,
  /// o loop termina quando o stream `source` termina,
  /// então o corpo da função `optionalMap` é concluído,
  /// que fecha o fluxo retornado.
  /// Em um evento de erro do stream `source`,
  /// o `await for` esse erro é (re-)lançado o que quebra o loop.
  /// O erro então chega ao final do corpo da função `optionalMap`,
  /// desde que não seja capturado.
  /// Isso faz com que o erro seja emitido no stream retornado, que então fecha.
  /// A classe `Stream` também fornece funcionalidade que permite
  /// escuta manualmente os eventos de um stream, ou para converter um stream
  /// em outro fluxo ou em um futuro.
  /// A função [forEach] corresponde ao loop `await for`,
  /// assim como [Iterable.forEach] corresponde a um loop normal `for`/`in`.
  /// Como o loop, ele chamará uma função para cada evento de dados e interromperá um
  /// erro.
  /// O método [listen] de nível mais baixo é o que todos os outros métodos são baseados.
  /// Você chama `listen` em um stream para dizer que deseja receber
  /// eventos, e registra os callbacks que receberão esses eventos.
  /// Quando você chama `listen`, você recebe um objeto [StreamSubscription]
  /// que é o objeto ativo que fornece os eventos,
  /// e que pode ser usado para parar de ouvir novamente,
  /// ou para pausar temporariamente os eventos da assinatura.
  /// Existem dois tipos de streams: streams de "assinatura única" e
  /// fluxos de "transmissão".
  /// *Um fluxo de assinatura única* permite apenas um único ouvinte durante todo o
  /// tempo de vida do fluxo.
  /// Ele não começa a gerar eventos até que tenha um ouvinte,
  /// e ele para de enviar eventos quando o ouvinte é cancelado,
  /// mesmo que a fonte de eventos ainda possa fornecer mais.
  /// O stream criado por uma função `async*` é um stream de assinatura única,
  /// mas cada chamada para a função cria um novo fluxo.
  /// Ouvir duas vezes em um fluxo de assinatura única não é permitido, mesmo depois
  /// a primeira assinatura foi cancelada.
  /// Os fluxos de assinatura única geralmente são usados ​​para transmitir pedaços de
  /// dados contíguos maiores, como E/S de arquivo.
  /// *Um stream de transmissão* permite qualquer número de ouvintes e é acionado
  /// seus eventos quando estiverem prontos, haja ouvintes ou não.
  ///
  /// Os fluxos de transmissão são usados ​​para eventos/observadores independentes.
  ///
  /// Se vários ouvintes quiserem ouvir um fluxo de assinatura única,
  /// use [asBroadcastStream] para criar um stream de transmissão em cima do
  /// fluxo não transmitido.
  ///
  /// Em qualquer tipo de fluxo, transformações de fluxo, como [where] e
  /// [skip], retorna o mesmo tipo de stream que o método foi chamado,
  /// salvo indicação em contrário
  /// Quando um evento é acionado, o(s) ouvinte(s) naquele momento receberá o evento.
  /// Se um ouvinte for adicionado a um stream de transmissão enquanto um evento está sendo disparado,
  /// esse listener não receberá o evento que está sendo disparado no momento.
  /// Se um listener for cancelado, ele parará imediatamente de receber eventos.
  /// Ouvir em um stream de transmissão pode ser tratado como ouvir em um novo stream
  /// contendo apenas os eventos que ainda não foram emitidos quando o [listen]
  /// chamada ocorre.
  /// Por exemplo, o [primeiro] getter escuta o stream, então retorna o primeiro
  /// evento que o ouvinte recebe.
  /// Este não é necessariamente o primeiro emitido pelo stream, mas o primeiro
  /// dos eventos *restantes* do stream de transmissão.
  /// Quando o evento "done" é acionado, os assinantes são cancelados antes
  /// recebendo o evento. Após o envio do evento, o fluxo não tem
  /// assinantes. Adicionando novos assinantes a um stream de transmissão após este ponto
  /// é permitido, mas eles apenas receberão um novo evento "done" assim que
  /// que possível.
  /// As assinaturas de stream sempre respeitam as solicitações de "pausa". Se necessário, eles precisam
  /// para armazenar em buffer sua entrada, mas muitas vezes, e de preferência, eles podem simplesmente solicitar
  /// sua entrada para pausar também.
  /// A implementação padrão de [isBroadcast] retorna false.
  /// Um ​​stream de transmissão herdado de [Stream] deve substituir [isBroadcast]
  /// para retornar `true` se quiser sinalizar que se comporta como uma transmissão
  /// fluxo.
}
