<h1 align="center">📂 Manipulação de Diretórios no Windows</h1>

<!-- Sumário -->
<div align="center">
  <a href="#arquivo1">📄 Buscador de Arquivos</a> |
  <a href="#arquivo2">📄 Arquivo 2</a> |
  <a href="#autor">👤 Autor</a>
</div>

<br />

<!-- Tecnologias -->
<h2>🚀 Tecnologia Usada</h2>

<ul>
  <li><b>Windows Batch (.BAT)</b>
    <div style="background-color:#e0e0e0; border-radius:5px; width:300px;">
      <div style="width:100%; background-color:#2196f3; padding:5px; color:white; border-radius:5px;">100%</div>
    </div>
  </li>
</ul>

<!-- Descrição -->
<h2>📝 Descrição</h2>
<p>
    Este repositório reúne os arquivos .bat que desenvolvi/desenvolvo para facilitar a exploração e automação de tarefas no Windows. A ideia surgiu da necessidade de acessar rapidamente arquivos específicos, sem depender do sistema de busca nativo do Windows que nem sempre colabora 😅.
</p>

<!-- Arquivo 1 -->
<h2 id="arquivo1">📄 Buscador de Arquivos</h2>
<p>
  Este script surgiu de uma necessidade prática: localizar rapidamente arquivos como bancos de dados 
  <strong>Firebird</strong> <code>.fdb</code>, <strong>backups</strong> <code>.bkp</code> ou 
  <strong>certificados digitais modelo A1</strong> <code>.pfx</code> que costumam ficar "perdidos" 
  em meio aos diretórios do sistema do cliente. O objetivo é automatizar essa busca e gerar um arquivo 
  <code>.txt</code> com os caminhos encontrados, facilitando a análise e identificação dos arquivos relevantes.
</p>

<p>
  O uso é simples: o script está configurado por padrão para buscar 
  <strong>certificados digitais modelo A1</strong> <code>.pfx</code>. Para adaptá-lo, 
  basta abrir o arquivo e substituir a extensão <code>.pfx</code> pela que você deseja. 
  No meu caso, mantenho também versões do script para localizar arquivos <code>.fdb</code> e <code>.bkp</code>.
</p>


<!-- Arquivo 2 -->
<h2 id="arquivo2">📄 Arquivo 2</h2>
<p>
  O segundo script trata da limpeza e organização dos diretórios gerados após os backups. Arquivos antigos são apagados com base em regras definidas, e logs são gerados para manter um histórico das execuções.
</p>

<!-- Eu -->
<h2 id="autor">👤 Autor</h2>
<p>
  Desenvolvido por <strong>David Waters</strong> <br/>
  🔗 <a href="www.linkedin.com/in/davidwatersrodrigues" target="_blank">LinkedIn</a>
</p>
