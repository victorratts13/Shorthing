<?php  

include 'config.php';
include 'hash.php';

if (isset($_POST['url'])) {
	$url=htmlspecialchars(strip_tags($_POST['url']));
	$ip=$_SERVER['REMOTE_ADDR'];
	$encurtado=Gerar(8);

	$busc=$con->prepare('select * from url where url=:u');
	$busc->bindValue(':u',$url);
	$busc->execute();

	if ($busc->rowCount()<1) {
		$ins=$con->prepare('insert into url(url,encurtado,acessos) values(:u,:e,:a)');
		$ins->bindValue(':u',$url);
		$ins->bindValue(':e',$encurtado);
		$ins->bindValue(':a',NULL);
		$ins->execute();

		if ($ins) {
			$busc=$con->prepare('select * from url where encurtado=:e');
			$busc->bindValue(':e',$encurtado);
			$busc->execute();

			if ($busc->rowCount()>0) {
				echo "<a href='?url=".$encurtado."'>".$_SERVER['SERVER_NAME']."?url=".$encurtado."</a>";
			}else{
				echo "error";
			}
		}else{
			echo "error";
		}
	}else{
		while ($linha=$busc->fetch(PDO::FETCH_ASSOC)) {
			$id=$linha['id'];
			$link=$linha['url'];
			$enc=$linha['encurtado'];
		}
		echo "<a href='?url=".$enc."'>".$_SERVER['SERVER_NAME']."?url=".$enc."</a>";

	}
}else{
	echo "error";
}


?>