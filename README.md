<h1>Zabbix LAB Full Install - Docker</h1>
<p>Laborat&oacute;rio implementado para um servidor com as seguintes configura&ccedil;&otilde;es:</p>
<p>SO: Ubuntu 20.04<br />CPU: 2<br />RAM: 4GB<br />Disco: 15GB</p>
<p>Clone o reposit&oacute;rio em seu servidor e execute o arquivo install.sh como root</p>
<p>Itens da Instala&ccedil;&atilde;o:<br />1 - Docker Engine CE<br />2 - Zabbix Server PSQL 6.0.12<br />3 - Zabbix Web Nginx 6.0.12<br />4 - Zabbix Agent2 6.6.12<br />5 - PostgreSQL 14-6</p>
<p>Ap&oacute;s instala&ccedil;&atilde;o, acesse o Zabbix pelo navegador utilizando o IP do servidor de instala&ccedil;&atilde;o.</p>
<p>Se aparecer uma mensagem de erro de conexão com o banco, é por que este ainda está sendo populado. Aguarde até 5 minutos</p>
<p>User: Admin<br />Pass: zabbix</p>
<p><strong>Diret&oacute;rios Principais da Instala&ccedil;&atilde;o</strong></p>
<p>Docker Compose: /home/zabbix</p>
<p>PostgreSQL: /postgresql-14</p>
<p>Zabbix Server files: /zabbix-server-pgsql</p>
