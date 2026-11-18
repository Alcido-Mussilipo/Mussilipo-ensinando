SLIM TEA MOZAMBIQUE — FICHEIROS PARA GITHUB PAGES

1. Publica index.html na raiz do repositório GitHub Pages.
2. Publica também a pasta imagens com slim-tea-original.jpeg. Mantém o nome e a estrutura.
3. Para activar o contador público:
   a) Abre o SQL Editor do projecto Supabase que será usado pela loja.
   b) Executa o conteúdo de contador.sql.
   c) No index.html, preenche SUPABASE_URL e SUPABASE_ANON_KEY com a URL do projecto e a chave anon/public.
   d) Não coloques uma chave service_role no HTML.
4. O contador regista cada carregamento da página. Actualizar a página também conta como nova visita.
5. A contagem de 10 minutos é guardada no navegador e altera o preço mostrado e a mensagem de encomenda. Para garantir o prazo contra manipulação, seria necessário validar o preço num servidor/backend; este HTML é uma versão estática para começar.
6. Confirma a disponibilidade logística, o custo da entrega individual e os detalhes dos bónus antes de publicar.
