# Apache Tika

Este projeto contém o Dockerfile para criação de uma imagem do Apache Tika na
versão 1.8, utilizando o Java 8. Após montado, o container escuta na porta
9998.

Esta imagem também tem um parser OCR para o idioma português.


## Uso

Faça o build da imagem com o comando:

    docker build -t 'tika'

Execute o container com

    docker run -d -p 9998:9998 tika


## Mais

Para mais informações sobre o Apache Tika Server, veja a [documentação do Apache Tika Server](http://wiki.apache.org/tika/TikaJAXRS).

## Autoria

  * Repositório originalmente criado por David Meikle (<david@logicalspark.com>)

## Licence

   Copyright 2015-2018 David Meikle

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
