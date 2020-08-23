<link href="{$url}/modules/showmailalert/css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="{$url}/modules/showmailalert/js/jquery.dataTables.min.js"></script>

<div class="panel">
	<h3><i class="icon icon-tags"></i> {l s='Documentation & Support' mod='showmailalert'}</h3>

	<div class="col-lg-9 col-sm-12 col-xs-12">
		<p>
			&raquo; {l s='You can get a PDF documentation to configure this module' mod='showmailalert'} :
		</p>
		<ul>
			<li>
				<a href="{$module_dir|escape:'htmlall':'UTF-8'}documentation/readme_fr.pdf" target="_blank">DOCUMENTATION</a>
				/ <a href="{$module_dir|escape:'htmlall':'UTF-8'}documentation/README.txt" target="_blank">README</a>
				/ <a href="{$module_dir|escape:'htmlall':'UTF-8'}documentation/LICENSE.txt" target="_blank">LICENSE</a>
			</li>
		</ul>
		<br>

		<p>
			&raquo; {l s='Bug report on GitHub only' mod='showmailalert'} : <a href="https://github.com/ZelTroN-2k3/Showmailalerts" target="_blank">https://github.com/ZelTroN-2k3/Showmailalerts</a><br>
			&nbsp;&nbsp;&nbsp;{l s='For any bug report, please follow the following process' mod='showmailalert'} : <a href="https://github.com/ZelTroN-2k3/Showmailalerts/graphs/contributors" target="_blank">https://github.com/ZelTroN-2k3/Showmailalerts/graphs/contributors</a>
		</p>
		<br>

		<p>
			&raquo; {l s='This is a free module powered by' mod='showmailalert'} <a href="https://www.prestashop.com/forums/topic/1010761-module-gratuit-showmailalerts-liste-des-demandes-dalerte-mail/" target="_blank">forums Prestashop</a>
			{l s='under the licence' mod='showmailalert'} <a href="https://github.com/ZelTroN-2k3/Showmailalerts/blob/master/documentation/LICENSE.txt" target="_blank">licence</a>.<br>
			&nbsp;&nbsp;&nbsp;{l s='You will appreciate our other modules Coming soon' mod='showmailalert'} : <a href="#" target="_blank">Coming soon</a>
		</p>
	</div>

	<div class="col-lg-3 visible-lg">
		<img src="{$module_dir|escape:'htmlall':'UTF-8'}/views/img/showmailalert.png" class="img-responsive pull-right " width="200px">
		<div class="clearfix">&nbsp;</div><br>
		<span style="float: right; opacity: .5; font-size: 9px; padding-top: 5px;"><a title="{l s='version' mod='showmailalert'}">version: </a>{$module_version|escape:'htmlall':'UTF-8'}</span>
	</div>

	<div class="clearfix"></div>
			<p>
			&raquo; {l s='TEST Showmailalert Links ->' mod='showmailalert'} : <a href="#" target="_blank">TEST Liens Showmailalert</a><br>
			</p>
</div>

<script>
	$(document).ready(function() {
	$('#tableau').dataTable( {
	"order": [[ 1, "desc" ]]
	} );
	} ); 
</script> 

<table id="tableau" cellspacing="0" width="100%" style="border: 1px none; background-color: #EFEFEF; height: 27px; width: 100%;">
	<thead>
		<tr>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Picture' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Title' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='ID' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Customer email' mod='showmailalert'}</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Picture' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Title' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='ID' mod='showmailalert'}</th>
			<th style="border-style: solid; border-width: 1px; border-color: rgb(255, 255, 255);">{l s='Customer email' mod='showmailalert'}</th>
		</tr>
	</tfoot>
	{foreach from=$array item=notif}
	<tr>
		<td><img src="/{$notif.image}-small_default/{$notif.link_rewrite}.jpg" /></td>
		<td>{$notif.titre}</td>
		<td>{$notif.id_product}{$notif.id_product_attribute}</td>
		<td>{$notif.customer_email}</td>
	</tr>
	{/foreach}
</table>