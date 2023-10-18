# Desafio de Projeto:

### Processando e Transformando Dados com Power BI



### Descrição do Desafio

1. Criação de uma instância na Azure para MySQL

2. Criar o Banco de dados com base disponível no github

3. Integração do Power BI com MySQL no Azure

4. Verificar problemas na base a fim de realizar a transformação dos dados
   
   

### Diretrizes

1. Verifique os cabeçalhos e tipos de dados
   
   Modifique os valores monetários para o tipo double preciso

2. Verifique a existência dos nulos e analise a remoção

3. Os employees com nulos em Super_ssn podem ser os gerentes. Verifique se há algum colaborador sem gerente

4. Verifique se há algum departamento sem gerente

5. Se houver departamento sem gerente, suponha que você possui os dados e preencha as lacunas

6. Verifique o número de horas dos projetos

7. Separar colunas complexas

8. Mesclar consultas employee e departament para criar uma tabela employee com o nome dos departamentos associados aos colaboradores. A mescla terá como base a tabela employee. Fique atento, essa informação influencia no tipo de junção

9. Neste processo elimine as colunas desnecessárias.

10. Realize a junção dos colaboradores e respectivos nomes dos gerentes . Isso pode ser feito com consulta SQL ou pela mescla de tabelas com Power BI. Caso utilize SQL, especifique no README a query utilizada no processo.

11. Mescle as colunas de Nome e Sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores

12. Mescle os nomes de departamentos e localização. Isso fará que cada combinação departamento-local seja único. Isso irá auxiliar na criação do modelo estrela em um módulo futuro.

13. Explique por que, neste caso supracitado, podemos apenas utilizar o mesclar e não o atribuir.

14. Agrupe os dados a fim de saber quantos colaboradores existem por gerente

15. Elimine as colunas desnecessárias, que não serão usadas no relatório, de cada tabela
    
    

### Observações

Link Publicação Web (Público): [Microsoft Power BI](https://app.powerbi.com/view?r=eyJrIjoiYjk4MzQzM2UtNGY5Ny00MjYxLTkzZTUtMjI4MDhiMDRmZTY2IiwidCI6IjQ1YTE1N2Q5LWQ5YmItNGUxZC05ODEwLWIyOGM0NGZjMGRkMyJ9)

**Respostas às Diretrizes em PDF:** Transformações de dados no Power BI


