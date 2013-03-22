<?php
$req=urlencode($_POST['qRec']);
//$req='bosch';
/*
$url='http://65.60.97.68:8983/solr/KTS/select?q='.$req.'&wt=php&indent=true';
$datBack=file_get_contents($url);
eval("\$result=".$datBack.";");
$rOut=$result['response']['docs'];
echo '<div id="rWrap">';
if(count($rOut)>0){
foreach($rOut as $rOut1){
	print_r('<div id="rSku">'.$rOut1['sku'].'</div>');
	print_r('<div id="rTitle"><a href="http://65.60.97.68/'.$rOut1['url'].'">'.$rOut1['title'][0].'</a></div>');
	print_r('<div id="rDesc">'.$rOut1['description'].'</div><br/>');
}
}else{
	print_r('No results found, please try again.'.$req);
}
echo "</div>";

$exts=array()
*/

$x = $this->helper('solr')->searchRes($req, 'KTS_DEV');
var_dump($x);
?>