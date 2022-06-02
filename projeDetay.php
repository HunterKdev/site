<?php
$sayfa ="Proje Detay";
include("inc/head.php");
include("inc/vt.php");
?>

        <!--haberler Grid-->
        <section class="page-section bg-light " id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase mt-3">Proje Detayları</h4>
                </div>
                <div class="row">
                <?php
                    $sorgu = $baglanti->prepare("SELECT * FROM haber Where id=:id");
                    $sorgu->execute(['id' => (int)$_GET["id"]]);
                    $sonuc = $sorgu->fetch();//sorgu çalıştırılıp veriler alınıyor
        
                    ?>
                        <div>
                           <div style="float:right; text-align:center; display:block;"> <img src="assets/img/proje/<?php echo $sonuc["foto"] ?>" width="300" height="300"></div>
                          <div style="float:; text-align:center; display:block;" >  <h5 class="card-title"><?php echo $sonuc["baslik"] ?></h5>
                           <p  class="card-text text-muted"><?php echo $sonuc["ozet"] ?></p></div>
                            
                            <p><?php echo $sonuc["metin"] ?></p>
                            <a href="projeler.php" style class="btn btn-primary">Geri Dön</a>
                        </div>
                  
                    </div>
               
            </div>
        </section>

        <!-- Footer-->
        
     
<?php
include("inc/footer.php");
?>     