# image-recognition-bash

> Português

Script bash (Linux) desenvolvido para enviar imagens de forma automatizada às principais APIs de reconhecimento de imagens atuais. Estão inclusas as seguintes APIs:

 - Google Cloud Vision
 - Microsoft Cognitive Services
 - IBM Watson
 - Amazon Rekognition
 - Clarifai

Mais APIs podem ser configuradas facilmente, basta criar um arquivo de texto na pasta `apis/` com o código para uma requisição cURL para a API desejada.

**Aviso: Para utilizar a API "Amazon Rekognition", é necessário instalar primeiramente o Python 2.6.5 ou superior e o AWS CLI, [disponível aqui](https://aws.amazon.com/pt/cli/).**

Para configurar o script, é necessário editar os arquivos dentro da pasta `apis/`, colocando as chaves de API onde houver o texto `<API_KEY>` e em alguns casos a chave secreta no lugar do texto `<SECRET_KEY>`. Para informações sobre como obter as chaves, consulte a documentação da API desejada.

Para utilizar o script, basta colocar as imagens desejadas na pasta `input/`, e rodar o script em um terminal com o seguinte comando:

    $~ bash api.sh

A resposta JSON de cada API será armazenada na pasta `output`. O script cria uma pasta com o *timestamp* atual, e subpastas com o nome de cada API configurada. As respostas JSON são gravadas com o nome e extensão do arquivo original, apenas adicionando `.json` no final.

Este script foi desenvolvido durante a produção do artigo "***Redes Neurais Artificiais: Avaliação de APIs para o reconhecimento e classificação de imagens***", desenvolvido por acadêmicos do 3º ano do curso de Sistemas de Informação da UNIPAR de Umuarama. Seu código-fonte foi publicado com o intuito de facilitar e tornar mais acessível o acesso e teste das APIs discutidas no artigo.

----------

> English

Bash script (Linux) designed to automate image submission to the main image recognition APIs available today. This script can be used with the following APIs:

 - Google Cloud Vision
 - Microsoft Cognitive Services
 - IBM Watson
 - Amazon Rekognition
 - Clarifai

More APIs can be easily added by creating a text file on `apis/` folder containing the cURL request code to the desired API.

**Warning: Using "Amazon Rekognition" API, requires Python 2.6.5 or above and AWS CLI, [available here](https://aws.amazon.com/pt/cli/).**

To configure the script, edit the text files on the `apis/` folder, replacing `<API_KEY>` and sometimes `<SECRET_KEY>` with the keys for the desired API. Information on how to obtain the keys should be seeked in the API's own documentation page.

To run the script, simply put the images on the `input/` directory and run the script on a terminal with the following command:

    $~ bash api.sh

The JSON response for each API will be stored in the `output` folder. The script creates a folder with the current timestamp, and subfolders inside it named with its respective API. Each JSON returned is named as the submitted image's filename, with the `.json` extension appended to it.
