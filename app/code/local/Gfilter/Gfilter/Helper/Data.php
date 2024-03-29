<?php
class Gfilter_Gfilter_Helper_Data extends Mage_Core_Helper_Abstract
{
	// constants
	const SURL='http://65.60.97.68:8983/solr/KTS_DEV';
	
	public function getFilterData($tCol){
		$prodCol=$tCol;
		if($prodCol) {
			foreach($prodCol as $prod){
				$atNames=array('atNames1'=>array_keys($prod->getData()));
				foreach($atNames['atNames1'] as $atVal){
					if(strstr($atVal,'ct_')){
						if(array_key_exists($atVal,$atOut)==true){
							$atTempLab=$prod->getResource()->getAttribute($atVal)->getFrontend()->getLabel($prod);
							$atTempVal=$prod->getResource()->getAttribute($atVal)->getFrontend()->getValue($prod);
							if(!strstr($atOut[$atVal][$atTempLab],$atTempVal)){
							$atOut[$atVal][$atTempLab]=($atOut[$atVal][$atTempLab].','.$atTempVal);
							}
						}else{
							$atTempLab=$prod->getResource()->getAttribute($atVal)->getFrontend()->getLabel($prod);
							$atTempVal=$prod->getResource()->getAttribute($atVal)->getFrontend()->getValue($prod);
							$atOut[$atVal][$atTempLab]=($atTempVal);
						}
					}
				}
			}
		}
// check for singles
foreach($atOut as $ao1=>$ao2){
	//print_r('head: '.$ao1."<hr/>");
	foreach($ao2 as $ao3){
			$eCt=count(str_getcsv($ao3));
			//print_r("a3: ".$ao3."-- count: ".$eCt."<br/>");
			if(trim($ao3)==',' || strpos(trim($ao3),',')==0 || $eCt<2){	unset($atOut[$ao1]);}	
	}
}

		
//var_dump(json_encode($atOut));		
		return json_encode($atOut);
	}
	
	public function ajaxRes(){
		return 'this is a test';
	}
	
	public function searchFilterBase($sCol){
		return count($sCol);
	}

	public function searchCata($sCol){
		foreach ($sCol as $prod){
			//Cata Information//
			$_cid=$prod->getCategoryIds();
			foreach($_cid as $_catID){
				$_cat=Mage::getModel('catalog/category')->load($_catID);
				$_catName=$_cat->getName();
				if(array_key_exists($_catName,$catArr)){
					$catArr[$_catName]++;
				}else{
					$catArr[$_catName]=1;
				}
				$cataInfo=$catArr;
			}
		}
		$cataOut='<ol>'; 
		foreach($cataInfo as $ci=>$ciCt){
			if($ci != 'Root Catalog'){
				$cataOut=$cataOut.'<li>'.$ci.' ('.$ciCt.')</li>';
			}
		}
		$cataOut=$cataOut.'</ol><div id="fClrCata" class="fClr">Reset</div>';
		return $cataOut;
	}
	
	public function searchPrice($sCol){
		foreach ($sCol as $prod){
			//Price Information//
			$_price=$prod->getPrice();
			if(array_key_exists($_price,$priceArr)){
				$priceArr[$_price]++;
			}else{
				$priceArr[$_price]=1;
			}
			$priceInfo=$priceArr;
		}
		// price structure
		ksort($priceInfo);
		$priceTempArr=array_sum(array_keys($priceInfo));
		$priceAvg=$priceTempArr/count($priceInfo);
		$pv=array_keys($priceInfo);
		foreach($pv as $nv){
			$n=intval($nv);
			if($n>999){
				$priceSetArr["$1000.00 or more"][]=$n;
			}elseif($n>=500){
				$priceSetArr["$500.00 - $999.99"][]=$n;
			}elseif($n>=200){
				$priceSetArr["$200.00 to $499.99"][]=$n;
			}elseif($n>=100){
				$priceSetArr["$100.00 to $199.99"][]=$n;
			}elseif($n>=50){
				$priceSetArr["$50.00 to $99.99"][]=$n;
			}elseif($n>=10){
				$priceSetArr["$10.00 to $49.99"][]=$n;
			}elseif($n>=1){
				$priceSetArr["$1.00 to $9.99"][]=$n;
			}else{
				$priceSetArr["$0 to $.99"][]=$n;
			}
		}
		$priceOut='<ol>';
		foreach($priceSetArr as $psa1=>$psa1a){
			$psa1Fix=str_getcsv($psa1,'(');
			$priceOut=$priceOut.'<li class="liStart">'.$psa1.' ('.count($psa1a).')</li>';
		}   $priceOut=$priceOut.'</ol><div id="fClrPrice" class="fClr">Reset</div>';
		return $priceOut;
	}
	
	public function searchManu($sCol){
		foreach ($sCol as $prod){
			//Manufacturer Information//
			$_manu=$prod->getAttributeText('manufacturer');
			$_ctManu=$prod->getCt_brand();
			If($_manu){
				if(array_key_exists($_catName,$catArr)){
					$manuArr[$_manu]++;
				}else{
					$manuArr[$_manu]=1;
				}
			}elseif($_ctManu){
				if(array_key_exists($_catName,$catArr)){
					$manuArr[$_ctManu]++;
				}else{
					$manuArr[$_ctManu]=1;
				}
			}else{echo 'ERROR';}
			$manuInfo=$manuArr;
		}
		$manuOut='<ol>';
		foreach($manuInfo as $mi=>$miCt){
			$manuOut=$manuOut.'<li>'.$mi.' ('.$miCt.')</li>';
		}
		$manuOut=$manuOut.'</ol><div id="fClrManu" class="fClr">Reset</div>';
		return $manuOut;
	}
	
	public function searchMage($sRec){
		$sugStr=urlencode($sRec);
		$url=self::SURL.'/suggest?wt=json&q='.$sugStr;
		// using curl method
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		$output=curl_exec($ch);
		$result=json_decode($output, TRUE);
	
		$res=$result['spellcheck']['suggestions'][1]['suggestion'];
		$out='<ol>';
		foreach($res as $res1){
			$out=$out.'<li>'.$res1.'</li>';
		}
		$out=$out.'</ol>';
		return $out;
	}
	
}