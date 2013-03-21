<?php
/**
 * Magento
 * 
 * @category    Mage
 * @package     Mage_Page
 * @copyright   Copyright (c) 2012 Magento Inc. (http://www.magentocommerce.com)
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

/**
 * Searcher Solr IndexController
 *
 * @category   Searcher
 * @package    Searcher_Solr
 * @author     KTS Web Team <eric.gould@etoolsrus.com>
 */

/**
 * 
 * @author EricG
 *
 */
class Searcher_Solr_IndexController extends Mage_Core_Controller_Front_Action{
	/**
	 * @name indexAction
	 * @param qRec='search term'
	 * @return array collection of results from solr search
	 * @param sku=sku 
	 * @param nova=nova 
	 */
	public function indexAction(){
		print_r("<h1>TRU Solr Tools.</h1>");
		//$this->loadLayout();
		//$this->renderLayout();
		if($_REQUEST['qRec']){
			//var_dump(searchRes($_REQUEST['qRec']));
			var_dump($this->searchRes($_REQUEST['qRec'],$_REQUEST['sDir']));
		}
		if($_REQUEST['sku']){
			$this->getCataIds($_REQUEST['sDir']);
		}
		if($_REQUEST['nova']){
			$this->superNova($_REQUEST['sDir']);
		}
	}

/**
 * 
 */
	public function nsAction(){
		echo "Searcher_Solr";
	}
	
	public function getCataIds($sDir){
		print_r('<h3>OutPut CSV</h3>');
		
		//solr connection
		//echo phpInfo();
		
		
		$prodCol=Mage::getModel('catalog/product')->getCollection();
		$prodCol->addAttributeToSelect('*');
		echo "<hr/>";
		foreach($prodCol as $p1){			
			$cata1=$p1->getCategoryIds();
			$tOut['id']=$p1->getId();
					
			$cOut="";
			foreach($cata1 as $cata){
				$_cat=Mage::getModel('catalog/category')->load($cata);
				$cOut=$cOut.$_cat->getName()." ";
			}
			rtrim($cOut,',');
			$tOut['cat']=str_replace('+','',$cOut);
			$tOut['sku']=$p1->getSku();
			$tOut['name']=strip_tags($p1->getName());
			$tOut['manu']=$p1->getAttributeText('manufacturer');
			$tOut['url']=$p1->getProductUrl();
			$tOut['features']=strip_tags($p1->getShortDescription());
			$tOut1['doc']=$tOut;
			$tOut2['add']=$tOut1;
			$jOut=$jOut.json_encode($tOut2);
		}
		//echo $jOut;
		echo '<br/><br/>';
		echo "<hr/>";
		
		$url='http://65.60.97.68:8983/solr/'.$sDir.'/update/json?commit=true';
		$Client = new Zend_Http_Client($url);
		$Client->resetParameters();
		$Client->setMethod(Zend_Http_Client::POST);
		$Client->setHeaders('Content-type','application/json');
		$Client->setRawData($jOut);
		$response=$Client->request();
		echo $response.'<hr/>';
	
	}
	
	public function superNova($sDir){
		$url='http://65.60.97.68:8983/solr/'.$sDir.'/update?commit=true';
		$cmd='?commit=true -H "content-type:text/xml" --data-binary "<delete><query>*:*</query></delete>"';
		$xml="<delete><query>*:*</query></delete>";
		
		$Client = new Zend_Http_Client($url);
		$Client->resetParameters();
		$Client->setMethod(Zend_Http_Client::POST);
		$Client->setHeaders('Content-type','text/xml');
		$Client->setRawData($xml);
		$response=$Client->request();
		echo $response.'<hr/>';
		
	}

	public function searchRes($term, $sDir){
		$req=urlencode($term);
		$url='http://65.60.97.68:8983/solr/'.$sDir.'/select?q='.$req.'&wt=php&indent=true';
		//$datBack=file_get_contents($url);
		eval("\$result=".file_get_contents($url).";");
		$rOut=$result['response']['docs'];
		foreach($rOut as $rOut1){
			$sID[]=$rOut1['sku'];
		}
		
		$collection = Mage::getModel('catalog/product')->getCollection(); // Start a new collection containing products
		$collection->addAttributeToSelect('*');     // Tell magento to load all the product attribute data, change this if you need just a subset of data in your template file
		$i = 0; $filters = array(); // Init some vars to add our filters
		foreach($sID as $sku)
			$filters[$i++] = array('attribute'=>'sku','eq'=>$sku); // For each SKU add a filter that defines that the product will be selected is it's sku is in our array
		$collection->addFieldToFilter($filters); // Add the filter
		//$this->setCollection($collection); // Set this collection to be the one we're using
		echo count($collection).'<br/>';
		return $collection; // Return it
		//return $sID;
	}
}