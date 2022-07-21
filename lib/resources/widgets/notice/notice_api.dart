import 'dart:async';
import 'dart:convert';

class NewsApi {
  Future<List> loadNews() async {
    String json = "[  \n" +
        "   {  \n" +
        "      \"id\":\"23658\",\n" +
        "      \"tittle\":\"Claudio afirma que rails é o melhor\",\n" +
        "      \"description\":\"A equipe da GETIC discorda, afirmam que rails só é util para certas coisas e ele se enfurece e demite todos.\",\n" +
        "      \"url_img\":\"https://upload.wikimedia.org/wikipedia/commons/9/9c/Ruby_on_Rails_logo.jpg\",\n" +
        "      \"link\":\"https://www.otempo.com.br/superfc/tite-recebe-convocados-nesta-segunda-e-tem-27-dias-de-prepara%C3%A7%C3%A3o-para-estreia-1.1789078\",\n" +
        "      \"origin\":\"Otempo.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2022-07-21 11:37:50\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23670\",\n" +
        "      \"tittle\":\"Enos é eleito o maior namorador da prefeitura\",\n" +
        "      \"description\":\"Com um esquema em cada secretaria ele ultrapassa Marelo Gambiarra\",\n" +
        "      \"url_img\":\"https://img.quizur.com/f/img62a381898e6640.25861924.jpeg?lastEdited=1654882711\",\n" +
        "      \"link\":\"https://globoesporte.globo.com/futebol/brasileirao-serie-a/noticia/tecnico-na-bronca-chance-incrivel-perdida-e-dourado-ainda-festeja-gol.ghtml\",\n" +
        "      \"origin\":\"Globo\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2022-07-21 11:03:24\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23671\",\n" +
        "      \"tittle\":\"Gerente de redes da GETIC, ganha prêmio de cachaçeiro\",\n" +
        "      \"description\":\"Ao beber um total de 978 cervejas em 2h ele se consagra campeão\",\n" +
        "      \"url_img\":\"https://clubedocervejeiro.com/wp-content/uploads/2022/04/cerveja-blumenau-conquista-premio-internacional-1024x576.webp\",\n" +
        "      \"link\":\"https://www.meutimao.com.br/noticias-do-corinthians/288853/corinthians-define-cronograma-de-retornos-e-poupados-para-jogos-contra-millonarios-e-internacional\",\n" +
        "      \"origin\":\"Meutimao.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2022-07-21 10:55:02\"\n" +
        "   },\n" +
        "   {  \n" +
        "      \"id\":\"23673\",\n" +
        "      \"tittle\":\"Pepeu ganha campeonato de maior corno da GETIC\",\n" +
        "      \"description\":\"Ao saber que o corno foi o primeiro a saber o homem dispara para o precipicio\",\n" +
        "      \"url_img\":\"https://cdn.dicionariopopular.com/imagens/anand-thakur-oguy915eu3s-unsplash-cke.jpg\",\n" +
        "      \"link\":\"https://www.terra.com.br/esportes/croacia/adversaria-do-brasil-na-preparacao-para-a-copa-croacia-e-convocada,a7e2dfc588c35b45fde0db441a80ad81y2a1fk3m.html\",\n" +
        "      \"origin\":\"Terra.com.br\",\n" +
        "      \"category\":\"sports\",\n" +
        "      \"date\":\"2022-07-21 10:40:48\"\n" +
        "   }\n" +
        "]";

    return jsonDecode(json);
  }
}
